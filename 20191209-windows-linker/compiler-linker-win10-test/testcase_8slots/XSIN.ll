; ModuleID = './testcase_8slots/1\XSIN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Nan = external constant %union.anon
@_Rteps = external constant %union.anon
@c = internal constant [8 x double] [double 0xBDA93987E26D4E7A, double 0x3E21EEED69C2A98C, double 0xBE927E4FB76DB5DE, double 0x3EFA01A019DAAAFC, double 0xBF56C16C16C16C2A, double 0x3FA55555555555B4, double -5.000000e-01, double 1.000000e+00], align 8
@s = internal constant [8 x double] [double -7.647230e-13, double 0x3DE6125959501A89, double 0xBE5AE64567EA0237, double 0x3EC71DE3A544744C, double 0xBF2A01A01A01A030, double 0x3F81111111111127, double 0xBFC5555555555555, double 1.000000e+00], align 8

; Function Attrs: nounwind
define double @_Sin(double %x, i32 %qoff) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %qoff.addr = alloca i32, align 4
  %g = alloca double, align 8
  %quad = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store i32 %qoff, i32* %qoff.addr, align 4
  %call = call signext i16 @_Dtest(double* %x.addr)
  %conv = sext i16 %call to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* @errno, align 4
  %0 = load double* %x.addr, align 8
  store double %0, double* %retval
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i32* %qoff.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  store double 1.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %sw.bb1
  store double 0.000000e+00, double* %retval
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 33, i32* @errno, align 4
  %2 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %2, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %3 = load double* %x.addr, align 8
  %cmp = fcmp olt double %3, -3.370000e+09
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %4 = load double* %x.addr, align 8
  %cmp4 = fcmp olt double 3.370000e+09, %4
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %lor.lhs.false, %sw.default
  %5 = load double* %x.addr, align 8
  %div = fdiv double %5, 0x401921FB54442D18
  store double %div, double* %g, align 8
  %call7 = call signext i16 @_Dint(double* %g, i16 signext 0)
  %6 = load double* %g, align 8
  %mul = fmul double %6, 0x401921FB54442D18
  %7 = load double* %x.addr, align 8
  %sub = fsub double %7, %mul
  store double %sub, double* %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %lor.lhs.false
  %8 = load double* %x.addr, align 8
  %mul8 = fmul double %8, 0x3FE45F306DC9C883
  store double %mul8, double* %g, align 8
  %9 = load double* %g, align 8
  %cmp9 = fcmp olt double 0.000000e+00, %9
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load double* %g, align 8
  %add = fadd double %10, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load double* %g, align 8
  %sub11 = fsub double %11, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %sub11, %cond.false ]
  %conv12 = fptosi double %cond to i32
  store i32 %conv12, i32* %quad, align 4
  %12 = load i32* %quad, align 4
  %and = and i32 %12, 3
  %13 = load i32* %qoff.addr, align 4
  %add13 = add i32 %13, %and
  store i32 %add13, i32* %qoff.addr, align 4
  %14 = load i32* %quad, align 4
  %conv14 = sitofp i32 %14 to double
  store double %conv14, double* %g, align 8
  %15 = load double* %x.addr, align 8
  %16 = load double* %g, align 8
  %mul15 = fmul double %16, 0x3FF921FB00000000
  %sub16 = fsub double %15, %mul15
  %17 = load double* %g, align 8
  %mul17 = fmul double %17, 0x3E95110B4611A626
  %sub18 = fsub double %sub16, %mul17
  store double %sub18, double* %g, align 8
  %18 = load double* %g, align 8
  %cmp19 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %cond.end
  %19 = load double* %g, align 8
  %sub22 = fsub double -0.000000e+00, %19
  store double %sub22, double* %g, align 8
  br label %if.end24

if.else23:                                        ; preds = %cond.end
  %20 = load double* %g, align 8
  store double %20, double* %g, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then21
  %21 = load double* %g, align 8
  %22 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %cmp25 = fcmp olt double %21, %22
  br i1 %cmp25, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.end24
  %23 = load i32* %qoff.addr, align 4
  %and28 = and i32 %23, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  store double 1.000000e+00, double* %g, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then27
  br label %if.end43

if.else32:                                        ; preds = %if.end24
  %24 = load i32* %qoff.addr, align 4
  %and33 = and i32 %24, 1
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.else32
  %25 = load double* %g, align 8
  %26 = load double* %g, align 8
  %mul36 = fmul double %25, %26
  %call37 = call double @_Poly(double %mul36, double* getelementptr inbounds ([8 x double]* @c, i32 0, i32 0), i32 7)
  store double %call37, double* %g, align 8
  br label %if.end42

if.else38:                                        ; preds = %if.else32
  %27 = load double* %g, align 8
  %28 = load double* %g, align 8
  %mul39 = fmul double %27, %28
  %call40 = call double @_Poly(double %mul39, double* getelementptr inbounds ([8 x double]* @s, i32 0, i32 0), i32 7)
  %29 = load double* %g, align 8
  %mul41 = fmul double %29, %call40
  store double %mul41, double* %g, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then35
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end31
  %30 = load i32* %qoff.addr, align 4
  %and44 = and i32 %30, 2
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.end43
  %31 = load double* %g, align 8
  %sub47 = fsub double -0.000000e+00, %31
  store double %sub47, double* %retval
  br label %return

if.else48:                                        ; preds = %if.end43
  %32 = load double* %g, align 8
  store double %32, double* %retval
  br label %return

return:                                           ; preds = %if.else48, %if.then46, %sw.bb2, %if.else, %if.then, %sw.bb
  %33 = load double* %retval
  ret double %33
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Dint(double*, i16 signext) #1

declare double @_Poly(double, double*, i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
