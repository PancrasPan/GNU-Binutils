; ModuleID = './testcase_4slots/biquad_N_sections.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.coefficients = internal global [20 x i32] zeroinitializer, align 4
@main.x = internal global i32 0, align 4
@main.y = internal global i32 0, align 4

; Function Attrs: nounwind
define i32 @pin_down(i32 %x, i32* %coefficients, i32* %wi) #0 {
entry:
  %x.addr = alloca i32, align 4
  %coefficients.addr = alloca i32*, align 4
  %wi.addr = alloca i32*, align 4
  %f = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32* %coefficients, i32** %coefficients.addr, align 4
  store i32* %wi, i32** %wi.addr, align 4
  store i32 0, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %f, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %f, align 4
  %2 = load i32** %coefficients.addr, align 4
  %arrayidx = getelementptr inbounds i32* %2, i32 %1
  store i32 7, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %f, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %f, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc5, %for.end
  %4 = load i32* %f, align 4
  %cmp2 = icmp slt i32 %4, 8
  br i1 %cmp2, label %for.body3, label %for.end7

for.body3:                                        ; preds = %for.cond1
  %5 = load i32* %f, align 4
  %6 = load i32** %wi.addr, align 4
  %arrayidx4 = getelementptr inbounds i32* %6, i32 %5
  store i32 0, i32* %arrayidx4, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.body3
  %7 = load i32* %f, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, i32* %f, align 4
  br label %for.cond1

for.end7:                                         ; preds = %for.cond1
  ret i32 1
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %w = alloca i32, align 4
  %f = alloca i32, align 4
  %ptr_coeff = alloca i32*, align 4
  %ptr_wi1 = alloca i32*, align 4
  %ptr_wi2 = alloca i32*, align 4
  %wi = alloca [8 x i32], align 4
  store i32 0, i32* %retval
  store i32* getelementptr inbounds ([20 x i32]* @main.coefficients, i32 0, i32 0), i32** %ptr_coeff, align 4
  %arrayidx = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 0
  store i32* %arrayidx, i32** %ptr_wi1, align 4
  %arrayidx1 = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 1
  store i32* %arrayidx1, i32** %ptr_wi2, align 4
  %0 = load i32* @main.x, align 4
  %arraydecay = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 0
  %call = call i32 @pin_down(i32 %0, i32* getelementptr inbounds ([20 x i32]* @main.coefficients, i32 0, i32 0), i32* %arraydecay)
  store i32 %call, i32* @main.x, align 4
  %1 = load i32* @main.x, align 4
  store i32 %1, i32* @main.y, align 4
  store i32 0, i32* %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %f, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* @main.y, align 4
  %4 = load i32** %ptr_coeff, align 4
  %incdec.ptr = getelementptr inbounds i32* %4, i32 1
  store i32* %incdec.ptr, i32** %ptr_coeff, align 4
  %5 = load i32* %4, align 4
  %6 = load i32** %ptr_wi1, align 4
  %7 = load i32* %6, align 4
  %mul = mul nsw i32 %5, %7
  %sub = sub nsw i32 %3, %mul
  store i32 %sub, i32* %w, align 4
  %8 = load i32** %ptr_coeff, align 4
  %incdec.ptr2 = getelementptr inbounds i32* %8, i32 1
  store i32* %incdec.ptr2, i32** %ptr_coeff, align 4
  %9 = load i32* %8, align 4
  %10 = load i32** %ptr_wi2, align 4
  %11 = load i32* %10, align 4
  %mul3 = mul nsw i32 %9, %11
  %12 = load i32* %w, align 4
  %sub4 = sub nsw i32 %12, %mul3
  store i32 %sub4, i32* %w, align 4
  %13 = load i32** %ptr_coeff, align 4
  %incdec.ptr5 = getelementptr inbounds i32* %13, i32 1
  store i32* %incdec.ptr5, i32** %ptr_coeff, align 4
  %14 = load i32* %13, align 4
  %15 = load i32* %w, align 4
  %mul6 = mul nsw i32 %14, %15
  store i32 %mul6, i32* @main.y, align 4
  %16 = load i32** %ptr_coeff, align 4
  %incdec.ptr7 = getelementptr inbounds i32* %16, i32 1
  store i32* %incdec.ptr7, i32** %ptr_coeff, align 4
  %17 = load i32* %16, align 4
  %18 = load i32** %ptr_wi1, align 4
  %19 = load i32* %18, align 4
  %mul8 = mul nsw i32 %17, %19
  %20 = load i32* @main.y, align 4
  %add = add nsw i32 %20, %mul8
  store i32 %add, i32* @main.y, align 4
  %21 = load i32** %ptr_coeff, align 4
  %incdec.ptr9 = getelementptr inbounds i32* %21, i32 1
  store i32* %incdec.ptr9, i32** %ptr_coeff, align 4
  %22 = load i32* %21, align 4
  %23 = load i32** %ptr_wi2, align 4
  %24 = load i32* %23, align 4
  %mul10 = mul nsw i32 %22, %24
  %25 = load i32* @main.y, align 4
  %add11 = add nsw i32 %25, %mul10
  store i32 %add11, i32* @main.y, align 4
  %26 = load i32** %ptr_wi1, align 4
  %27 = load i32* %26, align 4
  %28 = load i32** %ptr_wi2, align 4
  %incdec.ptr12 = getelementptr inbounds i32* %28, i32 1
  store i32* %incdec.ptr12, i32** %ptr_wi2, align 4
  store i32 %27, i32* %28, align 4
  %29 = load i32* %w, align 4
  %30 = load i32** %ptr_wi1, align 4
  %incdec.ptr13 = getelementptr inbounds i32* %30, i32 1
  store i32* %incdec.ptr13, i32** %ptr_wi1, align 4
  store i32 %29, i32* %30, align 4
  %31 = load i32** %ptr_wi2, align 4
  %incdec.ptr14 = getelementptr inbounds i32* %31, i32 1
  store i32* %incdec.ptr14, i32** %ptr_wi2, align 4
  %32 = load i32** %ptr_wi1, align 4
  %incdec.ptr15 = getelementptr inbounds i32* %32, i32 1
  store i32* %incdec.ptr15, i32** %ptr_wi1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32* %f, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32* @main.y, align 4
  %arraydecay16 = getelementptr inbounds [8 x i32]* %wi, i32 0, i32 0
  %call17 = call i32 @pin_down(i32 %34, i32* getelementptr inbounds ([20 x i32]* @main.coefficients, i32 0, i32 0), i32* %arraydecay16)
  %35 = load i32* @main.y, align 4
  ret i32 %35
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
