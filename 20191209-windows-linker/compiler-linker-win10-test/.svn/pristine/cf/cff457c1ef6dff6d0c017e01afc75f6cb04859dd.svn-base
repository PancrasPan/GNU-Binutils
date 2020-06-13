; ModuleID = './c_standard_lib-master/STRING/MEMCHR.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @memchr(i8* %s, i32 %c, i32 %n) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %c.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %su = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, i8* %uc, align 1
  %1 = load i8** %s.addr, align 4
  store i8* %1, i8** %su, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %n.addr, align 4
  %cmp = icmp ult i32 0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8** %su, align 4
  %4 = load i8* %3, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i8* %uc, align 1
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8** %su, align 4
  store i8* %6, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8** %su, align 4
  %incdec.ptr = getelementptr inbounds i8* %7, i32 1
  store i8* %incdec.ptr, i8** %su, align 4
  %8 = load i32* %n.addr, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i8** %retval
  ret i8* %9
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
