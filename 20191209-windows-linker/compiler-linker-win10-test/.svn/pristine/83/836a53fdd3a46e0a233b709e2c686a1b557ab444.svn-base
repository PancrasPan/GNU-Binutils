; ModuleID = './testcase_8slots/emptyblockinO3.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@nSamples = global i32 40, align 4
@nTaps = global i32 16, align 4
@h = constant [51 x i32] [i32 -35, i32 -219, i32 -503, i32 -494, i32 -8, i32 347, i32 19, i32 -348, i32 26, i32 404, i32 -103, i32 -485, i32 220, i32 579, i32 -398, i32 -678, i32 663, i32 774, i32 -1073, i32 -859, i32 1769, i32 925, i32 -3279, i32 -968, i32 10363, i32 17367, i32 10363, i32 -968, i32 -3279, i32 925, i32 1769, i32 -859, i32 -1073, i32 774, i32 663, i32 -678, i32 -398, i32 579, i32 220, i32 -485, i32 -103, i32 404, i32 26, i32 -348, i32 19, i32 347, i32 -8, i32 -494, i32 -503, i32 -219, i32 -35], align 4
@x = global [51 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0], align 4
@y = common global [51 x i32] zeroinitializer, align 4
@w = common global [51 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @fir() #0 {
entry:
  %0 = load i32* @nSamples, align 4, !tbaa !1
  %cmp41 = icmp sgt i32 %0, 0
  br i1 %cmp41, label %while.cond1.preheader.lr.ph, label %while.end9

while.cond1.preheader.lr.ph:                      ; preds = %entry
  %1 = load i32* @nTaps, align 4, !tbaa !1
  %cmp236 = icmp sgt i32 %1, 0
  br label %while.cond1.preheader

while.cond1.while.cond.loopexit_crit_edge:        ; preds = %while.body3
  store i32 %add, i32* %arrayidx6, align 4, !tbaa !1
  br label %while.cond.loopexit

while.cond.loopexit:                              ; preds = %while.cond1.while.cond.loopexit_crit_edge, %while.cond1.preheader
  %accum.1.lcssa = phi i32 [ %add8, %while.cond1.while.cond.loopexit_crit_edge ], [ %accum.042, %while.cond1.preheader ]
  %cmp = icmp sgt i32 %n.043, 0
  br i1 %cmp, label %while.cond1.preheader, label %while.end9

while.cond1.preheader:                            ; preds = %while.cond1.preheader.lr.ph, %while.cond.loopexit
  %n.043.in = phi i32 [ %0, %while.cond1.preheader.lr.ph ], [ %n.043, %while.cond.loopexit ]
  %accum.042 = phi i32 [ undef, %while.cond1.preheader.lr.ph ], [ %accum.1.lcssa, %while.cond.loopexit ]
  %n.043 = add nsw i32 %n.043.in, -1
  br i1 %cmp236, label %while.body3.lr.ph, label %while.cond.loopexit

while.body3.lr.ph:                                ; preds = %while.cond1.preheader
  %arrayidx6 = getelementptr inbounds [51 x i32]* @y, i32 0, i32 %n.043
  %arrayidx6.promoted = load i32* %arrayidx6, align 4, !tbaa !1
  br label %while.body3

while.body3:                                      ; preds = %while.body3, %while.body3.lr.ph
  %add39 = phi i32 [ %arrayidx6.promoted, %while.body3.lr.ph ], [ %add, %while.body3 ]
  %accum.138 = phi i32 [ %accum.042, %while.body3.lr.ph ], [ %add8, %while.body3 ]
  %m.037 = phi i32 [ 0, %while.body3.lr.ph ], [ %inc, %while.body3 ]
  %arrayidx = getelementptr inbounds [51 x i32]* @h, i32 0, i32 %m.037
  %2 = load i32* %arrayidx, align 4, !tbaa !1
  %sub4 = sub nsw i32 %n.043, %m.037
  %arrayidx5 = getelementptr inbounds [51 x i32]* @x, i32 0, i32 %sub4
  %3 = load i32* %arrayidx5, align 4, !tbaa !1
  %mul = mul nsw i32 %3, %2
  %add = add nsw i32 %add39, %mul
  %add8 = add nsw i32 %add, %accum.138
  %inc = add nsw i32 %m.037, 1
  %exitcond = icmp eq i32 %inc, %1
  br i1 %exitcond, label %while.cond1.while.cond.loopexit_crit_edge, label %while.body3

while.end9:                                       ; preds = %while.cond.loopexit, %entry
  %accum.0.lcssa = phi i32 [ undef, %entry ], [ %accum.1.lcssa, %while.cond.loopexit ]
  %4 = load i32* @nSamples, align 4, !tbaa !1
  %sub10 = add nsw i32 %4, -1
  %5 = load i32* @nTaps, align 4, !tbaa !1
  %cmp1134 = icmp sgt i32 %5, 0
  br i1 %cmp1134, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %while.end9
  %arrayidx12 = getelementptr inbounds [51 x i32]* @x, i32 0, i32 %sub10
  %6 = load i32* %arrayidx12, align 4, !tbaa !1
  %sub13 = sub nsw i32 %6, %accum.0.lcssa
  %mul14 = shl i32 %sub13, 1
  %7 = load i32* @nTaps, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %j.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.body ]
  %sub15 = sub nsw i32 %sub10, %j.035
  %arrayidx16 = getelementptr inbounds [51 x i32]* @x, i32 0, i32 %sub15
  %8 = load i32* %arrayidx16, align 4, !tbaa !1
  %mul17 = mul nsw i32 %mul14, %8
  %arrayidx18 = getelementptr inbounds [51 x i32]* @w, i32 0, i32 %j.035
  %9 = load i32* %arrayidx18, align 4, !tbaa !1
  %add19 = add nsw i32 %mul17, %9
  store i32 %add19, i32* %arrayidx18, align 4, !tbaa !1
  %inc20 = add nsw i32 %j.035, 1
  %cmp11 = icmp slt i32 %inc20, %7
  br i1 %cmp11, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %while.end9
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
