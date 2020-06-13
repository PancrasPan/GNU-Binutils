; ModuleID = './_main/_main.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@_stump = global [7 x i8] c"TJ_421\00", align 1

; Function Attrs: nounwind
define i32 @_main() #0 {
entry:
  %mainret = alloca i32, align 4
  %call = call i32 bitcast (i32 (...)* @main to i32 ()*)()
  store i32 %call, i32* %mainret, align 4
  %0 = load i32* %mainret, align 4
  ret i32 %0
}

declare i32 @main(...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
