; ModuleID = './c_standard_lib-master/STRING/STRTOK.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@strtok.ssave = internal global i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define i8* @strtok(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i8*, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %sbegin = alloca i8*, align 4
  %send = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8** %s1.addr, align 4
  store i8* %1, i8** %sbegin, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8** @strtok.ssave, align 4
  store i8* %2, i8** %sbegin, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8** %sbegin, align 4
  %4 = load i8** %s2.addr, align 4
  %call = call i32 @strspn(i8* %3, i8* %4)
  %5 = load i8** %sbegin, align 4
  %add.ptr = getelementptr inbounds i8* %5, i32 %call
  store i8* %add.ptr, i8** %sbegin, align 4
  %6 = load i8** %sbegin, align 4
  %7 = load i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** @strtok.ssave, align 4
  store i8* null, i8** %retval
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load i8** %sbegin, align 4
  %9 = load i8** %sbegin, align 4
  %10 = load i8** %s2.addr, align 4
  %call4 = call i32 @strcspn(i8* %9, i8* %10)
  %add.ptr5 = getelementptr inbounds i8* %8, i32 %call4
  store i8* %add.ptr5, i8** %send, align 4
  %11 = load i8** %send, align 4
  %12 = load i8* %11, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end3
  %13 = load i8** %send, align 4
  %incdec.ptr = getelementptr inbounds i8* %13, i32 1
  store i8* %incdec.ptr, i8** %send, align 4
  store i8 0, i8* %13, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end3
  %14 = load i8** %send, align 4
  store i8* %14, i8** @strtok.ssave, align 4
  %15 = load i8** %sbegin, align 4
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %if.end10, %if.then2
  %16 = load i8** %retval
  ret i8* %16
}

declare i32 @strspn(i8*, i8*) #1

declare i32 @strcspn(i8*, i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
