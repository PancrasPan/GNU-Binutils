; ModuleID = './testcase_8slots/loopbranch.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@Array1 = global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@Array2 = global [7 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64], align 4
@arraySize = global i32 7, align 4
@bound = constant i32 10, align 4

; Function Attrs: nounwind readonly
define i32 @main() #0 {
entry:
  %0 = load i32* @arraySize, align 4, !tbaa !1
  %cmp20 = icmp sgt i32 %0, 1
  br i1 %cmp20, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i32* @arraySize, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.022 = phi i32 [ 1, %for.body.lr.ph ], [ %add9, %for.inc ]
  %sum.021 = phi i32 [ 0, %for.body.lr.ph ], [ %sum.1, %for.inc ]
  %arrayidx = getelementptr inbounds [7 x i32]* @Array1, i32 0, i32 %i.022
  %2 = load i32* %arrayidx, align 4, !tbaa !1
  %arrayidx1 = getelementptr inbounds [7 x i32]* @Array2, i32 0, i32 %i.022
  %3 = load i32* %arrayidx1, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %3, %sum.021
  %cmp4 = icmp sgt i32 %add, 10
  br i1 %cmp4, label %for.end, label %for.inc

if.else:                                          ; preds = %for.body
  %add7 = add nsw i32 %2, %sum.021
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %sum.1 = phi i32 [ %add, %if.then ], [ %add7, %if.else ]
  %add9 = add nsw i32 %i.022, 2
  %cmp = icmp slt i32 %add9, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then, %entry
  %i.0.lcssa = phi i32 [ 1, %entry ], [ %add9, %for.inc ], [ %i.022, %if.then ]
  %sum.2 = phi i32 [ 0, %entry ], [ %sum.1, %for.inc ], [ %add, %if.then ]
  %add10 = add nsw i32 %sum.2, %i.0.lcssa
  ret i32 %add10
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
