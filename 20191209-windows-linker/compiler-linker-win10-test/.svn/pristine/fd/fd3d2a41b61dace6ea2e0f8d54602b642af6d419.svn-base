; ModuleID = '.\benchmark\dspstone\lms.c'
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
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %f.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %p_X.addr.04.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0), %entry ], [ %incdec.ptr1.i, %for.body.i ]
  %p_H.addr.03.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), %entry ], [ %incdec.ptr.i, %for.body.i ]
  %incdec.ptr.i = getelementptr inbounds i32* %p_H.addr.03.i, i32 1
  store i32 1, i32* %p_H.addr.03.i, align 4, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i32* %p_X.addr.04.i, i32 1
  store i32 1, i32* %p_X.addr.04.i, align 4, !tbaa !1
  %inc.i = add nsw i32 %f.05.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.i, label %for.body, label %for.body.i

for.body:                                         ; preds = %for.body.i, %for.body
  %p_X2.038 = phi i32* [ %incdec.ptr1, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 14), %for.body.i ]
  %p_X.037 = phi i32* [ %incdec.ptr2, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 15), %for.body.i ]
  %p_H.036 = phi i32* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 15), %for.body.i ]
  %f.035 = phi i32 [ %inc, %for.body ], [ 1, %for.body.i ]
  %0 = phi i32 [ %add, %for.body ], [ 0, %for.body.i ]
  %incdec.ptr = getelementptr inbounds i32* %p_H.036, i32 -1
  %1 = load i32* %p_H.036, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %p_X2.038, i32 -1
  %2 = load i32* %p_X2.038, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %p_X.037, i32 -1
  store i32 %2, i32* %p_X.037, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %add = add nsw i32 %mul, %0
  %inc = add nsw i32 %f.035, 1
  %exitcond39 = icmp eq i32 %inc, 16
  br i1 %exitcond39, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %3 = load i32* getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), align 4, !tbaa !1
  store i32 8, i32* getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0), align 4, !tbaa !1
  %mul3 = shl i32 %3, 3
  %add4.neg = sub i32 7, %add
  %sub = sub i32 %add4.neg, %mul3
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.end
  %4 = phi i32 [ %3, %for.end ], [ %.pre40, %for.body8.for.body8_crit_edge ]
  %5 = phi i32 [ 8, %for.end ], [ %.pre, %for.body8.for.body8_crit_edge ]
  %p_X.134 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0), %for.end ], [ %incdec.ptr9, %for.body8.for.body8_crit_edge ]
  %p_H.133 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), %for.end ], [ %incdec.ptr11, %for.body8.for.body8_crit_edge ]
  %f.132 = phi i32 [ 1, %for.end ], [ %phitmp, %for.body8.for.body8_crit_edge ]
  %incdec.ptr9 = getelementptr inbounds i32* %p_X.134, i32 1
  %mul10 = mul nsw i32 %5, %sub
  %incdec.ptr11 = getelementptr inbounds i32* %p_H.133, i32 1
  %add12 = add nsw i32 %4, %mul10
  store i32 %add12, i32* %p_H.133, align 4, !tbaa !1
  %exitcond = icmp eq i32 %f.132, 16
  br i1 %exitcond, label %for.body.i29, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  %.pre = load i32* %incdec.ptr9, align 4, !tbaa !1
  %.pre40 = load i32* %incdec.ptr11, align 4, !tbaa !1
  %phitmp = add i32 %f.132, 1
  br label %for.body8

for.body.i29:                                     ; preds = %for.body8, %for.body.i29
  %f.05.i22 = phi i32 [ %inc.i27, %for.body.i29 ], [ 0, %for.body8 ]
  %p_X.addr.04.i23 = phi i32* [ %incdec.ptr1.i26, %for.body.i29 ], [ getelementptr inbounds ([16 x i32]* @main.X, i32 0, i32 0), %for.body8 ]
  %p_H.addr.03.i24 = phi i32* [ %incdec.ptr.i25, %for.body.i29 ], [ getelementptr inbounds ([16 x i32]* @main.H, i32 0, i32 0), %for.body8 ]
  %incdec.ptr.i25 = getelementptr inbounds i32* %p_H.addr.03.i24, i32 1
  store i32 1, i32* %p_H.addr.03.i24, align 4, !tbaa !1
  %incdec.ptr1.i26 = getelementptr inbounds i32* %p_X.addr.04.i23, i32 1
  store i32 1, i32* %p_X.addr.04.i23, align 4, !tbaa !1
  %inc.i27 = add nsw i32 %f.05.i22, 1
  %exitcond.i28 = icmp eq i32 %inc.i27, 16
  br i1 %exitcond.i28, label %pin_down.exit30, label %for.body.i29

pin_down.exit30:                                  ; preds = %for.body.i29
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
