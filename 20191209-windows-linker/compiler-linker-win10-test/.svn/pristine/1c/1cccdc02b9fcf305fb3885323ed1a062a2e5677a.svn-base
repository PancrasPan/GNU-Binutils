; ModuleID = './testcase_8slots/parallelandnestedloop.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@sum = external global i32
@ex_array = external global [256 x i32]
@bound = external constant i32

; Function Attrs: nounwind
define i32 @add(i32* nocapture readonly %p_array, i32 %p_size) #0 {
entry:
  %shr = ashr i32 %p_size, 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc7, %entry
  %i.026 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %half.025 = phi i32 [ %shr, %entry ], [ %half.1.lcssa, %for.inc7 ]
  %cmp220 = icmp sgt i32 %half.025, -1
  br i1 %cmp220, label %for.body3, label %while.body.lr.ph

while.cond.preheader:                             ; preds = %for.body3
  %cmp422 = icmp slt i32 %half.025, 255
  br i1 %cmp422, label %while.body.lr.ph, label %for.inc7

while.body.lr.ph:                                 ; preds = %for.cond1.preheader, %while.cond.preheader
  %sum.promoted = load i32* @sum, align 4, !tbaa !1
  br label %while.body

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.021 = phi i32 [ %sub, %for.body3 ], [ %half.025, %for.cond1.preheader ]
  %arrayidx = getelementptr inbounds i32* %p_array, i32 %j.021
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %1 = load i32* @sum, align 4, !tbaa !1
  %add = add nsw i32 %1, %0
  store i32 %add, i32* @sum, align 4, !tbaa !1
  %sub = add nsw i32 %j.021, -2
  %cmp2 = icmp sgt i32 %sub, -1
  br i1 %cmp2, label %for.body3, label %while.cond.preheader

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %sub624 = phi i32 [ %sum.promoted, %while.body.lr.ph ], [ %sub6, %while.body ]
  %half.123 = phi i32 [ %half.025, %while.body.lr.ph ], [ %inc, %while.body ]
  %inc = add nsw i32 %half.123, 1
  %arrayidx5 = getelementptr inbounds [256 x i32]* @ex_array, i32 0, i32 %half.123
  %2 = load i32* %arrayidx5, align 4, !tbaa !1
  %sub6 = sub nsw i32 %sub624, %2
  %exitcond = icmp eq i32 %inc, 255
  br i1 %exitcond, label %while.cond.for.inc7_crit_edge, label %while.body

while.cond.for.inc7_crit_edge:                    ; preds = %while.body
  store i32 %sub6, i32* @sum, align 4, !tbaa !1
  br label %for.inc7

for.inc7:                                         ; preds = %while.cond.for.inc7_crit_edge, %while.cond.preheader
  %half.1.lcssa = phi i32 [ 255, %while.cond.for.inc7_crit_edge ], [ %half.025, %while.cond.preheader ]
  %inc8 = add nsw i32 %i.026, 1
  %exitcond27 = icmp eq i32 %inc8, 255
  br i1 %exitcond27, label %do.end, label %for.cond1.preheader

do.end:                                           ; preds = %for.inc7
  %3 = load i32* @bound, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 255
  %.op = add i32 %3, 1
  %5 = select i1 %4, i32 256, i32 %.op
  %6 = load i32* @sum, align 4, !tbaa !1
  %add12 = add nsw i32 %6, %5
  store i32 %add12, i32* @sum, align 4, !tbaa !1
  ret i32 %add12
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
