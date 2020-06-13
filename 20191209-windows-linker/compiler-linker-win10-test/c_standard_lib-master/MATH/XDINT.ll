; ModuleID = './c_standard_lib-master/MATH/XDINT.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@errno = external global i32
@_Dint.mask = internal constant [16 x i16] [i16 0, i16 1, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767], align 2
@_Dint.sub = internal constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4

; Function Attrs: nounwind
define signext i16 @_Dint(double* %px, i16 signext %xexp) #0 {
entry:
  %retval = alloca i16, align 2
  %px.addr = alloca double*, align 4
  %xexp.addr = alloca i16, align 2
  %ps = alloca i16*, align 4
  %frac = alloca i16, align 2
  %xchar = alloca i16, align 2
  store double* %px, double** %px.addr, align 4
  store i16 %xexp, i16* %xexp.addr, align 2
  %0 = load double** %px.addr, align 4
  %1 = bitcast double* %0 to i16*
  store i16* %1, i16** %ps, align 4
  %2 = load i16** %ps, align 4
  %arrayidx = getelementptr inbounds i16* %2, i32 3
  %3 = load i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 15
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i16** %ps, align 4
  %arrayidx1 = getelementptr inbounds i16* %4, i32 2
  %5 = load i16* %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = load i16** %ps, align 4
  %arrayidx5 = getelementptr inbounds i16* %6, i32 1
  %7 = load i16* %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false4
  %8 = load i16** %ps, align 4
  %arrayidx8 = getelementptr inbounds i16* %8, i32 0
  %9 = load i16* %arrayidx8, align 2
  %conv9 = zext i16 %9 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false, %entry
  %10 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool10, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %conv11 = trunc i32 %lor.ext to i16
  store i16 %conv11, i16* %frac, align 2
  %11 = load i16** %ps, align 4
  %arrayidx12 = getelementptr inbounds i16* %11, i32 3
  %12 = load i16* %arrayidx12, align 2
  %conv13 = zext i16 %12 to i32
  %and14 = and i32 %conv13, 32752
  %shr = ashr i32 %and14, 4
  %conv15 = trunc i32 %shr to i16
  store i16 %conv15, i16* %xchar, align 2
  %13 = load i16* %xchar, align 2
  %conv16 = sext i16 %13 to i32
  %cmp = icmp eq i32 %conv16, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.end
  %14 = load i16* %frac, align 2
  %tobool18 = icmp ne i16 %14, 0
  br i1 %tobool18, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i16 0, i16* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %lor.end
  %15 = load i16* %xchar, align 2
  %conv19 = sext i16 %15 to i32
  %cmp20 = icmp ne i32 %conv19, 2047
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else
  br label %if.end

if.else23:                                        ; preds = %if.else
  %16 = load i16* %frac, align 2
  %tobool24 = icmp ne i16 %16, 0
  br i1 %tobool24, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.else23
  store i16 1, i16* %retval
  br label %return

if.else26:                                        ; preds = %if.else23
  store i32 33, i32* @errno, align 4
  store i16 2, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then22
  br label %if.end27

if.end27:                                         ; preds = %if.end
  %17 = load i16* %xchar, align 2
  %conv28 = sext i16 %17 to i32
  %sub = sub nsw i32 1075, %conv28
  %18 = load i16* %xexp.addr, align 2
  %conv29 = sext i16 %18 to i32
  %sub30 = sub nsw i32 %sub, %conv29
  %conv31 = trunc i32 %sub30 to i16
  store i16 %conv31, i16* %xchar, align 2
  %19 = load i16* %xchar, align 2
  %conv32 = sext i16 %19 to i32
  %cmp33 = icmp sle i32 %conv32, 0
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end27
  store i16 0, i16* %retval
  br label %return

if.else36:                                        ; preds = %if.end27
  %20 = load i16* %xchar, align 2
  %conv37 = sext i16 %20 to i32
  %cmp38 = icmp slt i32 52, %conv37
  br i1 %cmp38, label %if.then40, label %if.else45

if.then40:                                        ; preds = %if.else36
  %21 = load i16** %ps, align 4
  %arrayidx41 = getelementptr inbounds i16* %21, i32 3
  store i16 0, i16* %arrayidx41, align 2
  %22 = load i16** %ps, align 4
  %arrayidx42 = getelementptr inbounds i16* %22, i32 2
  store i16 0, i16* %arrayidx42, align 2
  %23 = load i16** %ps, align 4
  %arrayidx43 = getelementptr inbounds i16* %23, i32 1
  store i16 0, i16* %arrayidx43, align 2
  %24 = load i16** %ps, align 4
  %arrayidx44 = getelementptr inbounds i16* %24, i32 0
  store i16 0, i16* %arrayidx44, align 2
  store i16 -1, i16* %retval
  br label %return

if.else45:                                        ; preds = %if.else36
  %25 = load i16* %xchar, align 2
  %conv46 = sext i16 %25 to i32
  %and47 = and i32 %conv46, 15
  %arrayidx48 = getelementptr inbounds [16 x i16]* @_Dint.mask, i32 0, i32 %and47
  %26 = load i16* %arrayidx48, align 2
  store i16 %26, i16* %frac, align 2
  %27 = load i16* %xchar, align 2
  %conv49 = sext i16 %27 to i32
  %shr50 = ashr i32 %conv49, 4
  %conv51 = trunc i32 %shr50 to i16
  store i16 %conv51, i16* %xchar, align 2
  %28 = load i16* %xchar, align 2
  %idxprom = sext i16 %28 to i32
  %arrayidx52 = getelementptr inbounds [4 x i32]* @_Dint.sub, i32 0, i32 %idxprom
  %29 = load i32* %arrayidx52, align 4
  %30 = load i16** %ps, align 4
  %arrayidx53 = getelementptr inbounds i16* %30, i32 %29
  %31 = load i16* %arrayidx53, align 2
  %conv54 = zext i16 %31 to i32
  %32 = load i16* %frac, align 2
  %conv55 = zext i16 %32 to i32
  %and56 = and i32 %conv55, %conv54
  %conv57 = trunc i32 %and56 to i16
  store i16 %conv57, i16* %frac, align 2
  %33 = load i16* %frac, align 2
  %conv58 = zext i16 %33 to i32
  %34 = load i16* %xchar, align 2
  %idxprom59 = sext i16 %34 to i32
  %arrayidx60 = getelementptr inbounds [4 x i32]* @_Dint.sub, i32 0, i32 %idxprom59
  %35 = load i32* %arrayidx60, align 4
  %36 = load i16** %ps, align 4
  %arrayidx61 = getelementptr inbounds i16* %36, i32 %35
  %37 = load i16* %arrayidx61, align 2
  %conv62 = zext i16 %37 to i32
  %xor = xor i32 %conv62, %conv58
  %conv63 = trunc i32 %xor to i16
  store i16 %conv63, i16* %arrayidx61, align 2
  %38 = load i16* %xchar, align 2
  %conv64 = sext i16 %38 to i32
  switch i32 %conv64, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb70
    i32 1, label %sw.bb77
  ]

sw.bb:                                            ; preds = %if.else45
  %39 = load i16** %ps, align 4
  %arrayidx65 = getelementptr inbounds i16* %39, i32 2
  %40 = load i16* %arrayidx65, align 2
  %conv66 = zext i16 %40 to i32
  %41 = load i16* %frac, align 2
  %conv67 = zext i16 %41 to i32
  %or = or i32 %conv67, %conv66
  %conv68 = trunc i32 %or to i16
  store i16 %conv68, i16* %frac, align 2
  %42 = load i16** %ps, align 4
  %arrayidx69 = getelementptr inbounds i16* %42, i32 2
  store i16 0, i16* %arrayidx69, align 2
  br label %sw.bb70

sw.bb70:                                          ; preds = %if.else45, %sw.bb
  %43 = load i16** %ps, align 4
  %arrayidx71 = getelementptr inbounds i16* %43, i32 1
  %44 = load i16* %arrayidx71, align 2
  %conv72 = zext i16 %44 to i32
  %45 = load i16* %frac, align 2
  %conv73 = zext i16 %45 to i32
  %or74 = or i32 %conv73, %conv72
  %conv75 = trunc i32 %or74 to i16
  store i16 %conv75, i16* %frac, align 2
  %46 = load i16** %ps, align 4
  %arrayidx76 = getelementptr inbounds i16* %46, i32 1
  store i16 0, i16* %arrayidx76, align 2
  br label %sw.bb77

sw.bb77:                                          ; preds = %if.else45, %sw.bb70
  %47 = load i16** %ps, align 4
  %arrayidx78 = getelementptr inbounds i16* %47, i32 0
  %48 = load i16* %arrayidx78, align 2
  %conv79 = zext i16 %48 to i32
  %49 = load i16* %frac, align 2
  %conv80 = zext i16 %49 to i32
  %or81 = or i32 %conv80, %conv79
  %conv82 = trunc i32 %or81 to i16
  store i16 %conv82, i16* %frac, align 2
  %50 = load i16** %ps, align 4
  %arrayidx83 = getelementptr inbounds i16* %50, i32 0
  store i16 0, i16* %arrayidx83, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb77, %if.else45
  %51 = load i16* %frac, align 2
  %tobool84 = icmp ne i16 %51, 0
  br i1 %tobool84, label %if.then85, label %if.else86

if.then85:                                        ; preds = %sw.epilog
  store i16 -1, i16* %retval
  br label %return

if.else86:                                        ; preds = %sw.epilog
  store i16 0, i16* %retval
  br label %return

return:                                           ; preds = %if.else86, %if.then85, %if.then40, %if.then35, %if.else26, %if.then25, %if.then
  %52 = load i16* %retval
  ret i16 %52
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
