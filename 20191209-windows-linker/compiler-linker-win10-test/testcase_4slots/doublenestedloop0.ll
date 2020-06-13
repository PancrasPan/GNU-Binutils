; ModuleID = '.\HWlooptest\succ\doublenestedloop.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@a = external global [256 x [256 x i32]]
@sum = external global i32

; Function Attrs: nounwind
define i32 @add() #0 {
entry:
  br label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.inc5, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %add6, %for.inc5 ]
  %sum.promoted = load i32* @sum, align 4, !tbaa !1
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %add15 = phi i32 [ %sum.promoted, %for.body3.lr.ph ], [ %add, %for.body3 ]
  %j.014 = phi i32 [ %i.016, %for.body3.lr.ph ], [ %inc, %for.body3 ]
  %arrayidx4 = getelementptr inbounds [256 x [256 x i32]]* @a, i32 0, i32 %i.016, i32 %j.014
  %0 = load i32* %arrayidx4, align 4, !tbaa !1
  %add = add nsw i32 %add15, %0
  %inc = add nsw i32 %j.014, 1
  %exitcond = icmp eq i32 %inc, 256
  br i1 %exitcond, label %for.inc5, label %for.body3

for.inc5:                                         ; preds = %for.body3
  store i32 %add, i32* @sum, align 4, !tbaa !1
  %add6 = add nsw i32 %i.016, 2
  %cmp = icmp slt i32 %add6, 256
  br i1 %cmp, label %for.body3.lr.ph, label %for.end7

for.end7:                                         ; preds = %for.inc5
  %1 = load i32* @sum, align 4, !tbaa !1
  ret i32 %1
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
