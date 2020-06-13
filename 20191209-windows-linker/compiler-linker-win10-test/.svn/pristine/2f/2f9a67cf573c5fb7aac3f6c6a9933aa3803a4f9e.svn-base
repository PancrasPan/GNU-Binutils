; ModuleID = './c_standard_lib-master/MATH/FREXP.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@errno = external global i32

; Function Attrs: nounwind
define double @frexp(double %x, i32* %pexp) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %pexp.addr = alloca i32*, align 4
  %binexp = alloca i16, align 2
  store double %x, double* %x.addr, align 8
  store i32* %pexp, i32** %pexp.addr, align 4
  %call = call signext i16 @_Dunscale(i16* %binexp, double* %x.addr)
  %conv = sext i16 %call to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 33, i32* @errno, align 4
  %0 = load i32** %pexp.addr, align 4
  store i32 0, i32* %0, align 4
  %1 = load double* %x.addr, align 8
  store double %1, double* %retval
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i32** %pexp.addr, align 4
  store i32 0, i32* %2, align 4
  store double 0.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load i16* %binexp, align 2
  %conv2 = sext i16 %3 to i32
  %4 = load i32** %pexp.addr, align 4
  store i32 %conv2, i32* %4, align 4
  %5 = load double* %x.addr, align 8
  store double %5, double* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %6 = load double* %retval
  ret double %6
}

declare signext i16 @_Dunscale(i16*, double*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
