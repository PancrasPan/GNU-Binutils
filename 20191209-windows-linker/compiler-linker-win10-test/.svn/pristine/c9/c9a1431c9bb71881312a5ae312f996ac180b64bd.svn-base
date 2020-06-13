; ModuleID = './c_standard_lib-master/MATH/EXP.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Inf = external constant %union.anon

; Function Attrs: nounwind
define double @exp(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %call = call signext i16 @_Dtest(double* %x.addr)
  %conv = sext i16 %call to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* @errno, align 4
  %0 = load double* %x.addr, align 8
  store double %0, double* %retval
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 34, i32* @errno, align 4
  %1 = bitcast double* %x.addr to i16*
  %arrayidx = getelementptr inbounds i16* %1, i32 3
  %2 = load i16* %arrayidx, align 2
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %sw.bb1
  %3 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  store double %3, double* %retval
  br label %return

sw.bb3:                                           ; preds = %entry
  store double 1.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %call4 = call signext i16 @_Exp(double* %x.addr, i16 signext 0)
  %conv5 = sext i16 %call4 to i32
  %cmp = icmp sle i32 0, %conv5
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %sw.default
  store i32 34, i32* @errno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %sw.default
  %4 = load double* %x.addr, align 8
  store double %4, double* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb3, %if.else, %if.then, %sw.bb
  %5 = load double* %retval
  ret double %5
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Exp(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
