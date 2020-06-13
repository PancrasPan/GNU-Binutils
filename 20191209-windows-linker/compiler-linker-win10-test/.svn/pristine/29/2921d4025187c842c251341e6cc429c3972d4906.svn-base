; ModuleID = './testcase_4slots/quicksort1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @partition_1(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %part_v = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32* %start.addr, align 4
  %1 = load i32* %end.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* %start.addr, align 4
  %3 = load i32** %array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %3, i32 %2
  %4 = load i32* %arrayidx, align 4
  store i32 %4, i32* %part_v, align 4
  %5 = load i32* %start.addr, align 4
  store i32 %5, i32* %i, align 4
  %6 = load i32* %end.addr, align 4
  store i32 %6, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end16, %if.end
  %7 = load i32* %i, align 4
  %8 = load i32* %j, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %while.body, label %while.end19

while.body:                                       ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body6, %while.body
  %9 = load i32* %i, align 4
  %10 = load i32* %j, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond2
  %11 = load i32* %j, align 4
  %12 = load i32** %array.addr, align 4
  %arrayidx4 = getelementptr inbounds i32* %12, i32 %11
  %13 = load i32* %arrayidx4, align 4
  %14 = load i32* %part_v, align 4
  %cmp5 = icmp sge i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond2
  %15 = phi i1 [ false, %while.cond2 ], [ %cmp5, %land.rhs ]
  br i1 %15, label %while.body6, label %while.end

while.body6:                                      ; preds = %land.end
  %16 = load i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond2

while.end:                                        ; preds = %land.end
  %17 = load i32* %j, align 4
  %18 = load i32** %array.addr, align 4
  %arrayidx7 = getelementptr inbounds i32* %18, i32 %17
  %19 = load i32* %arrayidx7, align 4
  %20 = load i32* %i, align 4
  %21 = load i32** %array.addr, align 4
  %arrayidx8 = getelementptr inbounds i32* %21, i32 %20
  store i32 %19, i32* %arrayidx8, align 4
  br label %while.cond9

while.cond9:                                      ; preds = %while.body15, %while.end
  %22 = load i32* %i, align 4
  %23 = load i32* %j, align 4
  %cmp10 = icmp slt i32 %22, %23
  br i1 %cmp10, label %land.rhs11, label %land.end14

land.rhs11:                                       ; preds = %while.cond9
  %24 = load i32* %i, align 4
  %25 = load i32** %array.addr, align 4
  %arrayidx12 = getelementptr inbounds i32* %25, i32 %24
  %26 = load i32* %arrayidx12, align 4
  %27 = load i32* %part_v, align 4
  %cmp13 = icmp sle i32 %26, %27
  br label %land.end14

land.end14:                                       ; preds = %land.rhs11, %while.cond9
  %28 = phi i1 [ false, %while.cond9 ], [ %cmp13, %land.rhs11 ]
  br i1 %28, label %while.body15, label %while.end16

while.body15:                                     ; preds = %land.end14
  %29 = load i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond9

while.end16:                                      ; preds = %land.end14
  %30 = load i32* %i, align 4
  %31 = load i32** %array.addr, align 4
  %arrayidx17 = getelementptr inbounds i32* %31, i32 %30
  %32 = load i32* %arrayidx17, align 4
  %33 = load i32* %j, align 4
  %34 = load i32** %array.addr, align 4
  %arrayidx18 = getelementptr inbounds i32* %34, i32 %33
  store i32 %32, i32* %arrayidx18, align 4
  br label %while.cond

while.end19:                                      ; preds = %while.cond
  %35 = load i32* %part_v, align 4
  %36 = load i32* %j, align 4
  %37 = load i32** %array.addr, align 4
  %arrayidx20 = getelementptr inbounds i32* %37, i32 %36
  store i32 %35, i32* %arrayidx20, align 4
  %38 = load i32** %array.addr, align 4
  %39 = load i32* %start.addr, align 4
  %40 = load i32* %i, align 4
  %sub = sub nsw i32 %40, 1
  %call = call i32 @partition_1(i32* %38, i32 %39, i32 %sub)
  %41 = load i32** %array.addr, align 4
  %42 = load i32* %j, align 4
  %add = add nsw i32 %42, 1
  %43 = load i32* %end.addr, align 4
  %call21 = call i32 @partition_1(i32* %41, i32 %add, i32 %43)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end19, %if.then
  %44 = load i32* %retval
  ret i32 %44
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
