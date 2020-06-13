; ModuleID = './testcase_8slots/1/local_var_args.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 1, i32* %a, align 4
  store i32 3, i32* %b, align 4
  store i32 2, i32* %c, align 4
  %0 = load i32* %a, align 4
  %1 = load i32* %b, align 4
  %2 = load i32* %c, align 4
  %call = call i32 @outFunct(i32 %0, i32 %1, i32 %2)
  store i32 %call, i32* %b, align 4
  %3 = load i32* %b, align 4
  ret i32 %3
}

declare i32 @outFunct(i32, i32, i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
