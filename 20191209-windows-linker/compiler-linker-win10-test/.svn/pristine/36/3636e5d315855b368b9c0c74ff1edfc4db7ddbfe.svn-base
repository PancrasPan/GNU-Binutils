; ModuleID = './c_standard_lib-master/MATH/TANH.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Rteps = external constant %union.anon
@p = internal constant [3 x double] [double 0xBFEEDC28CEFBA77F, double 0xC058CE75A1BA5CCC, double 0xC09935A5C9BE1E18], align 8
@q = internal constant [4 x double] [double 1.000000e+00, double 0x405C2FA9E1EBF7FA, double 0x40A1738B4D01F0F3, double 0x40B2E83C574E9693], align 8

; Function Attrs: nounwind
define double @tanh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %neg = alloca i16, align 2
  %g = alloca double, align 8
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
  store double -1.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %sw.bb1
  store double 1.000000e+00, double* %retval
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
  store i16 1, i16* %neg, align 2
  br label %if.end

if.else6:                                         ; preds = %sw.default
  store i16 0, i16* %neg, align 2
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  %5 = load double* %x.addr, align 8
  %6 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %cmp7 = fcmp olt double %5, %6
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end
  br label %if.end39

if.else10:                                        ; preds = %if.end
  %7 = load double* %x.addr, align 8
  %cmp11 = fcmp olt double %7, 0x3FE193EA7AAD030B
  br i1 %cmp11, label %if.then13, label %if.else26

if.then13:                                        ; preds = %if.else10
  %8 = load double* %x.addr, align 8
  %9 = load double* %x.addr, align 8
  %mul = fmul double %8, %9
  store double %mul, double* %g, align 8
  %10 = load double* %x.addr, align 8
  %11 = load double* %g, align 8
  %mul14 = fmul double %10, %11
  %12 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 0), align 8
  %13 = load double* %g, align 8
  %mul15 = fmul double %12, %13
  %14 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 1), align 8
  %add = fadd double %mul15, %14
  %15 = load double* %g, align 8
  %mul16 = fmul double %add, %15
  %16 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 2), align 8
  %add17 = fadd double %mul16, %16
  %mul18 = fmul double %mul14, %add17
  %17 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 0), align 8
  %18 = load double* %g, align 8
  %mul19 = fmul double %17, %18
  %19 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 1), align 8
  %add20 = fadd double %mul19, %19
  %20 = load double* %g, align 8
  %mul21 = fmul double %add20, %20
  %21 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 2), align 8
  %add22 = fadd double %mul21, %21
  %22 = load double* %g, align 8
  %mul23 = fmul double %add22, %22
  %23 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 3), align 8
  %add24 = fadd double %mul23, %23
  %div = fdiv double %mul18, %add24
  %24 = load double* %x.addr, align 8
  %add25 = fadd double %24, %div
  store double %add25, double* %x.addr, align 8
  br label %if.end38

if.else26:                                        ; preds = %if.else10
  %call27 = call signext i16 @_Exp(double* %x.addr, i16 signext 0)
  %conv28 = sext i16 %call27 to i32
  %cmp29 = icmp slt i32 %conv28, 0
  br i1 %cmp29, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else26
  %25 = load double* %x.addr, align 8
  %26 = load double* %x.addr, align 8
  %mul32 = fmul double %25, %26
  %add33 = fadd double %mul32, 1.000000e+00
  %div34 = fdiv double 2.000000e+00, %add33
  %sub35 = fsub double 1.000000e+00, %div34
  store double %sub35, double* %x.addr, align 8
  br label %if.end37

if.else36:                                        ; preds = %if.else26
  store double 1.000000e+00, double* %x.addr, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then13
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then9
  %27 = load i16* %neg, align 2
  %tobool40 = icmp ne i16 %27, 0
  br i1 %tobool40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.end39
  %28 = load double* %x.addr, align 8
  %sub42 = fsub double -0.000000e+00, %28
  store double %sub42, double* %retval
  br label %return

if.else43:                                        ; preds = %if.end39
  %29 = load double* %x.addr, align 8
  store double %29, double* %retval
  br label %return

return:                                           ; preds = %if.else43, %if.then41, %sw.bb3, %if.else, %if.then, %sw.bb
  %30 = load double* %retval
  ret double %30
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Exp(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
