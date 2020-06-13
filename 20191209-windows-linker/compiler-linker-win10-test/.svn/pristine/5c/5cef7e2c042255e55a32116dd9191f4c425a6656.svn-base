; ModuleID = './c_standard_lib-master/STRING/STRCOLL.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._Cosave = type { i8, i16 }
%struct.Sctl = type { [32 x i8], i8*, i8*, i8*, %struct._Cosave }

@strcoll.initial = internal constant %struct._Cosave zeroinitializer, align 2

; Function Attrs: nounwind
define i32 @strcoll(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %st1 = alloca %struct.Sctl, align 4
  %st2 = alloca %struct.Sctl, align 4
  %ans = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  %s11 = getelementptr inbounds %struct.Sctl* %st1, i32 0, i32 1
  store i8* %0, i8** %s11, align 4
  %1 = load i8** %s1.addr, align 4
  %s22 = getelementptr inbounds %struct.Sctl* %st1, i32 0, i32 2
  store i8* %1, i8** %s22, align 4
  %state = getelementptr inbounds %struct.Sctl* %st1, i32 0, i32 4
  %2 = bitcast %struct._Cosave* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* getelementptr inbounds (%struct._Cosave* @strcoll.initial, i32 0, i32 0), i32 4, i32 2, i1 false)
  %3 = load i8** %s2.addr, align 4
  %s13 = getelementptr inbounds %struct.Sctl* %st2, i32 0, i32 1
  store i8* %3, i8** %s13, align 4
  %4 = load i8** %s2.addr, align 4
  %s24 = getelementptr inbounds %struct.Sctl* %st2, i32 0, i32 2
  store i8* %4, i8** %s24, align 4
  %state5 = getelementptr inbounds %struct.Sctl* %st2, i32 0, i32 4
  %5 = bitcast %struct._Cosave* %state5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* getelementptr inbounds (%struct._Cosave* @strcoll.initial, i32 0, i32 0), i32 4, i32 2, i1 false)
  store i32 0, i32* %n2, align 4
  store i32 0, i32* %n1, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end27, %entry
  %6 = load i32* %n1, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %call = call i32 @getxfrm(%struct.Sctl* %st1)
  store i32 %call, i32* %n1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %7 = load i32* %n2, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @getxfrm(%struct.Sctl* %st2)
  store i32 %call8, i32* %n2, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %8 = load i32* %n1, align 4
  %9 = load i32* %n2, align 4
  %cmp10 = icmp ult i32 %8, %9
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %10 = load i32* %n1, align 4
  store i32 %10, i32* %n, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end9
  %11 = load i32* %n2, align 4
  store i32 %11, i32* %n, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %12 = load i32* %n, align 4
  %cmp13 = icmp eq i32 %12, 0
  br i1 %cmp13, label %if.then14, label %if.else21

if.then14:                                        ; preds = %if.end12
  %13 = load i32* %n1, align 4
  %14 = load i32* %n2, align 4
  %cmp15 = icmp eq i32 %13, %14
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.then14
  store i32 0, i32* %retval
  br label %return

if.else17:                                        ; preds = %if.then14
  %15 = load i32* %n2, align 4
  %cmp18 = icmp ult i32 0, %15
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else17
  store i32 -1, i32* %retval
  br label %return

if.else20:                                        ; preds = %if.else17
  store i32 1, i32* %retval
  br label %return

if.else21:                                        ; preds = %if.end12
  %sout = getelementptr inbounds %struct.Sctl* %st1, i32 0, i32 3
  %16 = load i8** %sout, align 4
  %sout22 = getelementptr inbounds %struct.Sctl* %st2, i32 0, i32 3
  %17 = load i8** %sout22, align 4
  %18 = load i32* %n, align 4
  %call23 = call i32 @memcmp(i8* %16, i8* %17, i32 %18)
  store i32 %call23, i32* %ans, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else21
  %19 = load i32* %ans, align 4
  store i32 %19, i32* %retval
  br label %return

if.end26:                                         ; preds = %if.else21
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  %20 = load i32* %n, align 4
  %sout28 = getelementptr inbounds %struct.Sctl* %st1, i32 0, i32 3
  %21 = load i8** %sout28, align 4
  %add.ptr = getelementptr inbounds i8* %21, i32 %20
  store i8* %add.ptr, i8** %sout28, align 4
  %22 = load i32* %n, align 4
  %23 = load i32* %n1, align 4
  %sub = sub i32 %23, %22
  store i32 %sub, i32* %n1, align 4
  %24 = load i32* %n, align 4
  %sout29 = getelementptr inbounds %struct.Sctl* %st2, i32 0, i32 3
  %25 = load i8** %sout29, align 4
  %add.ptr30 = getelementptr inbounds i8* %25, i32 %24
  store i8* %add.ptr30, i8** %sout29, align 4
  %26 = load i32* %n, align 4
  %27 = load i32* %n2, align 4
  %sub31 = sub i32 %27, %26
  store i32 %sub31, i32* %n2, align 4
  br label %for.cond

return:                                           ; preds = %if.then25, %if.else20, %if.then19, %if.then16
  %28 = load i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
define internal i32 @getxfrm(%struct.Sctl* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.Sctl*, align 4
  %i = alloca i32, align 4
  store %struct.Sctl* %p, %struct.Sctl** %p.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.Sctl** %p.addr, align 4
  %buf = getelementptr inbounds %struct.Sctl* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8]* %buf, i32 0, i32 0
  %1 = load %struct.Sctl** %p.addr, align 4
  %sout = getelementptr inbounds %struct.Sctl* %1, i32 0, i32 3
  store i8* %arraydecay, i8** %sout, align 4
  %2 = load %struct.Sctl** %p.addr, align 4
  %buf1 = getelementptr inbounds %struct.Sctl* %2, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [32 x i8]* %buf1, i32 0, i32 0
  %3 = load %struct.Sctl** %p.addr, align 4
  %s1 = getelementptr inbounds %struct.Sctl* %3, i32 0, i32 1
  %4 = load %struct.Sctl** %p.addr, align 4
  %state = getelementptr inbounds %struct.Sctl* %4, i32 0, i32 4
  %call = call i32 @_Strxfrm(i8* %arraydecay2, i8** %s1, i32 32, %struct._Cosave* %state)
  store i32 %call, i32* %i, align 4
  %5 = load i32* %i, align 4
  %cmp = icmp ult i32 0, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load i32* %i, align 4
  %sub = sub i32 %6, 1
  %7 = load %struct.Sctl** %p.addr, align 4
  %buf3 = getelementptr inbounds %struct.Sctl* %7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [32 x i8]* %buf3, i32 0, i32 %sub
  %8 = load i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32* %i, align 4
  %sub6 = sub i32 %9, 1
  store i32 %sub6, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %do.body
  %10 = load %struct.Sctl** %p.addr, align 4
  %s17 = getelementptr inbounds %struct.Sctl* %10, i32 0, i32 1
  %11 = load i8** %s17, align 4
  %12 = load i8* %11, align 1
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %13 = load %struct.Sctl** %p.addr, align 4
  %s2 = getelementptr inbounds %struct.Sctl* %13, i32 0, i32 2
  %14 = load i8** %s2, align 4
  %15 = load %struct.Sctl** %p.addr, align 4
  %s112 = getelementptr inbounds %struct.Sctl* %15, i32 0, i32 1
  store i8* %14, i8** %s112, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end13
  %16 = load i32* %i, align 4
  %cmp14 = icmp eq i32 %16, 0
  br i1 %cmp14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i32* %i, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %18 = load i32* %retval
  ret i32 %18
}

declare i32 @memcmp(i8*, i8*, i32) #2

declare i32 @_Strxfrm(i8*, i8**, i32, %struct._Cosave*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
