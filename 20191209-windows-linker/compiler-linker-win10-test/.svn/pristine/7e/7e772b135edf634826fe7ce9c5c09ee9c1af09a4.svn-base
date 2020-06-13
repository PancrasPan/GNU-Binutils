; ModuleID = './testcase_8slots/string\strcmp.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @strcmp(i8* %s1, i8* %s2) #0 {
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
  %3 = load i8* %2, align 1
  %conv = zext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8** %l, align 4
  %5 = load i8* %4, align 1
  %conv1 = zext i8 %5 to i32
  %6 = load i8** %r, align 4
  %7 = load i8* %6, align 1
  %conv2 = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv1, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8** %l, align 4
  %incdec.ptr = getelementptr inbounds i8* %9, i32 1
  store i8* %incdec.ptr, i8** %l, align 4
  %10 = load i8** %r, align 4
  %incdec.ptr4 = getelementptr inbounds i8* %10, i32 1
  store i8* %incdec.ptr4, i8** %r, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i8** %l, align 4
  %12 = load i8* %11, align 1
  %conv5 = zext i8 %12 to i32
  %13 = load i8** %r, align 4
  %14 = load i8* %13, align 1
  %conv6 = zext i8 %14 to i32
  %cmp7 = icmp sgt i32 %conv5, %conv6
  %conv8 = zext i1 %cmp7 to i32
  %15 = load i8** %r, align 4
  %16 = load i8* %15, align 1
  %conv9 = zext i8 %16 to i32
  %17 = load i8** %l, align 4
  %18 = load i8* %17, align 1
  %conv10 = zext i8 %18 to i32
  %cmp11 = icmp sgt i32 %conv9, %conv10
  %conv12 = zext i1 %cmp11 to i32
  %sub = sub nsw i32 %conv8, %conv12
  ret i32 %sub
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
