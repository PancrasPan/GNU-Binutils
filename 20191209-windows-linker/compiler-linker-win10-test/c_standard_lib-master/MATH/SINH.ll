; ModuleID = './c_standard_lib-master/MATH/SINH.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@errno = external global i32
@_Inf = external constant %union.anon
@_Rteps = external constant %union.anon
@p = internal constant [4 x double] [double 0xBFE944E7B86FC81B, double 0xC06478416385BE4A, double 0xC0C695C2B6941490, double 0xC115791356533419], align 8
@q = internal constant [4 x double] [double 1.000000e+00, double 0xC0715BC381C97FF2, double 0x40E1A85723B65EC7, double 0xC1401ACE80BE6713], align 8
@_Xbig = external constant %union.anon

; Function Attrs: nounwind
define double @sinh(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %neg = alloca i16, align 2
  %y = alloca double, align 8
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
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb1
  %3 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  %sub = fsub double -0.000000e+00, %3
  br label %cond.end

cond.false:                                       ; preds = %sw.bb1
  %4 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %4, %cond.false ]
  store double %cond, double* %retval
  br label %return

sw.bb3:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load double* %x.addr, align 8
  %cmp = fcmp olt double %5, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %6 = load double* %x.addr, align 8
  %sub5 = fsub double -0.000000e+00, %6
  store double %sub5, double* %x.addr, align 8
  store i16 1, i16* %neg, align 2
  br label %if.end

if.else:                                          ; preds = %sw.default
  store i16 0, i16* %neg, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load double* %x.addr, align 8
  %8 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %cmp6 = fcmp olt double %7, %8
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end
  br label %if.end42

if.else9:                                         ; preds = %if.end
  %9 = load double* %x.addr, align 8
  %cmp10 = fcmp olt double %9, 1.000000e+00
  br i1 %cmp10, label %if.then12, label %if.else27

if.then12:                                        ; preds = %if.else9
  %10 = load double* %x.addr, align 8
  %11 = load double* %x.addr, align 8
  %mul = fmul double %10, %11
  store double %mul, double* %y, align 8
  %12 = load double* %x.addr, align 8
  %13 = load double* %y, align 8
  %mul13 = fmul double %12, %13
  %14 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 0), align 8
  %15 = load double* %y, align 8
  %mul14 = fmul double %14, %15
  %16 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 1), align 8
  %add = fadd double %mul14, %16
  %17 = load double* %y, align 8
  %mul15 = fmul double %add, %17
  %18 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 2), align 8
  %add16 = fadd double %mul15, %18
  %19 = load double* %y, align 8
  %mul17 = fmul double %add16, %19
  %20 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 3), align 8
  %add18 = fadd double %mul17, %20
  %mul19 = fmul double %mul13, %add18
  %21 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 0), align 8
  %22 = load double* %y, align 8
  %mul20 = fmul double %21, %22
  %23 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 1), align 8
  %add21 = fadd double %mul20, %23
  %24 = load double* %y, align 8
  %mul22 = fmul double %add21, %24
  %25 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 2), align 8
  %add23 = fadd double %mul22, %25
  %26 = load double* %y, align 8
  %mul24 = fmul double %add23, %26
  %27 = load double* getelementptr inbounds ([4 x double]* @q, i32 0, i32 3), align 8
  %add25 = fadd double %mul24, %27
  %div = fdiv double %mul19, %add25
  %28 = load double* %x.addr, align 8
  %add26 = fadd double %28, %div
  store double %add26, double* %x.addr, align 8
  br label %if.end41

if.else27:                                        ; preds = %if.else9
  %call28 = call signext i16 @_Exp(double* %x.addr, i16 signext -1)
  %conv29 = sext i16 %call28 to i32
  %cmp30 = icmp sle i32 0, %conv29
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else27
  store i32 34, i32* @errno, align 4
  br label %if.end40

if.else33:                                        ; preds = %if.else27
  %29 = load double* %x.addr, align 8
  %30 = load double* getelementptr inbounds (%union.anon* @_Xbig, i32 0, i32 0), align 8
  %cmp34 = fcmp olt double %29, %30
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.else33
  %31 = load double* %x.addr, align 8
  %div37 = fdiv double 2.500000e-01, %31
  %32 = load double* %x.addr, align 8
  %sub38 = fsub double %32, %div37
  store double %sub38, double* %x.addr, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.else33
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then12
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then8
  %33 = load i16* %neg, align 2
  %conv43 = sext i16 %33 to i32
  %tobool44 = icmp ne i32 %conv43, 0
  br i1 %tobool44, label %cond.true45, label %cond.false47

cond.true45:                                      ; preds = %if.end42
  %34 = load double* %x.addr, align 8
  %sub46 = fsub double -0.000000e+00, %34
  br label %cond.end48

cond.false47:                                     ; preds = %if.end42
  %35 = load double* %x.addr, align 8
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.true45
  %cond49 = phi double [ %sub46, %cond.true45 ], [ %35, %cond.false47 ]
  store double %cond49, double* %retval
  br label %return

return:                                           ; preds = %cond.end48, %sw.bb3, %cond.end, %sw.bb
  %36 = load double* %retval
  ret double %36
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Exp(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
