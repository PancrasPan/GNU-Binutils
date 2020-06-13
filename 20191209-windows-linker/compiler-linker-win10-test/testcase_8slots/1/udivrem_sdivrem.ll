; ModuleID = './testcase_8slots/1\udivrem_sdivrem.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 6, i32* %a, align 4
  store i32 4, i32* %b, align 4
  %0 = load i32* %a, align 4
  %1 = load i32* %b, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %c, align 4
  %2 = load i32* %a, align 4
  %3 = load i32* %b, align 4
  %rem = srem i32 %2, %3
  store i32 %rem, i32* %c, align 4
  store i32 6, i32* %d, align 4
  store i32 4, i32* %e, align 4
  %4 = load i32* %d, align 4
  %5 = load i32* %e, align 4
  %div1 = udiv i32 %4, %5
  store i32 %div1, i32* %f, align 4
  %6 = load i32* %d, align 4
  %rem2 = urem i32 %6, 4
  store i32 %rem2, i32* %f, align 4
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
