; ModuleID = './testcase_8slots/string\strrchr.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strrchr(i8* %s, i32 %c) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %c.addr = alloca i32, align 4
  %p = alloca i8*, align 4
  %l = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i8** %s.addr, align 4
  store i8* %0, i8** %p, align 4
  store i8* null, i8** %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8** %p, align 4
  %2 = load i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  %4 = load i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32* %c.addr, align 4
  %conv1 = trunc i32 %5 to i8
  %conv2 = zext i8 %conv1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i8** %p, align 4
  %add.ptr = getelementptr inbounds i8* %6, i32 -1
  store i8* %add.ptr, i8** %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8** %l, align 4
  ret i8* %7
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
