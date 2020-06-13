; ModuleID = './c_standard_lib-master/_DUMMY/TMPNAM.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@tmpnam.buf = internal global [16 x i8] zeroinitializer, align 1
@tmpnam.seed = internal global i16 0, align 2
@.str = private unnamed_addr constant [4 x i8] c"ctm\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1

; Function Attrs: nounwind
define i8* @tmpnam(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 4
  %t = alloca i16, align 2
  store i8* %s, i8** %s.addr, align 4
  %0 = load i8** %s.addr, align 4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8]* @tmpnam.buf, i32 0, i32 0), i8** %s.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i16* @tmpnam.seed, align 2
  %inc = add i16 %1, 1
  store i16 %inc, i16* @tmpnam.seed, align 2
  %2 = load i8** %s.addr, align 4
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0))
  store i32 5, i32* %i, align 4
  %3 = load i8** %s.addr, align 4
  %4 = load i8** %s.addr, align 4
  %call1 = call i32 @strlen(i8* %4)
  %add.ptr = getelementptr inbounds i8* %3, i32 %call1
  %5 = load i32* %i, align 4
  %add.ptr2 = getelementptr inbounds i8* %add.ptr, i32 %5
  store i8* %add.ptr2, i8** %p, align 4
  %6 = load i8** %p, align 4
  %call3 = call i8* @strcpy(i8* %6, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0))
  %7 = load i16* @tmpnam.seed, align 2
  store i16 %7, i16* %t, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  %cmp4 = icmp sle i32 0, %dec
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i16* %t, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 7
  %add = add nsw i32 48, %and
  %conv5 = trunc i32 %add to i8
  %10 = load i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %p, align 4
  store i8 %conv5, i8* %incdec.ptr, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i16* %t, align 2
  %conv6 = zext i16 %11 to i32
  %shr = ashr i32 %conv6, 3
  %conv7 = trunc i32 %shr to i16
  store i16 %conv7, i16* %t, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i8** %s.addr, align 4
  ret i8* %12
}

declare i8* @strcpy(i8*, i8*) #1

declare i32 @strlen(i8*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
