; ModuleID = './testcase_4slots/datarel1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@g2 = external global i32
@pg2 = global i32* @g2, align 4
@pa = internal global i32* @a, align 4
@pb = internal global i32* @b, align 4
@b = internal global i32 0, align 4
@a = internal global i32 1, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32** @pa, align 4
  %1 = load i32* %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %0, align 4
  %2 = load i32** @pb, align 4
  %3 = load i32* %2, align 4
  %add = add nsw i32 %3, -1
  store i32 %add, i32* %2, align 4
  %4 = load i32** @pa, align 4
  %5 = load i32* %4, align 4
  %add1 = add nsw i32 %5, 1
  %6 = load i32** @pg2, align 4
  store i32 %add1, i32* %6, align 4
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
