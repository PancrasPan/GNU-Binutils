; ModuleID = './testcase_8slots/global.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@a = common global [3 x i32] zeroinitializer, align 4
@sum1 = common global i32 0, align 4
@c = external global [3 x i32]

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %0 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 0), align 4, !tbaa !1
  %1 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 1), align 4, !tbaa !1
  %add2 = add nsw i32 %1, %0
  %2 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 2), align 4, !tbaa !1
  %add3 = add nsw i32 %add2, %2
  store i32 %add3, i32* @sum1, align 4, !tbaa !1
  %3 = load i32* getelementptr inbounds ([3 x i32]* @c, i32 0, i32 0), align 4, !tbaa !1
  %4 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 0), align 4, !tbaa !1
  %add4 = add nsw i32 %4, %3
  store i32 %add4, i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 0), align 4, !tbaa !1
  %5 = load i32* getelementptr inbounds ([3 x i32]* @c, i32 0, i32 1), align 4, !tbaa !1
  %6 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 1), align 4, !tbaa !1
  %add5 = add nsw i32 %6, %5
  store i32 %add5, i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 1), align 4, !tbaa !1
  %7 = load i32* getelementptr inbounds ([3 x i32]* @c, i32 0, i32 2), align 4, !tbaa !1
  %8 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 2), align 4, !tbaa !1
  %add6 = add nsw i32 %8, %7
  store i32 %add6, i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 2), align 4, !tbaa !1
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
