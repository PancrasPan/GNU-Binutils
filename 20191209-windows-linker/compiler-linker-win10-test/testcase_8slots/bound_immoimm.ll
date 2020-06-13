; ModuleID = './testcase_8slots/bound_immoimm.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@a = external global [256 x i32]
@sum = external global i32

; Function Attrs: nounwind
define i32 @add() #0 {
entry:
  %sum.promoted = load i32* @sum, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %add5 = phi i32 [ %sum.promoted, %entry ], [ %add, %for.body ]
  %i.04 = phi i32 [ 0, %entry ], [ %add1, %for.body ]
  %arrayidx = getelementptr inbounds [256 x i32]* @a, i32 0, i32 %i.04
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %add = add nsw i32 %add5, %0
  %add1 = add nsw i32 %i.04, 2
  %cmp = icmp slt i32 %add1, 256
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  store i32 %add, i32* @sum, align 4, !tbaa !1
  ret i32 %add
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
