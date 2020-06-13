; ModuleID = '.\HWlooptest\succ\loopif.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@bound = external constant i32
@ExArray = external global [5 x i32]
@sum = external global i32
@threshold = external constant i32

; Function Attrs: nounwind
define i32 @add(i32* nocapture readonly %p_array, i32 %asize) #0 {
entry:
  %cmp14 = icmp sgt i32 %asize, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  %.pre = load i32* @sum, align 4, !tbaa !1
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i32* @bound, align 4, !tbaa !1
  %1 = load i32* @threshold, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %add8, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %p_array, i32 %i.015
  %2 = load i32* %arrayidx, align 4, !tbaa !1
  %cmp1 = icmp slt i32 %2, %0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds [5 x i32]* @ExArray, i32 0, i32 %i.015
  %3 = load i32* %arrayidx2, align 4, !tbaa !1
  %4 = load i32* @sum, align 4, !tbaa !1
  %add = add nsw i32 %4, %3
  store i32 %add, i32* @sum, align 4, !tbaa !1
  %cmp3 = icmp sgt i32 %add, %1
  br i1 %cmp3, label %for.end, label %for.inc

if.else:                                          ; preds = %for.body
  %5 = load i32* @sum, align 4, !tbaa !1
  %add6 = add nsw i32 %5, %2
  store i32 %add6, i32* @sum, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %6 = phi i32 [ %add6, %if.else ], [ %add, %if.then ]
  %add8 = add nsw i32 %i.015, 2
  %cmp = icmp slt i32 %add8, %asize
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then, %entry.for.end_crit_edge
  %7 = phi i32 [ %.pre, %entry.for.end_crit_edge ], [ %6, %for.inc ], [ %add, %if.then ]
  ret i32 %7
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
