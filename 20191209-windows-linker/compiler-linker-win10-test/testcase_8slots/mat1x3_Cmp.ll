; ModuleID = '.\benchmark\dspstone\mat1x3.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.h = internal unnamed_addr constant [9 x i32] [i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 3, i32 2, i32 1], align 4
@main.x = internal unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@main.y = internal unnamed_addr global [3 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc7, %for.end ]
  %p_y.016 = phi i32* [ getelementptr inbounds ([3 x i32]* @main.y, i32 0, i32 0), %entry ], [ %incdec.ptr5, %for.end ]
  %p_h.015 = phi i32* [ getelementptr inbounds ([9 x i32]* @main.h, i32 0, i32 0), %entry ], [ %scevgep, %for.end ]
  %.pre = load i32* %p_y.016, align 4, !tbaa !1
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %0 = phi i32 [ %.pre, %for.cond1.preheader ], [ %add, %for.body3 ]
  %f.014 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %p_h.113 = phi i32* [ %p_h.015, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %p_x.012 = phi i32* [ getelementptr inbounds ([3 x i32]* @main.x, i32 0, i32 0), %for.cond1.preheader ], [ %incdec.ptr4, %for.body3 ]
  %incdec.ptr = getelementptr inbounds i32* %p_h.113, i32 1
  %1 = load i32* %p_h.113, align 4, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i32* %p_x.012, i32 1
  %2 = load i32* %p_x.012, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %add = add nsw i32 %0, %mul
  store i32 %add, i32* %p_y.016, align 4, !tbaa !1
  %inc = add nsw i32 %f.014, 1
  %exitcond = icmp eq i32 %inc, 3
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3
  %scevgep = getelementptr i32* %p_h.015, i32 3
  %incdec.ptr5 = getelementptr inbounds i32* %p_y.016, i32 1
  %inc7 = add nsw i32 %i.017, 1
  %exitcond18 = icmp eq i32 %inc7, 3
  br i1 %exitcond18, label %for.end8, label %for.cond1.preheader

for.end8:                                         ; preds = %for.end
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
