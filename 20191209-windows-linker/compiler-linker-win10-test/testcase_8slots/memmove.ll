; ModuleID = './testcase_8slots/string\memmove.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @memmove(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %retval = alloca i8*, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %d = alloca i8*, align 4
  %s = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %d, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %s, align 4
  %2 = load i8** %d, align 4
  %3 = load i8** %s, align 4
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8** %s1.addr, align 4
  %5 = load i8** %s2.addr, align 4
  %6 = load i32* %n.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 %6, i32 1, i1 false)
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32* %n.addr, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32* %n.addr, align 4
  %9 = load i8** %s, align 4
  %arrayidx = getelementptr inbounds i8* %9, i32 %8
  %10 = load i8* %arrayidx, align 1
  %11 = load i32* %n.addr, align 4
  %12 = load i8** %d, align 4
  %arrayidx1 = getelementptr inbounds i8* %12, i32 %11
  store i8 %10, i8* %arrayidx1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i8** %s1.addr, align 4
  store i8* %13, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
