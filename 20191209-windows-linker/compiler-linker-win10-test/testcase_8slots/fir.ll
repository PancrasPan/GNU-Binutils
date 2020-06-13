; ModuleID = './testcase_8slots/fir.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.x = internal global [16 x i32] zeroinitializer, align 4
@main.h = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %px, i32* nocapture %ph, i32 %y) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.07 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %px.addr.06 = phi i32* [ %px, %entry ], [ %incdec.ptr, %for.body ]
  %ph.addr.05 = phi i32* [ %ph, %entry ], [ %incdec.ptr1, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %px.addr.06, i32 1
  store i32 %i.07, i32* %px.addr.06, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %ph.addr.05, i32 1
  store i32 %i.07, i32* %ph.addr.05, align 4, !tbaa !1
  %inc = add nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %inc, 17
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  tail call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), i32 undef)
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %y.017 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %ph.016 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 15), %entry ], [ %incdec.ptr, %for.body ]
  %px2.015 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 14), %entry ], [ %incdec.ptr1, %for.body ]
  %px.014 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 15), %entry ], [ %incdec.ptr2, %for.body ]
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %ph.016, i32 -1
  %0 = load i32* %ph.016, align 4, !tbaa !1
  %1 = load i32* %px.014, align 4, !tbaa !1
  %mul = mul nsw i32 %1, %0
  %add = add nsw i32 %mul, %y.017
  %incdec.ptr1 = getelementptr inbounds i32* %px2.015, i32 -1
  %2 = load i32* %px2.015, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %px.014, i32 -1
  store i32 %2, i32* %px.014, align 4, !tbaa !1
  %inc = add nsw i32 %i.013, 1
  %exitcond = icmp eq i32 %inc, 15
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %3 = load i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), align 4, !tbaa !1
  %4 = load i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), align 4, !tbaa !1
  %mul3 = mul nsw i32 %4, %3
  %add4 = add nsw i32 %mul3, %add
  store i32 100, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), align 4, !tbaa !1
  tail call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), i32 undef)
  ret i32 %add4
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
