; ModuleID = './testcase_8slots/externbound_sumarray.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@x = global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@nTaps = global i32 5, align 4
@y = global [5 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %0 = load i32* @nTaps, align 4, !tbaa !1
  %cmp11 = icmp sgt i32 %0, 0
  br i1 %cmp11, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %1 = load i32* @nTaps, align 4, !tbaa !1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %sum.013 = phi i32 [ 0, %while.body.lr.ph ], [ %add4, %while.body ]
  %m.012 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body ]
  %arrayidx = getelementptr inbounds [5 x i32]* @x, i32 0, i32 %m.012
  %2 = load i32* %arrayidx, align 4, !tbaa !1
  %arrayidx1 = getelementptr inbounds [5 x i32]* @y, i32 0, i32 %m.012
  %3 = load i32* %arrayidx1, align 4, !tbaa !1
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %arrayidx1, align 4, !tbaa !1
  %4 = load i32* %arrayidx, align 4, !tbaa !1
  %mul = mul nsw i32 %4, %add
  %add4 = add nsw i32 %mul, %sum.013
  %inc = add nsw i32 %m.012, 1
  %cmp = icmp slt i32 %inc, %1
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add4, %while.body ]
  ret i32 %sum.0.lcssa
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
