; ModuleID = '.\benchmark\dspstone\n_complex_updates.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.A = internal global [32 x i32] zeroinitializer, align 4
@main.B = internal global [32 x i32] zeroinitializer, align 4
@main.C = internal global [32 x i32] zeroinitializer, align 4
@main.D = internal global [32 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %pa, i32* nocapture %pb, i32* nocapture %pc, i32* nocapture %pd) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %pd.addr.016 = phi i32* [ %pd, %entry ], [ %incdec.ptr7, %for.body ]
  %pc.addr.015 = phi i32* [ %pc, %entry ], [ %incdec.ptr5, %for.body ]
  %pb.addr.014 = phi i32* [ %pb, %entry ], [ %incdec.ptr3, %for.body ]
  %pa.addr.013 = phi i32* [ %pa, %entry ], [ %incdec.ptr1, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %pa.addr.013, i32 1
  store i32 2, i32* %pa.addr.013, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %pa.addr.013, i32 2
  store i32 1, i32* %incdec.ptr, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %pb.addr.014, i32 1
  store i32 2, i32* %pb.addr.014, align 4, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i32* %pb.addr.014, i32 2
  store i32 5, i32* %incdec.ptr2, align 4, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i32* %pc.addr.015, i32 1
  store i32 3, i32* %pc.addr.015, align 4, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i32* %pc.addr.015, i32 2
  store i32 4, i32* %incdec.ptr4, align 4, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i32* %pd.addr.016, i32 1
  store i32 0, i32* %pd.addr.016, align 4, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i32* %pd.addr.016, i32 2
  store i32 0, i32* %incdec.ptr6, align 4, !tbaa !1
  %inc = add nsw i32 %i.017, 1
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
  %i.017.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %pd.addr.016.i = phi i32* [ getelementptr inbounds ([32 x i32]* @main.D, i32 0, i32 0), %entry ], [ %incdec.ptr7.i, %for.body.i ]
  %pc.addr.015.i = phi i32* [ getelementptr inbounds ([32 x i32]* @main.C, i32 0, i32 0), %entry ], [ %incdec.ptr5.i, %for.body.i ]
  %pb.addr.014.i = phi i32* [ getelementptr inbounds ([32 x i32]* @main.B, i32 0, i32 0), %entry ], [ %incdec.ptr3.i, %for.body.i ]
  %pa.addr.013.i = phi i32* [ getelementptr inbounds ([32 x i32]* @main.A, i32 0, i32 0), %entry ], [ %incdec.ptr1.i, %for.body.i ]
  %incdec.ptr.i = getelementptr inbounds i32* %pa.addr.013.i, i32 1
  store i32 2, i32* %pa.addr.013.i, align 4, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i32* %pa.addr.013.i, i32 2
  store i32 1, i32* %incdec.ptr.i, align 4, !tbaa !1
  %incdec.ptr2.i = getelementptr inbounds i32* %pb.addr.014.i, i32 1
  store i32 2, i32* %pb.addr.014.i, align 4, !tbaa !1
  %incdec.ptr3.i = getelementptr inbounds i32* %pb.addr.014.i, i32 2
  store i32 5, i32* %incdec.ptr2.i, align 4, !tbaa !1
  %incdec.ptr4.i = getelementptr inbounds i32* %pc.addr.015.i, i32 1
  store i32 3, i32* %pc.addr.015.i, align 4, !tbaa !1
  %incdec.ptr5.i = getelementptr inbounds i32* %pc.addr.015.i, i32 2
  store i32 4, i32* %incdec.ptr4.i, align 4, !tbaa !1
  %incdec.ptr6.i = getelementptr inbounds i32* %pd.addr.016.i, i32 1
  store i32 0, i32* %pd.addr.016.i, align 4, !tbaa !1
  %incdec.ptr7.i = getelementptr inbounds i32* %pd.addr.016.i, i32 2
  store i32 0, i32* %incdec.ptr6.i, align 4, !tbaa !1
  %inc.i = add nsw i32 %i.017.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.i, label %for.body, label %for.body.i

for.body:                                         ; preds = %for.body.i, %for.body
  %i.050 = phi i32 [ %inc, %for.body ], [ 0, %for.body.i ]
  %p_d.049 = phi i32* [ %incdec.ptr14, %for.body ], [ getelementptr inbounds ([32 x i32]* @main.D, i32 0, i32 0), %for.body.i ]
  %p_c.048 = phi i32* [ %incdec.ptr6, %for.body ], [ getelementptr inbounds ([32 x i32]* @main.C, i32 0, i32 0), %for.body.i ]
  %p_b.047 = phi i32* [ %incdec.ptr12, %for.body ], [ getelementptr inbounds ([32 x i32]* @main.B, i32 0, i32 0), %for.body.i ]
  %p_a.046 = phi i32* [ %incdec.ptr16, %for.body ], [ getelementptr inbounds ([32 x i32]* @main.A, i32 0, i32 0), %for.body.i ]
  %incdec.ptr = getelementptr inbounds i32* %p_c.048, i32 1
  %0 = load i32* %p_c.048, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %p_a.046, i32 1
  %1 = load i32* %p_a.046, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %p_b.047, i32 1
  %2 = load i32* %p_b.047, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %add = add nsw i32 %mul, %0
  %3 = load i32* %incdec.ptr1, align 4, !tbaa !1
  %4 = load i32* %incdec.ptr2, align 4, !tbaa !1
  %mul4 = mul nsw i32 %4, %3
  %incdec.ptr5 = getelementptr inbounds i32* %p_d.049, i32 1
  %sub = sub nsw i32 %add, %mul4
  store i32 %sub, i32* %p_d.049, align 4, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i32* %p_c.048, i32 2
  %5 = load i32* %incdec.ptr, align 4, !tbaa !1
  %mul9 = mul nsw i32 %2, %3
  %add10 = add nsw i32 %mul9, %5
  %incdec.ptr12 = getelementptr inbounds i32* %p_b.047, i32 2
  %mul13 = mul nsw i32 %4, %1
  %incdec.ptr14 = getelementptr inbounds i32* %p_d.049, i32 2
  %add15 = add nsw i32 %mul13, %add10
  store i32 %add15, i32* %incdec.ptr5, align 4, !tbaa !1
  %inc = add nsw i32 %i.050, 1
  %incdec.ptr16 = getelementptr inbounds i32* %p_a.046, i32 2
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.body.i44, label %for.body

for.body.i44:                                     ; preds = %for.body, %for.body.i44
  %i.017.i29 = phi i32 [ %inc.i42, %for.body.i44 ], [ 0, %for.body ]
  %pd.addr.016.i30 = phi i32* [ %incdec.ptr7.i41, %for.body.i44 ], [ getelementptr inbounds ([32 x i32]* @main.D, i32 0, i32 0), %for.body ]
  %pc.addr.015.i31 = phi i32* [ %incdec.ptr5.i39, %for.body.i44 ], [ getelementptr inbounds ([32 x i32]* @main.C, i32 0, i32 0), %for.body ]
  %pb.addr.014.i32 = phi i32* [ %incdec.ptr3.i37, %for.body.i44 ], [ getelementptr inbounds ([32 x i32]* @main.B, i32 0, i32 0), %for.body ]
  %pa.addr.013.i33 = phi i32* [ %incdec.ptr1.i35, %for.body.i44 ], [ getelementptr inbounds ([32 x i32]* @main.A, i32 0, i32 0), %for.body ]
  %incdec.ptr.i34 = getelementptr inbounds i32* %pa.addr.013.i33, i32 1
  store i32 2, i32* %pa.addr.013.i33, align 4, !tbaa !1
  %incdec.ptr1.i35 = getelementptr inbounds i32* %pa.addr.013.i33, i32 2
  store i32 1, i32* %incdec.ptr.i34, align 4, !tbaa !1
  %incdec.ptr2.i36 = getelementptr inbounds i32* %pb.addr.014.i32, i32 1
  store i32 2, i32* %pb.addr.014.i32, align 4, !tbaa !1
  %incdec.ptr3.i37 = getelementptr inbounds i32* %pb.addr.014.i32, i32 2
  store i32 5, i32* %incdec.ptr2.i36, align 4, !tbaa !1
  %incdec.ptr4.i38 = getelementptr inbounds i32* %pc.addr.015.i31, i32 1
  store i32 3, i32* %pc.addr.015.i31, align 4, !tbaa !1
  %incdec.ptr5.i39 = getelementptr inbounds i32* %pc.addr.015.i31, i32 2
  store i32 4, i32* %incdec.ptr4.i38, align 4, !tbaa !1
  %incdec.ptr6.i40 = getelementptr inbounds i32* %pd.addr.016.i30, i32 1
  store i32 0, i32* %pd.addr.016.i30, align 4, !tbaa !1
  %incdec.ptr7.i41 = getelementptr inbounds i32* %pd.addr.016.i30, i32 2
  store i32 0, i32* %incdec.ptr6.i40, align 4, !tbaa !1
  %inc.i42 = add nsw i32 %i.017.i29, 1
  %exitcond.i43 = icmp eq i32 %inc.i42, 16
  br i1 %exitcond.i43, label %pin_down.exit45, label %for.body.i44

pin_down.exit45:                                  ; preds = %for.body.i44
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
