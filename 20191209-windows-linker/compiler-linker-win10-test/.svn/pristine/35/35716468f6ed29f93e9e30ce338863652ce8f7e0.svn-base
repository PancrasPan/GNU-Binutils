; ModuleID = './testcase_8slots/latchwithoutInd.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readonly
define i32 @check(i32* nocapture readonly %Array, i32 %start, i32 %end) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ %start, %entry ], [ %add, %for.body ]
  %cmp = icmp slt i32 %i.0, %end
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32* %Array, i32 %i.0
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %add = add nsw i32 %i.0, 1
  %arrayidx1 = getelementptr inbounds i32* %Array, i32 %add
  %1 = load i32* %arrayidx1, align 4, !tbaa !1
  %cmp2 = icmp sgt i32 %0, %1
  br i1 %cmp2, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body, %for.cond
  %flag.0 = phi i32 [ 0, %for.cond ], [ -1, %for.body ]
  ret i32 %flag.0
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
