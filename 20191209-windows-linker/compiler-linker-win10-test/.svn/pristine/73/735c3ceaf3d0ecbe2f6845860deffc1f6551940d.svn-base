; ModuleID = './testcase_4slots/qsort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @qsort(i32* %array, i32 %beg, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pivot = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32* %end.addr, align 4
  %1 = load i32* %beg.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32* %beg.addr, align 4
  store i32 %2, i32* %i, align 4
  %3 = load i32* %end.addr, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %j, align 4
  %4 = load i32* %beg.addr, align 4
  %5 = load i32** %array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %5, i32 %4
  %6 = load i32* %arrayidx, align 4
  store i32 %6, i32* %pivot, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end
  %7 = load i32* %i, align 4
  %8 = load i32* %j, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %while.body, label %while.end21

while.body:                                       ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body5, %while.body
  %9 = load i32* %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %j, align 4
  %10 = load i32** %array.addr, align 4
  %arrayidx3 = getelementptr inbounds i32* %10, i32 %dec
  %11 = load i32* %arrayidx3, align 4
  %12 = load i32* %pivot, align 4
  %cmp4 = icmp sgt i32 %11, %12
  br i1 %cmp4, label %while.body5, label %while.end

while.body5:                                      ; preds = %while.cond2
  br label %while.cond2

while.end:                                        ; preds = %while.cond2
  br label %while.cond6

while.cond6:                                      ; preds = %if.end12, %while.end
  %13 = load i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  %14 = load i32* %j, align 4
  %cmp7 = icmp slt i32 %inc, %14
  br i1 %cmp7, label %while.body8, label %while.end13

while.body8:                                      ; preds = %while.cond6
  %15 = load i32* %i, align 4
  %16 = load i32** %array.addr, align 4
  %arrayidx9 = getelementptr inbounds i32* %16, i32 %15
  %17 = load i32* %arrayidx9, align 4
  %18 = load i32* %pivot, align 4
  %cmp10 = icmp sge i32 %17, %18
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body8
  br label %while.end13

if.end12:                                         ; preds = %while.body8
  br label %while.cond6

while.end13:                                      ; preds = %if.then11, %while.cond6
  %19 = load i32* %i, align 4
  %20 = load i32* %j, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %while.end13
  %21 = load i32* %i, align 4
  %22 = load i32** %array.addr, align 4
  %arrayidx16 = getelementptr inbounds i32* %22, i32 %21
  %23 = load i32* %arrayidx16, align 4
  store i32 %23, i32* %temp, align 4
  %24 = load i32* %j, align 4
  %25 = load i32** %array.addr, align 4
  %arrayidx17 = getelementptr inbounds i32* %25, i32 %24
  %26 = load i32* %arrayidx17, align 4
  %27 = load i32* %i, align 4
  %28 = load i32** %array.addr, align 4
  %arrayidx18 = getelementptr inbounds i32* %28, i32 %27
  store i32 %26, i32* %arrayidx18, align 4
  %29 = load i32* %temp, align 4
  %30 = load i32* %j, align 4
  %31 = load i32** %array.addr, align 4
  %arrayidx19 = getelementptr inbounds i32* %31, i32 %30
  store i32 %29, i32* %arrayidx19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %while.end13
  br label %while.cond

while.end21:                                      ; preds = %while.cond
  %32 = load i32* %j, align 4
  %33 = load i32** %array.addr, align 4
  %arrayidx22 = getelementptr inbounds i32* %33, i32 %32
  %34 = load i32* %arrayidx22, align 4
  %35 = load i32* %beg.addr, align 4
  %36 = load i32** %array.addr, align 4
  %arrayidx23 = getelementptr inbounds i32* %36, i32 %35
  store i32 %34, i32* %arrayidx23, align 4
  %37 = load i32* %pivot, align 4
  %38 = load i32* %j, align 4
  %39 = load i32** %array.addr, align 4
  %arrayidx24 = getelementptr inbounds i32* %39, i32 %38
  store i32 %37, i32* %arrayidx24, align 4
  %40 = load i32** %array.addr, align 4
  %41 = load i32* %beg.addr, align 4
  %42 = load i32* %j, align 4
  %sub25 = sub nsw i32 %42, 1
  %call = call i32 @qsort(i32* %40, i32 %41, i32 %sub25)
  %43 = load i32** %array.addr, align 4
  %44 = load i32* %j, align 4
  %add26 = add nsw i32 %44, 1
  %45 = load i32* %end.addr, align 4
  %call27 = call i32 @qsort(i32* %43, i32 %add26, i32 %45)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end21, %if.then
  %46 = load i32* %retval
  ret i32 %46
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
