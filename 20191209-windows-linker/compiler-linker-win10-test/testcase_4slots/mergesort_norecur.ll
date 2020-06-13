; ModuleID = './testcase_4slots/mergesort_norecur.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@t_array = internal global [10 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define i32 @merge_sort(i32* %Array, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %Array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %dist = alloca i32, align 4
  %a1_i = alloca i32, align 4
  %a1_e = alloca i32, align 4
  %a2_i = alloca i32, align 4
  %a2_e = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %k62 = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32* %start.addr, align 4
  %1 = load i32* %end.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %dist, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end70, %if.end
  %2 = load i32* %dist, align 4
  %3 = load i32* %end.addr, align 4
  %4 = load i32* %start.addr, align 4
  %sub = sub nsw i32 %3, %4
  %add = add nsw i32 %sub, 1
  %cmp1 = icmp slt i32 %2, %add
  br i1 %cmp1, label %while.body, label %while.end71

while.body:                                       ; preds = %while.cond
  %5 = load i32* %start.addr, align 4
  store i32 %5, i32* %a1_i, align 4
  %6 = load i32* %a1_i, align 4
  %7 = load i32* %dist, align 4
  %add2 = add nsw i32 %6, %7
  %sub3 = sub nsw i32 %add2, 1
  store i32 %sub3, i32* %a1_e, align 4
  %8 = load i32* %a1_e, align 4
  %add4 = add nsw i32 %8, 1
  store i32 %add4, i32* %a2_i, align 4
  %9 = load i32* %a2_i, align 4
  %10 = load i32* %dist, align 4
  %add5 = add nsw i32 %9, %10
  %sub6 = sub nsw i32 %add5, 1
  %11 = load i32* %end.addr, align 4
  %cmp7 = icmp sgt i32 %sub6, %11
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %12 = load i32* %end.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %13 = load i32* %a2_i, align 4
  %14 = load i32* %dist, align 4
  %add8 = add nsw i32 %13, %14
  %sub9 = sub nsw i32 %add8, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %sub9, %cond.false ]
  store i32 %cond, i32* %a2_e, align 4
  store i32 0, i32* %k, align 4
  br label %while.cond10

while.cond10:                                     ; preds = %cond.end52, %cond.end
  %15 = load i32* %a2_i, align 4
  %16 = load i32* %end.addr, align 4
  %cmp11 = icmp sle i32 %15, %16
  br i1 %cmp11, label %while.body12, label %while.end

while.body12:                                     ; preds = %while.cond10
  br label %for.cond

for.cond:                                         ; preds = %if.end25, %while.body12
  %17 = load i32* %a1_i, align 4
  %18 = load i32* %a1_e, align 4
  %cmp13 = icmp sle i32 %17, %18
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i32* %a2_i, align 4
  %20 = load i32* %a2_e, align 4
  %cmp14 = icmp sle i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp14, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load i32* %a1_i, align 4
  %23 = load i32** %Array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %23, i32 %22
  %24 = load i32* %arrayidx, align 4
  %25 = load i32* %a2_i, align 4
  %26 = load i32** %Array.addr, align 4
  %arrayidx15 = getelementptr inbounds i32* %26, i32 %25
  %27 = load i32* %arrayidx15, align 4
  %cmp16 = icmp sgt i32 %24, %27
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body
  %28 = load i32* %a2_i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %a2_i, align 4
  %29 = load i32** %Array.addr, align 4
  %arrayidx18 = getelementptr inbounds i32* %29, i32 %28
  %30 = load i32* %arrayidx18, align 4
  %31 = load i32* %k, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, i32* %k, align 4
  %arrayidx20 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %31
  store i32 %30, i32* %arrayidx20, align 4
  br label %if.end25

if.else:                                          ; preds = %for.body
  %32 = load i32* %a1_i, align 4
  %inc21 = add nsw i32 %32, 1
  store i32 %inc21, i32* %a1_i, align 4
  %33 = load i32** %Array.addr, align 4
  %arrayidx22 = getelementptr inbounds i32* %33, i32 %32
  %34 = load i32* %arrayidx22, align 4
  %35 = load i32* %k, align 4
  %inc23 = add nsw i32 %35, 1
  store i32 %inc23, i32* %k, align 4
  %arrayidx24 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %35
  store i32 %34, i32* %arrayidx24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond26

for.cond26:                                       ; preds = %for.body28, %for.end
  %36 = load i32* %a1_i, align 4
  %37 = load i32* %a1_e, align 4
  %cmp27 = icmp sle i32 %36, %37
  br i1 %cmp27, label %for.body28, label %for.end33

for.body28:                                       ; preds = %for.cond26
  %38 = load i32* %a1_i, align 4
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, i32* %a1_i, align 4
  %39 = load i32** %Array.addr, align 4
  %arrayidx30 = getelementptr inbounds i32* %39, i32 %38
  %40 = load i32* %arrayidx30, align 4
  %41 = load i32* %k, align 4
  %inc31 = add nsw i32 %41, 1
  store i32 %inc31, i32* %k, align 4
  %arrayidx32 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %41
  store i32 %40, i32* %arrayidx32, align 4
  br label %for.cond26

for.end33:                                        ; preds = %for.cond26
  br label %for.cond34

for.cond34:                                       ; preds = %for.body36, %for.end33
  %42 = load i32* %a2_i, align 4
  %43 = load i32* %a2_e, align 4
  %cmp35 = icmp sle i32 %42, %43
  br i1 %cmp35, label %for.body36, label %for.end41

for.body36:                                       ; preds = %for.cond34
  %44 = load i32* %a2_i, align 4
  %inc37 = add nsw i32 %44, 1
  store i32 %inc37, i32* %a2_i, align 4
  %45 = load i32** %Array.addr, align 4
  %arrayidx38 = getelementptr inbounds i32* %45, i32 %44
  %46 = load i32* %arrayidx38, align 4
  %47 = load i32* %k, align 4
  %inc39 = add nsw i32 %47, 1
  store i32 %inc39, i32* %k, align 4
  %arrayidx40 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %47
  store i32 %46, i32* %arrayidx40, align 4
  br label %for.cond34

for.end41:                                        ; preds = %for.cond34
  %48 = load i32* %a2_i, align 4
  store i32 %48, i32* %a1_i, align 4
  %49 = load i32* %a1_i, align 4
  %50 = load i32* %dist, align 4
  %add42 = add nsw i32 %49, %50
  %sub43 = sub nsw i32 %add42, 1
  store i32 %sub43, i32* %a1_e, align 4
  %51 = load i32* %a1_e, align 4
  %add44 = add nsw i32 %51, 1
  store i32 %add44, i32* %a2_i, align 4
  %52 = load i32* %a2_i, align 4
  %53 = load i32* %dist, align 4
  %add45 = add nsw i32 %52, %53
  %sub46 = sub nsw i32 %add45, 1
  %54 = load i32* %end.addr, align 4
  %cmp47 = icmp sgt i32 %sub46, %54
  br i1 %cmp47, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %for.end41
  %55 = load i32* %end.addr, align 4
  br label %cond.end52

cond.false49:                                     ; preds = %for.end41
  %56 = load i32* %a2_i, align 4
  %57 = load i32* %dist, align 4
  %add50 = add nsw i32 %56, %57
  %sub51 = sub nsw i32 %add50, 1
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false49, %cond.true48
  %cond53 = phi i32 [ %55, %cond.true48 ], [ %sub51, %cond.false49 ]
  store i32 %cond53, i32* %a2_e, align 4
  br label %while.cond10

while.end:                                        ; preds = %while.cond10
  br label %for.cond54

for.cond54:                                       ; preds = %for.body56, %while.end
  %58 = load i32* %a1_i, align 4
  %59 = load i32* %end.addr, align 4
  %cmp55 = icmp sle i32 %58, %59
  br i1 %cmp55, label %for.body56, label %for.end61

for.body56:                                       ; preds = %for.cond54
  %60 = load i32* %a1_i, align 4
  %inc57 = add nsw i32 %60, 1
  store i32 %inc57, i32* %a1_i, align 4
  %61 = load i32** %Array.addr, align 4
  %arrayidx58 = getelementptr inbounds i32* %61, i32 %60
  %62 = load i32* %arrayidx58, align 4
  %63 = load i32* %k, align 4
  %inc59 = add nsw i32 %63, 1
  store i32 %inc59, i32* %k, align 4
  %arrayidx60 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %63
  store i32 %62, i32* %arrayidx60, align 4
  br label %for.cond54

for.end61:                                        ; preds = %for.cond54
  %64 = load i32* %start.addr, align 4
  store i32 %64, i32* %i, align 4
  store i32 0, i32* %k62, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.body65, %for.end61
  %65 = load i32* %i, align 4
  %66 = load i32* %end.addr, align 4
  %cmp64 = icmp sle i32 %65, %66
  br i1 %cmp64, label %for.body65, label %for.end70

for.body65:                                       ; preds = %for.cond63
  %67 = load i32* %k62, align 4
  %inc66 = add nsw i32 %67, 1
  store i32 %inc66, i32* %k62, align 4
  %arrayidx67 = getelementptr inbounds [10 x i32]* @t_array, i32 0, i32 %67
  %68 = load i32* %arrayidx67, align 4
  %69 = load i32* %i, align 4
  %inc68 = add nsw i32 %69, 1
  store i32 %inc68, i32* %i, align 4
  %70 = load i32** %Array.addr, align 4
  %arrayidx69 = getelementptr inbounds i32* %70, i32 %69
  store i32 %68, i32* %arrayidx69, align 4
  br label %for.cond63

for.end70:                                        ; preds = %for.cond63
  %71 = load i32* %dist, align 4
  %mul = mul nsw i32 %71, 2
  store i32 %mul, i32* %dist, align 4
  br label %while.cond

while.end71:                                      ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end71, %if.then
  %72 = load i32* %retval
  ret i32 %72
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
