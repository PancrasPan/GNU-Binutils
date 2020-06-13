; ModuleID = './c_standard_lib-master/MATH/XEXP.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@_Inf = external constant %union.anon
@_Rteps = external constant %union.anon
@p = internal constant [3 x double] [double 0x3F008B442AE6921E, double 0x3F7F074BF22A12A6, double 2.500000e-01], align 8
@q = internal constant [4 x double] [double 0x3EA933630CE50455, double 0x3F44AF0C5C28D4DF, double 0x3FAD172851DFD9FF, double 5.000000e-01], align 8

; Function Attrs: nounwind
define signext i16 @_Exp(double* %px, i16 signext %eoff) #0 {
entry:
  %retval = alloca i16, align 2
  %px.addr = alloca double*, align 4
  %eoff.addr = alloca i16, align 2
  %neg = alloca i32, align 4
  %g = alloca double, align 8
  %xexp = alloca i16, align 2
  %y = alloca double, align 8
  store double* %px, double** %px.addr, align 4
  store i16 %eoff, i16* %eoff.addr, align 2
  %0 = load double** %px.addr, align 4
  %1 = load double* %0, align 8
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double** %px.addr, align 4
  %3 = load double* %2, align 8
  %sub = fsub double -0.000000e+00, %3
  %4 = load double** %px.addr, align 4
  store double %sub, double* %4, align 8
  store i32 1, i32* %neg, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %neg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load double** %px.addr, align 4
  %6 = load double* %5, align 8
  %cmp1 = fcmp olt double 1.842000e+03, %6
  br i1 %cmp1, label %if.then2, label %if.else10

if.then2:                                         ; preds = %if.end
  %7 = load i32* %neg, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.then2
  %8 = load double** %px.addr, align 4
  store double 0.000000e+00, double* %8, align 8
  br label %if.end5

if.else4:                                         ; preds = %if.then2
  %9 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  %10 = load double** %px.addr, align 4
  store double %9, double* %10, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %11 = load i32* %neg, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end5
  store i16 0, i16* %retval
  br label %if.end49

if.else8:                                         ; preds = %if.end5
  br label %if.end9

if.end9:                                          ; preds = %if.else8
  br label %if.end49

if.else10:                                        ; preds = %if.end
  %12 = load double** %px.addr, align 4
  %13 = load double* %12, align 8
  %mul = fmul double %13, 0x3FF71547652B82FE
  store double %mul, double* %g, align 8
  %14 = load double* %g, align 8
  %add = fadd double %14, 5.000000e-01
  %conv = fptosi double %add to i16
  store i16 %conv, i16* %xexp, align 2
  %15 = load i16* %xexp, align 2
  %conv11 = sitofp i16 %15 to double
  store double %conv11, double* %g, align 8
  %16 = load double** %px.addr, align 4
  %17 = load double* %16, align 8
  %18 = load double* %g, align 8
  %mul12 = fmul double %18, 0x3FE62E4000000000
  %sub13 = fsub double %17, %mul12
  %19 = load double* %g, align 8
  %mul14 = fmul double %19, 0x3EB7F7D1CF79ABCA
  %sub15 = fsub double %sub13, %mul14
  store double %sub15, double* %g, align 8
  %20 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %sub16 = fsub double -0.000000e+00, %20
  %21 = load double* %g, align 8
  %cmp17 = fcmp olt double %sub16, %21
  br i1 %cmp17, label %land.lhs.true, label %if.else22

land.lhs.true:                                    ; preds = %if.else10
  %22 = load double* %g, align 8
  %23 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %cmp19 = fcmp olt double %22, %23
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %land.lhs.true
  %24 = load double** %px.addr, align 4
  store double 1.000000e+00, double* %24, align 8
  br label %if.end37

if.else22:                                        ; preds = %land.lhs.true, %if.else10
  %25 = load double* %g, align 8
  %26 = load double* %g, align 8
  %mul23 = fmul double %25, %26
  store double %mul23, double* %y, align 8
  %27 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 0), align 8
  %28 = load double* %y, align 8
  %mul24 = fmul double %27, %28
  %29 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 1), align 8
  %add25 = fadd double %mul24, %29
  %30 = load double* %y, align 8
  %mul26 = fmul double %add25, %30
  %31 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 2), align 8
  %add27 = fadd double %mul26, %31
  %32 = load double* %g, align 8
  %mul28 = fmul double %32, %add27
  store double %mul28, double* %g, align 8
  %33 = load double* %g, align 8
  %34 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 0), align 8
  %35 = load double* %y, align 8
  %mul29 = fmul double %34, %35
  %36 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 1), align 8
  %add30 = fadd double %mul29, %36
  %37 = load double* %y, align 8
  %mul31 = fmul double %add30, %37
  %38 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 2), align 8
  %add32 = fadd double %mul31, %38
  %39 = load double* %y, align 8
  %mul33 = fmul double %add32, %39
  %40 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 3), align 8
  %add34 = fadd double %mul33, %40
  %41 = load double* %g, align 8
  %sub35 = fsub double %add34, %41
  %div = fdiv double %33, %sub35
  %add36 = fadd double 5.000000e-01, %div
  %42 = load double** %px.addr, align 4
  store double %add36, double* %42, align 8
  %43 = load i16* %xexp, align 2
  %inc = add i16 %43, 1
  store i16 %inc, i16* %xexp, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.else22, %if.then21
  %44 = load i32* %neg, align 4
  %tobool38 = icmp ne i32 %44, 0
  br i1 %tobool38, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end37
  %45 = load double** %px.addr, align 4
  %46 = load double* %45, align 8
  %div40 = fdiv double 1.000000e+00, %46
  %47 = load double** %px.addr, align 4
  store double %div40, double* %47, align 8
  %48 = load i16* %xexp, align 2
  %conv41 = sext i16 %48 to i32
  %sub42 = sub nsw i32 0, %conv41
  %conv43 = trunc i32 %sub42 to i16
  store i16 %conv43, i16* %xexp, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end37
  %49 = load double** %px.addr, align 4
  %50 = load i16* %eoff.addr, align 2
  %conv45 = sext i16 %50 to i32
  %51 = load i16* %xexp, align 2
  %conv46 = sext i16 %51 to i32
  %add47 = add nsw i32 %conv45, %conv46
  %conv48 = trunc i32 %add47 to i16
  %call = call signext i16 @_Dscale(double* %49, i16 signext %conv48)
  store i16 %call, i16* %retval
  br label %if.end49

if.end49:                                         ; preds = %if.then7, %if.end44, %if.end9
  %52 = load i16* %retval
  ret i16 %52
}

declare signext i16 @_Dscale(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
