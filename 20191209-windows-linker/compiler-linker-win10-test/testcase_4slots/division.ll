; ModuleID = './testcase_4slots/division.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @integer_div(i32 %dividend, i32 %divisor) #0 {
entry:
  %retval = alloca i32, align 4
  %dividend.addr = alloca i32, align 4
  %divisor.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %c = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %dividend, i32* %dividend.addr, align 4
  store i32 %divisor, i32* %divisor.addr, align 4
  %0 = load i32* %dividend.addr, align 4
  %1 = load i32* %divisor.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end
  %2 = load i32* %dividend.addr, align 4
  %3 = load i32* %divisor.addr, align 4
  %cmp1 = icmp ugt i32 %2, %3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %k, align 4
  %4 = load i32* %divisor.addr, align 4
  store i32 %4, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32* %dividend.addr, align 4
  %6 = load i32* %c, align 4
  %cmp2 = icmp uge i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32* %dividend.addr, align 4
  %8 = load i32* %c, align 4
  %sub = sub i32 %7, %8
  %9 = load i32* %divisor.addr, align 4
  %cmp3 = icmp ult i32 %sub, %9
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  %10 = load i32* %k, align 4
  %shl = shl i32 1, %10
  %11 = load i32* %res, align 4
  %add = add i32 %11, %shl
  store i32 %add, i32* %res, align 4
  br label %for.end

if.end5:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %12 = load i32* %c, align 4
  %shl6 = shl i32 %12, 1
  store i32 %shl6, i32* %c, align 4
  %13 = load i32* %k, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then4, %for.cond
  %14 = load i32* %dividend.addr, align 4
  %15 = load i32* %c, align 4
  %sub7 = sub i32 %14, %15
  %16 = load i32* %divisor.addr, align 4
  %cmp8 = icmp ult i32 %sub7, %16
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  br label %while.end

if.end10:                                         ; preds = %for.end
  %17 = load i32* %k, align 4
  %sub11 = sub i32 %17, 1
  %shl12 = shl i32 1, %sub11
  %18 = load i32* %res, align 4
  %add13 = add i32 %18, %shl12
  store i32 %add13, i32* %res, align 4
  %19 = load i32* %c, align 4
  %shr = lshr i32 %19, 1
  %20 = load i32* %dividend.addr, align 4
  %sub14 = sub i32 %20, %shr
  store i32 %sub14, i32* %dividend.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then9, %while.cond
  %21 = load i32* %res, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %22 = load i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @integer_div(i32 7, i32 3)
  store i32 %call, i32* %a, align 4
  store i32 1, i32* %b, align 4
  %0 = load i32* %b, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %c, align 4
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
