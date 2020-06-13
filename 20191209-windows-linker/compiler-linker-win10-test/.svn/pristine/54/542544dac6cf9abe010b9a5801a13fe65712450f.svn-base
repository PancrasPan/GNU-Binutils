; ModuleID = './c_standard_lib-master/STRING/STRCPY.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strcpy(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %s = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %s, align 4
  %1 = load i8** %s1.addr, align 4
  store i8* %1, i8** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i8** %s2.addr, align 4
  %incdec.ptr = getelementptr inbounds i8* %2, i32 1
  store i8* %incdec.ptr, i8** %s2.addr, align 4
  %3 = load i8* %2, align 1
  %4 = load i8** %s, align 4
  %incdec.ptr1 = getelementptr inbounds i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %s, align 4
  store i8 %3, i8* %4, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i8** %s1.addr, align 4
  ret i8* %5
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
