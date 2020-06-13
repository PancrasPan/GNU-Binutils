; ModuleID = './testcase_8slots/string\strspn.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @strspn(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %l = alloca i8*, align 4
  %r = alloca i8*, align 4
  %p = alloca i8*, align 4
  %n = alloca i32, align 4
  %f = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %l, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %r, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %f, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %2 = load i8** %l, align 4
  %3 = load i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8** %r, align 4
  store i8* %4, i8** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i8** %p, align 4
  %6 = load i8* %5, align 1
  %tobool1 = icmp ne i8 %6, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8** %l, align 4
  %8 = load i8* %7, align 1
  %conv = zext i8 %8 to i32
  %9 = load i8** %p, align 4
  %10 = load i8* %9, align 1
  %conv2 = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %f, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32* %f, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.end
  %13 = load i32* %n, align 4
  store i32 %13, i32* %retval
  br label %return

if.end6:                                          ; preds = %for.end
  store i32 0, i32* %f, align 4
  %14 = load i32* %n, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %n, align 4
  %15 = load i8** %l, align 4
  %incdec.ptr7 = getelementptr inbounds i8* %15, i32 1
  store i8* %incdec.ptr7, i8** %l, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32* %n, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then5
  %17 = load i32* %retval
  ret i32 %17
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}