; ModuleID = './testcase_8slots/binary_insert.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @binary_insert(i32* nocapture %array, i32 %start, i32 %end) #0 {
entry:
  %cmp = icmp sgt i32 %start, %end
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp151 = icmp slt i32 %start, %end
  br i1 %cmp151, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.end
  %i.053.in = phi i32 [ %i.053, %for.end ], [ %start, %for.cond.preheader ]
  %i.053 = add nsw i32 %i.053.in, 1
  %arrayidx = getelementptr inbounds i32* %array, i32 %i.053
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %cmp24144 = icmp slt i32 %i.053.in, %start
  br i1 %cmp24144, label %for.cond11.preheader, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %for.body, %if.then6
  %srchrear.0.ph46 = phi i32 [ %srchrear.042, %if.then6 ], [ %i.053.in, %for.body ]
  %srchhead.0.ph45 = phi i32 [ %add7, %if.then6 ], [ %start, %for.body ]
  br label %while.body

while.cond:                                       ; preds = %while.body
  %cmp2 = icmp sgt i32 %srchhead.0.ph45, %sub8
  br i1 %cmp2, label %for.cond11.preheader, label %while.body

for.cond11.preheader:                             ; preds = %if.then6, %while.cond, %for.body
  %srchhead.0.ph.lcssa = phi i32 [ %start, %for.body ], [ %srchhead.0.ph45, %while.cond ], [ %add7, %if.then6 ]
  %cmp1248 = icmp slt i32 %i.053.in, %srchhead.0.ph.lcssa
  br i1 %cmp1248, label %for.end, label %for.body13

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %srchrear.042 = phi i32 [ %srchrear.0.ph46, %while.body.lr.ph ], [ %sub8, %while.cond ]
  %add3 = add nsw i32 %srchrear.042, %srchhead.0.ph45
  %div = sdiv i32 %add3, 2
  %arrayidx4 = getelementptr inbounds i32* %array, i32 %div
  %1 = load i32* %arrayidx4, align 4, !tbaa !1
  %cmp5 = icmp sgt i32 %1, %0
  %sub8 = add nsw i32 %div, -1
  br i1 %cmp5, label %while.cond, label %if.then6

if.then6:                                         ; preds = %while.body
  %add7 = add nsw i32 %div, 1
  %cmp241 = icmp slt i32 %div, %srchrear.042
  br i1 %cmp241, label %while.body.lr.ph, label %for.cond11.preheader

for.body13:                                       ; preds = %for.cond11.preheader, %for.body13
  %j.049 = phi i32 [ %dec, %for.body13 ], [ %i.053.in, %for.cond11.preheader ]
  %arrayidx14 = getelementptr inbounds i32* %array, i32 %j.049
  %2 = load i32* %arrayidx14, align 4, !tbaa !1
  %add15 = add nsw i32 %j.049, 1
  %arrayidx16 = getelementptr inbounds i32* %array, i32 %add15
  store i32 %2, i32* %arrayidx16, align 4, !tbaa !1
  %dec = add nsw i32 %j.049, -1
  %cmp12 = icmp sgt i32 %j.049, %srchhead.0.ph.lcssa
  br i1 %cmp12, label %for.body13, label %for.end

for.end:                                          ; preds = %for.body13, %for.cond11.preheader
  %arrayidx17 = getelementptr inbounds i32* %array, i32 %srchhead.0.ph.lcssa
  store i32 %0, i32* %arrayidx17, align 4, !tbaa !1
  %exitcond = icmp eq i32 %i.053, %end
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %for.end, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.end ]
  ret i32 %retval.0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
