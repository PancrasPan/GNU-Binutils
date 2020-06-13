; ModuleID = './testcase_4slots/notcondition.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@bound = external constant i32
@a = external global [256 x i32]
@sum = external global i32

; Function Attrs: nounwind
define i32 @add() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* @bound, align 4
  %cmp = icmp sgt i32 %0, %1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [256 x i32]* @a, i32 0, i32 %2
  %3 = load i32* %arrayidx, align 4
  %4 = load i32* @sum, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, i32* @sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32* %i, align 4
  %add1 = add nsw i32 %5, 2
  store i32 %add1, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32* @sum, align 4
  ret i32 %6
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
