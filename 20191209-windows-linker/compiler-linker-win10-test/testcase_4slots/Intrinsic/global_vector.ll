; ModuleID = './testcase_4slots/Intrinsic/global_vector.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_vgb = global <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, align 64
@main.init_vst = internal global <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, align 64
@uninit_vgb = common global <16 x i32> zeroinitializer, align 64
@uninit_vst = internal global <16 x i32> zeroinitializer, align 64
@uninit_st = internal global i32 0, align 4
@uninit_gb = common global i32 0, align 4

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  %0 = load <16 x i32>* @init_vgb, align 64
  %1 = load <16 x i32>* @uninit_vgb, align 64
  %add = add <16 x i32> %1, %0
  store <16 x i32> %add, <16 x i32>* @uninit_vgb, align 64
  %2 = load <16 x i32>* @main.init_vst, align 64
  store <16 x i32> %2, <16 x i32>* @uninit_vst, align 64
  store i32 10, i32* @uninit_st, align 4
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
