; ModuleID = './c_standard_lib-master/STRING/STRCMP.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @strcmp(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8** %s1.addr, align 4
  %1 = load i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8** %s2.addr, align 4
  %3 = load i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8** %s1.addr, align 4
  %5 = load i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8** %s1.addr, align 4
  %incdec.ptr = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 4
  %7 = load i8** %s2.addr, align 4
  %incdec.ptr6 = getelementptr inbounds i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %s2.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8** %s1.addr, align 4
  %9 = load i8* %8, align 1
  %conv7 = zext i8 %9 to i32
  %10 = load i8** %s2.addr, align 4
  %11 = load i8* %10, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp slt i32 %conv7, %conv8
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then11, %if.then
  %12 = load i32* %retval
  ret i32 %12
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
