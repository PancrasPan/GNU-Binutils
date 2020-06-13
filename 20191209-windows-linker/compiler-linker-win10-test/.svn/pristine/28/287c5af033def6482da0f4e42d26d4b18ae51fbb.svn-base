; ModuleID = './testcase_8slots/comcond5.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@array = external global [0 x i32]

; Function Attrs: nounwind readonly
define i32 @part(i32 %beg, i32 %end) #0 {
entry:
  %cmp7 = icmp sgt i32 %end, %beg
  br i1 %cmp7, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %arrayidx1 = getelementptr inbounds [0 x i32]* @array, i32 0, i32 %beg
  %0 = load i32* %arrayidx1, align 4, !tbaa !1
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %cmp = icmp sgt i32 %dec, %beg
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %j.08 = phi i32 [ %end, %land.rhs.lr.ph ], [ %dec, %while.cond ]
  %arrayidx = getelementptr inbounds [0 x i32]* @array, i32 0, i32 %j.08
  %1 = load i32* %arrayidx, align 4, !tbaa !1
  %cmp2 = icmp sgt i32 %1, %0
  %dec = add nsw i32 %j.08, -1
  br i1 %cmp2, label %while.cond, label %while.end

while.end:                                        ; preds = %land.rhs, %while.cond, %entry
  %j.0.lcssa = phi i32 [ %end, %entry ], [ %j.08, %land.rhs ], [ %dec, %while.cond ]
  %sub = sub nsw i32 %j.0.lcssa, %beg
  ret i32 %sub
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
