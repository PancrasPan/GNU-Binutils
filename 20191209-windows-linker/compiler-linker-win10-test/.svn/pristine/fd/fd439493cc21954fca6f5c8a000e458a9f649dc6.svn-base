; ModuleID = './c_standard_lib-master/MATH/COSH.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Inf = external constant %union.anon
@_Xbig = external constant %union.anon

; Function Attrs: nounwind
define double @cosh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %call = call signext i16 @_Dtest(double* %x.addr)
  %conv = sext i16 %call to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* @errno, align 4
  %0 = load double* %x.addr, align 8
  store double %0, double* %retval
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 34, i32* @errno, align 4
  %1 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  store double %1, double* %retval
  br label %return

sw.bb2:                                           ; preds = %entry
  store double 1.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %2 = load double* %x.addr, align 8
  %cmp = fcmp olt double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %3 = load double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %3
  store double %sub, double* %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  %call4 = call signext i16 @_Exp(double* %x.addr, i16 signext -1)
  %conv5 = sext i16 %call4 to i32
  %cmp6 = icmp sle i32 0, %conv5
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  store i32 34, i32* @errno, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %4 = load double* %x.addr, align 8
  %5 = load double* getelementptr inbounds (%union.anon* @_Xbig, i32 0, i32 0), align 8
  %cmp9 = fcmp olt double %4, %5
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  %6 = load double* %x.addr, align 8
  %div = fdiv double 2.500000e-01, %6
  %7 = load double* %x.addr, align 8
  %add = fadd double %7, %div
  store double %add, double* %x.addr, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then8
  %8 = load double* %x.addr, align 8
  store double %8, double* %retval
  br label %return

return:                                           ; preds = %if.end13, %sw.bb2, %sw.bb1, %sw.bb
  %9 = load double* %retval
  ret double %9
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Exp(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
