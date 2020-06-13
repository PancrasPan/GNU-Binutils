; ModuleID = './testcase_4slots/comcond5.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@array = external global [0 x i32]

; Function Attrs: nounwind
define i32 @part(i32 %beg, i32 %end) #0 {
entry:
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32* %beg.addr, align 4
  store i32 %0, i32* %i, align 4
  %1 = load i32* %end.addr, align 4
  store i32 %1, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %j, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32* %j, align 4
  %arrayidx = getelementptr inbounds [0 x i32]* @array, i32 0, i32 %4
  %5 = load i32* %arrayidx, align 4
  %6 = load i32* %beg.addr, align 4
  %arrayidx1 = getelementptr inbounds [0 x i32]* @array, i32 0, i32 %6
  %7 = load i32* %arrayidx1, align 4
  %cmp2 = icmp sgt i32 %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32* %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32* %j, align 4
  %11 = load i32* %i, align 4
  %sub = sub nsw i32 %10, %11
  ret i32 %sub
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
