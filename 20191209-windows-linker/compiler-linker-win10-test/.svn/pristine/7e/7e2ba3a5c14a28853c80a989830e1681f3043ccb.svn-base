; ModuleID = './testcase_4slots/testa.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_gA = global i32 1, align 4
@main.uninit_sA = internal global i32 0, align 4
@init_sA = internal global i32 2, align 4
@uninit_gA = common global i32 0, align 4
@init_gB = external global i32
@uninit_gB = external global i32

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %locala = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32* @init_gA, align 4
  %1 = load i32* @init_sA, align 4
  %2 = load i32* @init_gB, align 4
  %call = call i32 @testb(i32 %0, i32 %1, i32* @uninit_gA, i32* @main.uninit_sA, i32 %2, i32* @uninit_gB)
  store i32 %call, i32* %locala, align 4
  ret i32 0
}

declare i32 @testb(i32, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
