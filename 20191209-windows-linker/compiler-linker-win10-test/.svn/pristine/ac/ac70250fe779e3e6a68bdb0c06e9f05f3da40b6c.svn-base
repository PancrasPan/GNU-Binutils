; ModuleID = './testcase_4slots/fir2dim.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.coefficients = internal global [9 x i32] zeroinitializer, align 4
@main.image = internal global [16 x i32] zeroinitializer, align 4
@main.array = internal global [36 x i32] zeroinitializer, align 4
@main.output = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* %pimage, i32* %parray, i32* %pcoeff, i32* %poutput) #0 {
entry:
  %pimage.addr = alloca i32*, align 4
  %parray.addr = alloca i32*, align 4
  %pcoeff.addr = alloca i32*, align 4
  %poutput.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %f = alloca i32, align 4
  store i32* %pimage, i32** %pimage.addr, align 4
  store i32* %parray, i32** %parray.addr, align 4
  store i32* %pcoeff, i32** %pcoeff.addr, align 4
  store i32* %poutput, i32** %poutput.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %f, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32* %f, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32** %pimage.addr, align 4
  %incdec.ptr = getelementptr inbounds i32* %2, i32 1
  store i32* %incdec.ptr, i32** %pimage.addr, align 4
  store i32 1, i32* %2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %3 = load i32* %f, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %f, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %4 = load i32* %i, align 4
  %inc5 = add nsw i32 %4, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end6:                                         ; preds = %for.cond
  %5 = load i32** %pimage.addr, align 4
  %add.ptr = getelementptr inbounds i32* %5, i32 -16
  store i32* %add.ptr, i32** %pimage.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc11, %for.end6
  %6 = load i32* %i, align 4
  %cmp8 = icmp slt i32 %6, 9
  br i1 %cmp8, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond7
  %7 = load i32** %pcoeff.addr, align 4
  %incdec.ptr10 = getelementptr inbounds i32* %7, i32 1
  store i32* %incdec.ptr10, i32** %pcoeff.addr, align 4
  store i32 1, i32* %7, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %8 = load i32* %i, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond7

for.end13:                                        ; preds = %for.cond7
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc18, %for.end13
  %9 = load i32* %i, align 4
  %cmp15 = icmp slt i32 %9, 6
  br i1 %cmp15, label %for.body16, label %for.end20

for.body16:                                       ; preds = %for.cond14
  %10 = load i32** %parray.addr, align 4
  %incdec.ptr17 = getelementptr inbounds i32* %10, i32 1
  store i32* %incdec.ptr17, i32** %parray.addr, align 4
  store i32 0, i32* %10, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body16
  %11 = load i32* %i, align 4
  %inc19 = add nsw i32 %11, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond14

for.end20:                                        ; preds = %for.cond14
  store i32 0, i32* %f, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc34, %for.end20
  %12 = load i32* %f, align 4
  %cmp22 = icmp slt i32 %12, 4
  br i1 %cmp22, label %for.body23, label %for.end36

for.body23:                                       ; preds = %for.cond21
  %13 = load i32** %parray.addr, align 4
  %incdec.ptr24 = getelementptr inbounds i32* %13, i32 1
  store i32* %incdec.ptr24, i32** %parray.addr, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc30, %for.body23
  %14 = load i32* %i, align 4
  %cmp26 = icmp slt i32 %14, 4
  br i1 %cmp26, label %for.body27, label %for.end32

for.body27:                                       ; preds = %for.cond25
  %15 = load i32** %pimage.addr, align 4
  %incdec.ptr28 = getelementptr inbounds i32* %15, i32 1
  store i32* %incdec.ptr28, i32** %pimage.addr, align 4
  %16 = load i32* %15, align 4
  %17 = load i32** %parray.addr, align 4
  %incdec.ptr29 = getelementptr inbounds i32* %17, i32 1
  store i32* %incdec.ptr29, i32** %parray.addr, align 4
  store i32 %16, i32* %17, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body27
  %18 = load i32* %i, align 4
  %inc31 = add nsw i32 %18, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond25

for.end32:                                        ; preds = %for.cond25
  %19 = load i32** %parray.addr, align 4
  %incdec.ptr33 = getelementptr inbounds i32* %19, i32 1
  store i32* %incdec.ptr33, i32** %parray.addr, align 4
  store i32 0, i32* %19, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.end32
  %20 = load i32* %f, align 4
  %inc35 = add nsw i32 %20, 1
  store i32 %inc35, i32* %f, align 4
  br label %for.cond21

for.end36:                                        ; preds = %for.cond21
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc41, %for.end36
  %21 = load i32* %i, align 4
  %cmp38 = icmp slt i32 %21, 6
  br i1 %cmp38, label %for.body39, label %for.end43

for.body39:                                       ; preds = %for.cond37
  %22 = load i32** %parray.addr, align 4
  %incdec.ptr40 = getelementptr inbounds i32* %22, i32 1
  store i32* %incdec.ptr40, i32** %parray.addr, align 4
  store i32 0, i32* %22, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body39
  %23 = load i32* %i, align 4
  %inc42 = add nsw i32 %23, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond37

for.end43:                                        ; preds = %for.cond37
  store i32 0, i32* %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc48, %for.end43
  %24 = load i32* %i, align 4
  %cmp45 = icmp slt i32 %24, 16
  br i1 %cmp45, label %for.body46, label %for.end50

for.body46:                                       ; preds = %for.cond44
  %25 = load i32** %poutput.addr, align 4
  %incdec.ptr47 = getelementptr inbounds i32* %25, i32 1
  store i32* %incdec.ptr47, i32** %poutput.addr, align 4
  store i32 0, i32* %25, align 4
  br label %for.inc48

for.inc48:                                        ; preds = %for.body46
  %26 = load i32* %i, align 4
  %inc49 = add nsw i32 %26, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond44

for.end50:                                        ; preds = %for.cond44
  ret void
}

; Function Attrs: nounwind
define void @main() #0 {
entry:
  %pimage = alloca i32*, align 4
  %parray = alloca i32*, align 4
  %parray2 = alloca i32*, align 4
  %parray3 = alloca i32*, align 4
  %pcoeff = alloca i32*, align 4
  %poutput = alloca i32*, align 4
  %k = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), i32** %pimage, align 4
  store i32* getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), i32** %parray, align 4
  store i32* getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), i32** %pcoeff, align 4
  store i32* getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0), i32** %poutput, align 4
  call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), i32* getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0))
  store i32* getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), i32** %pimage, align 4
  store i32* getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), i32** %parray, align 4
  store i32* getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), i32** %pcoeff, align 4
  store i32* getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0), i32** %poutput, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32* %k, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %f, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %1 = load i32* %f, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  store i32* getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), i32** %pcoeff, align 4
  %2 = load i32* %k, align 4
  %mul = mul nsw i32 %2, 6
  %3 = load i32* %f, align 4
  %add = add nsw i32 %mul, %3
  %arrayidx = getelementptr inbounds [36 x i32]* @main.array, i32 0, i32 %add
  store i32* %arrayidx, i32** %parray, align 4
  %4 = load i32** %parray, align 4
  %add.ptr = getelementptr inbounds i32* %4, i32 6
  store i32* %add.ptr, i32** %parray2, align 4
  %5 = load i32** %parray, align 4
  %add.ptr4 = getelementptr inbounds i32* %5, i32 6
  %add.ptr5 = getelementptr inbounds i32* %add.ptr4, i32 6
  store i32* %add.ptr5, i32** %parray3, align 4
  %6 = load i32** %poutput, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %7 = load i32* %i, align 4
  %cmp7 = icmp slt i32 %7, 3
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %8 = load i32** %pcoeff, align 4
  %incdec.ptr = getelementptr inbounds i32* %8, i32 1
  store i32* %incdec.ptr, i32** %pcoeff, align 4
  %9 = load i32* %8, align 4
  %10 = load i32** %parray, align 4
  %incdec.ptr9 = getelementptr inbounds i32* %10, i32 1
  store i32* %incdec.ptr9, i32** %parray, align 4
  %11 = load i32* %10, align 4
  %mul10 = mul nsw i32 %9, %11
  %12 = load i32** %poutput, align 4
  %13 = load i32* %12, align 4
  %add11 = add nsw i32 %13, %mul10
  store i32 %add11, i32* %12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %14 = load i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc19, %for.end
  %15 = load i32* %i, align 4
  %cmp13 = icmp slt i32 %15, 3
  br i1 %cmp13, label %for.body14, label %for.end21

for.body14:                                       ; preds = %for.cond12
  %16 = load i32** %pcoeff, align 4
  %incdec.ptr15 = getelementptr inbounds i32* %16, i32 1
  store i32* %incdec.ptr15, i32** %pcoeff, align 4
  %17 = load i32* %16, align 4
  %18 = load i32** %parray2, align 4
  %incdec.ptr16 = getelementptr inbounds i32* %18, i32 1
  store i32* %incdec.ptr16, i32** %parray2, align 4
  %19 = load i32* %18, align 4
  %mul17 = mul nsw i32 %17, %19
  %20 = load i32** %poutput, align 4
  %21 = load i32* %20, align 4
  %add18 = add nsw i32 %21, %mul17
  store i32 %add18, i32* %20, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body14
  %22 = load i32* %i, align 4
  %inc20 = add nsw i32 %22, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond12

for.end21:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc29, %for.end21
  %23 = load i32* %i, align 4
  %cmp23 = icmp slt i32 %23, 3
  br i1 %cmp23, label %for.body24, label %for.end31

for.body24:                                       ; preds = %for.cond22
  %24 = load i32** %pcoeff, align 4
  %incdec.ptr25 = getelementptr inbounds i32* %24, i32 1
  store i32* %incdec.ptr25, i32** %pcoeff, align 4
  %25 = load i32* %24, align 4
  %26 = load i32** %parray3, align 4
  %incdec.ptr26 = getelementptr inbounds i32* %26, i32 1
  store i32* %incdec.ptr26, i32** %parray3, align 4
  %27 = load i32* %26, align 4
  %mul27 = mul nsw i32 %25, %27
  %28 = load i32** %poutput, align 4
  %29 = load i32* %28, align 4
  %add28 = add nsw i32 %29, %mul27
  store i32 %add28, i32* %28, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.body24
  %30 = load i32* %i, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond22

for.end31:                                        ; preds = %for.cond22
  %31 = load i32** %poutput, align 4
  %incdec.ptr32 = getelementptr inbounds i32* %31, i32 1
  store i32* %incdec.ptr32, i32** %poutput, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.end31
  %32 = load i32* %f, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %f, align 4
  br label %for.cond1

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %33 = load i32* %k, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond

for.end38:                                        ; preds = %for.cond
  call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), i32* getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0))
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
