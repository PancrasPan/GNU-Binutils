; ModuleID = './testcase_8slots/1/startup.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@In = global [240 x i32] [i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 2, i32 3, i32 0, i32 1, i32 3, i32 2, i32 0, i32 2, i32 0, i32 2, i32 2, i32 3, i32 3, i32 3, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 3, i32 2, i32 0, i32 2, i32 0, i32 2, i32 2, i32 3, i32 3, i32 3, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 3, i32 3, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 3, i32 3, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1], align 4

; Function Attrs: nounwind
define void @pin_down(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 0, i32* %i.addr, align 4
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %Out = alloca [240 x i32], align 4
  %N = alloca i32, align 4
  %tmp = alloca i32, align 4
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %Input = alloca i32*, align 4
  %Output = alloca i32*, align 4
  store i32 0, i32* %retval
  store i32* getelementptr inbounds ([240 x i32]* @In, i32 0, i32 0), i32** %Input, align 4
  %arraydecay = getelementptr inbounds [240 x i32]* %Out, i32 0, i32 0
  store i32* %arraydecay, i32** %Output, align 4
  %0 = load i32* %i, align 4
  call void @pin_down(i32 %0)
  %1 = load i32** %Input, align 4
  %incdec.ptr = getelementptr inbounds i32* %1, i32 1
  store i32* %incdec.ptr, i32** %Input, align 4
  %2 = load i32* %1, align 4
  store i32 %2, i32* %temp1, align 4
  %3 = load i32** %Input, align 4
  %4 = load i32* %3, align 4
  store i32 %4, i32* %temp2, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32* %temp1, align 4
  %6 = load i32* %temp2, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32** %Output, align 4
  %incdec.ptr5 = getelementptr inbounds i32* %7, i32 1
  store i32* %incdec.ptr5, i32** %Output, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32** %Input, align 4
  %incdec.ptr6 = getelementptr inbounds i32* %8, i32 1
  store i32* %incdec.ptr6, i32** %Input, align 4
  %9 = load i32** %Input, align 4
  %10 = load i32* %9, align 4
  store i32 %10, i32* %temp1, align 4
  %11 = load i32* %temp1, align 4
  %12 = load i32* %temp2, align 4
  %cmp7 = icmp ne i32 %11, %12
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i32** %Output, align 4
  %incdec.ptr8 = getelementptr inbounds i32* %13, i32 1
  store i32* %incdec.ptr8, i32** %Output, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32** %Input, align 4
  %incdec.ptr9 = getelementptr inbounds i32* %14, i32 1
  store i32* %incdec.ptr9, i32** %Input, align 4
  %15 = load i32** %Input, align 4
  %16 = load i32* %15, align 4
  store i32 %16, i32* %temp2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32* %i, align 4
  %cmp10 = icmp slt i32 %17, 64
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32** %Output, align 4
  %incdec.ptr11 = getelementptr inbounds i32* %18, i32 1
  store i32* %incdec.ptr11, i32** %Output, align 4
  store i32 0, i32* %18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32** %Input, align 4
  %add.ptr = getelementptr inbounds i32* %20, i32 64
  store i32* %add.ptr, i32** %Input, align 4
  store i32 0, i32* %N, align 4
  %21 = load i32** %Input, align 4
  %incdec.ptr12 = getelementptr inbounds i32* %21, i32 1
  store i32* %incdec.ptr12, i32** %Input, align 4
  %22 = load i32* %21, align 4
  store i32 %22, i32* %temp1, align 4
  %23 = load i32** %Input, align 4
  %24 = load i32* %23, align 4
  store i32 %24, i32* %temp2, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end24, %for.end
  %25 = load i32* %temp1, align 4
  %26 = load i32* %temp2, align 4
  %cmp14 = icmp ne i32 %25, %26
  br i1 %cmp14, label %while.body15, label %while.end25

while.body15:                                     ; preds = %while.cond13
  %27 = load i32** %Output, align 4
  %incdec.ptr16 = getelementptr inbounds i32* %27, i32 1
  store i32* %incdec.ptr16, i32** %Output, align 4
  store i32 3, i32* %27, align 4
  %28 = load i32** %Input, align 4
  %incdec.ptr17 = getelementptr inbounds i32* %28, i32 1
  store i32* %incdec.ptr17, i32** %Input, align 4
  %29 = load i32** %Input, align 4
  %30 = load i32* %29, align 4
  store i32 %30, i32* %temp1, align 4
  %31 = load i32* %N, align 4
  %inc18 = add nsw i32 %31, 1
  store i32 %inc18, i32* %N, align 4
  %32 = load i32* %temp1, align 4
  %33 = load i32* %temp2, align 4
  %cmp19 = icmp ne i32 %32, %33
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %while.body15
  %34 = load i32** %Output, align 4
  %incdec.ptr21 = getelementptr inbounds i32* %34, i32 1
  store i32* %incdec.ptr21, i32** %Output, align 4
  store i32 3, i32* %34, align 4
  %35 = load i32** %Input, align 4
  %incdec.ptr22 = getelementptr inbounds i32* %35, i32 1
  store i32* %incdec.ptr22, i32** %Input, align 4
  %36 = load i32** %Input, align 4
  %37 = load i32* %36, align 4
  store i32 %37, i32* %temp2, align 4
  %38 = load i32* %N, align 4
  %inc23 = add nsw i32 %38, 1
  store i32 %inc23, i32* %N, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %while.body15
  br label %while.cond13

while.end25:                                      ; preds = %while.cond13
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end25
  br label %while.cond26

while.cond26:                                     ; preds = %cond.end, %do.body
  %39 = load i32* %i, align 4
  %cmp27 = icmp slt i32 %39, 8
  br i1 %cmp27, label %while.body28, label %while.end33

while.body28:                                     ; preds = %while.cond26
  %40 = load i32** %Input, align 4
  %incdec.ptr29 = getelementptr inbounds i32* %40, i32 1
  store i32* %incdec.ptr29, i32** %Input, align 4
  %41 = load i32** %Input, align 4
  %add.ptr30 = getelementptr inbounds i32* %41, i32 -8
  %42 = load i32* %add.ptr30, align 4
  %43 = load i32** %Input, align 4
  %44 = load i32* %43, align 4
  %cmp31 = icmp eq i32 %42, %44
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body28
  %45 = load i32* %i, align 4
  %inc32 = add nsw i32 %45, 1
  store i32 %inc32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body28
  store i32 0, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %45, %cond.true ], [ 0, %cond.false ]
  br label %while.cond26

while.end33:                                      ; preds = %while.cond26
  store i32 7, i32* %i, align 4
  %46 = load i32** %Input, align 4
  %add.ptr34 = getelementptr inbounds i32* %46, i32 -7
  %47 = load i32* %add.ptr34, align 4
  %cmp35 = icmp eq i32 %47, 0
  br i1 %cmp35, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.end33
  %48 = load i32** %Input, align 4
  %add.ptr36 = getelementptr inbounds i32* %48, i32 -6
  %49 = load i32* %add.ptr36, align 4
  %cmp37 = icmp eq i32 %49, 0
  br i1 %cmp37, label %land.lhs.true38, label %land.end

land.lhs.true38:                                  ; preds = %land.lhs.true
  %50 = load i32** %Input, align 4
  %add.ptr39 = getelementptr inbounds i32* %50, i32 -4
  %51 = load i32* %add.ptr39, align 4
  %and = and i32 %51, 1
  %cmp40 = icmp eq i32 %and, 1
  br i1 %cmp40, label %land.lhs.true41, label %land.end

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %52 = load i32** %Input, align 4
  %add.ptr42 = getelementptr inbounds i32* %52, i32 -2
  %53 = load i32* %add.ptr42, align 4
  %and43 = and i32 %53, 1
  %cmp44 = icmp eq i32 %and43, 1
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true41
  %54 = load i32** %Input, align 4
  %55 = load i32* %54, align 4
  %and45 = and i32 %55, 1
  %cmp46 = icmp eq i32 %and45, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true41, %land.lhs.true38, %land.lhs.true, %while.end33
  %56 = phi i1 [ false, %land.lhs.true41 ], [ false, %land.lhs.true38 ], [ false, %land.lhs.true ], [ false, %while.end33 ], [ %cmp46, %land.rhs ]
  %land.ext = zext i1 %56 to i32
  store i32 %land.ext, i32* %tmp, align 4
  br label %do.cond

do.cond:                                          ; preds = %land.end
  %57 = load i32* %tmp, align 4
  %cmp47 = icmp eq i32 %57, 0
  br i1 %cmp47, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %58 = load i32* %N, align 4
  %div = sdiv i32 %58, 2
  store i32 %div, i32* %N, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc53, %do.end
  %59 = load i32* %i, align 4
  %60 = load i32* %N, align 4
  %cmp49 = icmp sle i32 %59, %60
  br i1 %cmp49, label %for.body50, label %for.end55

for.body50:                                       ; preds = %for.cond48
  %61 = load i32** %Output, align 4
  %incdec.ptr51 = getelementptr inbounds i32* %61, i32 1
  store i32* %incdec.ptr51, i32** %Output, align 4
  store i32 0, i32* %61, align 4
  %62 = load i32** %Output, align 4
  %incdec.ptr52 = getelementptr inbounds i32* %62, i32 1
  store i32* %incdec.ptr52, i32** %Output, align 4
  store i32 1, i32* %62, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %for.body50
  %63 = load i32* %i, align 4
  %inc54 = add nsw i32 %63, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond48

for.end55:                                        ; preds = %for.cond48
  %64 = load i32* %i, align 4
  call void @pin_down(i32 %64)
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
