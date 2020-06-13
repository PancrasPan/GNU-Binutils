; ModuleID = './testcase_8slots/1/parallelandnestedloop.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@sum = external global i32
@ex_array = external global [256 x i32]
@bound = external constant i32

; Function Attrs: nounwind
define i32 @add(i32* %p_array, i32 %p_size) #0 {
entry:
  %p_array.addr = alloca i32*, align 4
  %p_size.addr = alloca i32, align 4
  %half = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %p_array, i32** %p_array.addr, align 4
  store i32 %p_size, i32* %p_size.addr, align 4
  %0 = load i32* %p_size.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, i32* %half, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp slt i32 %1, 255
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %2 = load i32* %half, align 4
  store i32 %2, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32* %j, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32* %j, align 4
  %5 = load i32** %p_array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %5, i32 %4
  %6 = load i32* %arrayidx, align 4
  %7 = load i32* @sum, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* @sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32* %j, align 4
  %sub = sub nsw i32 %8, 2
  store i32 %sub, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load i32* %half, align 4
  %cmp4 = icmp slt i32 %9, 255
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32* %half, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %half, align 4
  %arrayidx5 = getelementptr inbounds [256 x i32]* @ex_array, i32 0, i32 %10
  %11 = load i32* %arrayidx5, align 4
  %12 = load i32* @sum, align 4
  %sub6 = sub nsw i32 %12, %11
  store i32 %sub6, i32* @sum, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc7

for.inc7:                                         ; preds = %while.end
  %13 = load i32* %i, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  %15 = load i32* @bound, align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32* %i, align 4
  %17 = load i32* @sum, align 4
  %add12 = add nsw i32 %17, %16
  store i32 %add12, i32* @sum, align 4
  %18 = load i32* @sum, align 4
  ret i32 %18
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
