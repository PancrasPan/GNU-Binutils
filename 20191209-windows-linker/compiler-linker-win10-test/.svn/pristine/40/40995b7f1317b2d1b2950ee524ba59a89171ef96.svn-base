; ModuleID = './testcase_8slots/dot_product.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.A = internal unnamed_addr constant [2 x i32] [i32 2, i32 1], align 4
@main.B = internal unnamed_addr constant [2 x i32] [i32 2, i32 5], align 4
@main.Z = internal global i32 0, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %Z) #0 {
entry:
  store i32 0, i32* %Z, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  tail call void @pin_down(i32* @main.Z)
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %f.05 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %p_a.04 = phi i32* [ getelementptr inbounds ([2 x i32]* @main.A, i32 0, i32 0), %entry ], [ %incdec.ptr, %for.body ]
  %p_b.03 = phi i32* [ getelementptr inbounds ([2 x i32]* @main.B, i32 0, i32 0), %entry ], [ %incdec.ptr1, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %p_a.04, i32 1
  %0 = load i32* %p_a.04, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %p_b.03, i32 1
  %1 = load i32* %p_b.03, align 4, !tbaa !1
  %mul = mul nsw i32 %1, %0
  %2 = load i32* @main.Z, align 4, !tbaa !1
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* @main.Z, align 4, !tbaa !1
  %inc = add nsw i32 %f.05, 1
  %exitcond = icmp eq i32 %inc, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  tail call void @pin_down(i32* @main.Z)
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
