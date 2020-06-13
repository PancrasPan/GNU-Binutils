; ModuleID = './testcase_4slots/Intrinsic/v4max.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <16 x i32>, align 64
  %b = alloca <16 x i32>, align 64
  %c = alloca <16 x i32>, align 64
  store i32 0, i32* %retval
  store <16 x i32> <i32 256, i32 512, i32 768, i32 1024, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32>* %a, align 64
  store <16 x i32> zeroinitializer, <16 x i32>* %b, align 64
  %0 = load <16 x i32>* %a, align 64
  %1 = load <16 x i32>* %b, align 64
  %2 = call <16 x i32> @llvm.dsp.vmax.40(<16 x i32> %0, <16 x i32> %1)
  store <16 x i32> %2, <16 x i32>* %c, align 64
  ret i32 0
}

; Function Attrs: nounwind readnone
declare <16 x i32> @llvm.dsp.vmax.40(<16 x i32>, <16 x i32>) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
