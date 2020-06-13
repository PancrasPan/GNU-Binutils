; ModuleID = './testcase_8slots/quicksort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @partition(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %cmp81 = icmp sgt i32 %start, %end
  br i1 %cmp81, label %return, label %if.end

if.end:                                           ; preds = %entry, %if.end26
  %start.tr82 = phi i32 [ %add, %if.end26 ], [ %start, %entry ]
  %arrayidx = getelementptr inbounds i32* %array, i32 %start.tr82
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %cmp174 = icmp slt i32 %start.tr82, %end
  br i1 %cmp174, label %for.cond.preheader, label %while.end

for.cond.preheader:                               ; preds = %if.end, %if.end16
  %j.076 = phi i32 [ %j.1.lcssa, %if.end16 ], [ %end, %if.end ]
  %i.075 = phi i32 [ %i.1.lcssa, %if.end16 ], [ %start.tr82, %if.end ]
  %cmp267 = icmp slt i32 %i.075, %j.076
  br i1 %cmp267, label %land.rhs, label %for.cond5.preheader

for.cond:                                         ; preds = %land.rhs
  %cmp2 = icmp slt i32 %i.075, %dec
  br i1 %cmp2, label %land.rhs, label %for.cond5.preheader

land.rhs:                                         ; preds = %for.cond.preheader, %for.cond
  %j.168 = phi i32 [ %dec, %for.cond ], [ %j.076, %for.cond.preheader ]
  %arrayidx3 = getelementptr inbounds i32* %array, i32 %j.168
  %1 = load i32* %arrayidx3, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %1, %0
  %dec = add nsw i32 %j.168, -1
  br i1 %cmp4, label %for.cond5.preheader, label %for.cond

for.cond5.preheader:                              ; preds = %land.rhs, %for.cond, %for.cond.preheader
  %j.1.lcssa = phi i32 [ %j.076, %for.cond.preheader ], [ %j.168, %land.rhs ], [ %dec, %for.cond ]
  %cmp670 = icmp slt i32 %i.075, %j.1.lcssa
  br i1 %cmp670, label %land.rhs7, label %for.end13

for.cond5:                                        ; preds = %land.rhs7
  %cmp6 = icmp slt i32 %inc, %j.1.lcssa
  br i1 %cmp6, label %land.rhs7, label %for.end13

land.rhs7:                                        ; preds = %for.cond5.preheader, %for.cond5
  %i.171 = phi i32 [ %inc, %for.cond5 ], [ %i.075, %for.cond5.preheader ]
  %arrayidx8 = getelementptr inbounds i32* %array, i32 %i.171
  %2 = load i32* %arrayidx8, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %2, %0
  %inc = add nsw i32 %i.171, 1
  br i1 %cmp9, label %for.end13, label %for.cond5

for.end13:                                        ; preds = %for.cond5, %land.rhs7, %for.cond5.preheader
  %i.1.lcssa = phi i32 [ %i.075, %for.cond5.preheader ], [ %inc, %for.cond5 ], [ %i.171, %land.rhs7 ]
  %cmp14 = icmp eq i32 %i.1.lcssa, %j.1.lcssa
  br i1 %cmp14, label %while.end, label %if.end16

if.end16:                                         ; preds = %for.end13
  %arrayidx17 = getelementptr inbounds i32* %array, i32 %j.1.lcssa
  %3 = load i32* %arrayidx17, align 4, !tbaa !1
  %arrayidx18 = getelementptr inbounds i32* %array, i32 %i.1.lcssa
  %4 = load i32* %arrayidx18, align 4, !tbaa !1
  store i32 %4, i32* %arrayidx17, align 4, !tbaa !1
  store i32 %3, i32* %arrayidx18, align 4, !tbaa !1
  %cmp1 = icmp slt i32 %i.1.lcssa, %j.1.lcssa
  br i1 %cmp1, label %for.cond.preheader, label %while.end

while.end:                                        ; preds = %if.end16, %for.end13, %if.end
  %i.2 = phi i32 [ %start.tr82, %if.end ], [ %i.1.lcssa, %for.end13 ], [ %i.1.lcssa, %if.end16 ]
  %j.2 = phi i32 [ %end, %if.end ], [ %j.1.lcssa, %for.end13 ], [ %j.1.lcssa, %if.end16 ]
  %cmp21 = icmp eq i32 %j.2, %start.tr82
  br i1 %cmp21, label %if.end26, label %if.then22

if.then22:                                        ; preds = %while.end
  %arrayidx23 = getelementptr inbounds i32* %array, i32 %j.2
  %5 = load i32* %arrayidx23, align 4, !tbaa !1
  store i32 %5, i32* %arrayidx, align 4, !tbaa !1
  store i32 %0, i32* %arrayidx23, align 4, !tbaa !1
  br label %if.end26

if.end26:                                         ; preds = %while.end, %if.then22
  %sub = add nsw i32 %i.2, -1
  %call = tail call i32 @partition(i32* %array, i32 %start.tr82, i32 %sub)
  %add = add nsw i32 %j.2, 1
  %cmp = icmp slt i32 %j.2, %end
  br i1 %cmp, label %if.end, label %return

return:                                           ; preds = %if.end26, %entry
  %accumulator.tr.lcssa = phi i32 [ -1, %entry ], [ 0, %if.end26 ]
  ret i32 %accumulator.tr.lcssa
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
