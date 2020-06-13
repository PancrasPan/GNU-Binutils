; ModuleID = '.\HWlooptest\succ\loopifmain.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@sum = global i32 0, align 4
@bound = global i32 3, align 4
@threshold = global i32 10, align 4
@ExArray = global [5 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %FiboArray = alloca [5 x i32], align 4
  %arrayidx = getelementptr inbounds [5 x i32]* %FiboArray, i32 0, i32 1
  store i32 1, i32* %arrayidx, align 4, !tbaa !1
  %arrayidx1 = getelementptr inbounds [5 x i32]* %FiboArray, i32 0, i32 0
  store i32 1, i32* %arrayidx1, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %0 = phi i32 [ 1, %entry ], [ %.pre, %for.body.for.body_crit_edge ]
  %1 = phi i32 [ 1, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.024 = phi i32 [ 2, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nsw i32 %0, %1
  %arrayidx5 = getelementptr inbounds [5 x i32]* %FiboArray, i32 0, i32 %i.024
  store i32 %add, i32* %arrayidx5, align 4, !tbaa !1
  %inc = add nsw i32 %i.024, 1
  %exitcond25 = icmp eq i32 %inc, 5
  br i1 %exitcond25, label %for.body9, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %sub = add nsw i32 %i.024, -1
  %arrayidx2 = getelementptr inbounds [5 x i32]* %FiboArray, i32 0, i32 %sub
  %.pre = load i32* %arrayidx2, align 4, !tbaa !1
  br label %for.body

for.body9:                                        ; preds = %for.body, %for.body9
  %i6.023 = phi i32 [ %inc14, %for.body9 ], [ 1, %for.body ]
  %sub10 = add nsw i32 %i6.023, -1
  %arrayidx11 = getelementptr inbounds [5 x i32]* @ExArray, i32 0, i32 %sub10
  %2 = load i32* %arrayidx11, align 4, !tbaa !1
  %mul = shl nsw i32 %2, 1
  %arrayidx12 = getelementptr inbounds [5 x i32]* @ExArray, i32 0, i32 %i6.023
  store i32 %mul, i32* %arrayidx12, align 4, !tbaa !1
  %inc14 = add nsw i32 %i6.023, 1
  %exitcond = icmp eq i32 %inc14, 5
  br i1 %exitcond, label %for.end15, label %for.body9

for.end15:                                        ; preds = %for.body9
  %call = call i32 @add(i32* %arrayidx1, i32 5) #2
  store i32 %call, i32* @sum, align 4, !tbaa !1
  ret i32 %call
}

declare i32 @add(i32*, i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
