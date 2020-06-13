; ModuleID = './c_standard_lib-master/STRING/MEMCPY.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @memcpy(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %su1 = alloca i8*, align 4
  %su2 = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %su1, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %su2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %n.addr, align 4
  %cmp = icmp ult i32 0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8** %su2, align 4
  %4 = load i8* %3, align 1
  %5 = load i8** %su1, align 4
  store i8 %4, i8* %5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8** %su1, align 4
  %incdec.ptr = getelementptr inbounds i8* %6, i32 1
  store i8* %incdec.ptr, i8** %su1, align 4
  %7 = load i8** %su2, align 4
  %incdec.ptr1 = getelementptr inbounds i8* %7, i32 1
  store i8* %incdec.ptr1, i8** %su2, align 4
  %8 = load i32* %n.addr, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8** %s1.addr, align 4
  ret i8* %9
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
