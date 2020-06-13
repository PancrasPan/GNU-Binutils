; ModuleID = './testcase_8slots/binary_search.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readonly
define i32 @binarysearch(i32* nocapture readonly %array, i32 %value, i32 %start, i32 %end) #0 {
entry:
  %cmp = icmp sgt i32 %start, %end
  br i1 %cmp, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp12024 = icmp sgt i32 %start, %end
  br i1 %cmp12024, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %if.then6
  %top.0.ph26 = phi i32 [ %top.021, %if.then6 ], [ %end, %while.cond.preheader ]
  %bottem.0.ph25 = phi i32 [ %add7, %if.then6 ], [ %start, %while.cond.preheader ]
  br label %while.body

while.cond:                                       ; preds = %if.else
  %cmp1 = icmp sgt i32 %bottem.0.ph25, %sub
  br i1 %cmp1, label %return, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %top.021 = phi i32 [ %top.0.ph26, %while.body.lr.ph ], [ %sub, %while.cond ]
  %add = add nsw i32 %top.021, %bottem.0.ph25
  %div = sdiv i32 %add, 2
  %arrayidx = getelementptr inbounds i32* %array, i32 %div
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %cmp2 = icmp eq i32 %0, %value
  br i1 %cmp2, label %return, label %if.else

if.else:                                          ; preds = %while.body
  %cmp5 = icmp slt i32 %0, %value
  %sub = add nsw i32 %div, -1
  br i1 %cmp5, label %if.then6, label %while.cond

if.then6:                                         ; preds = %if.else
  %add7 = add nsw i32 %div, 1
  %cmp120 = icmp slt i32 %div, %top.021
  br i1 %cmp120, label %while.body.lr.ph, label %return

return:                                           ; preds = %if.then6, %while.body, %while.cond, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -2, %while.cond.preheader ], [ -2, %while.cond ], [ %div, %while.body ], [ -2, %if.then6 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
