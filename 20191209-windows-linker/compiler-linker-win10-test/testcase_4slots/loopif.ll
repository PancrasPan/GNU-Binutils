; ModuleID = './testcase_4slots/loopif.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@bound = external constant i32
@ExArray = external global [5 x i32]
@sum = external global i32
@threshold = external constant i32

; Function Attrs: nounwind
define i32 @add(i32* %p_array, i32 %asize) #0 {
entry:
  %p_array.addr = alloca i32*, align 4
  %asize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %p_array, i32** %p_array.addr, align 4
  store i32 %asize, i32* %asize.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %2 = load i32* %asize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %4 = load i32** %p_array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %4, i32 %3
  %5 = load i32* %arrayidx, align 4
  %6 = load i32* @bound, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [5 x i32]* @ExArray, i32 0, i32 %7
  %8 = load i32* %arrayidx2, align 4
  %9 = load i32* @sum, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* @sum, align 4
  %10 = load i32* @sum, align 4
  %11 = load i32* @threshold, align 4
  %cmp3 = icmp sgt i32 %10, %11
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end7

if.else:                                          ; preds = %for.body
  %12 = load i32* %i, align 4
  %13 = load i32** %p_array.addr, align 4
  %arrayidx5 = getelementptr inbounds i32* %13, i32 %12
  %14 = load i32* %arrayidx5, align 4
  %15 = load i32* @sum, align 4
  %add6 = add nsw i32 %15, %14
  store i32 %add6, i32* @sum, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %16 = load i32* %i, align 4
  %add8 = add nsw i32 %16, 2
  store i32 %add8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then4, %for.cond
  %17 = load i32* @sum, align 4
  ret i32 %17
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
