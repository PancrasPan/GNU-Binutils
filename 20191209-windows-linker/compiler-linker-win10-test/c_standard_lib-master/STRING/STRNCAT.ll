; ModuleID = './c_standard_lib-master/STRING/STRNCAT.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @strncat(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8** %s, align 4
  %2 = load i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i8** %s, align 4
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.end
  %4 = load i32* %n.addr, align 4
  %cmp3 = icmp ult i32 0, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond2
  %5 = load i8** %s2.addr, align 4
  %6 = load i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond2
  %7 = phi i1 [ false, %for.cond2 ], [ %cmp6, %land.rhs ]
  br i1 %7, label %for.body8, label %for.end12

for.body8:                                        ; preds = %land.end
  %8 = load i8** %s2.addr, align 4
  %incdec.ptr9 = getelementptr inbounds i8* %8, i32 1
  store i8* %incdec.ptr9, i8** %s2.addr, align 4
  %9 = load i8* %8, align 1
  %10 = load i8** %s, align 4
  %incdec.ptr10 = getelementptr inbounds i8* %10, i32 1
  store i8* %incdec.ptr10, i8** %s, align 4
  store i8 %9, i8* %10, align 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.body8
  %11 = load i32* %n.addr, align 4
  %dec = add i32 %11, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond2

for.end12:                                        ; preds = %land.end
  %12 = load i8** %s, align 4
  store i8 0, i8* %12, align 1
  %13 = load i8** %s1.addr, align 4
  ret i8* %13
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
