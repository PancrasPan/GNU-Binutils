; ModuleID = './testcase_8slots/string\strstr.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strstr(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i8*, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %l = alloca i8*, align 4
  %r = alloca i8*, align 4
  %p = alloca i8*, align 4
  %o = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %l, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %2 = load i8** %l, align 4
  %3 = load i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8** %r, align 4
  store i8* %4, i8** %p, align 4
  %5 = load i8** %l, align 4
  store i8* %5, i8** %o, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i8** %p, align 4
  %7 = load i8* %6, align 1
  %conv = zext i8 %7 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i8** %o, align 4
  %9 = load i8* %8, align 1
  %conv2 = zext i8 %9 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %tobool3, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load i8** %p, align 4
  %12 = load i8* %11, align 1
  %conv4 = zext i8 %12 to i32
  %13 = load i8** %o, align 4
  %14 = load i8* %13, align 1
  %conv5 = zext i8 %14 to i32
  %cmp = icmp ne i32 %conv4, %conv5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  %16 = load i8** %o, align 4
  %incdec.ptr7 = getelementptr inbounds i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %o, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %land.end
  %17 = load i8** %p, align 4
  %18 = load i8* %17, align 1
  %conv8 = zext i8 %18 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.then12

land.lhs.true:                                    ; preds = %for.end
  %19 = load i8** %o, align 4
  %20 = load i8* %19, align 1
  %conv10 = zext i8 %20 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true, %for.end
  %21 = load i8** %l, align 4
  store i8* %21, i8** %retval
  br label %return

if.end13:                                         ; preds = %land.lhs.true
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then12
  %22 = load i8** %retval
  ret i8* %22
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
