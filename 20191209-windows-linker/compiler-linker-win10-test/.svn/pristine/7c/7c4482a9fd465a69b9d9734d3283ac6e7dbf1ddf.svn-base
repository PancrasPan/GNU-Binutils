; ModuleID = './c_standard_lib-master/MATH/XDUNSCAL.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define signext i16 @_Dunscale(i16* %pex, double* %px) #0 {
entry:
  %retval = alloca i16, align 2
  %pex.addr = alloca i16*, align 4
  %px.addr = alloca double*, align 4
  %ps = alloca i16*, align 4
  %xchar = alloca i16, align 2
  store i16* %pex, i16** %pex.addr, align 4
  store double* %px, double** %px.addr, align 4
  %0 = load double** %px.addr, align 4
  %1 = bitcast double* %0 to i16*
  store i16* %1, i16** %ps, align 4
  %2 = load i16** %ps, align 4
  %arrayidx = getelementptr inbounds i16* %2, i32 3
  %3 = load i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32752
  %shr = ashr i32 %and, 4
  %conv1 = trunc i32 %shr to i16
  store i16 %conv1, i16* %xchar, align 2
  %4 = load i16* %xchar, align 2
  %conv2 = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv2, 2047
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %5 = load i16** %pex.addr, align 4
  store i16 0, i16* %5, align 2
  %6 = load i16** %ps, align 4
  %arrayidx4 = getelementptr inbounds i16* %6, i32 3
  %7 = load i16* %arrayidx4, align 2
  %conv5 = zext i16 %7 to i32
  %and6 = and i32 %conv5, 15
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i16** %ps, align 4
  %arrayidx7 = getelementptr inbounds i16* %8, i32 2
  %9 = load i16* %arrayidx7, align 2
  %conv8 = zext i16 %9 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then18, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %10 = load i16** %ps, align 4
  %arrayidx11 = getelementptr inbounds i16* %10, i32 1
  %11 = load i16* %arrayidx11, align 2
  %conv12 = zext i16 %11 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %12 = load i16** %ps, align 4
  %arrayidx15 = getelementptr inbounds i16* %12, i32 0
  %13 = load i16* %arrayidx15, align 2
  %conv16 = zext i16 %13 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %if.then
  store i16 2, i16* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false14
  store i16 1, i16* %retval
  br label %return

if.else19:                                        ; preds = %entry
  %14 = load i16* %xchar, align 2
  %conv20 = sext i16 %14 to i32
  %cmp21 = icmp slt i32 0, %conv20
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.else19
  %15 = load i16** %ps, align 4
  %call = call signext i16 @_Dnorm(i16* %15)
  store i16 %call, i16* %xchar, align 2
  %conv24 = sext i16 %call to i32
  %cmp25 = icmp sle i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.else35

if.then27:                                        ; preds = %lor.lhs.false23, %if.else19
  %16 = load i16** %ps, align 4
  %arrayidx28 = getelementptr inbounds i16* %16, i32 3
  %17 = load i16* %arrayidx28, align 2
  %conv29 = zext i16 %17 to i32
  %and30 = and i32 %conv29, -32753
  %or = or i32 %and30, 16352
  %conv31 = trunc i32 %or to i16
  %18 = load i16** %ps, align 4
  %arrayidx32 = getelementptr inbounds i16* %18, i32 3
  store i16 %conv31, i16* %arrayidx32, align 2
  %19 = load i16* %xchar, align 2
  %conv33 = sext i16 %19 to i32
  %sub = sub nsw i32 %conv33, 1022
  %conv34 = trunc i32 %sub to i16
  %20 = load i16** %pex.addr, align 4
  store i16 %conv34, i16* %20, align 2
  store i16 -1, i16* %retval
  br label %return

if.else35:                                        ; preds = %lor.lhs.false23
  %21 = load i16** %pex.addr, align 4
  store i16 0, i16* %21, align 2
  store i16 0, i16* %retval
  br label %return

return:                                           ; preds = %if.else35, %if.then27, %if.else, %if.then18
  %22 = load i16* %retval
  ret i16 %22
}

declare signext i16 @_Dnorm(i16*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
