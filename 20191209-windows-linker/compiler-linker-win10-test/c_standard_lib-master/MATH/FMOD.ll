; ModuleID = './c_standard_lib-master/MATH/FMOD.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@errno = external global i32

; Function Attrs: nounwind
define double @fmod(double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %errx = alloca i16, align 2
  %erry = alloca i16, align 2
  %t = alloca double, align 8
  %n = alloca i16, align 2
  %neg = alloca i16, align 2
  %ychar = alloca i16, align 2
  %xchar = alloca i16, align 2
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %call = call signext i16 @_Dtest(double* %x.addr)
  store i16 %call, i16* %errx, align 2
  %call1 = call signext i16 @_Dtest(double* %y.addr)
  store i16 %call1, i16* %erry, align 2
  %0 = load i16* %errx, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16* %erry, align 2
  %conv3 = sext i16 %1 to i32
  %cmp4 = icmp eq i32 %conv3, 2
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %2 = load i16* %errx, align 2
  %conv7 = sext i16 %2 to i32
  %cmp8 = icmp eq i32 %conv7, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %3 = load i16* %erry, align 2
  %conv11 = sext i16 %3 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false, %entry
  store i32 33, i32* @errno, align 4
  br label %if.end64

if.else:                                          ; preds = %lor.lhs.false10
  %4 = load i16* %errx, align 2
  %conv14 = sext i16 %4 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.else
  %5 = load i16* %erry, align 2
  %conv18 = sext i16 %5 to i32
  %cmp19 = icmp eq i32 %conv18, 1
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %lor.lhs.false17, %if.else
  %6 = load double* %x.addr, align 8
  store double %6, double* %retval
  br label %if.end64

if.else22:                                        ; preds = %lor.lhs.false17
  %7 = load double* %y.addr, align 8
  %cmp23 = fcmp olt double %7, 0.000000e+00
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %if.else22
  %8 = load double* %y.addr, align 8
  %sub = fsub double -0.000000e+00, %8
  store double %sub, double* %y.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.else22
  %9 = load double* %x.addr, align 8
  %cmp26 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.end
  %10 = load double* %x.addr, align 8
  %sub29 = fsub double -0.000000e+00, %10
  store double %sub29, double* %x.addr, align 8
  store i16 1, i16* %neg, align 2
  br label %if.end31

if.else30:                                        ; preds = %if.end
  store i16 0, i16* %neg, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then28
  %11 = load double* %y.addr, align 8
  store double %11, double* %t, align 8
  %call32 = call signext i16 @_Dunscale(i16* %ychar, double* %t)
  store i16 0, i16* %n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end31
  %12 = load double* %x.addr, align 8
  store double %12, double* %t, align 8
  %13 = load i16* %n, align 2
  %conv33 = sext i16 %13 to i32
  %cmp34 = icmp slt i32 %conv33, 0
  br i1 %cmp34, label %if.then49, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %for.cond
  %call37 = call signext i16 @_Dunscale(i16* %xchar, double* %t)
  %conv38 = sext i16 %call37 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then49, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false36
  %14 = load i16* %xchar, align 2
  %conv42 = sext i16 %14 to i32
  %15 = load i16* %ychar, align 2
  %conv43 = sext i16 %15 to i32
  %sub44 = sub nsw i32 %conv42, %conv43
  %conv45 = trunc i32 %sub44 to i16
  store i16 %conv45, i16* %n, align 2
  %conv46 = sext i16 %conv45 to i32
  %cmp47 = icmp slt i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %lor.lhs.false41, %lor.lhs.false36, %for.cond
  %16 = load i16* %neg, align 2
  %tobool = icmp ne i16 %16, 0
  br i1 %tobool, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.then49
  %17 = load double* %x.addr, align 8
  %sub51 = fsub double -0.000000e+00, %17
  store double %sub51, double* %retval
  br label %if.end64

if.else52:                                        ; preds = %if.then49
  %18 = load double* %x.addr, align 8
  store double %18, double* %retval
  br label %if.end64

if.end53:                                         ; preds = %lor.lhs.false41
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc, %if.end53
  %19 = load i16* %n, align 2
  %conv55 = sext i16 %19 to i32
  %cmp56 = icmp sle i32 0, %conv55
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond54
  %20 = load double* %y.addr, align 8
  store double %20, double* %t, align 8
  %21 = load i16* %n, align 2
  %call58 = call signext i16 @_Dscale(double* %t, i16 signext %21)
  %22 = load double* %t, align 8
  %23 = load double* %x.addr, align 8
  %cmp59 = fcmp ole double %22, %23
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %for.body
  %24 = load double* %t, align 8
  %25 = load double* %x.addr, align 8
  %sub62 = fsub double %25, %24
  store double %sub62, double* %x.addr, align 8
  br label %for.end

if.end63:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %26 = load i16* %n, align 2
  %dec = add i16 %26, -1
  store i16 %dec, i16* %n, align 2
  br label %for.cond54

for.end:                                          ; preds = %if.then61, %for.cond54
  br label %for.cond

if.end64:                                         ; preds = %if.then21, %if.then50, %if.else52, %if.then
  %27 = load double* %retval
  ret double %27
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Dunscale(i16*, double*) #1

declare signext i16 @_Dscale(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
