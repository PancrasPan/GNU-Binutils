; ModuleID = './testcase_4slots/mat1x3.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.h = internal global [9 x i32] [i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 3, i32 2, i32 1], align 4
@main.x = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@main.y = internal global [3 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p_x = alloca i32*, align 4
  %p_h = alloca i32*, align 4
  %p_y = alloca i32*, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32* getelementptr inbounds ([3 x i32]* @main.x, i32 0, i32 0), i32** %p_x, align 4
  store i32* getelementptr inbounds ([9 x i32]* @main.h, i32 0, i32 0), i32** %p_h, align 4
  store i32* getelementptr inbounds ([3 x i32]* @main.y, i32 0, i32 0), i32** %p_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32* getelementptr inbounds ([3 x i32]* @main.x, i32 0, i32 0), i32** %p_x, align 4
  store i32 0, i32* %f, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32* %f, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32** %p_h, align 4
  %incdec.ptr = getelementptr inbounds i32* %2, i32 1
  store i32* %incdec.ptr, i32** %p_h, align 4
  %3 = load i32* %2, align 4
  %4 = load i32** %p_x, align 4
  %incdec.ptr4 = getelementptr inbounds i32* %4, i32 1
  store i32* %incdec.ptr4, i32** %p_x, align 4
  %5 = load i32* %4, align 4
  %mul = mul nsw i32 %3, %5
  %6 = load i32** %p_y, align 4
  %7 = load i32* %6, align 4
  %add = add nsw i32 %7, %mul
  store i32 %add, i32* %6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32* %f, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %9 = load i32** %p_y, align 4
  %incdec.ptr5 = getelementptr inbounds i32* %9, i32 1
  store i32* %incdec.ptr5, i32** %p_y, align 4
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32* %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end8:                                         ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
