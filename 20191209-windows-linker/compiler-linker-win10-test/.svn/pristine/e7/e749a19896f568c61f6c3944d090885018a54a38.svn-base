; ModuleID = './c_standard_lib-master/STRING/STRLEN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @strlen(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %sc = alloca i8*, align 4
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8** %s.addr, align 4
  store i8* %0, i8** %sc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8** %sc, align 4
  %2 = load i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i8** %sc, align 4
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr, i8** %sc, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i8** %sc, align 4
  %5 = load i8** %s.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
