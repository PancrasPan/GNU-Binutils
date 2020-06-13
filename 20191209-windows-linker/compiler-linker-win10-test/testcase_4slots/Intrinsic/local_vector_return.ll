; ModuleID = './testcase_4slots/Intrinsic/local_vector_return.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@vla = global <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, align 64
@vlb = global <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, align 64

; Function Attrs: nounwind
define <16 x i32> @v4si_2add(<16 x i32> %a, <16 x i32> %b) #0 {
entry:
  %a.addr = alloca <16 x i32>, align 64
  %b.addr = alloca <16 x i32>, align 64
  store <16 x i32> %a, <16 x i32>* %a.addr, align 64
  store <16 x i32> %b, <16 x i32>* %b.addr, align 64
  %0 = load <16 x i32>* %a.addr, align 64
  %1 = load <16 x i32>* %b.addr, align 64
  %add = add <16 x i32> %0, %1
  ret <16 x i32> %add
}

; Function Attrs: nounwind
define <16 x i32> @v4si_3add(<16 x i32> %a, <16 x i32> %b, <16 x i32> %c) #0 {
entry:
  %a.addr = alloca <16 x i32>, align 64
  %b.addr = alloca <16 x i32>, align 64
  %c.addr = alloca <16 x i32>, align 64
  store <16 x i32> %a, <16 x i32>* %a.addr, align 64
  store <16 x i32> %b, <16 x i32>* %b.addr, align 64
  store <16 x i32> %c, <16 x i32>* %c.addr, align 64
  %0 = load <16 x i32>* %a.addr, align 64
  %1 = load <16 x i32>* %b.addr, align 64
  %add = add <16 x i32> %0, %1
  %2 = load <16 x i32>* %c.addr, align 64
  %add1 = add <16 x i32> %add, %2
  ret <16 x i32> %add1
}

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  %vlc = alloca <16 x i32>, align 64
  %vld = alloca <16 x i32>, align 64
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  %0 = load <16 x i32>* @vlb, align 64
  %1 = load <16 x i32>* @vla, align 64
  %add = add <16 x i32> %1, %0
  store <16 x i32> %add, <16 x i32>* @vla, align 64
  %2 = load <16 x i32>* @vla, align 64
  %3 = load <16 x i32>* @vlb, align 64
  %call = call <16 x i32> @v4si_2add(<16 x i32> %2, <16 x i32> %3)
  store <16 x i32> %call, <16 x i32>* %vlc, align 64
  %4 = load <16 x i32>* @vla, align 64
  %5 = load <16 x i32>* @vlb, align 64
  %6 = load <16 x i32>* %vlc, align 64
  %call1 = call <16 x i32> @v4si_3add(<16 x i32> %4, <16 x i32> %5, <16 x i32> %6)
  store <16 x i32> %call1, <16 x i32>* %vld, align 64
  %7 = load <16 x i32>* %vld, align 64
  %8 = load <16 x i32>* %vlc, align 64
  %add2 = add <16 x i32> %8, %7
  store <16 x i32> %add2, <16 x i32>* %vlc, align 64
  %9 = load <16 x i32>* %vld, align 64
  %10 = load <16 x i32>* @vla, align 64
  %add3 = add <16 x i32> %10, %9
  store <16 x i32> %add3, <16 x i32>* @vla, align 64
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
