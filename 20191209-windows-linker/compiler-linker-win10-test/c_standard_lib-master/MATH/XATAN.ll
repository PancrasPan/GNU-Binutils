; ModuleID = './c_standard_lib-master/MATH/XATAN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@_Rteps = external constant %union.anon
@q = internal constant [5 x double] [double 1.000000e+00, double 0x402E0C49E14AC710, double 0x404DCA0A320DA3D7, double 0x40558A12040B6DA5, double 0x4044887CBCC495A9], align 8
@p = internal constant [4 x double] [double 0xBFEACD7AD9B187BD, double 0xC020FD3F5C8D6A63, double 0xC034817FB9E2BCCB, double 0xC02B60A651061CE2], align 8
@a = internal constant [8 x double] [double 0.000000e+00, double 0x3FE0C152382D7366, double 0x3FF921FB54442D18, double 0x3FF0C152382D7366, double 0x3FF921FB54442D18, double 0x4000C152382D7366, double 0x400921FB54442D18, double 0x4004F1A6C638D03F], align 8

; Function Attrs: nounwind
define double @_Atan(double %x, i16 zeroext %idx) #0 {
entry:
  %x.addr = alloca double, align 8
  %idx.addr = alloca i16, align 2
  %g = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store i16 %idx, i16* %idx.addr, align 2
  %0 = load double* %x.addr, align 8
  %cmp = fcmp olt double 0x3FD126145E9ECD56, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double* %x.addr, align 8
  %mul = fmul double 0x3FE76CF5D0B09955, %1
  %sub = fsub double %mul, 5.000000e-01
  %sub1 = fsub double %sub, 5.000000e-01
  %2 = load double* %x.addr, align 8
  %add = fadd double %sub1, %2
  %3 = load double* %x.addr, align 8
  %add2 = fadd double 0x3FFBB67AE8584CAA, %3
  %div = fdiv double %add, %add2
  store double %div, double* %x.addr, align 8
  %4 = load i16* %idx.addr, align 2
  %conv = zext i16 %4 to i32
  %or = or i32 %conv, 1
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %idx.addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double* %x.addr, align 8
  %6 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %sub4 = fsub double -0.000000e+00, %6
  %cmp5 = fcmp olt double %5, %sub4
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load double* getelementptr inbounds (%union.anon* @_Rteps, i32 0, i32 0), align 8
  %8 = load double* %x.addr, align 8
  %cmp7 = fcmp olt double %7, %8
  br i1 %cmp7, label %if.then9, label %if.end21

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load double* %x.addr, align 8
  %10 = load double* %x.addr, align 8
  %mul10 = fmul double %9, %10
  store double %mul10, double* %g, align 8
  %11 = load double* %x.addr, align 8
  %12 = load double* %g, align 8
  %mul11 = fmul double %11, %12
  %13 = load double* %g, align 8
  %call = call double @_Poly(double %13, double* getelementptr inbounds ([5 x double]* @q, i32 0, i32 0), i32 4)
  %div12 = fdiv double %mul11, %call
  %14 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 0), align 8
  %15 = load double* %g, align 8
  %mul13 = fmul double %14, %15
  %16 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 1), align 8
  %add14 = fadd double %mul13, %16
  %17 = load double* %g, align 8
  %mul15 = fmul double %add14, %17
  %18 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 2), align 8
  %add16 = fadd double %mul15, %18
  %19 = load double* %g, align 8
  %mul17 = fmul double %add16, %19
  %20 = load double* getelementptr inbounds ([4 x double]* @p, i32 0, i32 3), align 8
  %add18 = fadd double %mul17, %20
  %mul19 = fmul double %div12, %add18
  %21 = load double* %x.addr, align 8
  %add20 = fadd double %21, %mul19
  store double %add20, double* %x.addr, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then9, %lor.lhs.false
  %22 = load i16* %idx.addr, align 2
  %conv22 = zext i16 %22 to i32
  %and = and i32 %conv22, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %23 = load double* %x.addr, align 8
  %sub24 = fsub double -0.000000e+00, %23
  store double %sub24, double* %x.addr, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %24 = load i16* %idx.addr, align 2
  %conv26 = zext i16 %24 to i32
  %and27 = and i32 %conv26, 7
  %arrayidx = getelementptr inbounds [8 x double]* @a, i32 0, i32 %and27
  %25 = load double* %arrayidx, align 8
  %26 = load double* %x.addr, align 8
  %add28 = fadd double %26, %25
  store double %add28, double* %x.addr, align 8
  %27 = load i16* %idx.addr, align 2
  %conv29 = zext i16 %27 to i32
  %and30 = and i32 %conv29, 8
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end25
  %28 = load double* %x.addr, align 8
  %sub32 = fsub double -0.000000e+00, %28
  br label %cond.end

cond.false:                                       ; preds = %if.end25
  %29 = load double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub32, %cond.true ], [ %29, %cond.false ]
  ret double %cond
}

declare double @_Poly(double, double*, i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
