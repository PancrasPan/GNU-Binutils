; ModuleID = './testcase_4slots/global.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.local_b = internal global [3 x i32] zeroinitializer, align 4
@main.local_sum2 = internal global i32 0, align 4
@b = internal global [3 x i32] zeroinitializer, align 4
@sum2 = internal global i32 0, align 4
@a = common global [3 x i32] zeroinitializer, align 4
@sum1 = common global i32 0, align 4
@c = external global [3 x i32]

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = load i32* getelementptr inbounds ([3 x i32]* @b, i32 0, i32 0), align 4
  store i32 %0, i32* getelementptr inbounds ([3 x i32]* @main.local_b, i32 0, i32 0), align 4
  %1 = load i32* getelementptr inbounds ([3 x i32]* @b, i32 0, i32 1), align 4
  store i32 %1, i32* getelementptr inbounds ([3 x i32]* @main.local_b, i32 0, i32 1), align 4
  %2 = load i32* getelementptr inbounds ([3 x i32]* @b, i32 0, i32 2), align 4
  store i32 %2, i32* getelementptr inbounds ([3 x i32]* @main.local_b, i32 0, i32 2), align 4
  %3 = load i32* getelementptr inbounds ([3 x i32]* @main.local_b, i32 0, i32 0), align 4
  %4 = load i32* getelementptr inbounds ([3 x i32]* @main.local_b, i32 0, i32 1), align 4
  %add = add nsw i32 %3, %4
  %5 = load i32* getelementptr inbounds ([3 x i32]* @main.local_b, i32 0, i32 2), align 4
  %add1 = add nsw i32 %add, %5
  store i32 %add1, i32* @main.local_sum2, align 4
  %6 = load i32* @main.local_sum2, align 4
  store i32 %6, i32* @sum2, align 4
  %7 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 0), align 4
  %8 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 1), align 4
  %add2 = add nsw i32 %7, %8
  %9 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 2), align 4
  %add3 = add nsw i32 %add2, %9
  store i32 %add3, i32* @sum1, align 4
  %10 = load i32* getelementptr inbounds ([3 x i32]* @c, i32 0, i32 0), align 4
  %11 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 0), align 4
  %add4 = add nsw i32 %11, %10
  store i32 %add4, i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 0), align 4
  %12 = load i32* getelementptr inbounds ([3 x i32]* @c, i32 0, i32 1), align 4
  %13 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 1), align 4
  %add5 = add nsw i32 %13, %12
  store i32 %add5, i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 1), align 4
  %14 = load i32* getelementptr inbounds ([3 x i32]* @c, i32 0, i32 2), align 4
  %15 = load i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 2), align 4
  %add6 = add nsw i32 %15, %14
  store i32 %add6, i32* getelementptr inbounds ([3 x i32]* @a, i32 0, i32 2), align 4
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
