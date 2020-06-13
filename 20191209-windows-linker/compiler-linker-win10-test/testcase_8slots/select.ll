; ModuleID = './testcase_8slots/1\select.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@memcmp.c = private unnamed_addr constant [4 x i8] c"abcd", align 1
@memcmp.d = internal constant [4 x i8] c"abcd", align 1
@memcmp.e = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4
@memcmp.f = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4

; Function Attrs: nounwind
define i32 @memcmp(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %l = alloca i8*, align 4
  %r = alloca i8*, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca [4 x i8], align 1
  %e = alloca [5 x i32], align 4
  %f = alloca [5 x i32], align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %l, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %r, align 4
  store i32 1, i32* %a, align 4
  store i32 5, i32* %b, align 4
  %2 = load i32* %b, align 4
  %3 = load i32* %a, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %a, align 4
  %4 = bitcast [4 x i8]* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* getelementptr inbounds ([4 x i8]* @memcmp.c, i32 0, i32 0), i32 4, i32 1, i1 false)
  %5 = bitcast [5 x i32]* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* bitcast ([5 x i32]* @memcmp.e to i8*), i32 20, i32 4, i1 false)
  %6 = bitcast [5 x i32]* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* bitcast ([5 x i32]* @memcmp.f to i8*), i32 20, i32 4, i1 false)
  %arrayidx = getelementptr inbounds [5 x i32]* %f, i32 0, i32 2
  %7 = load i32* %arrayidx, align 4
  %add1 = add nsw i32 %7, 3
  %arrayidx2 = getelementptr inbounds [5 x i32]* %e, i32 0, i32 4
  store i32 %add1, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [4 x i8]* %c, i32 0, i32 0
  %8 = load i8* %arrayidx3, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %arrayidx3, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i32* %n.addr, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8** %l, align 4
  %incdec.ptr = getelementptr inbounds i8* %10, i32 1
  store i8* %incdec.ptr, i8** %l, align 4
  %11 = load i8* %10, align 1
  %conv = zext i8 %11 to i32
  %12 = load i8** %r, align 4
  %incdec.ptr4 = getelementptr inbounds i8* %12, i32 1
  store i8* %incdec.ptr4, i8** %r, align 4
  %13 = load i8* %12, align 1
  %conv5 = zext i8 %13 to i32
  %cmp = icmp ne i32 %conv, %conv5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load i8** %l, align 4
  %arrayidx7 = getelementptr inbounds i8* %14, i32 -1
  %15 = load i8* %arrayidx7, align 1
  %conv8 = zext i8 %15 to i32
  %16 = load i8** %r, align 4
  %arrayidx9 = getelementptr inbounds i8* %16, i32 -1
  %17 = load i8* %arrayidx9, align 1
  %conv10 = zext i8 %17 to i32
  %cmp11 = icmp slt i32 %conv8, %conv10
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %18 = load i32* %a, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load i32* %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %cond.end
  %20 = load i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
