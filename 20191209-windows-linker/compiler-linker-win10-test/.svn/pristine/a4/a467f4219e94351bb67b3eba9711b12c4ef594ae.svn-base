; ModuleID = './testcase_4slots/iltj_if.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  store i32 4, i32* %j, align 4
  store i32 2, i32* %k, align 4
  %0 = load i32* %i, align 4
  %1 = load i32* %j, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32* %j, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32* %j, align 4
  %5 = load i32* %k, align 4
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.end
  %6 = load i32* %k, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, i32* %k, align 4
  br label %if.end7

if.else5:                                         ; preds = %if.end
  %7 = load i32* %j, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %j, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
  %8 = load i32* %i, align 4
  %9 = load i32* %k, align 4
  %cmp8 = icmp sle i32 %8, %9
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.end7
  %10 = load i32* %i, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* %i, align 4
  br label %if.end13

if.else11:                                        ; preds = %if.end7
  %11 = load i32* %k, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %k, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then9
  %12 = load i32* %j, align 4
  %13 = load i32* %i, align 4
  %sub = sub nsw i32 %12, %13
  ret i32 %sub
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
