; ModuleID = './testcase_8slots/biquad_N_sections.c'
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
  %exitcond = icmp eq i32 %inc, 20
  br i1 %exitcond, label %for.end7, label %for.body

for.end7:                                         ; preds = %for.body
  %wi15 = bitcast i32* %wi to i8*
  call void @llvm.memset.p0i8.i32(i8* %wi15, i8 0, i32 32, i32 4, i1 false)
  ret i32 1
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %wi = alloca [8 x i32], align 4
  %arrayidx = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 1
  %call = call i32 @pin_down(i32 undef, i32* getelementptr inbounds ([20 x i32]* @main.coefficients, i32 0, i32 0), i32* %arrayidx)
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %ptr_wi2.036 = phi i32* [ %arrayidx1, %entry ], [ %incdec.ptr14, %for.body ]
  %ptr_wi1.035 = phi i32* [ %arrayidx, %entry ], [ %incdec.ptr15, %for.body ]
  %ptr_coeff.034 = phi i32* [ getelementptr inbounds ([20 x i32]* @main.coefficients, i32 0, i32 0), %entry ], [ %incdec.ptr9, %for.body ]
  %f.033 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = phi i32 [ 1, %entry ], [ %add11, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %ptr_coeff.034, i32 1
  %1 = load i32* %ptr_coeff.034, align 4, !tbaa !1
  %2 = load i32* %ptr_wi1.035, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %sub = sub nsw i32 %0, %mul
  %incdec.ptr2 = getelementptr inbounds i32* %ptr_coeff.034, i32 2
  %3 = load i32* %incdec.ptr, align 4, !tbaa !1
  %4 = load i32* %ptr_wi2.036, align 4, !tbaa !1
  %mul3 = mul nsw i32 %4, %3
  %sub4 = sub i32 %sub, %mul3
  %incdec.ptr5 = getelementptr inbounds i32* %ptr_coeff.034, i32 3
  %5 = load i32* %incdec.ptr2, align 4, !tbaa !1
  %mul6 = mul nsw i32 %sub4, %5
  %incdec.ptr7 = getelementptr inbounds i32* %ptr_coeff.034, i32 4
  %6 = load i32* %incdec.ptr5, align 4, !tbaa !1
  %mul8 = mul nsw i32 %6, %2
  %add = add nsw i32 %mul6, %mul8
  %incdec.ptr9 = getelementptr inbounds i32* %ptr_coeff.034, i32 5
  %7 = load i32* %incdec.ptr7, align 4, !tbaa !1
  %mul10 = mul nsw i32 %7, %4
  %add11 = add nsw i32 %add, %mul10
  store i32 %2, i32* %ptr_wi2.036, align 4, !tbaa !1
  store i32 %sub4, i32* %ptr_wi1.035, align 4, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i32* %ptr_wi2.036, i32 2
  %incdec.ptr15 = getelementptr inbounds i32* %ptr_wi1.035, i32 2
  %inc = add nsw i32 %f.033, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call17 = call i32 @pin_down(i32 undef, i32* getelementptr inbounds ([20 x i32]* @main.coefficients, i32 0, i32 0), i32* %arrayidx)
  ret i32 %add11
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
