; ModuleID = './testcase_4slots/ch6_1p.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@gI = global i32 100, align 4
@gI2 = global i32 1, align 4
@gI3 = global i32 5, align 4
@gI4 = global i32 10, align 4
@gI5 = global i32 20, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 2, i32* %k, align 4
  %0 = load i32* @gI, align 4
  %1 = load i32* %k, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32* @gI2, align 4
  %add1 = add nsw i32 %add, %2
  store i32 %add1, i32* %a, align 4
  %3 = load i32* %a, align 4
  %4 = load i32* @gI3, align 4
  %add2 = add nsw i32 %3, %4
  %5 = load i32* @gI4, align 4
  %add3 = add nsw i32 %add2, %5
  %6 = load i32* @gI5, align 4
  %add4 = add nsw i32 %add3, %6
  store i32 %add4, i32* %a, align 4
  %7 = load i32* %a, align 4
  ret i32 %7
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
