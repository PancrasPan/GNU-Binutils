; ModuleID = './testcase_8slots/string\memcpy.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @memcpy(i8* noalias %s1, i8* noalias %s2, i32 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %d = alloca i8*, align 4
  %s = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %d, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %s, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32* %n.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  %4 = load i8* %3, align 1
  %5 = load i8** %d, align 4
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %d, align 4
  store i8 %4, i8* %5, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8** %s1.addr, align 4
  ret i8* %6
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
