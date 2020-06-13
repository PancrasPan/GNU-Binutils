; ModuleID = './testcase_4slots/sqlist.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.SqList = type { [10 x i32], i32 }

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %L = alloca %struct.SqList, align 4
  %p = alloca %struct.SqList*, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store %struct.SqList* %L, %struct.SqList** %p, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %2 = load i32* %i, align 4
  %key = getelementptr inbounds %struct.SqList* %L, i32 0, i32 0
  %arrayidx = getelementptr inbounds [10 x i32]* %key, i32 0, i32 %2
  store i32 %1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %length = getelementptr inbounds %struct.SqList* %L, i32 0, i32 1
  store i32 10, i32* %length, align 4
  %4 = load %struct.SqList** %p, align 4
  %length1 = getelementptr inbounds %struct.SqList* %4, i32 0, i32 1
  %5 = load i32* %length1, align 4
  ret i32 %5
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
