; ModuleID = './c_standard_lib-master/MATH/XLDUNSCA.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define signext i16 @_Ldunscale(i16* %pex, double* %px) #0 {
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
  %arrayidx = getelementptr inbounds i16* %2, i32 4
  %3 = load i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32767
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %xchar, align 2
  %4 = load i16* %xchar, align 2
  %conv2 = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv2, 32767
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %5 = load i16** %pex.addr, align 4
  store i16 0, i16* %5, align 2
  %6 = load i16** %ps, align 4
  %arrayidx4 = getelementptr inbounds i16* %6, i32 3
  %7 = load i16* %arrayidx4, align 2
  %conv5 = zext i16 %7 to i32
  %and6 = and i32 %conv5, 32767
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
  %14 = load i16** %ps, align 4
  %arrayidx20 = getelementptr inbounds i16* %14, i32 3
  %15 = load i16* %arrayidx20, align 2
  %conv21 = zext i16 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %land.lhs.true, label %if.else39

land.lhs.true:                                    ; preds = %if.else19
  %16 = load i16** %ps, align 4
  %arrayidx24 = getelementptr inbounds i16* %16, i32 2
  %17 = load i16* %arrayidx24, align 2
  %conv25 = zext i16 %17 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.else39

land.lhs.true28:                                  ; preds = %land.lhs.true
  %18 = load i16** %ps, align 4
  %arrayidx29 = getelementptr inbounds i16* %18, i32 1
  %19 = load i16* %arrayidx29, align 2
  %conv30 = zext i16 %19 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %land.lhs.true33, label %if.else39

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %20 = load i16** %ps, align 4
  %arrayidx34 = getelementptr inbounds i16* %20, i32 0
  %21 = load i16* %arrayidx34, align 2
  %conv35 = zext i16 %21 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %land.lhs.true33
  %22 = load i16** %pex.addr, align 4
  store i16 0, i16* %22, align 2
  store i16 0, i16* %retval
  br label %return

if.else39:                                        ; preds = %land.lhs.true33, %land.lhs.true28, %land.lhs.true, %if.else19
  %23 = load i16** %ps, align 4
  %call = call signext i16 @dnorm(i16* %23)
  %conv40 = sext i16 %call to i32
  %24 = load i16* %xchar, align 2
  %conv41 = sext i16 %24 to i32
  %add = add nsw i32 %conv41, %conv40
  %conv42 = trunc i32 %add to i16
  store i16 %conv42, i16* %xchar, align 2
  %25 = load i16** %ps, align 4
  %arrayidx43 = getelementptr inbounds i16* %25, i32 4
  %26 = load i16* %arrayidx43, align 2
  %conv44 = zext i16 %26 to i32
  %and45 = and i32 %conv44, 32768
  %or = or i32 %and45, 16382
  %conv46 = trunc i32 %or to i16
  %27 = load i16** %ps, align 4
  %arrayidx47 = getelementptr inbounds i16* %27, i32 4
  store i16 %conv46, i16* %arrayidx47, align 2
  %28 = load i16* %xchar, align 2
  %conv48 = sext i16 %28 to i32
  %sub = sub nsw i32 %conv48, 16382
  %conv49 = trunc i32 %sub to i16
  %29 = load i16** %pex.addr, align 4
  store i16 %conv49, i16* %29, align 2
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.else39, %if.then38, %if.else, %if.then18
  %30 = load i16* %retval
  ret i16 %30
}

; Function Attrs: nounwind
define internal signext i16 @dnorm(i16* %ps) #0 {
entry:
  %ps.addr = alloca i16*, align 4
  %xchar = alloca i16, align 2
  store i16* %ps, i16** %ps.addr, align 4
  store i16 0, i16* %xchar, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16** %ps.addr, align 4
  %arrayidx = getelementptr inbounds i16* %0, i32 3
  %1 = load i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16** %ps.addr, align 4
  %arrayidx2 = getelementptr inbounds i16* %2, i32 2
  %3 = load i16* %arrayidx2, align 2
  %4 = load i16** %ps.addr, align 4
  %arrayidx3 = getelementptr inbounds i16* %4, i32 3
  store i16 %3, i16* %arrayidx3, align 2
  %5 = load i16** %ps.addr, align 4
  %arrayidx4 = getelementptr inbounds i16* %5, i32 1
  %6 = load i16* %arrayidx4, align 2
  %7 = load i16** %ps.addr, align 4
  %arrayidx5 = getelementptr inbounds i16* %7, i32 2
  store i16 %6, i16* %arrayidx5, align 2
  %8 = load i16** %ps.addr, align 4
  %arrayidx6 = getelementptr inbounds i16* %8, i32 0
  %9 = load i16* %arrayidx6, align 2
  %10 = load i16** %ps.addr, align 4
  %arrayidx7 = getelementptr inbounds i16* %10, i32 1
  store i16 %9, i16* %arrayidx7, align 2
  %11 = load i16** %ps.addr, align 4
  %arrayidx8 = getelementptr inbounds i16* %11, i32 0
  store i16 0, i16* %arrayidx8, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i16* %xchar, align 2
  %conv9 = sext i16 %12 to i32
  %sub = sub nsw i32 %conv9, 16
  %conv10 = trunc i32 %sub to i16
  store i16 %conv10, i16* %xchar, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc45, %for.end
  %13 = load i16** %ps.addr, align 4
  %arrayidx12 = getelementptr inbounds i16* %13, i32 3
  %14 = load i16* %arrayidx12, align 2
  %conv13 = zext i16 %14 to i32
  %cmp14 = icmp ult i32 %conv13, 32768
  br i1 %cmp14, label %for.body16, label %for.end46

for.body16:                                       ; preds = %for.cond11
  %15 = load i16** %ps.addr, align 4
  %arrayidx17 = getelementptr inbounds i16* %15, i32 3
  %16 = load i16* %arrayidx17, align 2
  %conv18 = zext i16 %16 to i32
  %shl = shl i32 %conv18, 1
  %17 = load i16** %ps.addr, align 4
  %arrayidx19 = getelementptr inbounds i16* %17, i32 2
  %18 = load i16* %arrayidx19, align 2
  %conv20 = zext i16 %18 to i32
  %shr = ashr i32 %conv20, 15
  %or = or i32 %shl, %shr
  %conv21 = trunc i32 %or to i16
  %19 = load i16** %ps.addr, align 4
  %arrayidx22 = getelementptr inbounds i16* %19, i32 3
  store i16 %conv21, i16* %arrayidx22, align 2
  %20 = load i16** %ps.addr, align 4
  %arrayidx23 = getelementptr inbounds i16* %20, i32 2
  %21 = load i16* %arrayidx23, align 2
  %conv24 = zext i16 %21 to i32
  %shl25 = shl i32 %conv24, 1
  %22 = load i16** %ps.addr, align 4
  %arrayidx26 = getelementptr inbounds i16* %22, i32 1
  %23 = load i16* %arrayidx26, align 2
  %conv27 = zext i16 %23 to i32
  %shr28 = ashr i32 %conv27, 15
  %or29 = or i32 %shl25, %shr28
  %conv30 = trunc i32 %or29 to i16
  %24 = load i16** %ps.addr, align 4
  %arrayidx31 = getelementptr inbounds i16* %24, i32 2
  store i16 %conv30, i16* %arrayidx31, align 2
  %25 = load i16** %ps.addr, align 4
  %arrayidx32 = getelementptr inbounds i16* %25, i32 1
  %26 = load i16* %arrayidx32, align 2
  %conv33 = zext i16 %26 to i32
  %shl34 = shl i32 %conv33, 1
  %27 = load i16** %ps.addr, align 4
  %arrayidx35 = getelementptr inbounds i16* %27, i32 0
  %28 = load i16* %arrayidx35, align 2
  %conv36 = zext i16 %28 to i32
  %shr37 = ashr i32 %conv36, 15
  %or38 = or i32 %shl34, %shr37
  %conv39 = trunc i32 %or38 to i16
  %29 = load i16** %ps.addr, align 4
  %arrayidx40 = getelementptr inbounds i16* %29, i32 1
  store i16 %conv39, i16* %arrayidx40, align 2
  %30 = load i16** %ps.addr, align 4
  %arrayidx41 = getelementptr inbounds i16* %30, i32 0
  %31 = load i16* %arrayidx41, align 2
  %conv42 = zext i16 %31 to i32
  %shl43 = shl i32 %conv42, 1
  %conv44 = trunc i32 %shl43 to i16
  store i16 %conv44, i16* %arrayidx41, align 2
  br label %for.inc45

for.inc45:                                        ; preds = %for.body16
  %32 = load i16* %xchar, align 2
  %dec = add i16 %32, -1
  store i16 %dec, i16* %xchar, align 2
  br label %for.cond11

for.end46:                                        ; preds = %for.cond11
  %33 = load i16* %xchar, align 2
  ret i16 %33
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
