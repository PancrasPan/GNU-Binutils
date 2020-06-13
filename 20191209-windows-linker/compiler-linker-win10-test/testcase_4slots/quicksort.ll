; ModuleID = './testcase_4slots/quicksort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @partition(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %part_v = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
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

while.cond:                                       ; preds = %if.end16, %if.end
  %7 = load i32* %i, align 4
  %8 = load i32* %j, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i32* %i, align 4
  %10 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %9, %10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i32* %j, align 4
  %12 = load i32** %array.addr, align 4
  %arrayidx3 = getelementptr inbounds i32* %12, i32 %11
  %13 = load i32* %arrayidx3, align 4
  %14 = load i32* %part_v, align 4
  %cmp4 = icmp sge i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %17 = load i32* %i, align 4
  %18 = load i32* %j, align 4
  %cmp6 = icmp slt i32 %17, %18
  br i1 %cmp6, label %land.rhs7, label %land.end10

land.rhs7:                                        ; preds = %for.cond5
  %19 = load i32* %i, align 4
  %20 = load i32** %array.addr, align 4
  %arrayidx8 = getelementptr inbounds i32* %20, i32 %19
  %21 = load i32* %arrayidx8, align 4
  %22 = load i32* %part_v, align 4
  %cmp9 = icmp sle i32 %21, %22
  br label %land.end10

land.end10:                                       ; preds = %land.rhs7, %for.cond5
  %23 = phi i1 [ false, %for.cond5 ], [ %cmp9, %land.rhs7 ]
  br i1 %23, label %for.body11, label %for.end13

for.body11:                                       ; preds = %land.end10
  br label %for.inc12

for.inc12:                                        ; preds = %for.body11
  %24 = load i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond5

for.end13:                                        ; preds = %land.end10
  %25 = load i32* %i, align 4
  %26 = load i32* %j, align 4
  %cmp14 = icmp eq i32 %25, %26
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end13
  br label %while.end

if.end16:                                         ; preds = %for.end13
  %27 = load i32* %j, align 4
  %28 = load i32** %array.addr, align 4
  %arrayidx17 = getelementptr inbounds i32* %28, i32 %27
  %29 = load i32* %arrayidx17, align 4
  store i32 %29, i32* %temp, align 4
  %30 = load i32* %i, align 4
  %31 = load i32** %array.addr, align 4
  %arrayidx18 = getelementptr inbounds i32* %31, i32 %30
  %32 = load i32* %arrayidx18, align 4
  %33 = load i32* %j, align 4
  %34 = load i32** %array.addr, align 4
  %arrayidx19 = getelementptr inbounds i32* %34, i32 %33
  store i32 %32, i32* %arrayidx19, align 4
  %35 = load i32* %temp, align 4
  %36 = load i32* %i, align 4
  %37 = load i32** %array.addr, align 4
  %arrayidx20 = getelementptr inbounds i32* %37, i32 %36
  store i32 %35, i32* %arrayidx20, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then15, %while.cond
  %38 = load i32* %j, align 4
  %39 = load i32* %start.addr, align 4
  %cmp21 = icmp ne i32 %38, %39
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %while.end
  %40 = load i32* %j, align 4
  %41 = load i32** %array.addr, align 4
  %arrayidx23 = getelementptr inbounds i32* %41, i32 %40
  %42 = load i32* %arrayidx23, align 4
  %43 = load i32* %start.addr, align 4
  %44 = load i32** %array.addr, align 4
  %arrayidx24 = getelementptr inbounds i32* %44, i32 %43
  store i32 %42, i32* %arrayidx24, align 4
  %45 = load i32* %part_v, align 4
  %46 = load i32* %j, align 4
  %47 = load i32** %array.addr, align 4
  %arrayidx25 = getelementptr inbounds i32* %47, i32 %46
  store i32 %45, i32* %arrayidx25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %while.end
  %48 = load i32** %array.addr, align 4
  %49 = load i32* %start.addr, align 4
  %50 = load i32* %i, align 4
  %sub = sub nsw i32 %50, 1
  %call = call i32 @partition(i32* %48, i32 %49, i32 %sub)
  %51 = load i32** %array.addr, align 4
  %52 = load i32* %j, align 4
  %add = add nsw i32 %52, 1
  %53 = load i32* %end.addr, align 4
  %call27 = call i32 @partition(i32* %51, i32 %add, i32 %53)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end26, %if.then
  %54 = load i32* %retval
  ret i32 %54
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
