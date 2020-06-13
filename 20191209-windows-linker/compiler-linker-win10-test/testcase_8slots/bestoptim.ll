; ModuleID = './testcase_8slots/bestoptim.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define void @hardwareLoop(i32* nocapture %a, i32 %j) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %j.addr.03 = phi i32 [ %j, %entry ], [ %mul, %for.body ]
  %mul = mul nsw i32 %j.addr.03, 3
  %arrayidx = getelementptr inbounds i32* %a, i32 %mul
  store i32 0, i32* %arrayidx, align 4, !tbaa !1
  %inc = add nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc, 5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
