; ModuleID = './testcase_4slots/n_complex_updates.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.A = internal global [32 x i32] zeroinitializer, align 4
@main.B = internal global [32 x i32] zeroinitializer, align 4
@main.C = internal global [32 x i32] zeroinitializer, align 4
@main.D = internal global [32 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* %pa, i32* %pb, i32* %pc, i32* %pd) #0 {
entry:
  %pa.addr = alloca i32*, align 4
  %pb.addr = alloca i32*, align 4
  %pc.addr = alloca i32*, align 4
  %pd.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  store i32* %pa, i32** %pa.addr, align 4
  store i32* %pb, i32** %pb.addr, align 4
  store i32* %pc, i32** %pc.addr, align 4
  store i32* %pd, i32** %pd.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32** %pa.addr, align 4
  %incdec.ptr = getelementptr inbounds i32* %1, i32 1
  store i32* %incdec.ptr, i32** %pa.addr, align 4
  store i32 2, i32* %1, align 4
  %2 = load i32** %pa.addr, align 4
  %incdec.ptr1 = getelementptr inbounds i32* %2, i32 1
  store i32* %incdec.ptr1, i32** %pa.addr, align 4
  store i32 1, i32* %2, align 4
  %3 = load i32** %pb.addr, align 4
  %incdec.ptr2 = getelementptr inbounds i32* %3, i32 1
  store i32* %incdec.ptr2, i32** %pb.addr, align 4
  store i32 2, i32* %3, align 4
  %4 = load i32** %pb.addr, align 4
  %incdec.ptr3 = getelementptr inbounds i32* %4, i32 1
  store i32* %incdec.ptr3, i32** %pb.addr, align 4
  store i32 5, i32* %4, align 4
  %5 = load i32** %pc.addr, align 4
  %incdec.ptr4 = getelementptr inbounds i32* %5, i32 1
  store i32* %incdec.ptr4, i32** %pc.addr, align 4
  store i32 3, i32* %5, align 4
  %6 = load i32** %pc.addr, align 4
  %incdec.ptr5 = getelementptr inbounds i32* %6, i32 1
  store i32* %incdec.ptr5, i32** %pc.addr, align 4
  store i32 4, i32* %6, align 4
  %7 = load i32** %pd.addr, align 4
  %incdec.ptr6 = getelementptr inbounds i32* %7, i32 1
  store i32* %incdec.ptr6, i32** %pd.addr, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32** %pd.addr, align 4
  %incdec.ptr7 = getelementptr inbounds i32* %8, i32 1
  store i32* %incdec.ptr7, i32** %pd.addr, align 4
  store i32 0, i32* %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p_a = alloca i32*, align 4
  %p_b = alloca i32*, align 4
  %p_c = alloca i32*, align 4
  %p_d = alloca i32*, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32* getelementptr inbounds ([32 x i32]* @main.A, i32 0, i32 0), i32** %p_a, align 4
  store i32* getelementptr inbounds ([32 x i32]* @main.B, i32 0, i32 0), i32** %p_b, align 4
  store i32* getelementptr inbounds ([32 x i32]* @main.C, i32 0, i32 0), i32** %p_c, align 4
  store i32* getelementptr inbounds ([32 x i32]* @main.D, i32 0, i32 0), i32** %p_d, align 4
  call void @pin_down(i32* getelementptr inbounds ([32 x i32]* @main.A, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @main.B, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @main.C, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @main.D, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32** %p_c, align 4
  %incdec.ptr = getelementptr inbounds i32* %1, i32 1
  store i32* %incdec.ptr, i32** %p_c, align 4
  %2 = load i32* %1, align 4
  %3 = load i32** %p_a, align 4
  %incdec.ptr1 = getelementptr inbounds i32* %3, i32 1
  store i32* %incdec.ptr1, i32** %p_a, align 4
  %4 = load i32* %3, align 4
  %5 = load i32** %p_b, align 4
  %incdec.ptr2 = getelementptr inbounds i32* %5, i32 1
  store i32* %incdec.ptr2, i32** %p_b, align 4
  %6 = load i32* %5, align 4
  %mul = mul nsw i32 %4, %6
  %add = add nsw i32 %2, %mul
  %7 = load i32** %p_d, align 4
  store i32 %add, i32* %7, align 4
  %8 = load i32** %p_a, align 4
  %9 = load i32* %8, align 4
  %10 = load i32** %p_b, align 4
  %incdec.ptr3 = getelementptr inbounds i32* %10, i32 -1
  store i32* %incdec.ptr3, i32** %p_b, align 4
  %11 = load i32* %10, align 4
  %mul4 = mul nsw i32 %9, %11
  %12 = load i32** %p_d, align 4
  %incdec.ptr5 = getelementptr inbounds i32* %12, i32 1
  store i32* %incdec.ptr5, i32** %p_d, align 4
  %13 = load i32* %12, align 4
  %sub = sub nsw i32 %13, %mul4
  store i32 %sub, i32* %12, align 4
  %14 = load i32** %p_c, align 4
  %incdec.ptr6 = getelementptr inbounds i32* %14, i32 1
  store i32* %incdec.ptr6, i32** %p_c, align 4
  %15 = load i32* %14, align 4
  %16 = load i32** %p_a, align 4
  %incdec.ptr7 = getelementptr inbounds i32* %16, i32 -1
  store i32* %incdec.ptr7, i32** %p_a, align 4
  %17 = load i32* %16, align 4
  %18 = load i32** %p_b, align 4
  %incdec.ptr8 = getelementptr inbounds i32* %18, i32 1
  store i32* %incdec.ptr8, i32** %p_b, align 4
  %19 = load i32* %18, align 4
  %mul9 = mul nsw i32 %17, %19
  %add10 = add nsw i32 %15, %mul9
  %20 = load i32** %p_d, align 4
  store i32 %add10, i32* %20, align 4
  %21 = load i32** %p_a, align 4
  %incdec.ptr11 = getelementptr inbounds i32* %21, i32 1
  store i32* %incdec.ptr11, i32** %p_a, align 4
  %22 = load i32* %21, align 4
  %23 = load i32** %p_b, align 4
  %incdec.ptr12 = getelementptr inbounds i32* %23, i32 1
  store i32* %incdec.ptr12, i32** %p_b, align 4
  %24 = load i32* %23, align 4
  %mul13 = mul nsw i32 %22, %24
  %25 = load i32** %p_d, align 4
  %incdec.ptr14 = getelementptr inbounds i32* %25, i32 1
  store i32* %incdec.ptr14, i32** %p_d, align 4
  %26 = load i32* %25, align 4
  %add15 = add nsw i32 %26, %mul13
  store i32 %add15, i32* %25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  %28 = load i32** %p_a, align 4
  %incdec.ptr16 = getelementptr inbounds i32* %28, i32 1
  store i32* %incdec.ptr16, i32** %p_a, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @pin_down(i32* getelementptr inbounds ([32 x i32]* @main.A, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @main.B, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @main.C, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @main.D, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
