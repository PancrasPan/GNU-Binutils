; ModuleID = './testcase_8slots/funco2.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@gO1 = global i32 10, align 4
@gO2 = global i32 20, align 4
@gO0 = common global i32 0, align 4

; Function Attrs: nounwind readnone
define i32 @funcO(i32 %a, i32 %b) #0 {
entry:
  %mul = mul nsw i32 %b, %a
  ret i32 %mul
}

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
