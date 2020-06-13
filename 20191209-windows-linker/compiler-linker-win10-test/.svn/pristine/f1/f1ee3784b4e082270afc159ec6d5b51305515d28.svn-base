; ModuleID = './c_standard_lib-master/STRING/STRNCMP.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @strncmp(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %n.addr, align 4
  %cmp = icmp ult i32 0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8** %s1.addr, align 4
  %2 = load i8* %1, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8** %s2.addr, align 4
  %4 = load i8* %3, align 1
  %conv1 = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.else9

if.then:                                          ; preds = %for.body
  %5 = load i8** %s1.addr, align 4
  %6 = load i8* %5, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i8** %s2.addr, align 4
  %8 = load i8* %7, align 1
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp slt i32 %conv4, %conv5
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.else9:                                         ; preds = %for.body
  %9 = load i8** %s1.addr, align 4
  %10 = load i8* %9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else9
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else9
  br label %if.end14

if.end14:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %11 = load i8** %s1.addr, align 4
  %incdec.ptr = getelementptr inbounds i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 4
  %12 = load i8** %s2.addr, align 4
  %incdec.ptr15 = getelementptr inbounds i8* %12, i32 1
  store i8* %incdec.ptr15, i8** %s2.addr, align 4
  %13 = load i32* %n.addr, align 4
  %dec = add i32 %13, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.else, %if.then8
  %14 = load i32* %retval
  ret i32 %14
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
