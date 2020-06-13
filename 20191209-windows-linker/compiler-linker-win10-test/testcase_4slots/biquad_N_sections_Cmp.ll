; ModuleID = '.\biquad_N_sections.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.coefficients = internal global [20 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @pin_down(i32 %x, i32* nocapture %coefficients, i32* nocapture %wi) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %f.014 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32* %coefficients, i32 %f.014
  store i32 7, i32* %arrayidx, align 4, !tbaa !1
  %inc = add nsw i32 %f.014, 1
  %exitcond15 = icmp eq i32 %inc, 20
  br i1 %exitcond15, label %for.body3, label %for.body

for.body3:                                        ; preds = %for.body, %for.body3
  %f.113 = phi i32 [ %inc6, %for.body3 ], [ 0, %for.body ]
  %arrayidx4 = getelementptr inbounds i32* %wi, i32 %f.113
  store i32 0, i32* %arrayidx4, align 4, !tbaa !1
  %inc6 = add nsw i32 %f.113, 1
  %exitcond = icmp eq i32 %inc6, 8
  br i1 %exitcond, label %for.end7, label %for.body3

for.end7:                                         ; preds = %for.body3
  ret i32 1
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %wi = alloca [8 x i32], align 4
  %arrayidx = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %f.014.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds [20 x i32]* @main.coefficients, i32 0, i32 %f.014.i
  store i32 7, i32* %arrayidx.i, align 4, !tbaa !1
  %inc.i = add nsw i32 %f.014.i, 1
  %exitcond15.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond15.i, label %for.body3.i.preheader, label %for.body.i

for.body3.i.preheader:                            ; preds = %for.body.i
  %arrayidx1 = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 1
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.preheader, %for.body3.i
  %f.113.i = phi i32 [ %inc6.i, %for.body3.i ], [ 0, %for.body3.i.preheader ]
  %arrayidx4.i = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 %f.113.i
  store i32 0, i32* %arrayidx4.i, align 4, !tbaa !1
  %inc6.i = add nsw i32 %f.113.i, 1
  %exitcond.i = icmp eq i32 %inc6.i, 8
  br i1 %exitcond.i, label %for.body, label %for.body3.i

for.body:                                         ; preds = %for.body3.i, %for.body
  %ptr_wi2.047 = phi i32* [ %incdec.ptr14, %for.body ], [ %arrayidx1, %for.body3.i ]
  %ptr_wi1.046 = phi i32* [ %incdec.ptr15, %for.body ], [ %arrayidx, %for.body3.i ]
  %ptr_coeff.045 = phi i32* [ %incdec.ptr9, %for.body ], [ getelementptr inbounds ([20 x i32]* @main.coefficients, i32 0, i32 0), %for.body3.i ]
  %f.044 = phi i32 [ %inc, %for.body ], [ 0, %for.body3.i ]
  %0 = phi i32 [ %add11, %for.body ], [ 1, %for.body3.i ]
  %incdec.ptr = getelementptr inbounds i32* %ptr_coeff.045, i32 1
  %1 = load i32* %ptr_coeff.045, align 4, !tbaa !1
  %2 = load i32* %ptr_wi1.046, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %sub = sub nsw i32 %0, %mul
  %incdec.ptr2 = getelementptr inbounds i32* %ptr_coeff.045, i32 2
  %3 = load i32* %incdec.ptr, align 4, !tbaa !1
  %4 = load i32* %ptr_wi2.047, align 4, !tbaa !1
  %mul3 = mul nsw i32 %4, %3
  %sub4 = sub i32 %sub, %mul3
  %incdec.ptr5 = getelementptr inbounds i32* %ptr_coeff.045, i32 3
  %5 = load i32* %incdec.ptr2, align 4, !tbaa !1
  %mul6 = mul nsw i32 %sub4, %5
  %incdec.ptr7 = getelementptr inbounds i32* %ptr_coeff.045, i32 4
  %6 = load i32* %incdec.ptr5, align 4, !tbaa !1
  %mul8 = mul nsw i32 %6, %2
  %add = add nsw i32 %mul6, %mul8
  %incdec.ptr9 = getelementptr inbounds i32* %ptr_coeff.045, i32 5
  %7 = load i32* %incdec.ptr7, align 4, !tbaa !1
  %mul10 = mul nsw i32 %7, %4
  %add11 = add nsw i32 %add, %mul10
  store i32 %2, i32* %ptr_wi2.047, align 4, !tbaa !1
  store i32 %sub4, i32* %ptr_wi1.046, align 4, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i32* %ptr_wi2.047, i32 2
  %incdec.ptr15 = getelementptr inbounds i32* %ptr_wi1.046, i32 2
  %inc = add nsw i32 %f.044, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.body.i36, label %for.body

for.body.i36:                                     ; preds = %for.body, %for.body.i36
  %f.014.i32 = phi i32 [ %inc.i34, %for.body.i36 ], [ 0, %for.body ]
  %arrayidx.i33 = getelementptr inbounds [20 x i32]* @main.coefficients, i32 0, i32 %f.014.i32
  store i32 7, i32* %arrayidx.i33, align 4, !tbaa !1
  %inc.i34 = add nsw i32 %f.014.i32, 1
  %exitcond15.i35 = icmp eq i32 %inc.i34, 20
  br i1 %exitcond15.i35, label %for.body3.i41, label %for.body.i36

for.body3.i41:                                    ; preds = %for.body.i36, %for.body3.i41
  %f.113.i37 = phi i32 [ %inc6.i39, %for.body3.i41 ], [ 0, %for.body.i36 ]
  %arrayidx4.i38 = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 %f.113.i37
  store i32 0, i32* %arrayidx4.i38, align 4, !tbaa !1
  %inc6.i39 = add nsw i32 %f.113.i37, 1
  %exitcond.i40 = icmp eq i32 %inc6.i39, 8
  br i1 %exitcond.i40, label %pin_down.exit42, label %for.body3.i41

pin_down.exit42:                                  ; preds = %for.body3.i41
  ret i32 %add11
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
