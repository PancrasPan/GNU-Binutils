; ModuleID = './testcase_4slots/Intrinsic\vmax.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <16 x i32>, align 64
  %b = alloca <16 x i32>, align 64
  %h = alloca <64 x i8>, align 64
  %i = alloca <64 x i8>, align 64
  %c = alloca <16 x i32>, align 64
  %j = alloca <64 x i8>, align 64
  store i32 0, i32* %retval
  store <16 x i32> zeroinitializer, <16 x i32>* %a, align 64
  store <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32>* %b, align 64
  store <64 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i8>* %h, align 64
  store <64 x i8> <i8 13, i8 14, i8 15, i8 16, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 1, i8 2, i8 3, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i8>* %i, align 64
  %0 = load <16 x i32>* %a, align 64
  %1 = load <16 x i32>* %b, align 64
  %2 = call <16 x i32> @llvm.dsp.vmax.40(<16 x i32> %0, <16 x i32> %1)
  store <16 x i32> %2, <16 x i32>* %c, align 64
  %3 = load <64 x i8>* %h, align 64
  %4 = load <64 x i8>* %i, align 64
  %5 = call <64 x i8> @llvm.dsp.vmax.10(<64 x i8> %3, <64 x i8> %4)
  store <64 x i8> %5, <64 x i8>* %j, align 64
  ret i32 0
}

; Function Attrs: nounwind readnone
declare <16 x i32> @llvm.dsp.vmax.40(<16 x i32>, <16 x i32>) #1

; Function Attrs: nounwind readnone
declare <64 x i8> @llvm.dsp.vmax.10(<64 x i8>, <64 x i8>) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
