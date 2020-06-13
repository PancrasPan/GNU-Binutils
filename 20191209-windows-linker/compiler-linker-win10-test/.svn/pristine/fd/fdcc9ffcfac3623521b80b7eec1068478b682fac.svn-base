; ModuleID = './testcase_4slots/go1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@gO2 = external global i32

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 1, i32* %a, align 4
  store i32 2, i32* %c, align 4
  %0 = load i32* @gO2, align 4
  %1 = load i32* %c, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %c, align 4
  %2 = load i32* %c, align 4
  ret i32 %2
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
