; ModuleID = './testcase_8slots/1/recursion.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 5, i32* %n, align 4
  %0 = load i32* %n, align 4
  %call = call i32 @sum(i32 %0)
  ret i32 %call
}

; Function Attrs: nounwind
define i32 @sum(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32* %x.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32* %x.addr, align 4
  store i32 %1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32* %x.addr, align 4
  %3 = load i32* %x.addr, align 4
  %sub = sub nsw i32 %3, 1
  %call = call i32 @sum(i32 %sub)
  %add = add nsw i32 %2, %call
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32* %retval
  ret i32 %4
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}