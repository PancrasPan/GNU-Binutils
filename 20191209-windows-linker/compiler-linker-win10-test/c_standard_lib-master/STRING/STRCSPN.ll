; ModuleID = './c_standard_lib-master/STRING/STRCSPN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @strcspn(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %sc1 = alloca i8*, align 4
  %sc2 = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %sc1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i8** %sc1, align 4
  %2 = load i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %3 = load i8** %s2.addr, align 4
  store i8* %3, i8** %sc2, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i8** %sc2, align 4
  %5 = load i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %6 = load i8** %sc1, align 4
  %7 = load i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %8 = load i8** %sc2, align 4
  %9 = load i8* %8, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %10 = load i8** %sc1, align 4
  %11 = load i8** %s1.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i32 %sub.ptr.sub, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i8** %sc2, align 4
  %incdec.ptr = getelementptr inbounds i8* %12, i32 1
  store i8* %incdec.ptr, i8** %sc2, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %13 = load i8** %sc1, align 4
  %incdec.ptr12 = getelementptr inbounds i8* %13, i32 1
  store i8* %incdec.ptr12, i8** %sc1, align 4
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  %14 = load i8** %sc1, align 4
  %15 = load i8** %s1.addr, align 4
  %sub.ptr.lhs.cast14 = ptrtoint i8* %14 to i32
  %sub.ptr.rhs.cast15 = ptrtoint i8* %15 to i32
  %sub.ptr.sub16 = sub i32 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  store i32 %sub.ptr.sub16, i32* %retval
  br label %return

return:                                           ; preds = %for.end13, %if.then
  %16 = load i32* %retval
  ret i32 %16
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
