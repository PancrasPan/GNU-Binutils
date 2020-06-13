; ModuleID = './c_standard_lib-master/MATH/XDTENTO.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@pows = internal constant [9 x double] [double 1.000000e+01, double 1.000000e+02, double 1.000000e+04, double 1.000000e+08, double 1.000000e+16, double 1.000000e+32, double 1.000000e+64, double 1.000000e+128, double 1.000000e+256], align 8
@errno = external global i32

; Function Attrs: nounwind
define double @_Dtento(double %x, i16 signext %n) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %n.addr = alloca i16, align 2
  %factor = alloca double, align 8
  %errx = alloca i16, align 2
  %i = alloca i32, align 4
  %nu = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store i16 %n, i16* %n.addr, align 2
  %0 = load i16* %n.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double* %x.addr, align 8
  %cmp2 = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load double* %x.addr, align 8
  store double %2, double* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store double 1.000000e+00, double* %factor, align 8
  %3 = load i16* %n.addr, align 2
  %conv4 = sext i16 %3 to i32
  %cmp5 = icmp slt i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %4 = load i16* %n.addr, align 2
  %conv8 = sext i16 %4 to i32
  %sub = sub i32 0, %conv8
  store i32 %sub, i32* %nu, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %5 = load i32* %nu, align 4
  %cmp9 = icmp ult i32 0, %5
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32* %i, align 4
  %cmp11 = icmp ult i32 %6, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i32* %nu, align 4
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  %9 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [9 x double]* @pows, i32 0, i32 %9
  %10 = load double* %arrayidx, align 8
  %11 = load double* %factor, align 8
  %mul = fmul double %11, %10
  store double %mul, double* %factor, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %12 = load i32* %nu, align 4
  %shr = lshr i32 %12, 1
  store i32 %shr, i32* %nu, align 4
  %13 = load i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load double* %factor, align 8
  %div = fdiv double 1.000000e+00, %14
  %call = call signext i16 @dmul(double* %x.addr, double %div)
  store i16 %call, i16* %errx, align 2
  %15 = load i16* %errx, align 2
  %conv15 = sext i16 %15 to i32
  %cmp16 = icmp slt i32 %conv15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %for.end
  %16 = load i32* %nu, align 4
  %cmp18 = icmp ult i32 0, %16
  br i1 %cmp18, label %if.then20, label %if.end34

if.then20:                                        ; preds = %land.lhs.true
  %17 = load double* getelementptr inbounds ([9 x double]* @pows, i32 0, i32 8), align 8
  %div21 = fdiv double 1.000000e+00, %17
  store double %div21, double* %factor, align 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc32, %if.then20
  %18 = load i32* %nu, align 4
  %cmp23 = icmp ult i32 0, %18
  br i1 %cmp23, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond22
  %19 = load double* %factor, align 8
  %call26 = call signext i16 @dmul(double* %x.addr, double %19)
  store i16 %call26, i16* %errx, align 2
  %conv27 = sext i16 %call26 to i32
  %cmp28 = icmp sle i32 0, %conv27
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.body25
  br label %for.end33

if.end31:                                         ; preds = %for.body25
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %20 = load i32* %nu, align 4
  %dec = add i32 %20, -1
  store i32 %dec, i32* %nu, align 4
  br label %for.cond22

for.end33:                                        ; preds = %if.then30, %for.cond22
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %land.lhs.true, %for.end
  br label %if.end86

if.else:                                          ; preds = %if.end
  %21 = load i16* %n.addr, align 2
  %conv35 = sext i16 %21 to i32
  %cmp36 = icmp slt i32 0, %conv35
  br i1 %cmp36, label %if.then38, label %if.end85

if.then38:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc55, %if.then38
  %22 = load i16* %n.addr, align 2
  %conv40 = sext i16 %22 to i32
  %cmp41 = icmp slt i32 0, %conv40
  br i1 %cmp41, label %land.rhs43, label %land.end46

land.rhs43:                                       ; preds = %for.cond39
  %23 = load i32* %i, align 4
  %cmp44 = icmp ult i32 %23, 8
  br label %land.end46

land.end46:                                       ; preds = %land.rhs43, %for.cond39
  %24 = phi i1 [ false, %for.cond39 ], [ %cmp44, %land.rhs43 ]
  br i1 %24, label %for.body47, label %for.end60

for.body47:                                       ; preds = %land.end46
  %25 = load i16* %n.addr, align 2
  %conv48 = sext i16 %25 to i32
  %and49 = and i32 %conv48, 1
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %for.body47
  %26 = load i32* %i, align 4
  %arrayidx52 = getelementptr inbounds [9 x double]* @pows, i32 0, i32 %26
  %27 = load double* %arrayidx52, align 8
  %28 = load double* %factor, align 8
  %mul53 = fmul double %28, %27
  store double %mul53, double* %factor, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.body47
  br label %for.inc55

for.inc55:                                        ; preds = %if.end54
  %29 = load i16* %n.addr, align 2
  %conv56 = sext i16 %29 to i32
  %shr57 = ashr i32 %conv56, 1
  %conv58 = trunc i32 %shr57 to i16
  store i16 %conv58, i16* %n.addr, align 2
  %30 = load i32* %i, align 4
  %inc59 = add i32 %30, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond39

for.end60:                                        ; preds = %land.end46
  %31 = load double* %factor, align 8
  %call61 = call signext i16 @dmul(double* %x.addr, double %31)
  store i16 %call61, i16* %errx, align 2
  %32 = load i16* %errx, align 2
  %conv62 = sext i16 %32 to i32
  %cmp63 = icmp slt i32 %conv62, 0
  br i1 %cmp63, label %land.lhs.true65, label %if.end84

land.lhs.true65:                                  ; preds = %for.end60
  %33 = load i16* %n.addr, align 2
  %conv66 = sext i16 %33 to i32
  %cmp67 = icmp slt i32 0, %conv66
  br i1 %cmp67, label %if.then69, label %if.end84

if.then69:                                        ; preds = %land.lhs.true65
  %34 = load double* getelementptr inbounds ([9 x double]* @pows, i32 0, i32 8), align 8
  store double %34, double* %factor, align 8
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc81, %if.then69
  %35 = load i16* %n.addr, align 2
  %conv71 = sext i16 %35 to i32
  %cmp72 = icmp slt i32 0, %conv71
  br i1 %cmp72, label %for.body74, label %for.end83

for.body74:                                       ; preds = %for.cond70
  %36 = load double* %factor, align 8
  %call75 = call signext i16 @dmul(double* %x.addr, double %36)
  store i16 %call75, i16* %errx, align 2
  %conv76 = sext i16 %call75 to i32
  %cmp77 = icmp sle i32 0, %conv76
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %for.body74
  br label %for.end83

if.end80:                                         ; preds = %for.body74
  br label %for.inc81

for.inc81:                                        ; preds = %if.end80
  %37 = load i16* %n.addr, align 2
  %dec82 = add i16 %37, -1
  store i16 %dec82, i16* %n.addr, align 2
  br label %for.cond70

for.end83:                                        ; preds = %if.then79, %for.cond70
  br label %if.end84

if.end84:                                         ; preds = %for.end83, %land.lhs.true65, %for.end60
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.else
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end34
  %38 = load i16* %errx, align 2
  %conv87 = sext i16 %38 to i32
  %cmp88 = icmp sle i32 0, %conv87
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end86
  store i32 34, i32* @errno, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end86
  %39 = load double* %x.addr, align 8
  store double %39, double* %retval
  br label %return

return:                                           ; preds = %if.end91, %if.then
  %40 = load double* %retval
  ret double %40
}

; Function Attrs: nounwind
define internal signext i16 @dmul(double* %px, double %y) #0 {
entry:
  %px.addr = alloca double*, align 4
  %y.addr = alloca double, align 8
  %xexp = alloca i16, align 2
  store double* %px, double** %px.addr, align 4
  store double %y, double* %y.addr, align 8
  %0 = load double** %px.addr, align 4
  %call = call signext i16 @_Dunscale(i16* %xexp, double* %0)
  %1 = load double* %y.addr, align 8
  %2 = load double** %px.addr, align 4
  %3 = load double* %2, align 8
  %mul = fmul double %3, %1
  store double %mul, double* %2, align 8
  %4 = load double** %px.addr, align 4
  %5 = load i16* %xexp, align 2
  %call1 = call signext i16 @_Dscale(double* %4, i16 signext %5)
  ret i16 %call1
}

declare signext i16 @_Dunscale(i16*, double*) #1

declare signext i16 @_Dscale(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
