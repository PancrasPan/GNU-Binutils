; ModuleID = './testcase_8slots/global_array.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@g_Array = global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %sub = sub nsw i32 5, %i.016
  %arrayidx = getelementptr inbounds [5 x i32]* @g_Array, i32 0, i32 %i.016
  store i32 %sub, i32* %arrayidx, align 4, !tbaa !1
  %inc = add nsw i32 %i.016, 1
  %exitcond17 = icmp eq i32 %inc, 5
  br i1 %exitcond17, label %for.body4, label %for.body

for.body4:                                        ; preds = %for.body, %for.body4
  %i1.015 = phi i32 [ %inc8, %for.body4 ], [ 0, %for.body ]
  %arrayidx5 = getelementptr inbounds [5 x i32]* @g_Array, i32 0, i32 %i1.015
  %0 = load i32* %arrayidx5, align 4, !tbaa !1
  %inc6 = add nsw i32 %0, 1
  store i32 %inc6, i32* %arrayidx5, align 4, !tbaa !1
  %inc8 = add nsw i32 %i1.015, 1
  %exitcond = icmp eq i32 %inc8, 5
  br i1 %exitcond, label %for.end9, label %for.body4

for.end9:                                         ; preds = %for.body4
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
