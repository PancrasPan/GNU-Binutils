; ModuleID = './testcase_4slots/bubblemain.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@SortArray = global [5 x i32] [i32 5, i32 1, i32 3, i32 4, i32 2], align 4
@size = global i32 5, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Inorder = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @bubblesort()
  store i32 1, i32* %Inorder, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [5 x i32]* @SortArray, i32 0, i32 %1
  %2 = load i32* %arrayidx, align 4
  %3 = load i32* %i, align 4
  %sub = sub nsw i32 %3, 1
  %arrayidx1 = getelementptr inbounds [5 x i32]* @SortArray, i32 0, i32 %sub
  %4 = load i32* %arrayidx1, align 4
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %Inorder, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32* %Inorder, align 4
  ret i32 %6
}

declare i32 @bubblesort() #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
