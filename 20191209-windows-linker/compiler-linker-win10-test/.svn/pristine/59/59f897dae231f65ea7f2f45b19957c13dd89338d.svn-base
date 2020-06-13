; ModuleID = './c_standard_lib-master/STRING/STRXFRM.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._Cosave = type { i8, i16 }

; Function Attrs: nounwind
define i32 @strxfrm(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %nx = alloca i32, align 4
  %s = alloca i8*, align 4
  %state = alloca %struct._Cosave, align 2
  %i = alloca i32, align 4
  %buf = alloca [32 x i8], align 1
  %i10 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %nx, align 4
  %0 = load i8** %s2.addr, align 4
  store i8* %0, i8** %s, align 4
  %1 = bitcast %struct._Cosave* %state to i8*
  call void @llvm.memset.p0i8.i32(i8* %1, i8 0, i32 4, i32 2, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %2 = load i32* %nx, align 4
  %3 = load i32* %n.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8** %s1.addr, align 4
  %5 = load i32* %n.addr, align 4
  %6 = load i32* %nx, align 4
  %sub = sub i32 %5, %6
  %call = call i32 @_Strxfrm(i8* %4, i8** %s, i32 %sub, %struct._Cosave* %state)
  store i32 %call, i32* %i, align 4
  %7 = load i32* %i, align 4
  %8 = load i8** %s1.addr, align 4
  %add.ptr = getelementptr inbounds i8* %8, i32 %7
  store i8* %add.ptr, i8** %s1.addr, align 4
  %9 = load i32* %i, align 4
  %10 = load i32* %nx, align 4
  %add = add i32 %10, %9
  store i32 %add, i32* %nx, align 4
  %11 = load i32* %i, align 4
  %cmp1 = icmp ult i32 0, %11
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %12 = load i8** %s1.addr, align 4
  %arrayidx = getelementptr inbounds i8* %12, i32 -1
  %13 = load i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32* %nx, align 4
  %sub4 = sub i32 %14, 1
  store i32 %sub4, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %while.body
  %15 = load i8** %s, align 4
  %16 = load i8* %15, align 1
  %conv5 = zext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %17 = load i8** %s2.addr, align 4
  store i8* %17, i8** %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %while.end
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i32 0, i32 0
  %call11 = call i32 @_Strxfrm(i8* %arraydecay, i8** %s, i32 32, %struct._Cosave* %state)
  store i32 %call11, i32* %i10, align 4
  %18 = load i32* %i10, align 4
  %19 = load i32* %nx, align 4
  %add12 = add i32 %19, %18
  store i32 %add12, i32* %nx, align 4
  %20 = load i32* %i10, align 4
  %cmp13 = icmp ult i32 0, %20
  br i1 %cmp13, label %land.lhs.true15, label %if.else23

land.lhs.true15:                                  ; preds = %for.cond
  %21 = load i32* %i10, align 4
  %sub16 = sub i32 %21, 1
  %arrayidx17 = getelementptr inbounds [32 x i8]* %buf, i32 0, i32 %sub16
  %22 = load i8* %arrayidx17, align 1
  %conv18 = sext i8 %22 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %land.lhs.true15
  %23 = load i32* %nx, align 4
  %sub22 = sub i32 %23, 1
  store i32 %sub22, i32* %retval
  br label %return

if.else23:                                        ; preds = %land.lhs.true15, %for.cond
  %24 = load i8** %s, align 4
  %25 = load i8* %24, align 1
  %conv24 = zext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else23
  %26 = load i8** %s2.addr, align 4
  store i8* %26, i8** %s, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else23
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %for.cond

return:                                           ; preds = %if.then21, %if.then
  %27 = load i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

declare i32 @_Strxfrm(i8*, i8**, i32, %struct._Cosave*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
