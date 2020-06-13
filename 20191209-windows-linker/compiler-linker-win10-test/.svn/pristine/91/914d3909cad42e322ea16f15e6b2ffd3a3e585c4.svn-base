; ModuleID = './testcase_8slots/lms.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.H = internal global [16 x i32] zeroinitializer, align 4
@main.X = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %d, i32* nocapture %x, i32* nocapture %delta, i32* nocapture %p_H, i32* nocapture %p_X) #0 {
entry:
  store i32 7, i32* %d, align 4, !tbaa !1
  store i32 8, i32* %x, align 4, !tbaa !1
  store i32 1, i32* %delta, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %f.05 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %p_X.addr.04 = phi i32* [ %p_X, %entry ], [ %incdec.ptr1, %for.body ]
  %p_H.addr.03 = phi i32* [ %p_H, %entry ], [ %incdec.ptr, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %p_H.addr.03, i32 1
  store i32 1, i32* %p_H.addr.03, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %p_X.addr.04, i32 1
  store i32 1, i32* %p_X.addr.04, align 4, !tbaa !1
  %inc = add nsw i32 %f.05, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %delta = alloca i32, align 4
  %d = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @pin_down(i32* %d, i32* %x, i32* %delta, i32* getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0))
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %p_X2.028 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 14), %entry ], [ %incdec.ptr1, %for.body ]
  %p_X.027 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 15), %entry ], [ %incdec.ptr2, %for.body ]
  %p_H.026 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 15), %entry ], [ %incdec.ptr, %for.body ]
  %f.025 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %p_H.026, i32 -1
  %0 = load i32* %p_H.026, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %p_X2.028, i32 -1
  %1 = load i32* %p_X2.028, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %p_X.027, i32 -1
  store i32 %1, i32* %p_X.027, align 4, !tbaa !1
  %mul = mul nsw i32 %1, %0
  %2 = load i32* %y, align 4, !tbaa !1
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %y, align 4, !tbaa !1
  %inc = add nsw i32 %f.025, 1
  %exitcond29 = icmp eq i32 %inc, 16
  br i1 %exitcond29, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %3 = load i32* getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), align 4, !tbaa !1
  %4 = load i32* %x, align 4, !tbaa !1
  store i32 %4, i32* getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0), align 4, !tbaa !1
  %mul3 = mul nsw i32 %4, %3
  %5 = load i32* %y, align 4, !tbaa !1
  %add4 = add nsw i32 %5, %mul3
  store i32 %add4, i32* %y, align 4, !tbaa !1
  %6 = load i32* %d, align 4, !tbaa !1
  %sub = sub nsw i32 %6, %add4
  %7 = load i32* %delta, align 4, !tbaa !1
  %mul5 = mul nsw i32 %sub, %7
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.end
  %p_X.124 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0), %for.end ], [ %incdec.ptr9, %for.body8 ]
  %p_H.123 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), %for.end ], [ %incdec.ptr11, %for.body8 ]
  %f.122 = phi i32 [ 0, %for.end ], [ %inc14, %for.body8 ]
  %incdec.ptr9 = getelementptr inbounds i32* %p_X.124, i32 1
  %8 = load i32* %p_X.124, align 4, !tbaa !1
  %mul10 = mul nsw i32 %mul5, %8
  %incdec.ptr11 = getelementptr inbounds i32* %p_H.123, i32 1
  %9 = load i32* %p_H.123, align 4, !tbaa !1
  %add12 = add nsw i32 %9, %mul10
  store i32 %add12, i32* %p_H.123, align 4, !tbaa !1
  %inc14 = add nsw i32 %f.122, 1
  %exitcond = icmp eq i32 %inc14, 16
  br i1 %exitcond, label %for.end15, label %for.body8

for.end15:                                        ; preds = %for.body8
  call void @pin_down(i32* %d, i32* %x, i32* %y, i32* getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
