; ModuleID = '.\HWlooptest\succ\notcondition.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@bound = external constant i32
@a = external global [256 x i32]
@sum = external global i32

; Function Attrs: nounwind
define i32 @add() #0 {
entry:
  %0 = load i32* @bound, align 4, !tbaa !1
  %lnot4 = icmp slt i32 %0, 0
  %.pre = load i32* @sum, align 4, !tbaa !1
  br i1 %lnot4, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %add6 = phi i32 [ %add, %for.body ], [ %.pre, %entry ]
  %i.05 = phi i32 [ %add1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [256 x i32]* @a, i32 0, i32 %i.05
  %1 = load i32* %arrayidx, align 4, !tbaa !1
  %add = add nsw i32 %add6, %1
  %add1 = add nsw i32 %i.05, 2
  %lnot = icmp sgt i32 %add1, %0
  br i1 %lnot, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %add, i32* @sum, align 4, !tbaa !1
  br label %for.end

for.end:                                          ; preds = %entry, %for.cond.for.end_crit_edge
  %2 = phi i32 [ %add, %for.cond.for.end_crit_edge ], [ %.pre, %entry ]
  ret i32 %2
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
