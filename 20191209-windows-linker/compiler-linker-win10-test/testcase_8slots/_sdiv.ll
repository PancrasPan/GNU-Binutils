; ModuleID = './testcase_8slots/1\_sdiv.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @__dsp_i32sdiv(i32 %dividend, i32 %divisor) #0 {
entry:
  %retval = alloca i32, align 4
  %dividend.addr = alloca i32, align 4
  %divisor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %negtive = alloca i32, align 4
  %udividend = alloca i32, align 4
  %udivisor = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %dividend, i32* %dividend.addr, align 4
  store i32 %divisor, i32* %divisor.addr, align 4
  %0 = load i32* %dividend.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32* %dividend.addr, align 4
  %cmp1 = icmp eq i32 %1, -2147483648
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32* %divisor.addr, align 4
  %cmp2 = icmp eq i32 %2, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 2147483647, i32* %retval
  br label %return

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %3 = load i32* %dividend.addr, align 4
  %4 = load i32* %divisor.addr, align 4
  %xor = xor i32 %3, %4
  %cmp5 = icmp slt i32 %xor, 0
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %negtive, align 4
  %5 = load i32* %dividend.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  %6 = load i32* %dividend.addr, align 4
  %neg = xor i32 %6, -1
  %add = add i32 %neg, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %7 = load i32* %dividend.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %udividend, align 4
  %8 = load i32* %divisor.addr, align 4
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %cond.true10, label %cond.false13

cond.true10:                                      ; preds = %cond.end
  %9 = load i32* %divisor.addr, align 4
  %neg11 = xor i32 %9, -1
  %add12 = add i32 %neg11, 1
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  %10 = load i32* %divisor.addr, align 4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true10
  %cond15 = phi i32 [ %add12, %cond.true10 ], [ %10, %cond.false13 ]
  store i32 %cond15, i32* %udivisor, align 4
  store i32 0, i32* %res, align 4
  store i32 31, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end14
  %11 = load i32* %i, align 4
  %cmp16 = icmp sge i32 %11, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32* %udividend, align 4
  %13 = load i32* %i, align 4
  %shr = lshr i32 %12, %13
  %14 = load i32* %udivisor, align 4
  %cmp18 = icmp uge i32 %shr, %14
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body
  %15 = load i32* %i, align 4
  %shl = shl i32 1, %15
  %16 = load i32* %res, align 4
  %or = or i32 %16, %shl
  store i32 %or, i32* %res, align 4
  %17 = load i32* %udivisor, align 4
  %18 = load i32* %i, align 4
  %shl21 = shl i32 %17, %18
  %19 = load i32* %udividend, align 4
  %sub = sub i32 %19, %shl21
  store i32 %sub, i32* %udividend, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %20 = load i32* %i, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32* %res, align 4
  %cmp23 = icmp eq i32 %21, -2147483648
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.end
  store i32 -2147483648, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %22 = load i32* %negtive, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %cond.true26, label %cond.false28

cond.true26:                                      ; preds = %if.else
  %23 = load i32* %res, align 4
  %sub27 = sub nsw i32 0, %23
  br label %cond.end29

cond.false28:                                     ; preds = %if.else
  %24 = load i32* %res, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %cond.true26
  %cond30 = phi i32 [ %sub27, %cond.true26 ], [ %24, %cond.false28 ]
  store i32 %cond30, i32* %retval
  br label %return

return:                                           ; preds = %cond.end29, %if.then25, %if.then3, %if.then
  %25 = load i32* %retval
  ret i32 %25
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
