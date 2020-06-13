; ModuleID = './testcase_8slots/mergesortR.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@t_array = internal unnamed_addr global [10 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @merge_sortR(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %cmp = icmp slt i32 %start, %end
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %add = add nsw i32 %end, %start
  %div = sdiv i32 %add, 2
  %call = tail call i32 @merge_sortR(i32* %array, i32 %start, i32 %div)
  %add1 = add nsw i32 %div, 1
  %call2 = tail call i32 @merge_sortR(i32* %array, i32 %add1, i32 %end)
  %cmp4102 = icmp slt i32 %div, %start
  %cmp592103 = icmp sge i32 %div, %end
  %or.cond93104 = or i1 %cmp4102, %cmp592103
  br i1 %or.cond93104, label %for.cond17.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end, %if.else
  %cmp4108 = phi i1 [ %cmp4, %if.else ], [ %cmp4102, %if.end ]
  %k.0.ph107 = phi i32 [ %inc14, %if.else ], [ %start, %if.end ]
  %j.0.ph106 = phi i32 [ %j.094, %if.else ], [ %add1, %if.end ]
  %i.0.ph105 = phi i32 [ %inc12, %if.else ], [ %start, %if.end ]
  %arrayidx = getelementptr inbounds i32* %array, i32 %i.0.ph105
  br label %for.body

for.cond17.preheader:                             ; preds = %if.else, %if.then8, %if.end
  %i.0.ph.lcssa = phi i32 [ %start, %if.end ], [ %i.0.ph105, %if.then8 ], [ %inc12, %if.else ]
  %k.0.lcssa = phi i32 [ %start, %if.end ], [ %inc10, %if.then8 ], [ %inc14, %if.else ]
  %j.0.lcssa = phi i32 [ %add1, %if.end ], [ %inc, %if.then8 ], [ %j.094, %if.else ]
  %cmp1889 = icmp sgt i32 %i.0.ph.lcssa, %div
  br i1 %cmp1889, label %for.cond25.preheader, label %for.body19.lr.ph

for.body19.lr.ph:                                 ; preds = %for.cond17.preheader
  %0 = icmp sgt i32 %i.0.ph.lcssa, %div
  %smax = select i1 %0, i32 %i.0.ph.lcssa, i32 %div
  %1 = add i32 %k.0.lcssa, %smax
  %2 = add i32 %1, 1
  br label %for.body19

for.body:                                         ; preds = %for.body.lr.ph, %if.then8
  %k.095 = phi i32 [ %k.0.ph107, %for.body.lr.ph ], [ %inc10, %if.then8 ]
  %j.094 = phi i32 [ %j.0.ph106, %for.body.lr.ph ], [ %inc, %if.then8 ]
  %3 = load i32* %arrayidx, align 4, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32* %array, i32 %j.094
  %4 = load i32* %arrayidx6, align 4, !tbaa !1
  %cmp7 = icmp sgt i32 %3, %4
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %inc = add nsw i32 %j.094, 1
  %inc10 = add nsw i32 %k.095, 1
  %arrayidx11 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.095
  store i32 %4, i32* %arrayidx11, align 4, !tbaa !1
  %cmp5 = icmp sge i32 %j.094, %end
  %or.cond = or i1 %cmp4108, %cmp5
  br i1 %or.cond, label %for.cond17.preheader, label %for.body

if.else:                                          ; preds = %for.body
  %inc12 = add nsw i32 %i.0.ph105, 1
  %inc14 = add nsw i32 %k.095, 1
  %arrayidx15 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.095
  store i32 %3, i32* %arrayidx15, align 4, !tbaa !1
  %cmp4 = icmp sge i32 %i.0.ph105, %div
  %cmp592 = icmp sgt i32 %j.094, %end
  %or.cond93 = or i1 %cmp4, %cmp592
  br i1 %or.cond93, label %for.cond17.preheader, label %for.body.lr.ph

for.cond17.for.cond25.preheader_crit_edge:        ; preds = %for.body19
  %5 = sub i32 %2, %i.0.ph.lcssa
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond17.for.cond25.preheader_crit_edge, %for.cond17.preheader
  %k.1.lcssa = phi i32 [ %5, %for.cond17.for.cond25.preheader_crit_edge ], [ %k.0.lcssa, %for.cond17.preheader ]
  %cmp2686 = icmp sgt i32 %j.0.lcssa, %end
  br i1 %cmp2686, label %for.cond34.preheader, label %for.body27

for.body19:                                       ; preds = %for.body19, %for.body19.lr.ph
  %k.191 = phi i32 [ %k.0.lcssa, %for.body19.lr.ph ], [ %inc23, %for.body19 ]
  %i.190 = phi i32 [ %i.0.ph.lcssa, %for.body19.lr.ph ], [ %inc22, %for.body19 ]
  %arrayidx20 = getelementptr inbounds i32* %array, i32 %i.190
  %6 = load i32* %arrayidx20, align 4, !tbaa !1
  %arrayidx21 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.191
  store i32 %6, i32* %arrayidx21, align 4, !tbaa !1
  %inc22 = add nsw i32 %i.190, 1
  %inc23 = add nsw i32 %k.191, 1
  %cmp18 = icmp slt i32 %i.190, %div
  br i1 %cmp18, label %for.body19, label %for.cond17.for.cond25.preheader_crit_edge

for.cond34.preheader:                             ; preds = %for.body27, %for.cond25.preheader
  %cmp3584 = icmp sgt i32 %start, %end
  br i1 %cmp3584, label %return, label %for.body36

for.body27:                                       ; preds = %for.cond25.preheader, %for.body27
  %k.288 = phi i32 [ %inc32, %for.body27 ], [ %k.1.lcssa, %for.cond25.preheader ]
  %j.187 = phi i32 [ %inc31, %for.body27 ], [ %j.0.lcssa, %for.cond25.preheader ]
  %arrayidx28 = getelementptr inbounds i32* %array, i32 %j.187
  %7 = load i32* %arrayidx28, align 4, !tbaa !1
  %arrayidx29 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.288
  store i32 %7, i32* %arrayidx29, align 4, !tbaa !1
  %inc31 = add nsw i32 %j.187, 1
  %inc32 = add nsw i32 %k.288, 1
  %cmp26 = icmp slt i32 %j.187, %end
  br i1 %cmp26, label %for.body27, label %for.cond34.preheader

for.body36:                                       ; preds = %for.cond34.preheader, %for.body36
  %start.addr.085 = phi i32 [ %inc40, %for.body36 ], [ %start, %for.cond34.preheader ]
  %arrayidx37 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %start.addr.085
  %8 = load i32* %arrayidx37, align 4, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32* %array, i32 %start.addr.085
  store i32 %8, i32* %arrayidx38, align 4, !tbaa !1
  %inc40 = add nsw i32 %start.addr.085, 1
  %cmp35 = icmp slt i32 %start.addr.085, %end
  br i1 %cmp35, label %for.body36, label %return

return:                                           ; preds = %for.body36, %for.cond34.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %for.cond34.preheader ], [ 0, %for.body36 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
