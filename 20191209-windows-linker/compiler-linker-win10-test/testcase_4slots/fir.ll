; ModuleID = './testcase_4slots/fir.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.x = internal global [16 x i32] zeroinitializer, align 4
@main.h = internal global [16 x i32] zeroinitializer, align 4
@main.x0 = internal global i32 100, align 4

; Function Attrs: nounwind
define void @pin_down(i32* %px, i32* %ph, i32 %y) #0 {
entry:
  %px.addr = alloca i32*, align 4
  %ph.addr = alloca i32*, align 4
  %y.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %px, i32** %px.addr, align 4
  store i32* %ph, i32** %ph.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp sle i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %2 = load i32** %px.addr, align 4
  %incdec.ptr = getelementptr inbounds i32* %2, i32 1
  store i32* %incdec.ptr, i32** %px.addr, align 4
  store i32 %1, i32* %2, align 4
  %3 = load i32* %i, align 4
  %4 = load i32** %ph.addr, align 4
  %incdec.ptr1 = getelementptr inbounds i32* %4, i32 1
  store i32* %incdec.ptr1, i32** %ph.addr, align 4
  store i32 %3, i32* %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %px = alloca i32*, align 4
  %px2 = alloca i32*, align 4
  %ph = alloca i32*, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32* %y, align 4
  call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), i32 %0)
  store i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 15), i32** %ph, align 4
  store i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 15), i32** %px, align 4
  store i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 14), i32** %px2, align 4
  store i32 0, i32* %y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp slt i32 %1, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32** %ph, align 4
  %incdec.ptr = getelementptr inbounds i32* %2, i32 -1
  store i32* %incdec.ptr, i32** %ph, align 4
  %3 = load i32* %2, align 4
  %4 = load i32** %px, align 4
  %5 = load i32* %4, align 4
  %mul = mul nsw i32 %3, %5
  %6 = load i32* %y, align 4
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %y, align 4
  %7 = load i32** %px2, align 4
  %incdec.ptr1 = getelementptr inbounds i32* %7, i32 -1
  store i32* %incdec.ptr1, i32** %px2, align 4
  %8 = load i32* %7, align 4
  %9 = load i32** %px, align 4
  %incdec.ptr2 = getelementptr inbounds i32* %9, i32 -1
  store i32* %incdec.ptr2, i32** %px, align 4
  store i32 %8, i32* %9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32** %ph, align 4
  %12 = load i32* %11, align 4
  %13 = load i32** %px, align 4
  %14 = load i32* %13, align 4
  %mul3 = mul nsw i32 %12, %14
  %15 = load i32* %y, align 4
  %add4 = add nsw i32 %15, %mul3
  store i32 %add4, i32* %y, align 4
  %16 = load i32* @main.x0, align 4
  %17 = load i32** %px, align 4
  store i32 %16, i32* %17, align 4
  %18 = load i32* %y, align 4
  call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), i32 %18)
  %19 = load i32* %y, align 4
  ret i32 %19
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
