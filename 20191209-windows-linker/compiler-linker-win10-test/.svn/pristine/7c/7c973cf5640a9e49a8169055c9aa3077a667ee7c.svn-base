; ModuleID = './testcase_4slots/Intrinsic\func_vector.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_vgb = common global <16 x i32> zeroinitializer, align 64

; Function Attrs: nounwind
define i32 @vsum(<16 x i32> %v1, <16 x i32> %v2, <16 x i32> %v3) #0 {
entry:
  %retval = alloca i32, align 4
  %v1.addr = alloca <16 x i32>, align 64
  %v2.addr = alloca <16 x i32>, align 64
  %v3.addr = alloca <16 x i32>, align 64
  store <16 x i32> %v1, <16 x i32>* %v1.addr, align 64
  store <16 x i32> %v2, <16 x i32>* %v2.addr, align 64
  store <16 x i32> %v3, <16 x i32>* %v3.addr, align 64
  %0 = load <16 x i32>* %v2.addr, align 64
  %1 = load <16 x i32>* %v3.addr, align 64
  %add = add <16 x i32> %0, %1
  %2 = load <16 x i32>* %v1.addr, align 64
  %add1 = add <16 x i32> %add, %2
  %3 = load <16 x i32>* @init_vgb, align 64
  %add2 = add <16 x i32> %3, %add1
  store <16 x i32> %add2, <16 x i32>* @init_vgb, align 64
  %4 = load i32* %retval
  ret i32 %4
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
