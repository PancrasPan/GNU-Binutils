; ModuleID = './testcase_4slots/binary_search.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @binarysearch(i32* %array, i32 %value, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 4
  %value.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %bottem = alloca i32, align 4
  %top = alloca i32, align 4
  %midpos = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 4
  store i32 %value, i32* %value.addr, align 4
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
  store i32 %2, i32* %bottem, align 4
  %3 = load i32* %end.addr, align 4
  store i32 %3, i32* %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %4 = load i32* %bottem, align 4
  %5 = load i32* %top, align 4
  %cmp1 = icmp sle i32 %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32* %bottem, align 4
  %7 = load i32* %top, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %midpos, align 4
  %8 = load i32* %midpos, align 4
  %9 = load i32** %array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %9, i32 %8
  %10 = load i32* %arrayidx, align 4
  %11 = load i32* %value.addr, align 4
  %cmp2 = icmp eq i32 %10, %11
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %12 = load i32* %midpos, align 4
  store i32 %12, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %13 = load i32* %midpos, align 4
  %14 = load i32** %array.addr, align 4
  %arrayidx4 = getelementptr inbounds i32* %14, i32 %13
  %15 = load i32* %arrayidx4, align 4
  %16 = load i32* %value.addr, align 4
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  %17 = load i32* %midpos, align 4
  %add7 = add nsw i32 %17, 1
  store i32 %add7, i32* %bottem, align 4
  br label %if.end9

if.else8:                                         ; preds = %if.else
  %18 = load i32* %midpos, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %top, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -2, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %19 = load i32* %retval
  ret i32 %19
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
