; ModuleID = './c_standard_lib-master/STRING/STRCHR.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strchr(i8* %s, i32 %c) #0 {
entry:
  %retval = alloca i8*, align 4
  %s.addr = alloca i8*, align 4
  %c.addr = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, i8* %ch, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8** %s.addr, align 4
  %2 = load i8* %1, align 1
  %conv1 = sext i8 %2 to i32
  %3 = load i8* %ch, align 1
  %conv2 = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv1, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8** %s.addr, align 4
  %5 = load i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8** %s.addr, align 4
  %incdec.ptr = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8** %s.addr, align 4
  store i8* %7, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i8** %retval
  ret i8* %8
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
