; ModuleID = './testcase_4slots/loopbranch.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@Array1 = global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@Array2 = global [7 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64], align 4
@arraySize = global i32 7, align 4
@bound = constant i32 10, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %sum, align 4
  store i32 1, i32* %i, align 4
  %0 = load i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %2 = load i32* @arraySize, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [7 x i32]* @Array1, i32 0, i32 %3
  %4 = load i32* %arrayidx, align 4
  %5 = load i32* %i, align 4
  %arrayidx1 = getelementptr inbounds [7 x i32]* @Array2, i32 0, i32 %5
  %6 = load i32* %arrayidx1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32* %i, align 4
  %arrayidx3 = getelementptr inbounds [7 x i32]* @Array2, i32 0, i32 %7
  %8 = load i32* %arrayidx3, align 4
  %9 = load i32* %sum, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %sum, align 4
  %10 = load i32* %sum, align 4
  %cmp4 = icmp sgt i32 %10, 10
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end8

if.else:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %arrayidx6 = getelementptr inbounds [7 x i32]* @Array1, i32 0, i32 %11
  %12 = load i32* %arrayidx6, align 4
  %13 = load i32* %sum, align 4
  %add7 = add nsw i32 %13, %12
  store i32 %add7, i32* %sum, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %14 = load i32* %i, align 4
  %add9 = add nsw i32 %14, 2
  store i32 %add9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then5, %for.cond
  %15 = load i32* %sum, align 4
  %16 = load i32* %i, align 4
  %add10 = add nsw i32 %15, %16
  ret i32 %add10
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
