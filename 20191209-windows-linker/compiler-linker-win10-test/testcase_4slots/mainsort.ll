; ModuleID = './testcase_4slots/mainsort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.Array = private unnamed_addr constant [5 x i32] [i32 3, i32 1, i32 4, i32 2, i32 5], align 4

; Function Attrs: nounwind
define i32 @check(i32* %Array, i32 %start, i32 %end) #0 {
entry:
  %Array.addr = alloca i32*, align 4
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %flag = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %Array, i32** %Array.addr, align 4
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store i32 0, i32* %flag, align 4
  %0 = load i32* %start.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %2 = load i32* %end.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4
  %4 = load i32** %Array.addr, align 4
  %arrayidx = getelementptr inbounds i32* %4, i32 %3
  %5 = load i32* %arrayidx, align 4
  %6 = load i32* %i, align 4
  %add = add nsw i32 %6, 1
  %7 = load i32** %Array.addr, align 4
  %arrayidx1 = getelementptr inbounds i32* %7, i32 %add
  %8 = load i32* %arrayidx1, align 4
  %cmp2 = icmp sgt i32 %5, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -2, i32* %flag, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32* %flag, align 4
  ret i32 %10
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sortret = alloca i32, align 4
  %Array = alloca [5 x i32], align 4
  store i32 0, i32* %retval
  %0 = bitcast [5 x i32]* %Array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast ([5 x i32]* @main.Array to i8*), i32 20, i32 4, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32]* %Array, i32 0, i32 0
  %call = call i32 @qsort(i32* %arraydecay, i32 0, i32 4)
  store i32 %call, i32* %sortret, align 4
  %1 = load i32* %sortret, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [5 x i32]* %Array, i32 0, i32 0
  %call2 = call i32 @check(i32* %arraydecay1, i32 0, i32 4)
  store i32 %call2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

declare i32 @qsort(i32*, i32, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
