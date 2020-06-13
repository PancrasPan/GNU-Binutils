; ModuleID = './testcase_8slots/staticvar.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_g = global i32 1, align 4
@uninit_g = common global i32 0, align 4

; Function Attrs: nounwind readonly
define i32 @main() #0 {
entry:
  %0 = load i32* @init_g, align 4, !tbaa !1
  %1 = load i32* @uninit_g, align 4, !tbaa !1
  %add1 = add i32 %0, 9
  %add3 = add i32 %add1, %1
  ret i32 %add3
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
