; ModuleID = '.\fir.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.x = internal global [16 x i32] zeroinitializer, align 4
@main.h = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %px, i32* nocapture %ph, i32 %y) #0 {
entry:
  %incdec.ptr = getelementptr inbounds i32* %px, i32 1
  store i32 1, i32* %px, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %ph, i32 1
  store i32 1, i32* %ph, align 4, !tbaa !1
  %incdec.ptr.1 = getelementptr inbounds i32* %px, i32 2
  store i32 2, i32* %incdec.ptr, align 4, !tbaa !1
  %incdec.ptr1.1 = getelementptr inbounds i32* %ph, i32 2
  store i32 2, i32* %incdec.ptr1, align 4, !tbaa !1
  %incdec.ptr.2 = getelementptr inbounds i32* %px, i32 3
  store i32 3, i32* %incdec.ptr.1, align 4, !tbaa !1
  %incdec.ptr1.2 = getelementptr inbounds i32* %ph, i32 3
  store i32 3, i32* %incdec.ptr1.1, align 4, !tbaa !1
  %incdec.ptr.3 = getelementptr inbounds i32* %px, i32 4
  store i32 4, i32* %incdec.ptr.2, align 4, !tbaa !1
  %incdec.ptr1.3 = getelementptr inbounds i32* %ph, i32 4
  store i32 4, i32* %incdec.ptr1.2, align 4, !tbaa !1
  %incdec.ptr.4 = getelementptr inbounds i32* %px, i32 5
  store i32 5, i32* %incdec.ptr.3, align 4, !tbaa !1
  %incdec.ptr1.4 = getelementptr inbounds i32* %ph, i32 5
  store i32 5, i32* %incdec.ptr1.3, align 4, !tbaa !1
  %incdec.ptr.5 = getelementptr inbounds i32* %px, i32 6
  store i32 6, i32* %incdec.ptr.4, align 4, !tbaa !1
  %incdec.ptr1.5 = getelementptr inbounds i32* %ph, i32 6
  store i32 6, i32* %incdec.ptr1.4, align 4, !tbaa !1
  %incdec.ptr.6 = getelementptr inbounds i32* %px, i32 7
  store i32 7, i32* %incdec.ptr.5, align 4, !tbaa !1
  %incdec.ptr1.6 = getelementptr inbounds i32* %ph, i32 7
  store i32 7, i32* %incdec.ptr1.5, align 4, !tbaa !1
  %incdec.ptr.7 = getelementptr inbounds i32* %px, i32 8
  store i32 8, i32* %incdec.ptr.6, align 4, !tbaa !1
  %incdec.ptr1.7 = getelementptr inbounds i32* %ph, i32 8
  store i32 8, i32* %incdec.ptr1.6, align 4, !tbaa !1
  %incdec.ptr.8 = getelementptr inbounds i32* %px, i32 9
  store i32 9, i32* %incdec.ptr.7, align 4, !tbaa !1
  %incdec.ptr1.8 = getelementptr inbounds i32* %ph, i32 9
  store i32 9, i32* %incdec.ptr1.7, align 4, !tbaa !1
  %incdec.ptr.9 = getelementptr inbounds i32* %px, i32 10
  store i32 10, i32* %incdec.ptr.8, align 4, !tbaa !1
  %incdec.ptr1.9 = getelementptr inbounds i32* %ph, i32 10
  store i32 10, i32* %incdec.ptr1.8, align 4, !tbaa !1
  %incdec.ptr.10 = getelementptr inbounds i32* %px, i32 11
  store i32 11, i32* %incdec.ptr.9, align 4, !tbaa !1
  %incdec.ptr1.10 = getelementptr inbounds i32* %ph, i32 11
  store i32 11, i32* %incdec.ptr1.9, align 4, !tbaa !1
  %incdec.ptr.11 = getelementptr inbounds i32* %px, i32 12
  store i32 12, i32* %incdec.ptr.10, align 4, !tbaa !1
  %incdec.ptr1.11 = getelementptr inbounds i32* %ph, i32 12
  store i32 12, i32* %incdec.ptr1.10, align 4, !tbaa !1
  %incdec.ptr.12 = getelementptr inbounds i32* %px, i32 13
  store i32 13, i32* %incdec.ptr.11, align 4, !tbaa !1
  %incdec.ptr1.12 = getelementptr inbounds i32* %ph, i32 13
  store i32 13, i32* %incdec.ptr1.11, align 4, !tbaa !1
  %incdec.ptr.13 = getelementptr inbounds i32* %px, i32 14
  store i32 14, i32* %incdec.ptr.12, align 4, !tbaa !1
  %incdec.ptr1.13 = getelementptr inbounds i32* %ph, i32 14
  store i32 14, i32* %incdec.ptr1.12, align 4, !tbaa !1
  %incdec.ptr.14 = getelementptr inbounds i32* %px, i32 15
  store i32 15, i32* %incdec.ptr.13, align 4, !tbaa !1
  %incdec.ptr1.14 = getelementptr inbounds i32* %ph, i32 15
  store i32 15, i32* %incdec.ptr1.13, align 4, !tbaa !1
  store i32 16, i32* %incdec.ptr.14, align 4, !tbaa !1
  store i32 16, i32* %incdec.ptr1.14, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  store i32 1, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), align 4, !tbaa !1
  store i32 1, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), align 4, !tbaa !1
  store i32 2, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 1), align 4, !tbaa !1
  store i32 2, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 1), align 4, !tbaa !1
  store i32 3, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 2), align 4, !tbaa !1
  store i32 3, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 2), align 4, !tbaa !1
  store i32 4, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 3), align 4, !tbaa !1
  store i32 4, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 3), align 4, !tbaa !1
  store i32 5, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 4), align 4, !tbaa !1
  store i32 5, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 4), align 4, !tbaa !1
  store i32 6, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 5), align 4, !tbaa !1
  store i32 6, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 5), align 4, !tbaa !1
  store i32 7, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 6), align 4, !tbaa !1
  store i32 7, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 6), align 4, !tbaa !1
  store i32 8, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 7), align 4, !tbaa !1
  store i32 8, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 7), align 4, !tbaa !1
  store i32 9, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 8), align 4, !tbaa !1
  store i32 9, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 8), align 4, !tbaa !1
  store i32 10, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 9), align 4, !tbaa !1
  store i32 10, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 9), align 4, !tbaa !1
  store i32 11, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 10), align 4, !tbaa !1
  store i32 11, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 10), align 4, !tbaa !1
  store i32 12, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 11), align 4, !tbaa !1
  store i32 12, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 11), align 4, !tbaa !1
  store i32 13, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 12), align 4, !tbaa !1
  store i32 13, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 12), align 4, !tbaa !1
  store i32 14, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 13), align 4, !tbaa !1
  store i32 14, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 13), align 4, !tbaa !1
  store i32 15, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 14), align 4, !tbaa !1
  store i32 15, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 14), align 4, !tbaa !1
  store i32 16, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 15), align 4, !tbaa !1
  store i32 16, i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 15), align 4, !tbaa !1
  ret i32 1496
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
