; ModuleID = './c_standard_lib-master/MATH/XLOG.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Nan = external constant %union.anon
@_Inf = external constant %union.anon
@p = internal constant [3 x double] [double 0xBFE94415B356BD29, double 0x4030624A2016AFED, double 0xC05007FF12B3B59A], align 8
@q = internal constant [3 x double] [double 0xC041D5804B67CE0F, double 0x40738083FA15267E, double 0xC0880BFE9C0D9077], align 8

; Function Attrs: nounwind
define double @_Log(double %x, i32 %decflag) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %decflag.addr = alloca i32, align 4
  %xexp = alloca i16, align 2
  %z = alloca double, align 8
  %w = alloca double, align 8
  %xn = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store i32 %decflag, i32* %decflag.addr, align 4
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
  store i32 34, i32* @errno, align 4
  %5 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  %sub = fsub double -0.000000e+00, %5
  store double %sub, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %6 = load double* %x.addr, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %sw.default
  store i32 33, i32* @errno, align 4
  %7 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %7, double* %retval
  br label %return

if.else6:                                         ; preds = %sw.default
  %8 = load double* %x.addr, align 8
  %sub7 = fsub double %8, 5.000000e-01
  store double %sub7, double* %z, align 8
  %9 = load double* %x.addr, align 8
  %cmp8 = fcmp olt double 0x3FE6A09E667F3BCD, %9
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else6
  %10 = load double* %z, align 8
  %sub11 = fsub double %10, 5.000000e-01
  %11 = load double* %x.addr, align 8
  %mul = fmul double %11, 5.000000e-01
  %add = fadd double %mul, 5.000000e-01
  %div = fdiv double %sub11, %add
  store double %div, double* %z, align 8
  br label %if.end

if.else12:                                        ; preds = %if.else6
  %12 = load i16* %xexp, align 2
  %dec = add i16 %12, -1
  store i16 %dec, i16* %xexp, align 2
  %13 = load double* %z, align 8
  %mul13 = fmul double %13, 5.000000e-01
  %add14 = fadd double %mul13, 5.000000e-01
  %14 = load double* %z, align 8
  %div15 = fdiv double %14, %add14
  store double %div15, double* %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then10
  %15 = load double* %z, align 8
  %16 = load double* %z, align 8
  %mul16 = fmul double %15, %16
  store double %mul16, double* %w, align 8
  %17 = load double* %z, align 8
  %18 = load double* %w, align 8
  %mul17 = fmul double %17, %18
  %19 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 0), align 8
  %20 = load double* %w, align 8
  %mul18 = fmul double %19, %20
  %21 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 1), align 8
  %add19 = fadd double %mul18, %21
  %22 = load double* %w, align 8
  %mul20 = fmul double %add19, %22
  %23 = load double* getelementptr inbounds ([3 x double]* @p, i32 0, i32 2), align 8
  %add21 = fadd double %mul20, %23
  %mul22 = fmul double %mul17, %add21
  %24 = load double* %w, align 8
  %25 = load double* getelementptr inbounds ([3 x double]* @q, i32 0, i32 0), align 8
  %add23 = fadd double %24, %25
  %26 = load double* %w, align 8
  %mul24 = fmul double %add23, %26
  %27 = load double* getelementptr inbounds ([3 x double]* @q, i32 0, i32 1), align 8
  %add25 = fadd double %mul24, %27
  %28 = load double* %w, align 8
  %mul26 = fmul double %add25, %28
  %29 = load double* getelementptr inbounds ([3 x double]* @q, i32 0, i32 2), align 8
  %add27 = fadd double %mul26, %29
  %div28 = fdiv double %mul22, %add27
  %30 = load double* %z, align 8
  %add29 = fadd double %30, %div28
  store double %add29, double* %z, align 8
  %31 = load i16* %xexp, align 2
  %conv30 = sext i16 %31 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end
  %32 = load i16* %xexp, align 2
  %conv34 = sitofp i16 %32 to double
  store double %conv34, double* %xn, align 8
  %33 = load double* %xn, align 8
  %mul35 = fmul double %33, 0x3EB7F7D1CF79ABCA
  %34 = load double* %z, align 8
  %add36 = fadd double %mul35, %34
  %35 = load double* %xn, align 8
  %mul37 = fmul double %35, 0x3FE62E4000000000
  %add38 = fadd double %add36, %mul37
  store double %add38, double* %z, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end
  %36 = load i32* %decflag.addr, align 4
  %tobool40 = icmp ne i32 %36, 0
  br i1 %tobool40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.end39
  %37 = load double* %z, align 8
  %mul42 = fmul double 0x3FDBCB7B1526E50E, %37
  store double %mul42, double* %retval
  br label %return

if.else43:                                        ; preds = %if.end39
  %38 = load double* %z, align 8
  store double %38, double* %retval
  br label %return

return:                                           ; preds = %if.else43, %if.then41, %if.then5, %sw.bb3, %if.else, %if.then, %sw.bb
  %39 = load double* %retval
  ret double %39
}

declare signext i16 @_Dunscale(i16*, double*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
