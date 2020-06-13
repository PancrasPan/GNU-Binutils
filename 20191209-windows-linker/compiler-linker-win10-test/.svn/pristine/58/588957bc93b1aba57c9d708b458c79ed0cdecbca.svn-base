; ModuleID = './testcase_8slots/matrix1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.A = internal global [100 x i32] zeroinitializer, align 4
@main.B = internal global [100 x i32] zeroinitializer, align 4
@main.C = internal global [100 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @pin_down(i32* nocapture %A, i32* nocapture %B, i32* nocapture %C) #0 {
entry:
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body
  %C26 = bitcast i32* %C to i8*
  br label %for.body3

for.body:                                         ; preds = %for.body, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32* %A, i32 %i.025
  store i32 1, i32* %arrayidx, align 4, !tbaa !1
  %inc = add nsw i32 %i.025, 1
  %exitcond27 = icmp eq i32 %inc, 100
  br i1 %exitcond27, label %for.cond1.preheader, label %for.body

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %i.124 = phi i32 [ 0, %for.cond1.preheader ], [ %inc6, %for.body3 ]
  %arrayidx4 = getelementptr inbounds i32* %B, i32 %i.124
  store i32 1, i32* %arrayidx4, align 4, !tbaa !1
  %inc6 = add nsw i32 %i.124, 1
  %exitcond = icmp eq i32 %inc6, 100
  br i1 %exitcond, label %for.end14, label %for.body3

for.end14:                                        ; preds = %for.body3
  call void @llvm.memset.p0i8.i32(i8* %C26, i8 0, i32 400, i32 4, i1 false)
  ret i32 0
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %call = tail call i32 @pin_down(i32* getelementptr inbounds ([100 x i32]* @main.A, i32 0, i32 0), i32* getelementptr inbounds ([100 x i32]* @main.B, i32 0, i32 0), i32* getelementptr inbounds ([100 x i32]* @main.C, i32 0, i32 0))
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc13, %entry
  %k.029 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ]
  %p_c.028 = phi i32* [ getelementptr inbounds ([100 x i32]* @main.C, i32 0, i32 0), %entry ], [ %scevgep30, %for.inc13 ]
  %mul = mul nsw i32 %k.029, 10
  %arrayidx = getelementptr inbounds [100 x i32]* @main.B, i32 0, i32 %mul
  br label %for.body3

for.body3:                                        ; preds = %for.end, %for.cond1.preheader
  %i.027 = phi i32 [ 0, %for.cond1.preheader ], [ %inc11, %for.end ]
  %p_c.126 = phi i32* [ %p_c.028, %for.cond1.preheader ], [ %incdec.ptr9, %for.end ]
  %p_a.025 = phi i32* [ getelementptr inbounds ([100 x i32]* @main.A, i32 0, i32 0), %for.cond1.preheader ], [ %scevgep, %for.end ]
  store i32 0, i32* %p_c.126, align 4, !tbaa !1
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body3
  %f.024 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body6 ]
  %p_b.023 = phi i32* [ %arrayidx, %for.body3 ], [ %incdec.ptr7, %for.body6 ]
  %p_a.122 = phi i32* [ %p_a.025, %for.body3 ], [ %incdec.ptr, %for.body6 ]
  %incdec.ptr = getelementptr inbounds i32* %p_a.122, i32 1
  %0 = load i32* %p_a.122, align 4, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i32* %p_b.023, i32 1
  %1 = load i32* %p_b.023, align 4, !tbaa !1
  %mul8 = mul nsw i32 %1, %0
  %2 = load i32* %p_c.126, align 4, !tbaa !1
  %add = add nsw i32 %2, %mul8
  store i32 %add, i32* %p_c.126, align 4, !tbaa !1
  %inc = add nsw i32 %f.024, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body6

for.end:                                          ; preds = %for.body6
  %scevgep = getelementptr i32* %p_a.025, i32 10
  %incdec.ptr9 = getelementptr inbounds i32* %p_c.126, i32 1
  %inc11 = add nsw i32 %i.027, 1
  %exitcond31 = icmp eq i32 %inc11, 10
  br i1 %exitcond31, label %for.inc13, label %for.body3

for.inc13:                                        ; preds = %for.end
  %scevgep30 = getelementptr i32* %p_c.028, i32 10
  %inc14 = add nsw i32 %k.029, 1
  %exitcond34 = icmp eq i32 %inc14, 10
  br i1 %exitcond34, label %for.end15, label %for.cond1.preheader

for.end15:                                        ; preds = %for.inc13
  %call16 = tail call i32 @pin_down(i32* getelementptr inbounds ([100 x i32]* @main.A, i32 0, i32 0), i32* getelementptr inbounds ([100 x i32]* @main.B, i32 0, i32 0), i32* getelementptr inbounds ([100 x i32]* @main.C, i32 0, i32 0))
  ret i32 0
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
