; ModuleID = './c_standard_lib-master/MATH/MODF.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define double @modf(double %x, double* %pint) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %pint.addr = alloca double*, align 4
  store double %x, double* %x.addr, align 8
  store double* %pint, double** %pint.addr, align 4
  %0 = load double* %x.addr, align 8
  %1 = load double** %pint.addr, align 4
  store double %0, double* %1, align 8
  %2 = load double** %pint.addr, align 4
  %call = call signext i16 @_Dint(double* %2, i16 signext 0)
  %conv = sext i16 %call to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %3 = load double* %x.addr, align 8
  store double %3, double* %retval
  br label %return

sw.bb1:                                           ; preds = %entry, %entry
  store double 0.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load double* %x.addr, align 8
  %5 = load double** %pint.addr, align 4
  %6 = load double* %5, align 8
  %sub = fsub double %4, %6
  store double %sub, double* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %7 = load double* %retval
  ret double %7
}

declare signext i16 @_Dint(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
