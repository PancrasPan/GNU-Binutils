; ModuleID = './testcase_8slots/string\strtok.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@strtok.p = internal global i8* null, align 4

; Function Attrs: nounwind
define i8* @strtok(i8* noalias %s1, i8* noalias %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %t = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8** %s1.addr, align 4
  store i8* %1, i8** @strtok.p, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8** @strtok.p, align 4
  %3 = load i8** %s2.addr, align 4
  %call = call i32 @strspn(i8* %2, i8* %3)
  %4 = load i8** @strtok.p, align 4
  %add.ptr = getelementptr inbounds i8* %4, i32 %call
  store i8* %add.ptr, i8** @strtok.p, align 4
  %5 = load i8** @strtok.p, align 4
  store i8* %5, i8** %t, align 4
  %6 = load i8** @strtok.p, align 4
  %7 = load i8** %s2.addr, align 4
  %call1 = call i8* @strpbrk(i8* %6, i8* %7)
  store i8* %call1, i8** @strtok.p, align 4
  %8 = load i8** @strtok.p, align 4
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load i8** @strtok.p, align 4
  %incdec.ptr = getelementptr inbounds i8* %9, i32 1
  store i8* %incdec.ptr, i8** @strtok.p, align 4
  store i8 0, i8* %9, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load i8** %t, align 4
  ret i8* %10
}

declare i32 @strspn(i8*, i8*) #1

declare i8* @strpbrk(i8*, i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
