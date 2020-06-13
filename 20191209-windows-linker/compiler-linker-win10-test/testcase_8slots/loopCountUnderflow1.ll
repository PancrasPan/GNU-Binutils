; ModuleID = './testcase_8slots/loopCountUnderflow1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@a = global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4

; Function Attrs: nounwind readonly
define i32 @add() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add, %do.body ]
  %i.0 = phi i32 [ 4, %entry ], [ %dec, %do.body ]
  %dec = add i32 %i.0, -1
  %arrayidx = getelementptr inbounds [5 x i32]* @a, i32 0, i32 %i.0
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %add = add nsw i32 %0, %sum.0
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret i32 %add
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
