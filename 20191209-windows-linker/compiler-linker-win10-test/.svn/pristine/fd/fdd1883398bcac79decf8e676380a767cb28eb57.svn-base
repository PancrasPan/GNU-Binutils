; ModuleID = './c_standard_lib-master/MATH/TAN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Nan = external constant %union.anon
@_Rteps = external constant %union.anon
@q = internal constant [4 x double] [double 0x3EA0B774F07678E9, double 0xBF346F6499094841, double 0x3F9A479EA17E2159, double 0xBFDDDEB047FBD9D5], align 8
@p = internal constant [3 x double] [double 0xBEF2BAB72EA2C724, double 0x3F6C0E82A63BAADF, double 0xBFC112B5E54D0900], align 8

; Function Attrs: nounwind
define double @tan(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %g = alloca double, align 8
  %gd = alloca double, align 8
  %quad = alloca i32, align 4
  %y = alloca double, align 8
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
  store i32 33, i32* @errno, align 4
  %1 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %1, double* %retval
  br label %return

sw.bb2:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %2 = load double* %x.addr, align 8
  %cmp = fcmp olt double %2, -3.370000e+09
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %3 = load double* %x.addr, align 8
  %cmp4 = fcmp olt double 3.370000e+09, %3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.default
  %4 = load double* %x.addr, align 8
  %div = fdiv double %4, 0x401921FB54442D18
  store double %div, double* %g, align 8
  %call6 = call signext i16 @_Dint(double* %g, i16 signext 0)
  %5 = load double* %g, align 8
  %mul = fmul double %5, 0x401921FB54442D18
  %6 = load double* %x.addr, align 8
  %sub = fsub double %6, %mul
  store double %sub, double* %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load double* %x.addr, align 8
  %mul7 = fmul double %7, 0x3FE45F306DC9C883
  store double %mul7, double* %g, align 8
  %8 = load double* %g, align 8
  %cmp8 = fcmp olt double 0.000000e+00, %8
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load double* %g, align 8
  %add = fadd double %9, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %10 = load double* %g, align 8
  %sub10 = fsub double %10, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %sub10, %cond.false ]
  %conv11 = fptosi double %cond to i32
  store i32 %conv11, i32* %quad, align 4
  %11 = load i32* %quad, align 4
  %conv12 = sitofp i32 %11 to double
  store double %conv12, double* %g, align 8
  %12 = load double* %x.addr, align 8
  %13 = load double* %g, align 8
  %mul13 = fmul double %13, 0x3FF921FB00000000
  %sub14 = fsub double %12, %mul13
  %14 = load double* %g, align 8
  %mul15 = fmul double %14, 0x3E95110B4611A626
  %sub16 = fsub double %sub14, %mul15
  store double %sub16, double* %g, align 8
  store double 1.000000e+00, double* %gd, align 8
  %15 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %16 = load double* %g, align 8
  %cmp17 = fcmp olt double %16, 0.000000e+00
  br i1 %cmp17, label %cond.true19, label %cond.false21

cond.true19:                                      ; preds = %cond.end
  %17 = load double* %g, align 8
  %sub20 = fsub double -0.000000e+00, %17
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end
  %18 = load double* %g, align 8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true19
  %cond23 = phi double [ %sub20, %cond.true19 ], [ %18, %cond.false21 ]
  %cmp24 = fcmp olt double %15, %cond23
  br i1 %cmp24, label %if.then26, label %if.end43

if.then26:                                        ; preds = %cond.end22
  %19 = load double* %g, align 8
  %20 = load double* %g, align 8
  %mul27 = fmul double %19, %20
  store double %mul27, double* %y, align 8
  %21 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 0), align 8
  %22 = load double* %y, align 8
  %mul28 = fmul double %21, %22
  %23 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 1), align 8
  %add29 = fadd double %mul28, %23
  %24 = load double* %y, align 8
  %mul30 = fmul double %add29, %24
  %25 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 2), align 8
  %add31 = fadd double %mul30, %25
  %26 = load double* %y, align 8
  %mul32 = fmul double %add31, %26
  %27 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 3), align 8
  %add33 = fadd double %mul32, %27
  %28 = load double* %y, align 8
  %mul34 = fmul double %add33, %28
  %29 = load double* %gd, align 8
  %add35 = fadd double %29, %mul34
  store double %add35, double* %gd, align 8
  %30 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 0), align 8
  %31 = load double* %y, align 8
  %mul36 = fmul double %30, %31
  %32 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 1), align 8
  %add37 = fadd double %mul36, %32
  %33 = load double* %y, align 8
  %mul38 = fmul double %add37, %33
  %34 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 2), align 8
  %add39 = fadd double %mul38, %34
  %35 = load double* %y, align 8
  %mul40 = fmul double %add39, %35
  %36 = load double* %g, align 8
  %mul41 = fmul double %mul40, %36
  %37 = load double* %g, align 8
  %add42 = fadd double %37, %mul41
  store double %add42, double* %g, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then26, %cond.end22
  %38 = load i32* %quad, align 4
  %and = and i32 %38, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true44, label %cond.false47

cond.true44:                                      ; preds = %if.end43
  %39 = load double* %gd, align 8
  %sub45 = fsub double -0.000000e+00, %39
  %40 = load double* %g, align 8
  %div46 = fdiv double %sub45, %40
  br label %cond.end49

cond.false47:                                     ; preds = %if.end43
  %41 = load double* %g, align 8
  %42 = load double* %gd, align 8
  %div48 = fdiv double %41, %42
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false47, %cond.true44
  %cond50 = phi double [ %div46, %cond.true44 ], [ %div48, %cond.false47 ]
  store double %cond50, double* %retval
  br label %return

return:                                           ; preds = %cond.end49, %sw.bb2, %sw.bb1, %sw.bb
  %43 = load double* %retval
  ret double %43
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Dint(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
