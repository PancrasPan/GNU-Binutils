; ModuleID = '.\benchmark\dspstone\n_real_updates.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.A = internal global [16 x i32] zeroinitializer, align 4
@main.B = internal global [16 x i32] zeroinitializer, align 4
@main.C = internal global [16 x i32] zeroinitializer, align 4
@main.D = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %pa, i32* nocapture %pb, i32* nocapture %pc, i32* nocapture %pd) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %pd.addr.08 = phi i32* [ %pd, %entry ], [ %incdec.ptr3, %for.body ]
  %pc.addr.07 = phi i32* [ %pc, %entry ], [ %incdec.ptr2, %for.body ]
  %pb.addr.06 = phi i32* [ %pb, %entry ], [ %incdec.ptr1, %for.body ]
  %pa.addr.05 = phi i32* [ %pa, %entry ], [ %incdec.ptr, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %pa.addr.05, i32 1
  store i32 10, i32* %pa.addr.05, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %pb.addr.06, i32 1
  store i32 2, i32* %pb.addr.06, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %pc.addr.07, i32 1
  store i32 10, i32* %pc.addr.07, align 4, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i32* %pd.addr.08, i32 1
  store i32 0, i32* %pd.addr.08, align 4, !tbaa !1
  %inc = add nsw i32 %i.09, 1
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
  %i.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %pd.addr.08.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 0), %entry ], [ %incdec.ptr3.i, %for.body.i ]
  %pc.addr.07.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 0), %entry ], [ %incdec.ptr2.i, %for.body.i ]
  %pb.addr.06.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 0), %entry ], [ %incdec.ptr1.i, %for.body.i ]
  %pa.addr.05.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 0), %entry ], [ %incdec.ptr.i, %for.body.i ]
  %incdec.ptr.i = getelementptr inbounds i32* %pa.addr.05.i, i32 1
  store i32 10, i32* %pa.addr.05.i, align 4, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i32* %pb.addr.06.i, i32 1
  store i32 2, i32* %pb.addr.06.i, align 4, !tbaa !1
  %incdec.ptr2.i = getelementptr inbounds i32* %pc.addr.07.i, i32 1
  store i32 10, i32* %pc.addr.07.i, align 4, !tbaa !1
  %incdec.ptr3.i = getelementptr inbounds i32* %pd.addr.08.i, i32 1
  store i32 0, i32* %pd.addr.08.i, align 4, !tbaa !1
  %inc.i = add nsw i32 %i.09.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.i, label %for.body, label %for.body.i

for.body:                                         ; preds = %for.body.i, %for.body
  %i.022 = phi i32 [ %inc, %for.body ], [ 0, %for.body.i ]
  %p_d.021 = phi i32* [ %incdec.ptr3, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 0), %for.body.i ]
  %p_c.020 = phi i32* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 0), %for.body.i ]
  %p_b.019 = phi i32* [ %incdec.ptr2, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 0), %for.body.i ]
  %p_a.018 = phi i32* [ %incdec.ptr1, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 0), %for.body.i ]
  %incdec.ptr = getelementptr inbounds i32* %p_c.020, i32 1
  %0 = load i32* %p_c.020, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %p_a.018, i32 1
  %1 = load i32* %p_a.018, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %p_b.019, i32 1
  %2 = load i32* %p_b.019, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %add = add nsw i32 %mul, %0
  %incdec.ptr3 = getelementptr inbounds i32* %p_d.021, i32 1
  store i32 %add, i32* %p_d.021, align 4, !tbaa !1
  %inc = add nsw i32 %i.022, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.body.i16, label %for.body

for.body.i16:                                     ; preds = %for.body, %for.body.i16
  %i.09.i5 = phi i32 [ %inc.i14, %for.body.i16 ], [ 0, %for.body ]
  %pd.addr.08.i6 = phi i32* [ %incdec.ptr3.i13, %for.body.i16 ], [ getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 0), %for.body ]
  %pc.addr.07.i7 = phi i32* [ %incdec.ptr2.i12, %for.body.i16 ], [ getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 0), %for.body ]
  %pb.addr.06.i8 = phi i32* [ %incdec.ptr1.i11, %for.body.i16 ], [ getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 0), %for.body ]
  %pa.addr.05.i9 = phi i32* [ %incdec.ptr.i10, %for.body.i16 ], [ getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 0), %for.body ]
  %incdec.ptr.i10 = getelementptr inbounds i32* %pa.addr.05.i9, i32 1
  store i32 10, i32* %pa.addr.05.i9, align 4, !tbaa !1
  %incdec.ptr1.i11 = getelementptr inbounds i32* %pb.addr.06.i8, i32 1
  store i32 2, i32* %pb.addr.06.i8, align 4, !tbaa !1
  %incdec.ptr2.i12 = getelementptr inbounds i32* %pc.addr.07.i7, i32 1
  store i32 10, i32* %pc.addr.07.i7, align 4, !tbaa !1
  %incdec.ptr3.i13 = getelementptr inbounds i32* %pd.addr.08.i6, i32 1
  store i32 0, i32* %pd.addr.08.i6, align 4, !tbaa !1
  %inc.i14 = add nsw i32 %i.09.i5, 1
  %exitcond.i15 = icmp eq i32 %inc.i14, 16
  br i1 %exitcond.i15, label %pin_down.exit17, label %for.body.i16

pin_down.exit17:                                  ; preds = %for.body.i16
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
