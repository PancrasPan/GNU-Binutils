; ModuleID = './testcase_8slots/1/heapsort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @heapsort(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %swaptemp = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32** %array.addr, align 4
  %1 = load i32* %start.addr, align 4
  %2 = load i32* %end.addr, align 4
  %call = call i32 @buildheap(i32* %0, i32 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32* %end.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32* %i, align 4
  %5 = load i32* %start.addr, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32* %i, align 4
  %7 = load i32** %array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %7, i32 %6
  %8 = load i32* %arrayidx, align 4
  store i32 %8, i32* %swaptemp, align 4
  %9 = load i32* %start.addr, align 4
  %10 = load i32** %array.addr, align 4
  %arrayidx1 = getelementptr inbounds i32* %10, i32 %9
  %11 = load i32* %arrayidx1, align 4
  %12 = load i32* %i, align 4
  %13 = load i32** %array.addr, align 4
  %arrayidx2 = getelementptr inbounds i32* %13, i32 %12
  store i32 %11, i32* %arrayidx2, align 4
  %14 = load i32* %swaptemp, align 4
  %15 = load i32* %start.addr, align 4
  %16 = load i32** %array.addr, align 4
  %arrayidx3 = getelementptr inbounds i32* %16, i32 %15
  store i32 %14, i32* %arrayidx3, align 4
  %17 = load i32** %array.addr, align 4
  %18 = load i32* %start.addr, align 4
  %19 = load i32* %start.addr, align 4
  %20 = load i32* %i, align 4
  %sub = sub nsw i32 %20, 1
  %call4 = call i32 @adjustdown(i32* %17, i32 %18, i32 %19, i32 %sub)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
define internal i32 @buildheap(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %lastprnt = alloca i32, align 4
  %i = alloca i32, align 4
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
  %2 = load i32* %end.addr, align 4
  %3 = load i32* %start.addr, align 4
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %lastprnt, align 4
  %4 = load i32* %lastprnt, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32* %i, align 4
  %cmp1 = icmp sge i32 %5, 1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32** %array.addr, align 4
  %7 = load i32* %i, align 4
  %sub2 = sub nsw i32 %7, 1
  %8 = load i32* %start.addr, align 4
  %add3 = add nsw i32 %sub2, %8
  %9 = load i32* %start.addr, align 4
  %10 = load i32* %end.addr, align 4
  %call = call i32 @adjustdown(i32* %6, i32 %add3, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
define internal i32 @adjustdown(i32* %array, i32 %pos, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %pos.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %ordi = alloca i32, align 4
  %ordend = alloca i32, align 4
  %location = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32* %start.addr, align 4
  %1 = load i32* %end.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32* %pos.addr, align 4
  %3 = load i32* %start.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32* %pos.addr, align 4
  %5 = load i32* %end.addr, align 4
  %cmp3 = icmp sgt i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load i32* %pos.addr, align 4
  %7 = load i32* %start.addr, align 4
  %sub = sub nsw i32 %6, %7
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %ordi, align 4
  %8 = load i32* %end.addr, align 4
  %9 = load i32* %start.addr, align 4
  %sub4 = sub nsw i32 %8, %9
  %add5 = add nsw i32 %sub4, 1
  store i32 %add5, i32* %ordend, align 4
  %10 = load i32* %ordi, align 4
  store i32 %10, i32* %location, align 4
  %11 = load i32* %pos.addr, align 4
  %12 = load i32** %array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %12, i32 %11
  %13 = load i32* %arrayidx, align 4
  store i32 %13, i32* %temp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %if.end
  %14 = load i32* %ordi, align 4
  %mul = mul nsw i32 %14, 2
  store i32 %mul, i32* %ordi, align 4
  %15 = load i32* %ordend, align 4
  %cmp6 = icmp sle i32 %mul, %15
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32* %ordi, align 4
  %add7 = add nsw i32 %16, 1
  %17 = load i32* %ordend, align 4
  %cmp8 = icmp sle i32 %add7, %17
  br i1 %cmp8, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %while.body
  %18 = load i32* %ordi, align 4
  %add9 = add nsw i32 %18, 1
  %sub10 = sub nsw i32 %add9, 1
  %19 = load i32* %start.addr, align 4
  %add11 = add nsw i32 %sub10, %19
  %20 = load i32** %array.addr, align 4
  %arrayidx12 = getelementptr inbounds i32* %20, i32 %add11
  %21 = load i32* %arrayidx12, align 4
  %22 = load i32* %ordi, align 4
  %sub13 = sub nsw i32 %22, 1
  %23 = load i32* %start.addr, align 4
  %add14 = add nsw i32 %sub13, %23
  %24 = load i32** %array.addr, align 4
  %arrayidx15 = getelementptr inbounds i32* %24, i32 %add14
  %25 = load i32* %arrayidx15, align 4
  %cmp16 = icmp sgt i32 %21, %25
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  %26 = load i32* %ordi, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %ordi, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %while.body
  %27 = load i32* %ordi, align 4
  %sub19 = sub nsw i32 %27, 1
  %28 = load i32* %start.addr, align 4
  %add20 = add nsw i32 %sub19, %28
  %29 = load i32** %array.addr, align 4
  %arrayidx21 = getelementptr inbounds i32* %29, i32 %add20
  %30 = load i32* %arrayidx21, align 4
  %31 = load i32* %ordi, align 4
  %div = sdiv i32 %31, 2
  %sub22 = sub nsw i32 %div, 1
  %32 = load i32* %start.addr, align 4
  %add23 = add nsw i32 %sub22, %32
  %33 = load i32** %array.addr, align 4
  %arrayidx24 = getelementptr inbounds i32* %33, i32 %add23
  %34 = load i32* %arrayidx24, align 4
  %cmp25 = icmp sgt i32 %30, %34
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end18
  %35 = load i32* %ordi, align 4
  %sub27 = sub nsw i32 %35, 1
  %36 = load i32* %start.addr, align 4
  %add28 = add nsw i32 %sub27, %36
  %37 = load i32** %array.addr, align 4
  %arrayidx29 = getelementptr inbounds i32* %37, i32 %add28
  %38 = load i32* %arrayidx29, align 4
  %39 = load i32* %ordi, align 4
  %div30 = sdiv i32 %39, 2
  %sub31 = sub nsw i32 %div30, 1
  %40 = load i32* %start.addr, align 4
  %add32 = add nsw i32 %sub31, %40
  %41 = load i32** %array.addr, align 4
  %arrayidx33 = getelementptr inbounds i32* %41, i32 %add32
  store i32 %38, i32* %arrayidx33, align 4
  %42 = load i32* %ordi, align 4
  store i32 %42, i32* %location, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end18
  br label %while.end

if.end34:                                         ; preds = %if.then26
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %43 = load i32* %temp, align 4
  %44 = load i32* %location, align 4
  %sub35 = sub nsw i32 %44, 1
  %45 = load i32* %start.addr, align 4
  %add36 = add nsw i32 %sub35, %45
  %46 = load i32** %array.addr, align 4
  %arrayidx37 = getelementptr inbounds i32* %46, i32 %add36
  store i32 %43, i32* %arrayidx37, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %47 = load i32* %retval
  ret i32 %47
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
