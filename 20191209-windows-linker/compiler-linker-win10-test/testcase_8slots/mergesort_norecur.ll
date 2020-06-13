; ModuleID = './testcase_8slots/mergesort_norecur.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@t_array = internal unnamed_addr global [10 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @merge_sort(i32* nocapture %Array, i32 %start, i32 %end) #0 {
entry:
  %cmp = icmp slt i32 %end, %start
  br i1 %cmp, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %sub = sub i32 1, %start
  %add = add i32 %sub, %end
  %cmp1168 = icmp sgt i32 %add, 1
  br i1 %cmp1168, label %while.body.lr.ph, label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp64165 = icmp sgt i32 %start, %end
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %for.end70
  %dist.0169 = phi i32 [ 1, %while.body.lr.ph ], [ %mul, %for.end70 ]
  %add2 = add nsw i32 %dist.0169, %start
  %add5 = add i32 %dist.0169, -1
  %sub6 = add i32 %add5, %add2
  %cmp11154 = icmp sgt i32 %add2, %end
  br i1 %cmp11154, label %for.cond54.preheader, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %while.body
  %cmp7 = icmp sgt i32 %sub6, %end
  %end.sub6 = select i1 %cmp7, i32 %end, i32 %sub6
  %add45 = add i32 %dist.0169, -1
  br label %for.cond.preheader

for.cond54.preheader:                             ; preds = %for.end41, %while.body
  %k.0.lcssa = phi i32 [ 0, %while.body ], [ %k.3.lcssa, %for.end41 ]
  %a1_i.0.lcssa = phi i32 [ %start, %while.body ], [ %a2_i.2.lcssa, %for.end41 ]
  %cmp55162 = icmp sgt i32 %a1_i.0.lcssa, %end
  br i1 %cmp55162, label %for.cond63.preheader, label %for.body56

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.end41
  %a1_e.0159.in = phi i32 [ %add2, %for.cond.preheader.lr.ph ], [ %add42, %for.end41 ]
  %k.0158 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %k.3.lcssa, %for.end41 ]
  %a2_e.0157 = phi i32 [ %end.sub6, %for.cond.preheader.lr.ph ], [ %end.sub46, %for.end41 ]
  %a1_i.0155 = phi i32 [ %start, %for.cond.preheader.lr.ph ], [ %a2_i.2.lcssa, %for.end41 ]
  %a1_e.0159 = add nsw i32 %a1_e.0159.in, -1
  %cmp13134 = icmp sgt i32 %a1_i.0155, %a1_e.0159
  %cmp14125135 = icmp sgt i32 %a1_e.0159.in, %a2_e.0157
  %or.cond126136 = or i1 %cmp13134, %cmp14125135
  br i1 %or.cond126136, label %for.cond26.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader, %if.else
  %cmp13140 = phi i1 [ %cmp13, %if.else ], [ %cmp13134, %for.cond.preheader ]
  %k.1.ph139 = phi i32 [ %inc23, %if.else ], [ %k.0158, %for.cond.preheader ]
  %a2_i.1.ph138 = phi i32 [ %a2_i.1127, %if.else ], [ %a1_e.0159.in, %for.cond.preheader ]
  %a1_i.1.ph137 = phi i32 [ %inc21, %if.else ], [ %a1_i.0155, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %Array, i32 %a1_i.1.ph137
  br label %for.body

for.cond26.preheader:                             ; preds = %if.else, %if.then17, %for.cond.preheader
  %a1_i.1.ph.lcssa = phi i32 [ %a1_i.0155, %for.cond.preheader ], [ %a1_i.1.ph137, %if.then17 ], [ %inc21, %if.else ]
  %k.1.lcssa = phi i32 [ %k.0158, %for.cond.preheader ], [ %inc19, %if.then17 ], [ %inc23, %if.else ]
  %a2_i.1.lcssa = phi i32 [ %a1_e.0159.in, %for.cond.preheader ], [ %inc, %if.then17 ], [ %a2_i.1127, %if.else ]
  %cmp27144 = icmp sgt i32 %a1_i.1.ph.lcssa, %a1_e.0159
  br i1 %cmp27144, label %for.cond34.preheader, label %for.body28.lr.ph

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %0 = add i32 %k.1.lcssa, 1
  %1 = add i32 %a1_e.0159.in, -1
  %2 = icmp sgt i32 %a1_i.1.ph.lcssa, %1
  %smax = select i1 %2, i32 %a1_i.1.ph.lcssa, i32 %1
  %3 = add i32 %0, %smax
  br label %for.body28

for.body:                                         ; preds = %for.body.lr.ph, %if.then17
  %k.1128 = phi i32 [ %k.1.ph139, %for.body.lr.ph ], [ %inc19, %if.then17 ]
  %a2_i.1127 = phi i32 [ %a2_i.1.ph138, %for.body.lr.ph ], [ %inc, %if.then17 ]
  %4 = load i32* %arrayidx, align 4, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32* %Array, i32 %a2_i.1127
  %5 = load i32* %arrayidx15, align 4, !tbaa !1
  %cmp16 = icmp sgt i32 %4, %5
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body
  %inc = add nsw i32 %a2_i.1127, 1
  %inc19 = add nsw i32 %k.1128, 1
  %arrayidx20 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.1128
  store i32 %5, i32* %arrayidx20, align 4, !tbaa !1
  %cmp14 = icmp sge i32 %a2_i.1127, %a2_e.0157
  %or.cond = or i1 %cmp13140, %cmp14
  br i1 %or.cond, label %for.cond26.preheader, label %for.body

if.else:                                          ; preds = %for.body
  %inc21 = add nsw i32 %a1_i.1.ph137, 1
  %inc23 = add nsw i32 %k.1128, 1
  %arrayidx24 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.1128
  store i32 %4, i32* %arrayidx24, align 4, !tbaa !1
  %cmp13 = icmp sge i32 %a1_i.1.ph137, %a1_e.0159
  %cmp14125 = icmp sgt i32 %a2_i.1127, %a2_e.0157
  %or.cond126 = or i1 %cmp13, %cmp14125
  br i1 %or.cond126, label %for.cond26.preheader, label %for.body.lr.ph

for.cond26.for.cond34.preheader_crit_edge:        ; preds = %for.body28
  %6 = sub i32 %3, %a1_i.1.ph.lcssa
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond26.for.cond34.preheader_crit_edge, %for.cond26.preheader
  %k.2.lcssa = phi i32 [ %6, %for.cond26.for.cond34.preheader_crit_edge ], [ %k.1.lcssa, %for.cond26.preheader ]
  %cmp35148 = icmp sgt i32 %a2_i.1.lcssa, %a2_e.0157
  br i1 %cmp35148, label %for.end41, label %for.body36.lr.ph

for.body36.lr.ph:                                 ; preds = %for.cond34.preheader
  %7 = add i32 %k.2.lcssa, 1
  %8 = icmp sgt i32 %a2_i.1.lcssa, %a2_e.0157
  %smax175 = select i1 %8, i32 %a2_i.1.lcssa, i32 %a2_e.0157
  %9 = add i32 %7, %smax175
  %10 = sub i32 %9, %a2_i.1.lcssa
  br label %for.body36

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %k.2146 = phi i32 [ %k.1.lcssa, %for.body28.lr.ph ], [ %inc31, %for.body28 ]
  %a1_i.2145 = phi i32 [ %a1_i.1.ph.lcssa, %for.body28.lr.ph ], [ %inc29, %for.body28 ]
  %inc29 = add nsw i32 %a1_i.2145, 1
  %arrayidx30 = getelementptr inbounds i32* %Array, i32 %a1_i.2145
  %11 = load i32* %arrayidx30, align 4, !tbaa !1
  %inc31 = add nsw i32 %k.2146, 1
  %arrayidx32 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.2146
  store i32 %11, i32* %arrayidx32, align 4, !tbaa !1
  %cmp27 = icmp slt i32 %a1_i.2145, %a1_e.0159
  br i1 %cmp27, label %for.body28, label %for.cond26.for.cond34.preheader_crit_edge

for.body36:                                       ; preds = %for.body36, %for.body36.lr.ph
  %k.3150 = phi i32 [ %k.2.lcssa, %for.body36.lr.ph ], [ %inc39, %for.body36 ]
  %a2_i.2149 = phi i32 [ %a2_i.1.lcssa, %for.body36.lr.ph ], [ %inc37, %for.body36 ]
  %inc37 = add nsw i32 %a2_i.2149, 1
  %arrayidx38 = getelementptr inbounds i32* %Array, i32 %a2_i.2149
  %12 = load i32* %arrayidx38, align 4, !tbaa !1
  %inc39 = add nsw i32 %k.3150, 1
  %arrayidx40 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.3150
  store i32 %12, i32* %arrayidx40, align 4, !tbaa !1
  %cmp35 = icmp slt i32 %a2_i.2149, %a2_e.0157
  br i1 %cmp35, label %for.body36, label %for.cond34.for.end41_crit_edge

for.cond34.for.end41_crit_edge:                   ; preds = %for.body36
  %13 = add i32 %smax175, 1
  br label %for.end41

for.end41:                                        ; preds = %for.cond34.for.end41_crit_edge, %for.cond34.preheader
  %k.3.lcssa = phi i32 [ %10, %for.cond34.for.end41_crit_edge ], [ %k.2.lcssa, %for.cond34.preheader ]
  %a2_i.2.lcssa = phi i32 [ %13, %for.cond34.for.end41_crit_edge ], [ %a2_i.1.lcssa, %for.cond34.preheader ]
  %add42 = add nsw i32 %a2_i.2.lcssa, %dist.0169
  %sub46 = add i32 %add45, %add42
  %cmp47 = icmp sgt i32 %sub46, %end
  %end.sub46 = select i1 %cmp47, i32 %end, i32 %sub46
  %cmp11 = icmp sgt i32 %add42, %end
  br i1 %cmp11, label %for.cond54.preheader, label %for.cond.preheader

for.cond63.preheader:                             ; preds = %for.body56, %for.cond54.preheader
  br i1 %cmp64165, label %for.end70, label %for.body65

for.body56:                                       ; preds = %for.cond54.preheader, %for.body56
  %k.4164 = phi i32 [ %inc59, %for.body56 ], [ %k.0.lcssa, %for.cond54.preheader ]
  %a1_i.3163 = phi i32 [ %inc57, %for.body56 ], [ %a1_i.0.lcssa, %for.cond54.preheader ]
  %inc57 = add nsw i32 %a1_i.3163, 1
  %arrayidx58 = getelementptr inbounds i32* %Array, i32 %a1_i.3163
  %14 = load i32* %arrayidx58, align 4, !tbaa !1
  %inc59 = add nsw i32 %k.4164, 1
  %arrayidx60 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k.4164
  store i32 %14, i32* %arrayidx60, align 4, !tbaa !1
  %cmp55 = icmp slt i32 %a1_i.3163, %end
  br i1 %cmp55, label %for.body56, label %for.cond63.preheader

for.body65:                                       ; preds = %for.cond63.preheader, %for.body65
  %k62.0167 = phi i32 [ %inc66, %for.body65 ], [ 0, %for.cond63.preheader ]
  %i.0166 = phi i32 [ %inc68, %for.body65 ], [ %start, %for.cond63.preheader ]
  %inc66 = add nsw i32 %k62.0167, 1
  %arrayidx67 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %k62.0167
  %15 = load i32* %arrayidx67, align 4, !tbaa !1
  %inc68 = add nsw i32 %i.0166, 1
  %arrayidx69 = getelementptr inbounds i32* %Array, i32 %i.0166
  store i32 %15, i32* %arrayidx69, align 4, !tbaa !1
  %cmp64 = icmp slt i32 %i.0166, %end
  br i1 %cmp64, label %for.body65, label %for.end70

for.end70:                                        ; preds = %for.body65, %for.cond63.preheader
  %mul = shl nsw i32 %dist.0169, 1
  %cmp1 = icmp slt i32 %mul, %add
  br i1 %cmp1, label %while.body, label %return

return:                                           ; preds = %for.end70, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %while.cond.preheader ], [ 0, %for.end70 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
