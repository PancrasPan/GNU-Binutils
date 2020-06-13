; ModuleID = './testcase_4slots/loopCountUnderflow.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@a = global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@i = external global i32

; Function Attrs: nounwind
define i32 @add() #0 {
entry:
  %sum = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32* @i, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @i, align 4
  %arrayidx = getelementptr inbounds [5 x i32]* @a, i32 0, i32 %0
  %1 = load i32* %arrayidx, align 4
  %2 = load i32* %sum, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %sum, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32* @i, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32* %sum, align 4
  ret i32 %4
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
