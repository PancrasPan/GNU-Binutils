; ModuleID = './testcase_8slots/ch6_1p.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@gI = global i32 100, align 4
@gI2 = global i32 1, align 4
@gI3 = global i32 5, align 4
@gI4 = global i32 10, align 4
@gI5 = global i32 20, align 4

; Function Attrs: nounwind readonly
define i32 @main() #0 {
entry:
  %0 = load i32* @gI, align 4, !tbaa !1
  %add = add nsw i32 %0, 2
  %1 = load i32* @gI2, align 4, !tbaa !1
  %add1 = add nsw i32 %add, %1
  %2 = load i32* @gI3, align 4, !tbaa !1
  %add2 = add nsw i32 %add1, %2
  %3 = load i32* @gI4, align 4, !tbaa !1
  %add3 = add nsw i32 %add2, %3
  %4 = load i32* @gI5, align 4, !tbaa !1
  %add4 = add nsw i32 %add3, %4
  ret i32 %add4
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
