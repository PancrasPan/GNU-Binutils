; ModuleID = './testcase_4slots/iltj_while1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = bitcast [3 x i32]* %array to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 12, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  store i32 4, i32* %j, align 4
  store i32 2, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end8, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %while.body, label %while.end9

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  %2 = load i32* %i, align 4
  %3 = load i32* %k, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %4 = load i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %5 = load i32* %k, align 4
  %6 = load i32* %j, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %7 = load i32* %k, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %k, align 4
  br label %while.cond4

while.end8:                                       ; preds = %while.cond4
  %8 = load i32* %k, align 4
  %arrayidx = getelementptr inbounds [3 x i32]* %array, i32 0, i32 1
  store i32 %8, i32* %arrayidx, align 4
  br label %while.cond

while.end9:                                       ; preds = %while.cond
  %9 = load i32* %j, align 4
  %10 = load i32* %i, align 4
  %sub = sub nsw i32 %9, %10
  ret i32 %sub
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
