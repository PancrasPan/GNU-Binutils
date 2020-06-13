; ModuleID = './c_standard_lib-master/MATH/XASIN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Nan = external constant %union.anon
@_Rteps = external constant %union.anon
@p = internal constant [5 x double] [double 0xBFE64BBDB5E61E65, double 0x40244E1764EC3927, double 0xC043D82CA9A6DA9F, double 0x404C9AA7360AD48A, double 0xC03B5E55A83A0A62], align 8
@q = internal constant [6 x double] [double 1.000000e+00, double 0xC037D2E86EF9861F, double 0x4062DE7C96591C70, double 0xC077DDCEFC56A848, double 0x407A124F101EB843, double 0xC06486C03E2B87CC], align 8

; Function Attrs: nounwind
define double @_Asin(double %x, i32 %idx) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %idx.addr = alloca i32, align 4
  %g = alloca double, align 8
  %y = alloca double, align 8
  %errx = alloca i16, align 2
  store double %x, double* %x.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %call = call signext i16 @_Dtest(double* %x.addr)
  store i16 %call, i16* %errx, align 2
  %0 = load i16* %errx, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 33, i32* @errno, align 4
  %1 = load i16* %errx, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 2
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %2 = load double* %x.addr, align 8
  store double %2, double* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %3, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load double* %x.addr, align 8
  %cmp6 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end
  %5 = load double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %5
  store double %sub, double* %y, align 8
  %6 = load i32* %idx.addr, align 4
  %or = or i32 %6, 2
  store i32 %or, i32* %idx.addr, align 4
  br label %if.end10

if.else9:                                         ; preds = %if.end
  %7 = load double* %x.addr, align 8
  store double %7, double* %y, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  %8 = load double* %y, align 8
  %9 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %cmp11 = fcmp olt double %8, %9
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end10
  br label %if.end46

if.else14:                                        ; preds = %if.end10
  %10 = load double* %y, align 8
  %cmp15 = fcmp olt double %10, 5.000000e-01
  br i1 %cmp15, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else14
  %11 = load double* %y, align 8
  %12 = load double* %y, align 8
  %mul = fmul double %11, %12
  store double %mul, double* %g, align 8
  %13 = load double* %y, align 8
  %14 = load double* %g, align 8
  %mul18 = fmul double %13, %14
  %15 = load double* %g, align 8
  %call19 = call double @_Poly(double %15, double* getelementptr inbounds ([5 x double]* @p, i32 0, i32 0), i32 4)
  %mul20 = fmul double %mul18, %call19
  %16 = load double* %g, align 8
  %call21 = call double @_Poly(double %16, double* getelementptr inbounds ([6 x double]* @q, i32 0, i32 0), i32 5)
  %div = fdiv double %mul20, %call21
  %17 = load double* %y, align 8
  %add = fadd double %17, %div
  store double %add, double* %y, align 8
  br label %if.end45

if.else22:                                        ; preds = %if.else14
  %18 = load double* %y, align 8
  %cmp23 = fcmp olt double %18, 1.000000e+00
  br i1 %cmp23, label %if.then25, label %if.else37

if.then25:                                        ; preds = %if.else22
  %19 = load i32* %idx.addr, align 4
  %or26 = or i32 %19, 4
  store i32 %or26, i32* %idx.addr, align 4
  %20 = load double* %y, align 8
  %sub27 = fsub double 1.000000e+00, %20
  %div28 = fdiv double %sub27, 2.000000e+00
  store double %div28, double* %g, align 8
  %21 = load double* %g, align 8
  %call29 = call double @sqrt(double %21) #2
  store double %call29, double* %y, align 8
  %22 = load double* %y, align 8
  %23 = load double* %y, align 8
  %add30 = fadd double %23, %22
  store double %add30, double* %y, align 8
  %24 = load double* %y, align 8
  %25 = load double* %g, align 8
  %mul31 = fmul double %24, %25
  %26 = load double* %g, align 8
  %call32 = call double @_Poly(double %26, double* getelementptr inbounds ([5 x double]* @p, i32 0, i32 0), i32 4)
  %mul33 = fmul double %mul31, %call32
  %27 = load double* %g, align 8
  %call34 = call double @_Poly(double %27, double* getelementptr inbounds ([6 x double]* @q, i32 0, i32 0), i32 5)
  %div35 = fdiv double %mul33, %call34
  %28 = load double* %y, align 8
  %add36 = fadd double %28, %div35
  store double %add36, double* %y, align 8
  br label %if.end44

if.else37:                                        ; preds = %if.else22
  %29 = load double* %y, align 8
  %cmp38 = fcmp oeq double %29, 1.000000e+00
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else37
  %30 = load i32* %idx.addr, align 4
  %or41 = or i32 %30, 4
  store i32 %or41, i32* %idx.addr, align 4
  store double 0.000000e+00, double* %y, align 8
  br label %if.end43

if.else42:                                        ; preds = %if.else37
  store i32 33, i32* @errno, align 4
  %31 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %31, double* %retval
  br label %return

if.end43:                                         ; preds = %if.then40
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then25
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then17
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then13
  %32 = load i32* %idx.addr, align 4
  switch i32 %32, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb47
    i32 4, label %sw.bb47
    i32 2, label %sw.bb50
    i32 3, label %sw.bb52
    i32 6, label %sw.bb55
    i32 7, label %sw.bb58
  ]

sw.default:                                       ; preds = %if.end46
  br label %sw.bb

sw.bb:                                            ; preds = %if.end46, %if.end46, %sw.default
  %33 = load double* %y, align 8
  store double %33, double* %retval
  br label %return

sw.bb47:                                          ; preds = %if.end46, %if.end46
  %34 = load double* %y, align 8
  %sub48 = fsub double 0x3FE921FB54442D18, %34
  %add49 = fadd double %sub48, 0x3FE921FB54442D18
  store double %add49, double* %retval
  br label %return

sw.bb50:                                          ; preds = %if.end46
  %35 = load double* %y, align 8
  %sub51 = fsub double -0.000000e+00, %35
  store double %sub51, double* %retval
  br label %return

sw.bb52:                                          ; preds = %if.end46
  %36 = load double* %y, align 8
  %add53 = fadd double 0x3FE921FB54442D18, %36
  %add54 = fadd double %add53, 0x3FE921FB54442D18
  store double %add54, double* %retval
  br label %return

sw.bb55:                                          ; preds = %if.end46
  %37 = load double* %y, align 8
  %add56 = fadd double 0xBFE921FB54442D18, %37
  %sub57 = fsub double %add56, 0x3FE921FB54442D18
  store double %sub57, double* %retval
  br label %return

sw.bb58:                                          ; preds = %if.end46
  %38 = load double* %y, align 8
  %sub59 = fsub double 0x3FF921FB54442D18, %38
  %add60 = fadd double %sub59, 0x3FF921FB54442D18
  store double %add60, double* %retval
  br label %return

return:                                           ; preds = %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb50, %sw.bb47, %sw.bb, %if.else42, %if.else, %if.then5
  %39 = load double* %retval
  ret double %39
}

declare signext i16 @_Dtest(double*) #1

declare double @_Poly(double, double*, i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
