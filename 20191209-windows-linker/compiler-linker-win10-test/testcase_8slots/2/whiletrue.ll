; ModuleID = './testcase_8slots/2/whiletrue.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@bound = external global i32
@flagsar = external global [10 x i32]

; Function Attrs: nounwind
define i32 @check(i32* %Array, i32 %start, i32 %end) #0 {
entry:
  %Array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %flag, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32* %i, align 4
  %1 = load i32** %Array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %1, i32 %0
  %2 = load i32* %arrayidx, align 4
  %3 = load i32* %i, align 4
  %add = add nsw i32 %3, 1
  %4 = load i32** %Array.addr, align 4
  %arrayidx1 = getelementptr inbounds i32* %4, i32 %add
  %5 = load i32* %arrayidx1, align 4
  %cmp = icmp sgt i32 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %6 = load i32* %i, align 4
  %7 = load i32* @bound, align 4
  %cmp2 = icmp sge i32 %6, %7
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %do.end

if.end4:                                          ; preds = %if.end
  %8 = load i32* %i, align 4
  %arrayidx5 = getelementptr inbounds [10 x i32]* @flagsar, i32 0, i32 %8
  store i32 -1, i32* %arrayidx5, align 4
  %9 = load i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end4
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then3
  %10 = load i32* %flag, align 4
  ret i32 %10
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
