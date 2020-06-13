; ModuleID = './testcase_4slots/compound_condition4.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  store i32 4, i32* %j, align 4
  store i32 2, i32* %k, align 4
  store i32 3, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %j, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32* %k, align 4
  %3 = load i32* %j, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %while.cond
  %4 = load i32* %i, align 4
  %5 = load i32* %k, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i32* %k, align 4
  %7 = load i32* %l, align 4
  %cmp3 = icmp slt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp3, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true ], [ %8, %land.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %10 = load i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load i32* %k, align 4
  %inc4 = add nsw i32 %11, 1
  store i32 %inc4, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %12 = load i32* %j, align 4
  %13 = load i32* %i, align 4
  %sub = sub nsw i32 %12, %13
  ret i32 %sub
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
