; ModuleID = './testcase_4slots/emptyblockinO3.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@nSamples = global i32 40, align 4
@nTaps = global i32 16, align 4
@h = constant [51 x i32] [i32 -35, i32 -219, i32 -503, i32 -494, i32 -8, i32 347, i32 19, i32 -348, i32 26, i32 404, i32 -103, i32 -485, i32 220, i32 579, i32 -398, i32 -678, i32 663, i32 774, i32 -1073, i32 -859, i32 1769, i32 925, i32 -3279, i32 -968, i32 10363, i32 17367, i32 10363, i32 -968, i32 -3279, i32 925, i32 1769, i32 -859, i32 -1073, i32 774, i32 663, i32 -678, i32 -398, i32 579, i32 220, i32 -485, i32 -103, i32 404, i32 26, i32 -348, i32 19, i32 347, i32 -8, i32 -494, i32 -503, i32 -219, i32 -35], align 4
@x = global [51 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0], align 4
@y = common global [51 x i32] zeroinitializer, align 4
@w = common global [51 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @fir() #0 {
entry:
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %accum = alloca i32, align 4
  %mu = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32* @nSamples, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load i32* %n, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end9

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %m, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  %2 = load i32* %m, align 4
  %3 = load i32* @nTaps, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %4 = load i32* %m, align 4
  %arrayidx = getelementptr inbounds [51 x i32]* @h, i32 0, i32 %4
  %5 = load i32* %arrayidx, align 4
  %6 = load i32* %n, align 4
  %7 = load i32* %m, align 4
  %sub4 = sub nsw i32 %6, %7
  %arrayidx5 = getelementptr inbounds [51 x i32]* @x, i32 0, i32 %sub4
  %8 = load i32* %arrayidx5, align 4
  %mul = mul nsw i32 %5, %8
  %9 = load i32* %n, align 4
  %arrayidx6 = getelementptr inbounds [51 x i32]* @y, i32 0, i32 %9
  %10 = load i32* %arrayidx6, align 4
  %add = add nsw i32 %10, %mul
  store i32 %add, i32* %arrayidx6, align 4
  %11 = load i32* %n, align 4
  %arrayidx7 = getelementptr inbounds [51 x i32]* @y, i32 0, i32 %11
  %12 = load i32* %arrayidx7, align 4
  %13 = load i32* %accum, align 4
  %add8 = add nsw i32 %13, %12
  store i32 %add8, i32* %accum, align 4
  %14 = load i32* %m, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %m, align 4
  br label %while.cond1

while.end:                                        ; preds = %while.cond1
  %15 = load i32* %n, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %n, align 4
  br label %while.cond

while.end9:                                       ; preds = %while.cond
  %16 = load i32* @nSamples, align 4
  %sub10 = sub nsw i32 %16, 1
  store i32 %sub10, i32* %n, align 4
  store i32 2, i32* %mu, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end9
  %17 = load i32* %j, align 4
  %18 = load i32* @nTaps, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32* %mu, align 4
  %20 = load i32* %n, align 4
  %arrayidx12 = getelementptr inbounds [51 x i32]* @x, i32 0, i32 %20
  %21 = load i32* %arrayidx12, align 4
  %22 = load i32* %accum, align 4
  %sub13 = sub nsw i32 %21, %22
  %mul14 = mul nsw i32 %19, %sub13
  %23 = load i32* %n, align 4
  %24 = load i32* %j, align 4
  %sub15 = sub nsw i32 %23, %24
  %arrayidx16 = getelementptr inbounds [51 x i32]* @x, i32 0, i32 %sub15
  %25 = load i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %mul14, %25
  %26 = load i32* %j, align 4
  %arrayidx18 = getelementptr inbounds [51 x i32]* @w, i32 0, i32 %26
  %27 = load i32* %arrayidx18, align 4
  %add19 = add nsw i32 %27, %mul17
  store i32 %add19, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32* %j, align 4
  %inc20 = add nsw i32 %28, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
