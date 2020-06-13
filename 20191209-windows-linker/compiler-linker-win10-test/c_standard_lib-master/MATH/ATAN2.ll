; ModuleID = './c_standard_lib-master/MATH/ATAN2.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@errno = external global i32

; Function Attrs: nounwind
define double @atan2(double %y, double %x) #0 {
entry:
  %retval = alloca double, align 8
  %y.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %z = alloca double, align 8
  %errx = alloca i16, align 2
  %erry = alloca i16, align 2
  %hex = alloca i16, align 2
  store double %y, double* %y.addr, align 8
  store double %x, double* %x.addr, align 8
  %call = call signext i16 @_Dtest(double* %x.addr)
  store i16 %call, i16* %errx, align 2
  %call1 = call signext i16 @_Dtest(double* %y.addr)
  store i16 %call1, i16* %erry, align 2
  %0 = load i16* %errx, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.else30

land.lhs.true:                                    ; preds = %entry
  %1 = load i16* %erry, align 2
  %conv3 = sext i16 %1 to i32
  %cmp4 = icmp sle i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.else30

if.then:                                          ; preds = %land.lhs.true
  %2 = load double* %y.addr, align 8
  %cmp6 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %3 = load double* %y.addr, align 8
  %sub = fsub double -0.000000e+00, %3
  store double %sub, double* %y.addr, align 8
  store i16 8, i16* %hex, align 2
  br label %if.end

if.else:                                          ; preds = %if.then
  store i16 0, i16* %hex, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %4 = load double* %x.addr, align 8
  %cmp9 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end
  %5 = load double* %x.addr, align 8
  %sub12 = fsub double -0.000000e+00, %5
  store double %sub12, double* %x.addr, align 8
  %6 = load i16* %hex, align 2
  %conv13 = zext i16 %6 to i32
  %xor = xor i32 %conv13, 6
  %conv14 = trunc i32 %xor to i16
  store i16 %conv14, i16* %hex, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end
  %7 = load double* %x.addr, align 8
  %8 = load double* %y.addr, align 8
  %cmp16 = fcmp olt double %7, %8
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.end15
  %9 = load double* %x.addr, align 8
  %10 = load double* %y.addr, align 8
  %div = fdiv double %9, %10
  store double %div, double* %z, align 8
  %11 = load i16* %hex, align 2
  %conv19 = zext i16 %11 to i32
  %xor20 = xor i32 %conv19, 2
  %conv21 = trunc i32 %xor20 to i16
  store i16 %conv21, i16* %hex, align 2
  br label %if.end29

if.else22:                                        ; preds = %if.end15
  %12 = load double* %x.addr, align 8
  %cmp23 = fcmp olt double 0.000000e+00, %12
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else22
  %13 = load double* %y.addr, align 8
  %14 = load double* %x.addr, align 8
  %div26 = fdiv double %13, %14
  store double %div26, double* %z, align 8
  br label %if.end28

if.else27:                                        ; preds = %if.else22
  store double 0.000000e+00, double* %retval
  br label %return

if.end28:                                         ; preds = %if.then25
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then18
  br label %if.end71

if.else30:                                        ; preds = %land.lhs.true, %entry
  %15 = load i16* %errx, align 2
  %conv31 = sext i16 %15 to i32
  %cmp32 = icmp eq i32 %conv31, 2
  br i1 %cmp32, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else30
  %16 = load i16* %erry, align 2
  %conv34 = sext i16 %16 to i32
  %cmp35 = icmp eq i32 %conv34, 2
  br i1 %cmp35, label %if.then37, label %if.else41

if.then37:                                        ; preds = %lor.lhs.false, %if.else30
  store i32 33, i32* @errno, align 4
  %17 = load i16* %errx, align 2
  %conv38 = sext i16 %17 to i32
  %cmp39 = icmp eq i32 %conv38, 2
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then37
  %18 = load double* %x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then37
  %19 = load double* %y.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %18, %cond.true ], [ %19, %cond.false ]
  store double %cond, double* %retval
  br label %return

if.else41:                                        ; preds = %lor.lhs.false
  %20 = load i16* %errx, align 2
  %conv42 = sext i16 %20 to i32
  %21 = load i16* %erry, align 2
  %conv43 = sext i16 %21 to i32
  %cmp44 = icmp eq i32 %conv42, %conv43
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.else41
  store double 1.000000e+00, double* %z, align 8
  br label %if.end48

if.else47:                                        ; preds = %if.else41
  store double 0.000000e+00, double* %z, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  %22 = bitcast double* %y.addr to i16*
  %arrayidx = getelementptr inbounds i16* %22, i32 3
  %23 = load i16* %arrayidx, align 2
  %conv49 = zext i16 %23 to i32
  %and = and i32 %conv49, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.end48
  store i16 8, i16* %hex, align 2
  br label %if.end52

if.else51:                                        ; preds = %if.end48
  store i16 0, i16* %hex, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  %24 = bitcast double* %x.addr to i16*
  %arrayidx53 = getelementptr inbounds i16* %24, i32 3
  %25 = load i16* %arrayidx53, align 2
  %conv54 = zext i16 %25 to i32
  %and55 = and i32 %conv54, 32768
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end52
  %26 = load i16* %hex, align 2
  %conv58 = zext i16 %26 to i32
  %xor59 = xor i32 %conv58, 6
  %conv60 = trunc i32 %xor59 to i16
  store i16 %conv60, i16* %hex, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end52
  %27 = load i16* %erry, align 2
  %conv62 = sext i16 %27 to i32
  %cmp63 = icmp eq i32 %conv62, 1
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end61
  %28 = load i16* %hex, align 2
  %conv66 = zext i16 %28 to i32
  %xor67 = xor i32 %conv66, 2
  %conv68 = trunc i32 %xor67 to i16
  store i16 %conv68, i16* %hex, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end61
  br label %if.end70

if.end70:                                         ; preds = %if.end69
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end29
  %29 = load double* %z, align 8
  %30 = load i16* %hex, align 2
  %call72 = call double @_Atan(double %29, i16 zeroext %30)
  store double %call72, double* %retval
  br label %return

return:                                           ; preds = %if.end71, %cond.end, %if.else27
  %31 = load double* %retval
  ret double %31
}

declare signext i16 @_Dtest(double*) #1

declare double @_Atan(double, i16 zeroext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
