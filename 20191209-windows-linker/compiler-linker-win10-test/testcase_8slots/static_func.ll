; ModuleID = './testcase_8slots/static_func.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@mul_sum.sum = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %call = tail call fastcc i32 @mul_sum(i32 1, i32 2)
  %call1 = tail call fastcc i32 @mul_sum(i32 -3, i32 -4)
  %add = add nsw i32 %call1, %call
  ret i32 %add
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_sum(i32 %x1, i32 %x2) #0 {
entry:
  %mul = mul nsw i32 %x2, %x1
  %0 = load i32* @mul_sum.sum, align 4, !tbaa !1
  %add = add nsw i32 %0, %mul
  store i32 %add, i32* @mul_sum.sum, align 4, !tbaa !1
  ret i32 %add
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
