; ModuleID = './testcase_8slots/string\strncat.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strncat(i8* noalias %s1, i8* noalias %s2, i32 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %p = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8** %s1.addr, align 4
  %incdec.ptr = getelementptr inbounds i8* %1, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 4
  %2 = load i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body4, %while.end
  %3 = load i32* %n.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %4 = load i8** %s2.addr, align 4
  %5 = load i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %6 = phi i1 [ false, %while.cond1 ], [ %tobool3, %land.rhs ]
  br i1 %6, label %while.body4, label %while.end7

while.body4:                                      ; preds = %land.end
  %7 = load i8** %s2.addr, align 4
  %incdec.ptr5 = getelementptr inbounds i8* %7, i32 1
  store i8* %incdec.ptr5, i8** %s2.addr, align 4
  %8 = load i8* %7, align 1
  %9 = load i8** %s1.addr, align 4
  %incdec.ptr6 = getelementptr inbounds i8* %9, i32 1
  store i8* %incdec.ptr6, i8** %s1.addr, align 4
  store i8 %8, i8* %9, align 1
  br label %while.cond1

while.end7:                                       ; preds = %land.end
  %10 = load i8** %s1.addr, align 4
  store i8 0, i8* %10, align 1
  %11 = load i8** %p, align 4
  ret i8* %11
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
