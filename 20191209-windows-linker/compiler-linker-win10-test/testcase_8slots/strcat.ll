; ModuleID = './testcase_8slots/string\strcat.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strcat(i8* noalias %s1, i8* noalias %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %l = alloca i8*, align 4
  %r = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %l, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8** %l, align 4
  %incdec.ptr = getelementptr inbounds i8* %2, i32 1
  store i8* %incdec.ptr, i8** %l, align 4
  %3 = load i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body5, %while.end
  %4 = load i8** %r, align 4
  %incdec.ptr2 = getelementptr inbounds i8* %4, i32 1
  store i8* %incdec.ptr2, i8** %r, align 4
  %5 = load i8* %4, align 1
  %6 = load i8** %l, align 4
  %incdec.ptr3 = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %l, align 4
  store i8 %5, i8* %6, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %while.body5, label %while.end6

while.body5:                                      ; preds = %while.cond1
  br label %while.cond1

while.end6:                                       ; preds = %while.cond1
  %7 = load i8** %l, align 4
  store i8 0, i8* %7, align 1
  %8 = load i8** %s1.addr, align 4
  ret i8* %8
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
