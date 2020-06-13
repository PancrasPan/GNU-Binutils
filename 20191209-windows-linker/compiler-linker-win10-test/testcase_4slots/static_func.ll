; ModuleID = './testcase_4slots/static_func.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@mul_sum.sum = internal global i32 0, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @mul_sum(i32 1, i32 2)
  %call1 = call i32 @mul_sum(i32 -3, i32 -4)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: nounwind
define internal i32 @mul_sum(i32 %x1, i32 %x2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  %0 = load i32* %x1.addr, align 4
  %1 = load i32* %x2.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32* @mul_sum.sum, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* @mul_sum.sum, align 4
  %3 = load i32* @mul_sum.sum, align 4
  ret i32 %3
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
