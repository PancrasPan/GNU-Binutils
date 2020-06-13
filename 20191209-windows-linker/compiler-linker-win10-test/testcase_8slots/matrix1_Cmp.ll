; ModuleID = '.\benchmark\dspstone\matrix1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.A = internal global [100 x i32] zeroinitializer, align 4
@main.B = internal global [100 x i32] zeroinitializer, align 4
@main.C = internal global [100 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @pin_down(i32* nocapture %A, i32* nocapture %B, i32* nocapture %C) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32* %A, i32 %i.025
  store i32 1, i32* %arrayidx, align 4, !tbaa !1
  %inc = add nsw i32 %i.025, 1
  %exitcond27 = icmp eq i32 %inc, 100
  br i1 %exitcond27, label %for.body3, label %for.body

for.body3:                                        ; preds = %for.body, %for.body3
  %i.124 = phi i32 [ %inc6, %for.body3 ], [ 0, %for.body ]
  %arrayidx4 = getelementptr inbounds i32* %B, i32 %i.124
  store i32 1, i32* %arrayidx4, align 4, !tbaa !1
  %inc6 = add nsw i32 %i.124, 1
  %exitcond26 = icmp eq i32 %inc6, 100
  br i1 %exitcond26, label %for.body10, label %for.body3

for.body10:                                       ; preds = %for.body3, %for.body10
  %i.223 = phi i32 [ %inc13, %for.body10 ], [ 0, %for.body3 ]
  %arrayidx11 = getelementptr inbounds i32* %C, i32 %i.223
  store i32 0, i32* %arrayidx11, align 4, !tbaa !1
  %inc13 = add nsw i32 %i.223, 1
  %exitcond = icmp eq i32 %inc13, 100
  br i1 %exitcond, label %for.end14, label %for.body10

for.end14:                                        ; preds = %for.body10
  ret i32 0
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.025.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds [100 x i32]* @main.A, i32 0, i32 %i.025.i
  store i32 1, i32* %arrayidx.i, align 4, !tbaa !1
  %inc.i = add nsw i32 %i.025.i, 1
  %exitcond27.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond27.i, label %for.body3.i, label %for.body.i

for.body3.i:                                      ; preds = %for.body.i, %for.body3.i
  %i.124.i = phi i32 [ %inc6.i, %for.body3.i ], [ 0, %for.body.i ]
  %arrayidx4.i = getelementptr inbounds [100 x i32]* @main.B, i32 0, i32 %i.124.i
  store i32 1, i32* %arrayidx4.i, align 4, !tbaa !1
  %inc6.i = add nsw i32 %i.124.i, 1
  %exitcond26.i = icmp eq i32 %inc6.i, 100
  br i1 %exitcond26.i, label %for.body10.i, label %for.body3.i

for.body10.i:                                     ; preds = %for.body3.i, %for.body10.i
  %i.223.i = phi i32 [ %inc13.i, %for.body10.i ], [ 0, %for.body3.i ]
  %arrayidx11.i = getelementptr inbounds [100 x i32]* @main.C, i32 0, i32 %i.223.i
  store i32 0, i32* %arrayidx11.i, align 4, !tbaa !1
  %inc13.i = add nsw i32 %i.223.i, 1
  %exitcond.i = icmp eq i32 %inc13.i, 100
  br i1 %exitcond.i, label %for.cond1.preheader, label %for.body10.i

for.cond1.preheader:                              ; preds = %for.body10.i, %for.inc13
  %k.045 = phi i32 [ %inc14, %for.inc13 ], [ 0, %for.body10.i ]
  %p_c.044 = phi i32* [ %scevgep46, %for.inc13 ], [ getelementptr inbounds ([100 x i32]* @main.C, i32 0, i32 0), %for.body10.i ]
  %mul = mul nsw i32 %k.045, 10
  %arrayidx = getelementptr inbounds [100 x i32]* @main.B, i32 0, i32 %mul
  br label %for.body3

for.body3:                                        ; preds = %for.end, %for.cond1.preheader
  %i.043 = phi i32 [ 0, %for.cond1.preheader ], [ %inc11, %for.end ]
  %p_c.142 = phi i32* [ %p_c.044, %for.cond1.preheader ], [ %incdec.ptr9, %for.end ]
  %p_a.041 = phi i32* [ getelementptr inbounds ([100 x i32]* @main.A, i32 0, i32 0), %for.cond1.preheader ], [ %scevgep, %for.end ]
  store i32 0, i32* %p_c.142, align 4, !tbaa !1
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body3
  %0 = phi i32 [ 0, %for.body3 ], [ %add, %for.body6 ]
  %f.040 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body6 ]
  %p_b.039 = phi i32* [ %arrayidx, %for.body3 ], [ %incdec.ptr7, %for.body6 ]
  %p_a.138 = phi i32* [ %p_a.041, %for.body3 ], [ %incdec.ptr, %for.body6 ]
  %incdec.ptr = getelementptr inbounds i32* %p_a.138, i32 1
  %1 = load i32* %p_a.138, align 4, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i32* %p_b.039, i32 1
  %2 = load i32* %p_b.039, align 4, !tbaa !1
  %mul8 = mul nsw i32 %2, %1
  %add = add nsw i32 %0, %mul8
  store i32 %add, i32* %p_c.142, align 4, !tbaa !1
  %inc = add nsw i32 %f.040, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body6

for.end:                                          ; preds = %for.body6
  %scevgep = getelementptr i32* %p_a.041, i32 10
  %incdec.ptr9 = getelementptr inbounds i32* %p_c.142, i32 1
  %inc11 = add nsw i32 %i.043, 1
  %exitcond47 = icmp eq i32 %inc11, 10
  br i1 %exitcond47, label %for.inc13, label %for.body3

for.inc13:                                        ; preds = %for.end
  %scevgep46 = getelementptr i32* %p_c.044, i32 10
  %inc14 = add nsw i32 %k.045, 1
  %exitcond48 = icmp eq i32 %inc14, 10
  br i1 %exitcond48, label %for.body.i26, label %for.cond1.preheader

for.body.i26:                                     ; preds = %for.inc13, %for.body.i26
  %i.025.i22 = phi i32 [ %inc.i24, %for.body.i26 ], [ 0, %for.inc13 ]
  %arrayidx.i23 = getelementptr inbounds [100 x i32]* @main.A, i32 0, i32 %i.025.i22
  store i32 1, i32* %arrayidx.i23, align 4, !tbaa !1
  %inc.i24 = add nsw i32 %i.025.i22, 1
  %exitcond27.i25 = icmp eq i32 %inc.i24, 100
  br i1 %exitcond27.i25, label %for.body3.i31, label %for.body.i26

for.body3.i31:                                    ; preds = %for.body.i26, %for.body3.i31
  %i.124.i27 = phi i32 [ %inc6.i29, %for.body3.i31 ], [ 0, %for.body.i26 ]
  %arrayidx4.i28 = getelementptr inbounds [100 x i32]* @main.B, i32 0, i32 %i.124.i27
  store i32 1, i32* %arrayidx4.i28, align 4, !tbaa !1
  %inc6.i29 = add nsw i32 %i.124.i27, 1
  %exitcond26.i30 = icmp eq i32 %inc6.i29, 100
  br i1 %exitcond26.i30, label %for.body10.i36, label %for.body3.i31

for.body10.i36:                                   ; preds = %for.body3.i31, %for.body10.i36
  %i.223.i32 = phi i32 [ %inc13.i34, %for.body10.i36 ], [ 0, %for.body3.i31 ]
  %arrayidx11.i33 = getelementptr inbounds [100 x i32]* @main.C, i32 0, i32 %i.223.i32
  store i32 0, i32* %arrayidx11.i33, align 4, !tbaa !1
  %inc13.i34 = add nsw i32 %i.223.i32, 1
  %exitcond.i35 = icmp eq i32 %inc13.i34, 100
  br i1 %exitcond.i35, label %pin_down.exit37, label %for.body10.i36

pin_down.exit37:                                  ; preds = %for.body10.i36
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
