; ModuleID = './testcase_8slots/bubblemain.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@SortArray = global [5 x i32] [i32 5, i32 1, i32 3, i32 4, i32 2], align 4
@size = global i32 5, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %call = tail call i32 @bubblesort() #2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %cmp = icmp slt i32 %inc, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %i.06 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds [5 x i32]* @SortArray, i32 0, i32 %i.06
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %sub = add nsw i32 %i.06, -1
  %arrayidx1 = getelementptr inbounds [5 x i32]* @SortArray, i32 0, i32 %sub
  %1 = load i32* %arrayidx1, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %0, %1
  %inc = add nsw i32 %i.06, 1
  br i1 %cmp2, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body, %for.cond
  %Inorder.0 = phi i32 [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %Inorder.0
}

declare i32 @bubblesort() #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
