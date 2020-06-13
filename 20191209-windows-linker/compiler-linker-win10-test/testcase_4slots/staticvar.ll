; ModuleID = './testcase_4slots/staticvar.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_g = global i32 1, align 4
@main.init_s_main = internal global i32 3, align 4
@init_s = internal global i32 2, align 4
@uninit_g = common global i32 0, align 4
@uninit_s = internal global i32 0, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %local = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 4, i32* %local, align 4
  %0 = load i32* @init_g, align 4
  %1 = load i32* @init_s, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32* @uninit_g, align 4
  %add1 = add nsw i32 %add, %2
  %3 = load i32* @main.init_s_main, align 4
  %add2 = add nsw i32 %add1, %3
  %4 = load i32* %local, align 4
  %add3 = add nsw i32 %add2, %4
  store i32 %add3, i32* @uninit_s, align 4
  %5 = load i32* @uninit_s, align 4
  ret i32 %5
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
