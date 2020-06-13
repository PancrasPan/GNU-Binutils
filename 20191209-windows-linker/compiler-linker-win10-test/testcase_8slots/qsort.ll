; ModuleID = './testcase_8slots/qsort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @qsort(i32* %array, i32 %beg, i32 %end) #0 {
entry:
  %sub66 = sub nsw i32 %end, %beg
  %cmp67 = icmp slt i32 %sub66, 1
  br i1 %cmp67, label %return, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %add = add nsw i32 %end, 1
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %while.end21
  %beg.tr68 = phi i32 [ %beg, %if.end.lr.ph ], [ %add26, %while.end21 ]
  %arrayidx = getelementptr inbounds i32* %array, i32 %beg.tr68
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %cmp163 = icmp slt i32 %beg.tr68, %add
  br i1 %cmp163, label %while.cond2.preheader, label %while.end21

while.cond2.preheader:                            ; preds = %if.end, %while.cond.backedge
  %i.065 = phi i32 [ %inc, %while.cond.backedge ], [ %beg.tr68, %if.end ]
  %j.064 = phi i32 [ %dec, %while.cond.backedge ], [ %add, %if.end ]
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.preheader, %while.cond2
  %j.1 = phi i32 [ %dec, %while.cond2 ], [ %j.064, %while.cond2.preheader ]
  %dec = add nsw i32 %j.1, -1
  %arrayidx3 = getelementptr inbounds i32* %array, i32 %dec
  %1 = load i32* %arrayidx3, align 4, !tbaa !1
  %cmp4 = icmp sgt i32 %1, %0
  br i1 %cmp4, label %while.cond2, label %while.cond6

while.cond6:                                      ; preds = %while.cond2, %while.body8
  %i.1 = phi i32 [ %inc, %while.body8 ], [ %i.065, %while.cond2 ]
  %inc = add nsw i32 %i.1, 1
  %cmp7 = icmp slt i32 %inc, %dec
  br i1 %cmp7, label %while.body8, label %while.cond.backedge

while.body8:                                      ; preds = %while.cond6
  %arrayidx9 = getelementptr inbounds i32* %array, i32 %inc
  %2 = load i32* %arrayidx9, align 4, !tbaa !1
  %cmp10 = icmp slt i32 %2, %0
  br i1 %cmp10, label %while.cond6, label %if.then15

if.then15:                                        ; preds = %while.body8
  %3 = load i32* %arrayidx3, align 4, !tbaa !1
  store i32 %3, i32* %arrayidx9, align 4, !tbaa !1
  store i32 %2, i32* %arrayidx3, align 4, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond6, %if.then15
  %cmp1 = icmp slt i32 %inc, %dec
  br i1 %cmp1, label %while.cond2.preheader, label %while.end21

while.end21:                                      ; preds = %while.cond.backedge, %if.end
  %j.0.lcssa = phi i32 [ %add, %if.end ], [ %dec, %while.cond.backedge ]
  %arrayidx22 = getelementptr inbounds i32* %array, i32 %j.0.lcssa
  %4 = load i32* %arrayidx22, align 4, !tbaa !1
  store i32 %4, i32* %arrayidx, align 4, !tbaa !1
  store i32 %0, i32* %arrayidx22, align 4, !tbaa !1
  %sub25 = add nsw i32 %j.0.lcssa, -1
  %call = tail call i32 @qsort(i32* %array, i32 %beg.tr68, i32 %sub25)
  %add26 = add nsw i32 %j.0.lcssa, 1
  %sub = sub nsw i32 %end, %add26
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %return, label %if.end

return:                                           ; preds = %while.end21, %entry
  %accumulator.tr.lcssa = phi i32 [ -1, %entry ], [ 0, %while.end21 ]
  ret i32 %accumulator.tr.lcssa
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
