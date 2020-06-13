; ModuleID = '.\testcase_8slots\SIMD_Intrinsic\local_vector_return.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@vla = global <64 x i32> <i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, align 256
@vlb = global <64 x i32> <i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, align 256

; Function Attrs: inlinehint nounwind
define <256 x i8> @vmax_c(<256 x i8> %a, <256 x i8> %b) #0 {
entry:
  %a.addr = alloca <256 x i8>, align 256
  %b.addr = alloca <256 x i8>, align 256
  store <256 x i8> %a, <256 x i8>* %a.addr, align 256
  store <256 x i8> %b, <256 x i8>* %b.addr, align 256
  %0 = load <256 x i8>* %a.addr, align 256
  %1 = load <256 x i8>* %b.addr, align 256
  %2 = call <256 x i8> @llvm.dsp.vmax.10(<256 x i8> %0, <256 x i8> %1)
  ret <256 x i8> %2
}

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vmax.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind
define <64 x i32> @dspvi32_2add(<64 x i32> %a, <64 x i32> %b) #2 {
entry:
  %a.addr = alloca <64 x i32>, align 256
  %b.addr = alloca <64 x i32>, align 256
  store <64 x i32> %a, <64 x i32>* %a.addr, align 256
  store <64 x i32> %b, <64 x i32>* %b.addr, align 256
  %0 = load <64 x i32>* %a.addr, align 256
  %1 = load <64 x i32>* %b.addr, align 256
  %add = add <64 x i32> %0, %1
  ret <64 x i32> %add
}

; Function Attrs: nounwind
define <64 x i32> @dspvi32_3add(<64 x i32> %a, <64 x i32> %b, <64 x i32> %c) #2 {
entry:
  %a.addr = alloca <64 x i32>, align 256
  %b.addr = alloca <64 x i32>, align 256
  %c.addr = alloca <64 x i32>, align 256
  store <64 x i32> %a, <64 x i32>* %a.addr, align 256
  store <64 x i32> %b, <64 x i32>* %b.addr, align 256
  store <64 x i32> %c, <64 x i32>* %c.addr, align 256
  %0 = load <64 x i32>* %a.addr, align 256
  %1 = load <64 x i32>* %b.addr, align 256
  %add = add <64 x i32> %0, %1
  %2 = load <64 x i32>* %c.addr, align 256
  %add1 = add <64 x i32> %add, %2
  ret <64 x i32> %add1
}

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %vlc = alloca <64 x i32>, align 256
  %vld = alloca <64 x i32>, align 256
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  %0 = load <64 x i32>* @vlb, align 256
  %1 = load <64 x i32>* @vla, align 256
  %add = add <64 x i32> %1, %0
  store <64 x i32> %add, <64 x i32>* @vla, align 256
  %2 = load <64 x i32>* @vla, align 256
  %3 = load <64 x i32>* @vlb, align 256
  %call = call <64 x i32> @dspvi32_2add(<64 x i32> %2, <64 x i32> %3)
  store <64 x i32> %call, <64 x i32>* %vlc, align 256
  %4 = load <64 x i32>* @vla, align 256
  %5 = load <64 x i32>* @vlb, align 256
  %6 = load <64 x i32>* %vlc, align 256
  %call1 = call <64 x i32> @dspvi32_3add(<64 x i32> %4, <64 x i32> %5, <64 x i32> %6)
  store <64 x i32> %call1, <64 x i32>* %vld, align 256
  %7 = load <64 x i32>* %vld, align 256
  %8 = load <64 x i32>* %vlc, align 256
  %add2 = add <64 x i32> %8, %7
  store <64 x i32> %add2, <64 x i32>* %vlc, align 256
  %9 = load <64 x i32>* %vld, align 256
  %10 = load <64 x i32>* @vla, align 256
  %add3 = add <64 x i32> %10, %9
  store <64 x i32> %add3, <64 x i32>* @vla, align 256
  ret i32 0
}

attributes #0 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
