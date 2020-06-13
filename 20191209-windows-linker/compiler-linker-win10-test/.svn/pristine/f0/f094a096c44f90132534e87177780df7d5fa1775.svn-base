; ModuleID = './c_standard_lib-master/MATH/SQRT.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Nan = external constant %union.anon
@_Inf = external constant %union.anon
@sqrt.sqrt2 = internal constant double 0x3FF6A09E667F3BCD, align 8

; Function Attrs: nounwind
define double @sqrt(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %xexp = alloca i16, align 2
  %y = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %call = call signext i16 @_Dunscale(i16* %xexp, double* %x.addr)
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
  %1 = bitcast double* %x.addr to i16*
  %arrayidx = getelementptr inbounds i16* %1, i32 3
  %2 = load i16* %arrayidx, align 2
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  store i32 33, i32* @errno, align 4
  %3 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %3, double* %retval
  br label %return

if.else:                                          ; preds = %sw.bb1
  store i32 34, i32* @errno, align 4
  %4 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  store double %4, double* %retval
  br label %return

sw.bb3:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load double* %x.addr, align 8
  %cmp = fcmp olt double %5, 0.000000e+00
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %sw.default
  store i32 33, i32* @errno, align 4
  %6 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %6, double* %retval
  br label %return

if.end:                                           ; preds = %sw.default
  %7 = load double* %x.addr, align 8
  %mul = fmul double -1.984742e-01, %7
  %add = fadd double %mul, 8.804894e-01
  %8 = load double* %x.addr, align 8
  %mul6 = fmul double %add, %8
  %add7 = fadd double %mul6, 3.176687e-01
  store double %add7, double* %y, align 8
  %9 = load double* %y, align 8
  %10 = load double* %x.addr, align 8
  %11 = load double* %y, align 8
  %div = fdiv double %10, %11
  %add8 = fadd double %9, %div
  %mul9 = fmul double 5.000000e-01, %add8
  store double %mul9, double* %y, align 8
  %12 = load double* %x.addr, align 8
  %13 = load double* %y, align 8
  %div10 = fdiv double %12, %13
  %14 = load double* %y, align 8
  %add11 = fadd double %14, %div10
  store double %add11, double* %y, align 8
  %15 = load double* %y, align 8
  %mul12 = fmul double 2.500000e-01, %15
  %16 = load double* %x.addr, align 8
  %17 = load double* %y, align 8
  %div13 = fdiv double %16, %17
  %add14 = fadd double %mul12, %div13
  store double %add14, double* %x.addr, align 8
  %18 = load i16* %xexp, align 2
  %conv15 = sext i16 %18 to i32
  %and16 = and i32 %conv15, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end
  %19 = load double* %x.addr, align 8
  %mul19 = fmul double %19, 0x3FF6A09E667F3BCD
  store double %mul19, double* %x.addr, align 8
  %20 = load i16* %xexp, align 2
  %dec = add i16 %20, -1
  store i16 %dec, i16* %xexp, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end
  %21 = load i16* %xexp, align 2
  %conv21 = sext i16 %21 to i32
  %div22 = sdiv i32 %conv21, 2
  %conv23 = trunc i32 %div22 to i16
  %call24 = call signext i16 @_Dscale(double* %x.addr, i16 signext %conv23)
  %22 = load double* %x.addr, align 8
  store double %22, double* %retval
  br label %return

return:                                           ; preds = %if.end20, %if.then5, %sw.bb3, %if.else, %if.then, %sw.bb
  %23 = load double* %retval
  ret double %23
}

declare signext i16 @_Dunscale(i16*, double*) #1

declare signext i16 @_Dscale(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
