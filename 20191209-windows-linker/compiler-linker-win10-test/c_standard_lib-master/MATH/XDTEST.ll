; ModuleID = './c_standard_lib-master/MATH/XDTEST.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define signext i16 @_Dtest(double* %px) #0 {
entry:
  %retval = alloca i16, align 2
  %px.addr = alloca double*, align 4
  %ps = alloca i16*, align 4
  %xchar = alloca i16, align 2
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i16** %ps, align 4
  %arrayidx4 = getelementptr inbounds i16* %5, i32 3
  %6 = load i16* %arrayidx4, align 2
  %conv5 = zext i16 %6 to i32
  %and6 = and i32 %conv5, 15
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i16** %ps, align 4
  %arrayidx7 = getelementptr inbounds i16* %7, i32 2
  %8 = load i16* %arrayidx7, align 2
  %conv8 = zext i16 %8 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then18, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %9 = load i16** %ps, align 4
  %arrayidx11 = getelementptr inbounds i16* %9, i32 1
  %10 = load i16* %arrayidx11, align 2
  %conv12 = zext i16 %10 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %11 = load i16** %ps, align 4
  %arrayidx15 = getelementptr inbounds i16* %11, i32 0
  %12 = load i16* %arrayidx15, align 2
  %conv16 = zext i16 %12 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %if.then
  store i16 2, i16* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false14
  store i16 1, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i16* %xchar, align 2
  %conv19 = sext i16 %13 to i32
  %cmp20 = icmp slt i32 0, %conv19
  br i1 %cmp20, label %if.then39, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end
  %14 = load i16** %ps, align 4
  %arrayidx23 = getelementptr inbounds i16* %14, i32 3
  %15 = load i16* %arrayidx23, align 2
  %conv24 = zext i16 %15 to i32
  %and25 = and i32 %conv24, 15
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then39, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false22
  %16 = load i16** %ps, align 4
  %arrayidx28 = getelementptr inbounds i16* %16, i32 2
  %17 = load i16* %arrayidx28, align 2
  %conv29 = zext i16 %17 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %if.then39, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %18 = load i16** %ps, align 4
  %arrayidx32 = getelementptr inbounds i16* %18, i32 1
  %19 = load i16* %arrayidx32, align 2
  %conv33 = zext i16 %19 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %if.then39, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %20 = load i16** %ps, align 4
  %arrayidx36 = getelementptr inbounds i16* %20, i32 0
  %21 = load i16* %arrayidx36, align 2
  %conv37 = zext i16 %21 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %lor.lhs.false35, %lor.lhs.false31, %lor.lhs.false27, %lor.lhs.false22, %if.end
  store i16 -1, i16* %retval
  br label %return

if.else40:                                        ; preds = %lor.lhs.false35
  store i16 0, i16* %retval
  br label %return

return:                                           ; preds = %if.else40, %if.then39, %if.else, %if.then18
  %22 = load i16* %retval
  ret i16 %22
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
