; ModuleID = './testcase_4slots/mergesortR.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@t_array = internal global [10 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @merge_sortR(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32* %start.addr, align 4
  %1 = load i32* %end.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* %start.addr, align 4
  %3 = load i32* %end.addr, align 4
  %add = add nsw i32 %2, %3
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %4 = load i32** %array.addr, align 4
  %5 = load i32* %start.addr, align 4
  %6 = load i32* %mid, align 4
  %call = call i32 @merge_sortR(i32* %4, i32 %5, i32 %6)
  %7 = load i32** %array.addr, align 4
  %8 = load i32* %mid, align 4
  %add1 = add nsw i32 %8, 1
  %9 = load i32* %end.addr, align 4
  %call2 = call i32 @merge_sortR(i32* %7, i32 %add1, i32 %9)
  %10 = load i32* %start.addr, align 4
  store i32 %10, i32* %i, align 4
  %11 = load i32* %mid, align 4
  %add3 = add nsw i32 %11, 1
  store i32 %add3, i32* %j, align 4
  %12 = load i32* %start.addr, align 4
  store i32 %12, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.end
  %13 = load i32* %i, align 4
  %14 = load i32* %mid, align 4
  %cmp4 = icmp sle i32 %13, %14
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i32* %j, align 4
  %16 = load i32* %end.addr, align 4
  %cmp5 = icmp sle i32 %15, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load i32* %i, align 4
  %19 = load i32** %array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %19, i32 %18
  %20 = load i32* %arrayidx, align 4
  %21 = load i32* %j, align 4
  %22 = load i32** %array.addr, align 4
  %arrayidx6 = getelementptr inbounds i32* %22, i32 %21
  %23 = load i32* %arrayidx6, align 4
  %cmp7 = icmp sgt i32 %20, %23
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %24 = load i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  %25 = load i32** %array.addr, align 4
  %arrayidx9 = getelementptr inbounds i32* %25, i32 %24
  %26 = load i32* %arrayidx9, align 4
  %27 = load i32* %k, align 4
  %inc10 = add nsw i32 %27, 1
  store i32 %inc10, i32* %k, align 4
  %arrayidx11 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %27
  store i32 %26, i32* %arrayidx11, align 4
  br label %if.end16

if.else:                                          ; preds = %for.body
  %28 = load i32* %i, align 4
  %inc12 = add nsw i32 %28, 1
  store i32 %inc12, i32* %i, align 4
  %29 = load i32** %array.addr, align 4
  %arrayidx13 = getelementptr inbounds i32* %29, i32 %28
  %30 = load i32* %arrayidx13, align 4
  %31 = load i32* %k, align 4
  %inc14 = add nsw i32 %31, 1
  store i32 %inc14, i32* %k, align 4
  %arrayidx15 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %31
  store i32 %30, i32* %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.end
  %32 = load i32* %i, align 4
  %33 = load i32* %mid, align 4
  %cmp18 = icmp sle i32 %32, %33
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %34 = load i32* %i, align 4
  %35 = load i32** %array.addr, align 4
  %arrayidx20 = getelementptr inbounds i32* %35, i32 %34
  %36 = load i32* %arrayidx20, align 4
  %37 = load i32* %k, align 4
  %arrayidx21 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %37
  store i32 %36, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %38 = load i32* %i, align 4
  %inc22 = add nsw i32 %38, 1
  store i32 %inc22, i32* %i, align 4
  %39 = load i32* %k, align 4
  %inc23 = add nsw i32 %39, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond17

for.end24:                                        ; preds = %for.cond17
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc30, %for.end24
  %40 = load i32* %j, align 4
  %41 = load i32* %end.addr, align 4
  %cmp26 = icmp sle i32 %40, %41
  br i1 %cmp26, label %for.body27, label %for.end33

for.body27:                                       ; preds = %for.cond25
  %42 = load i32* %j, align 4
  %43 = load i32** %array.addr, align 4
  %arrayidx28 = getelementptr inbounds i32* %43, i32 %42
  %44 = load i32* %arrayidx28, align 4
  %45 = load i32* %k, align 4
  %arrayidx29 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %45
  store i32 %44, i32* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body27
  %46 = load i32* %j, align 4
  %inc31 = add nsw i32 %46, 1
  store i32 %inc31, i32* %j, align 4
  %47 = load i32* %k, align 4
  %inc32 = add nsw i32 %47, 1
  store i32 %inc32, i32* %k, align 4
  br label %for.cond25

for.end33:                                        ; preds = %for.cond25
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc39, %for.end33
  %48 = load i32* %start.addr, align 4
  %49 = load i32* %end.addr, align 4
  %cmp35 = icmp sle i32 %48, %49
  br i1 %cmp35, label %for.body36, label %for.end41

for.body36:                                       ; preds = %for.cond34
  %50 = load i32* %start.addr, align 4
  %arrayidx37 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %50
  %51 = load i32* %arrayidx37, align 4
  %52 = load i32* %start.addr, align 4
  %53 = load i32** %array.addr, align 4
  %arrayidx38 = getelementptr inbounds i32* %53, i32 %52
  store i32 %51, i32* %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body36
  %54 = load i32* %start.addr, align 4
  %inc40 = add nsw i32 %54, 1
  store i32 %inc40, i32* %start.addr, align 4
  br label %for.cond34

for.end41:                                        ; preds = %for.cond34
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end41, %if.then
  %55 = load i32* %retval
  ret i32 %55
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
