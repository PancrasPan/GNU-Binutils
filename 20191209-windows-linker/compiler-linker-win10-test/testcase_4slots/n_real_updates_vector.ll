; ModuleID = '.\n_real_updates.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.A = internal global [16 x i32] zeroinitializer, align 16
@main.B = internal global [16 x i32] zeroinitializer, align 16
@main.C = internal global [16 x i32] zeroinitializer, align 16
@main.D = internal global [16 x i32] zeroinitializer, align 16

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %pa, i32* nocapture %pb, i32* nocapture %pc, i32* nocapture %pd) #0 {
entry:
  %incdec.ptr = getelementptr inbounds i32* %pa, i32 1
  store i32 10, i32* %pa, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %pb, i32 1
  store i32 2, i32* %pb, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %pc, i32 1
  store i32 10, i32* %pc, align 4, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i32* %pd, i32 1
  store i32 0, i32* %pd, align 4, !tbaa !1
  %incdec.ptr.1 = getelementptr inbounds i32* %pa, i32 2
  store i32 10, i32* %incdec.ptr, align 4, !tbaa !1
  %incdec.ptr1.1 = getelementptr inbounds i32* %pb, i32 2
  store i32 2, i32* %incdec.ptr1, align 4, !tbaa !1
  %incdec.ptr2.1 = getelementptr inbounds i32* %pc, i32 2
  store i32 10, i32* %incdec.ptr2, align 4, !tbaa !1
  %incdec.ptr3.1 = getelementptr inbounds i32* %pd, i32 2
  store i32 0, i32* %incdec.ptr3, align 4, !tbaa !1
  %incdec.ptr.2 = getelementptr inbounds i32* %pa, i32 3
  store i32 10, i32* %incdec.ptr.1, align 4, !tbaa !1
  %incdec.ptr1.2 = getelementptr inbounds i32* %pb, i32 3
  store i32 2, i32* %incdec.ptr1.1, align 4, !tbaa !1
  %incdec.ptr2.2 = getelementptr inbounds i32* %pc, i32 3
  store i32 10, i32* %incdec.ptr2.1, align 4, !tbaa !1
  %incdec.ptr3.2 = getelementptr inbounds i32* %pd, i32 3
  store i32 0, i32* %incdec.ptr3.1, align 4, !tbaa !1
  %incdec.ptr.3 = getelementptr inbounds i32* %pa, i32 4
  store i32 10, i32* %incdec.ptr.2, align 4, !tbaa !1
  %incdec.ptr1.3 = getelementptr inbounds i32* %pb, i32 4
  store i32 2, i32* %incdec.ptr1.2, align 4, !tbaa !1
  %incdec.ptr2.3 = getelementptr inbounds i32* %pc, i32 4
  store i32 10, i32* %incdec.ptr2.2, align 4, !tbaa !1
  %incdec.ptr3.3 = getelementptr inbounds i32* %pd, i32 4
  store i32 0, i32* %incdec.ptr3.2, align 4, !tbaa !1
  %incdec.ptr.4 = getelementptr inbounds i32* %pa, i32 5
  store i32 10, i32* %incdec.ptr.3, align 4, !tbaa !1
  %incdec.ptr1.4 = getelementptr inbounds i32* %pb, i32 5
  store i32 2, i32* %incdec.ptr1.3, align 4, !tbaa !1
  %incdec.ptr2.4 = getelementptr inbounds i32* %pc, i32 5
  store i32 10, i32* %incdec.ptr2.3, align 4, !tbaa !1
  %incdec.ptr3.4 = getelementptr inbounds i32* %pd, i32 5
  store i32 0, i32* %incdec.ptr3.3, align 4, !tbaa !1
  %incdec.ptr.5 = getelementptr inbounds i32* %pa, i32 6
  store i32 10, i32* %incdec.ptr.4, align 4, !tbaa !1
  %incdec.ptr1.5 = getelementptr inbounds i32* %pb, i32 6
  store i32 2, i32* %incdec.ptr1.4, align 4, !tbaa !1
  %incdec.ptr2.5 = getelementptr inbounds i32* %pc, i32 6
  store i32 10, i32* %incdec.ptr2.4, align 4, !tbaa !1
  %incdec.ptr3.5 = getelementptr inbounds i32* %pd, i32 6
  store i32 0, i32* %incdec.ptr3.4, align 4, !tbaa !1
  %incdec.ptr.6 = getelementptr inbounds i32* %pa, i32 7
  store i32 10, i32* %incdec.ptr.5, align 4, !tbaa !1
  %incdec.ptr1.6 = getelementptr inbounds i32* %pb, i32 7
  store i32 2, i32* %incdec.ptr1.5, align 4, !tbaa !1
  %incdec.ptr2.6 = getelementptr inbounds i32* %pc, i32 7
  store i32 10, i32* %incdec.ptr2.5, align 4, !tbaa !1
  %incdec.ptr3.6 = getelementptr inbounds i32* %pd, i32 7
  store i32 0, i32* %incdec.ptr3.5, align 4, !tbaa !1
  %incdec.ptr.7 = getelementptr inbounds i32* %pa, i32 8
  store i32 10, i32* %incdec.ptr.6, align 4, !tbaa !1
  %incdec.ptr1.7 = getelementptr inbounds i32* %pb, i32 8
  store i32 2, i32* %incdec.ptr1.6, align 4, !tbaa !1
  %incdec.ptr2.7 = getelementptr inbounds i32* %pc, i32 8
  store i32 10, i32* %incdec.ptr2.6, align 4, !tbaa !1
  %incdec.ptr3.7 = getelementptr inbounds i32* %pd, i32 8
  store i32 0, i32* %incdec.ptr3.6, align 4, !tbaa !1
  %incdec.ptr.8 = getelementptr inbounds i32* %pa, i32 9
  store i32 10, i32* %incdec.ptr.7, align 4, !tbaa !1
  %incdec.ptr1.8 = getelementptr inbounds i32* %pb, i32 9
  store i32 2, i32* %incdec.ptr1.7, align 4, !tbaa !1
  %incdec.ptr2.8 = getelementptr inbounds i32* %pc, i32 9
  store i32 10, i32* %incdec.ptr2.7, align 4, !tbaa !1
  %incdec.ptr3.8 = getelementptr inbounds i32* %pd, i32 9
  store i32 0, i32* %incdec.ptr3.7, align 4, !tbaa !1
  %incdec.ptr.9 = getelementptr inbounds i32* %pa, i32 10
  store i32 10, i32* %incdec.ptr.8, align 4, !tbaa !1
  %incdec.ptr1.9 = getelementptr inbounds i32* %pb, i32 10
  store i32 2, i32* %incdec.ptr1.8, align 4, !tbaa !1
  %incdec.ptr2.9 = getelementptr inbounds i32* %pc, i32 10
  store i32 10, i32* %incdec.ptr2.8, align 4, !tbaa !1
  %incdec.ptr3.9 = getelementptr inbounds i32* %pd, i32 10
  store i32 0, i32* %incdec.ptr3.8, align 4, !tbaa !1
  %incdec.ptr.10 = getelementptr inbounds i32* %pa, i32 11
  store i32 10, i32* %incdec.ptr.9, align 4, !tbaa !1
  %incdec.ptr1.10 = getelementptr inbounds i32* %pb, i32 11
  store i32 2, i32* %incdec.ptr1.9, align 4, !tbaa !1
  %incdec.ptr2.10 = getelementptr inbounds i32* %pc, i32 11
  store i32 10, i32* %incdec.ptr2.9, align 4, !tbaa !1
  %incdec.ptr3.10 = getelementptr inbounds i32* %pd, i32 11
  store i32 0, i32* %incdec.ptr3.9, align 4, !tbaa !1
  %incdec.ptr.11 = getelementptr inbounds i32* %pa, i32 12
  store i32 10, i32* %incdec.ptr.10, align 4, !tbaa !1
  %incdec.ptr1.11 = getelementptr inbounds i32* %pb, i32 12
  store i32 2, i32* %incdec.ptr1.10, align 4, !tbaa !1
  %incdec.ptr2.11 = getelementptr inbounds i32* %pc, i32 12
  store i32 10, i32* %incdec.ptr2.10, align 4, !tbaa !1
  %incdec.ptr3.11 = getelementptr inbounds i32* %pd, i32 12
  store i32 0, i32* %incdec.ptr3.10, align 4, !tbaa !1
  %incdec.ptr.12 = getelementptr inbounds i32* %pa, i32 13
  store i32 10, i32* %incdec.ptr.11, align 4, !tbaa !1
  %incdec.ptr1.12 = getelementptr inbounds i32* %pb, i32 13
  store i32 2, i32* %incdec.ptr1.11, align 4, !tbaa !1
  %incdec.ptr2.12 = getelementptr inbounds i32* %pc, i32 13
  store i32 10, i32* %incdec.ptr2.11, align 4, !tbaa !1
  %incdec.ptr3.12 = getelementptr inbounds i32* %pd, i32 13
  store i32 0, i32* %incdec.ptr3.11, align 4, !tbaa !1
  %incdec.ptr.13 = getelementptr inbounds i32* %pa, i32 14
  store i32 10, i32* %incdec.ptr.12, align 4, !tbaa !1
  %incdec.ptr1.13 = getelementptr inbounds i32* %pb, i32 14
  store i32 2, i32* %incdec.ptr1.12, align 4, !tbaa !1
  %incdec.ptr2.13 = getelementptr inbounds i32* %pc, i32 14
  store i32 10, i32* %incdec.ptr2.12, align 4, !tbaa !1
  %incdec.ptr3.13 = getelementptr inbounds i32* %pd, i32 14
  store i32 0, i32* %incdec.ptr3.12, align 4, !tbaa !1
  %incdec.ptr.14 = getelementptr inbounds i32* %pa, i32 15
  store i32 10, i32* %incdec.ptr.13, align 4, !tbaa !1
  %incdec.ptr1.14 = getelementptr inbounds i32* %pb, i32 15
  store i32 2, i32* %incdec.ptr1.13, align 4, !tbaa !1
  %incdec.ptr2.14 = getelementptr inbounds i32* %pc, i32 15
  store i32 10, i32* %incdec.ptr2.13, align 4, !tbaa !1
  %incdec.ptr3.14 = getelementptr inbounds i32* %pd, i32 15
  store i32 0, i32* %incdec.ptr3.13, align 4, !tbaa !1
  store i32 10, i32* %incdec.ptr.14, align 4, !tbaa !1
  store i32 2, i32* %incdec.ptr1.14, align 4, !tbaa !1
  store i32 10, i32* %incdec.ptr2.14, align 4, !tbaa !1
  store i32 0, i32* %incdec.ptr3.14, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast ([16 x i32]* @main.A to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, <4 x i32>* bitcast ([16 x i32]* @main.B to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast ([16 x i32]* @main.C to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast ([16 x i32]* @main.D to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 4) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 4) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 4) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 4) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 8) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 8) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 8) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 8) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.A, i32 0, i32 12) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 2, i32 2, i32 2, i32 2>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.B, i32 0, i32 12) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.C, i32 0, i32 12) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([16 x i32]* @main.D, i32 0, i32 12) to <4 x i32>*), align 16, !tbaa !1
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
