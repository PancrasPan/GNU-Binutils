; ModuleID = './c_standard_lib-master/MATH/ATAN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@atan.piby2 = internal constant double 0x3FF921FB54442D18, align 8
@errno = external global i32

; Function Attrs: nounwind
define double @atan(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %hex = alloca i16, align 2
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
  %1 = bitcast double* %x.addr to i16*
  %arrayidx = getelementptr inbounds i16* %1, i32 3
  %2 = load i16* %arrayidx, align 2
  %conv2 = zext i16 %2 to i32
  %and = and i32 %conv2, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  store double 0xBFF921FB54442D18, double* %retval
  br label %return

if.else:                                          ; preds = %sw.bb1
  store double 0x3FF921FB54442D18, double* %retval
  br label %return

sw.bb3:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load double* %x.addr, align 8
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %sw.default
  %4 = load double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %4
  store double %sub, double* %x.addr, align 8
  store i16 8, i16* %hex, align 2
  br label %if.end

if.else6:                                         ; preds = %sw.default
  store i16 0, i16* %hex, align 2
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  %5 = load double* %x.addr, align 8
  %cmp7 = fcmp olt double 1.000000e+00, %5
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %6 = load double* %x.addr, align 8
  %div = fdiv double 1.000000e+00, %6
  store double %div, double* %x.addr, align 8
  %7 = load i16* %hex, align 2
  %conv10 = zext i16 %7 to i32
  %xor = xor i32 %conv10, 2
  %conv11 = trunc i32 %xor to i16
  store i16 %conv11, i16* %hex, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %8 = load double* %x.addr, align 8
  %9 = load i16* %hex, align 2
  %call13 = call double @_Atan(double %8, i16 zeroext %9)
  store double %call13, double* %retval
  br label %return

return:                                           ; preds = %if.end12, %sw.bb3, %if.else, %if.then, %sw.bb
  %10 = load double* %retval
  ret double %10
}

declare signext i16 @_Dtest(double*) #1

declare double @_Atan(double, i16 zeroext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
