; ModuleID = './testcase_8slots/convolution.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.x = internal global [16 x i32] zeroinitializer, align 4
@main.h = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %px, i32* nocapture %ph) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %ph.addr.06 = phi i32* [ %ph, %entry ], [ %incdec.ptr1, %for.body ]
  %px.addr.05 = phi i32* [ %px, %entry ], [ %incdec.ptr, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %px.addr.05, i32 1
  store i32 %i.07, i32* %px.addr.05, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %ph.addr.06, i32 1
  store i32 %i.07, i32* %ph.addr.06, align 4, !tbaa !1
  %inc = add nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  tail call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0))
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %ph.07 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 15), %entry ], [ %incdec.ptr1, %for.body ]
  %px.06 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), %entry ], [ %incdec.ptr, %for.body ]
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %y.04 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %px.06, i32 1
  %0 = load i32* %px.06, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %ph.07, i32 -1
  %1 = load i32* %ph.07, align 4, !tbaa !1
  %mul = mul nsw i32 %1, %0
  %add = add nsw i32 %mul, %y.04
  %inc = add nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 %add
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
