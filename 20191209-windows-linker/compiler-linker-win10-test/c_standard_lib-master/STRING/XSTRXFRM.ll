; ModuleID = './c_standard_lib-master/STRING/XSTRXFRM.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._Statab = type { [16 x i16*] }
%struct._Cosave = type { i8, i16 }

@_Costate = external global %struct._Statab

; Function Attrs: nounwind
define i32 @_Strxfrm(i8* %sout, i8** %psin, i32 %size, %struct._Cosave* %ps) #0 {
entry:
  %retval = alloca i32, align 4
  %sout.addr = alloca i8*, align 4
  %psin.addr = alloca i8**, align 4
  %size.addr = alloca i32, align 4
  %ps.addr = alloca %struct._Cosave*, align 4
  %state = alloca i8, align 1
  %leave = alloca i32, align 4
  %limit = alloca i32, align 4
  %nout = alloca i32, align 4
  %sin = alloca i8*, align 4
  %wc = alloca i16, align 2
  %code = alloca i16, align 2
  %stab = alloca i16*, align 4
  store i8* %sout, i8** %sout.addr, align 4
  store i8** %psin, i8*** %psin.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store %struct._Cosave* %ps, %struct._Cosave** %ps.addr, align 4
  %0 = load %struct._Cosave** %ps.addr, align 4
  %_State = getelementptr inbounds %struct._Cosave* %0, i32 0, i32 0
  %1 = load i8* %_State, align 1
  store i8 %1, i8* %state, align 1
  store i32 0, i32* %leave, align 4
  store i32 0, i32* %limit, align 4
  store i32 0, i32* %nout, align 4
  %2 = load i8*** %psin.addr, align 4
  %3 = load i8** %2, align 4
  store i8* %3, i8** %sin, align 4
  %4 = load %struct._Cosave** %ps.addr, align 4
  %_Wchar = getelementptr inbounds %struct._Cosave* %4, i32 0, i32 1
  %5 = load i16* %_Wchar, align 2
  store i16 %5, i16* %wc, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end72, %entry
  %6 = load i8* %state, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp sle i32 16, %conv
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %7 = load i8* %state, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr inbounds [16 x i16*]* getelementptr inbounds (%struct._Statab* @_Costate, i32 0, i32 0), i32 0, i32 %idxprom
  %8 = load i16** %arrayidx, align 4
  store i16* %8, i16** %stab, align 4
  %cmp2 = icmp eq i16* %8, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %9 = load i32* %limit, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %limit, align 4
  %cmp5 = icmp sle i32 4080, %inc
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %10 = load i8** %sin, align 4
  %11 = load i8* %10, align 1
  %idxprom8 = zext i8 %11 to i32
  %12 = load i16** %stab, align 4
  %arrayidx9 = getelementptr inbounds i16* %12, i32 %idxprom8
  %13 = load i16* %arrayidx9, align 2
  store i16 %13, i16* %code, align 2
  %conv10 = zext i16 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false7
  %14 = load i16* %code, align 2
  %conv13 = zext i16 %14 to i32
  %and = and i32 %conv13, 3840
  %shr = ashr i32 %and, 8
  %conv14 = trunc i32 %shr to i8
  store i8 %conv14, i8* %state, align 1
  %15 = load i16* %code, align 2
  %conv15 = zext i16 %15 to i32
  %and16 = and i32 %conv15, 32768
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end
  %16 = load i16* %wc, align 2
  %conv18 = zext i16 %16 to i32
  %and19 = and i32 %conv18, -256
  %17 = load i16* %code, align 2
  %conv20 = zext i16 %17 to i32
  %and21 = and i32 %conv20, 255
  %or = or i32 %and19, %and21
  %conv22 = trunc i32 %or to i16
  store i16 %conv22, i16* %wc, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end
  %18 = load i16* %code, align 2
  %conv24 = zext i16 %18 to i32
  %and25 = and i32 %conv24, 4096
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end23
  %19 = load i16* %wc, align 2
  %conv28 = zext i16 %19 to i32
  %shr29 = ashr i32 %conv28, 8
  %and30 = and i32 %shr29, 255
  %20 = load i16* %wc, align 2
  %conv31 = zext i16 %20 to i32
  %shl = shl i32 %conv31, 8
  %or32 = or i32 %and30, %shl
  %conv33 = trunc i32 %or32 to i16
  store i16 %conv33, i16* %wc, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end23
  %21 = load i16* %code, align 2
  %conv35 = zext i16 %21 to i32
  %and36 = and i32 %conv35, 255
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  %22 = load i16* %code, align 2
  %conv39 = trunc i16 %22 to i8
  %23 = load i32* %nout, align 4
  %24 = load i8** %sout.addr, align 4
  %arrayidx40 = getelementptr inbounds i8* %24, i32 %23
  store i8 %conv39, i8* %arrayidx40, align 1
  br label %if.end43

if.else:                                          ; preds = %if.end34
  %25 = load i16* %wc, align 2
  %conv41 = trunc i16 %25 to i8
  %26 = load i32* %nout, align 4
  %27 = load i8** %sout.addr, align 4
  %arrayidx42 = getelementptr inbounds i8* %27, i32 %26
  store i8 %conv41, i8* %arrayidx42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38
  %28 = load i16* %code, align 2
  %conv44 = zext i16 %28 to i32
  %and45 = and i32 %conv44, 8192
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end43
  %29 = load i32* %nout, align 4
  %inc47 = add nsw i32 %29, 1
  store i32 %inc47, i32* %nout, align 4
  %30 = load i8** %sout.addr, align 4
  %arrayidx48 = getelementptr inbounds i8* %30, i32 %29
  %31 = load i8* %arrayidx48, align 1
  %conv49 = sext i8 %31 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true
  %32 = load i32* %size.addr, align 4
  %33 = load i32* %nout, align 4
  %cmp53 = icmp ule i32 %32, %33
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false52, %land.lhs.true
  store i32 1, i32* %leave, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %lor.lhs.false52, %if.end43
  %34 = load i16* %code, align 2
  %conv57 = zext i16 %34 to i32
  %and58 = and i32 %conv57, 16384
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then60, label %if.end67

if.then60:                                        ; preds = %if.end56
  %35 = load i8** %sin, align 4
  %36 = load i8* %35, align 1
  %conv61 = zext i8 %36 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.then60
  %37 = load i8** %sin, align 4
  %incdec.ptr = getelementptr inbounds i8* %37, i32 1
  store i8* %incdec.ptr, i8** %sin, align 4
  store i32 0, i32* %limit, align 4
  br label %if.end66

if.else65:                                        ; preds = %if.then60
  store i32 1, i32* %leave, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end56
  %38 = load i32* %leave, align 4
  %tobool68 = icmp ne i32 %38, 0
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end67
  %39 = load i8** %sin, align 4
  %40 = load i8*** %psin.addr, align 4
  store i8* %39, i8** %40, align 4
  %41 = load i8* %state, align 1
  %42 = load %struct._Cosave** %ps.addr, align 4
  %_State70 = getelementptr inbounds %struct._Cosave* %42, i32 0, i32 0
  store i8 %41, i8* %_State70, align 1
  %43 = load i16* %wc, align 2
  %44 = load %struct._Cosave** %ps.addr, align 4
  %_Wchar71 = getelementptr inbounds %struct._Cosave* %44, i32 0, i32 1
  store i16 %43, i16* %_Wchar71, align 2
  %45 = load i32* %nout, align 4
  store i32 %45, i32* %retval
  br label %return

if.end72:                                         ; preds = %if.end67
  br label %for.cond

for.end:                                          ; preds = %if.then
  %46 = load i32* %nout, align 4
  %inc73 = add nsw i32 %46, 1
  store i32 %inc73, i32* %nout, align 4
  %47 = load i8** %sout.addr, align 4
  %arrayidx74 = getelementptr inbounds i8* %47, i32 %46
  store i8 0, i8* %arrayidx74, align 1
  %48 = load i8** %sin, align 4
  %49 = load i8*** %psin.addr, align 4
  store i8* %48, i8** %49, align 4
  %50 = load %struct._Cosave** %ps.addr, align 4
  %_State75 = getelementptr inbounds %struct._Cosave* %50, i32 0, i32 0
  store i8 16, i8* %_State75, align 1
  %51 = load i32* %nout, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then69
  %52 = load i32* %retval
  ret i32 %52
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
