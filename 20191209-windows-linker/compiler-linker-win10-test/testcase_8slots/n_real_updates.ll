; ModuleID = './testcase_8slots/n_real_updates.c'
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
  tail call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 0))
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %p_d.08 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 0), %entry ], [ %incdec.ptr3, %for.body ]
  %p_c.07 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 0), %entry ], [ %incdec.ptr, %for.body ]
  %p_b.06 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 0), %entry ], [ %incdec.ptr2, %for.body ]
  %p_a.05 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 0), %entry ], [ %incdec.ptr1, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %p_c.07, i32 1
  %0 = load i32* %p_c.07, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %p_a.05, i32 1
  %1 = load i32* %p_a.05, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %p_b.06, i32 1
  %2 = load i32* %p_b.06, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %add = add nsw i32 %mul, %0
  %incdec.ptr3 = getelementptr inbounds i32* %p_d.08, i32 1
  store i32 %add, i32* %p_d.08, align 4, !tbaa !1
  %inc = add nsw i32 %i.09, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  tail call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
