; ModuleID = './testcase_4slots/bubblesort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@size = external global i32
@Array = external global [0 x i32]

; Function Attrs: nounwind
define i32 @bubblesort() #0 {
entry:
  %Temp = alloca i32, align 4
  %hasOutOrder = alloca i32, align 4
  %Sortpos = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32* @size, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %Sortpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load i32* %Sortpos, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %hasOutOrder, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32* %i, align 4
  %3 = load i32* %Sortpos, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %4
  %5 = load i32* %arrayidx, align 4
  %6 = load i32* %i, align 4
  %add = add nsw i32 %6, 1
  %arrayidx4 = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %add
  %7 = load i32* %arrayidx4, align 4
  %cmp5 = icmp sgt i32 %5, %7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i32 1, i32* %hasOutOrder, align 4
  %8 = load i32* %i, align 4
  %arrayidx6 = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %8
  %9 = load i32* %arrayidx6, align 4
  store i32 %9, i32* %Temp, align 4
  %10 = load i32* %i, align 4
  %add7 = add nsw i32 %10, 1
  %arrayidx8 = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %add7
  %11 = load i32* %arrayidx8, align 4
  %12 = load i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %12
  store i32 %11, i32* %arrayidx9, align 4
  %13 = load i32* %Temp, align 4
  %14 = load i32* %i, align 4
  %add10 = add nsw i32 %14, 1
  %arrayidx11 = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %add10
  store i32 %13, i32* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %16 = load i32* %hasOutOrder, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.end
  br label %for.end15

if.end13:                                         ; preds = %for.end
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %17 = load i32* %Sortpos, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %Sortpos, align 4
  br label %for.cond

for.end15:                                        ; preds = %if.then12, %for.cond
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
