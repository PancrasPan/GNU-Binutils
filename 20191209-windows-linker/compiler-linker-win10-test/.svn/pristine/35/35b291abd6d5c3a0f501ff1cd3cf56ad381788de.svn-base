; ModuleID = '.\HWlooptest\succ\referenceIndOut.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@Array1 = global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@arraySize = global i32 7, align 4

; Function Attrs: nounwind readonly
define i32 @main() #0 {
entry:
  %0 = load i32* @arraySize, align 4, !tbaa !1
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = icmp sgt i32 %0, 3
  %.op = add i32 %0, -1
  %.op.op = urem i32 %.op, 3
  %.op.op.op = sub i32 %.op, %.op.op
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %add1, %for.body ]
  %sum.09 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds [7 x i32]* @Array1, i32 0, i32 %i.010
  %2 = load i32* %arrayidx, align 4, !tbaa !1
  %add = add nsw i32 %2, %sum.09
  %add1 = add nsw i32 %i.010, 3
  %cmp = icmp slt i32 %add1, %0
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.op.op.op.op = add i32 %.op.op.op, 3
  %3 = select i1 %1, i32 %.op.op.op.op, i32 3
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %i.0.lcssa = phi i32 [ %3, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %sum.0.lcssa = phi i32 [ %add, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %add2 = add nsw i32 %i.0.lcssa, %sum.0.lcssa
  ret i32 %add2
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
