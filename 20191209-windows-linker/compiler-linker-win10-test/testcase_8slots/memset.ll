; ModuleID = './testcase_8slots/string\memset.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @memset(i8* %s, i32 %c, i32 %n) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %c.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s.addr, align 4
  store i8* %0, i8** %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32* %n.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  store i8 %conv, i8* %3, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i8** %s.addr, align 4
  ret i8* %4
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
