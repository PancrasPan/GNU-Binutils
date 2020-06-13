; ModuleID = './testcase_4slots/global_array.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@g_Array = global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %sub = sub nsw i32 5, %1
  %2 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [5 x i32]* @g_Array, i32 0, i32 %2
  store i32 %sub, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i32* %i1, align 4
  %cmp3 = icmp slt i32 %4, 5
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %5 = load i32* %i1, align 4
  %arrayidx5 = getelementptr inbounds [5 x i32]* @g_Array, i32 0, i32 %5
  %6 = load i32* %arrayidx5, align 4
  %inc6 = add nsw i32 %6, 1
  store i32 %inc6, i32* %arrayidx5, align 4
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i32* %i1, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i1, align 4
  br label %for.cond2

for.end9:                                         ; preds = %for.cond2
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
