; ModuleID = './testcase_4slots/doublenestedloop.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@a = external global [256 x [256 x i32]]
@sum = external global i32

; Function Attrs: nounwind
define i32 @add() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  store i32 %1, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 256
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32* %j, align 4
  %4 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [256 x [256 x i32]]* @a, i32 0, i32 %4
  %arrayidx4 = getelementptr inbounds [256 x i32]* %arrayidx, i32 0, i32 %3
  %5 = load i32* %arrayidx4, align 4
  %6 = load i32* @sum, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* @sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %8 = load i32* %i, align 4
  %add6 = add nsw i32 %8, 2
  store i32 %add6, i32* %i, align 4
  br label %for.cond

for.end7:                                         ; preds = %for.cond
  %9 = load i32* @sum, align 4
  ret i32 %9
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
