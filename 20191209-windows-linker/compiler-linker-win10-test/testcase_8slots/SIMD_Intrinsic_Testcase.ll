; ModuleID = './testcase_8slots/SIMD_Intrinsic\SIMD_Intrinsic_Testcase.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: noreturn nounwind
define void @SIMD_Intrinsic_Testcase0() #0 {
entry:
  %0 = tail call i32 @llvm.dsp.abs.qb(i32 1) #2
  %1 = tail call i32 @llvm.dsp.loadu.8(i32 1, i32 1) #2
  %2 = tail call i32 @llvm.dsp.loadu.16(i32 1, i32 1) #2
  %3 = tail call i32 @llvm.dsp.loadu.32(i32 1, i32 1) #2
  %4 = tail call i32 @llvm.dsp.loado.16(i32 1, i32 2) #2
  %5 = tail call i32 @llvm.dsp.loado.32(i32 1, i32 2) #2
  %6 = tail call i32 @llvm.dsp.storeo.16(i32 1, i32 2) #2
  %7 = tail call i32 @llvm.dsp.storeo.32(i32 1, i32 2) #2
  %8 = tail call <256 x i8> @llvm.dsp.storeu.10(i32 1, i32 1) #2
  %9 = tail call <128 x i16> @llvm.dsp.storeu.20(i32 1, i32 1) #2
  %10 = tail call <64 x i32> @llvm.dsp.storeu.40(i32 1, i32 1) #2
  tail call void @llvm.dsp.storeu.8(i32 1, i32 2, i32 1) #2
  unreachable
}

; Function Attrs: noreturn nounwind
define i32 @main() #0 {
entry:
  tail call void @SIMD_Intrinsic_Testcase0()
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.dsp.storeu.8(i32, i32, i32) #1

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.storeu.40(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.storeu.20(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.storeu.10(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.storeo.32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.storeo.16(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loado.32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loado.16(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.16(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.8(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.abs.qb(i32) #2

attributes #0 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
