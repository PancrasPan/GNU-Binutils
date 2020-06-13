; ModuleID = './testcase_8slots/string\strncmp.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @strncmp(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %l = alloca i8*, align 4
  %r = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %l, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32* %n.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8** %l, align 4
  %4 = load i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8** %r, align 4
  %6 = load i8* %5, align 1
  %conv1 = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i8** %l, align 4
  %8 = load i8* %7, align 1
  %tobool3 = icmp ne i8 %8, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %9 = load i8** %l, align 4
  %10 = load i8* %9, align 1
  %conv4 = zext i8 %10 to i32
  %11 = load i8** %r, align 4
  %12 = load i8* %11, align 1
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp sgt i32 %conv4, %conv5
  %conv7 = zext i1 %cmp6 to i32
  %13 = load i8** %r, align 4
  %14 = load i8* %13, align 1
  %conv8 = zext i8 %14 to i32
  %15 = load i8** %l, align 4
  %16 = load i8* %15, align 1
  %conv9 = zext i8 %16 to i32
  %cmp10 = icmp sgt i32 %conv8, %conv9
  %conv11 = zext i1 %cmp10 to i32
  %sub = sub nsw i32 %conv7, %conv11
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %17 = load i8** %l, align 4
  %incdec.ptr = getelementptr inbounds i8* %17, i32 1
  store i8* %incdec.ptr, i8** %l, align 4
  %18 = load i8** %r, align 4
  %incdec.ptr12 = getelementptr inbounds i8* %18, i32 1
  store i8* %incdec.ptr12, i8** %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %19 = load i32* %retval
  ret i32 %19
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
