; ModuleID = './c_standard_lib-master/STRING/STRSTR.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strstr(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i8*, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %sc1 = alloca i8*, align 4
  %sc2 = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s2.addr, align 4
  %1 = load i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8** %s1.addr, align 4
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8** %s1.addr, align 4
  %4 = load i8** %s2.addr, align 4
  %5 = load i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %call = call i8* @strchr(i8* %3, i32 %conv2)
  store i8* %call, i8** %s1.addr, align 4
  %cmp3 = icmp ne i8* %call, null
  br i1 %cmp3, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %6 = load i8** %s1.addr, align 4
  store i8* %6, i8** %sc1, align 4
  %7 = load i8** %s2.addr, align 4
  store i8* %7, i8** %sc2, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %if.end17, %for.body
  %8 = load i8** %sc2, align 4
  %incdec.ptr = getelementptr inbounds i8* %8, i32 1
  store i8* %incdec.ptr, i8** %sc2, align 4
  %9 = load i8* %incdec.ptr, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.cond5
  %10 = load i8** %s1.addr, align 4
  store i8* %10, i8** %retval
  br label %return

if.else:                                          ; preds = %for.cond5
  %11 = load i8** %sc1, align 4
  %incdec.ptr10 = getelementptr inbounds i8* %11, i32 1
  store i8* %incdec.ptr10, i8** %sc1, align 4
  %12 = load i8* %incdec.ptr10, align 1
  %conv11 = sext i8 %12 to i32
  %13 = load i8** %sc2, align 4
  %14 = load i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv11, %conv12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  br label %for.end

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %for.cond5

for.end:                                          ; preds = %if.then15
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %15 = load i8** %s1.addr, align 4
  %incdec.ptr18 = getelementptr inbounds i8* %15, i32 1
  store i8* %incdec.ptr18, i8** %s1.addr, align 4
  br label %for.cond

for.end19:                                        ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end19, %if.then9, %if.then
  %16 = load i8** %retval
  ret i8* %16
}

declare i8* @strchr(i8*, i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
