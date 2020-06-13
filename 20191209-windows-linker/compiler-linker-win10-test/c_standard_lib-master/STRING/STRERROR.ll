; ModuleID = './c_standard_lib-master/STRING/STRERROR.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@_Strerror.sbuf = internal global [11 x i8] c"error #xxx\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"range error\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"file positioning error\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"error #xxx\00", align 1

; Function Attrs: nounwind
define i8* @_Strerror(i32 %errcode, i8* %buf) #0 {
entry:
  %retval = alloca i8*, align 4
  %errcode.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  store i32 %errcode, i32* %errcode.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  %0 = load i8** %buf.addr, align 4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8]* @_Strerror.sbuf, i32 0, i32 0), i8** %buf.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32* %errcode.addr, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 33, label %sw.bb1
    i32 34, label %sw.bb2
    i32 35, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

sw.bb1:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i8** %retval
  br label %return

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i8** %retval
  br label %return

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %2 = load i32* %errcode.addr, align 4
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %3 = load i32* %errcode.addr, align 4
  %cmp5 = icmp sle i32 36, %3
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %sw.default
  store i8* getelementptr inbounds ([14 x i8]* @.str4, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i8** %buf.addr, align 4
  %call = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0))
  %5 = load i32* %errcode.addr, align 4
  %rem = srem i32 %5, 10
  %add = add nsw i32 %rem, 48
  %conv = trunc i32 %add to i8
  %6 = load i8** %buf.addr, align 4
  %arrayidx = getelementptr inbounds i8* %6, i32 9
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load i32* %errcode.addr, align 4
  %div = sdiv i32 %7, 10
  store i32 %div, i32* %errcode.addr, align 4
  %rem7 = srem i32 %div, 10
  %add8 = add nsw i32 %rem7, 48
  %conv9 = trunc i32 %add8 to i8
  %8 = load i8** %buf.addr, align 4
  %arrayidx10 = getelementptr inbounds i8* %8, i32 8
  store i8 %conv9, i8* %arrayidx10, align 1
  %9 = load i32* %errcode.addr, align 4
  %div11 = sdiv i32 %9, 10
  %rem12 = srem i32 %div11, 10
  %add13 = add nsw i32 %rem12, 48
  %conv14 = trunc i32 %add13 to i8
  %10 = load i8** %buf.addr, align 4
  %arrayidx15 = getelementptr inbounds i8* %10, i32 7
  store i8 %conv14, i8* %arrayidx15, align 1
  %11 = load i8** %buf.addr, align 4
  store i8* %11, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then6, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %12 = load i8** %retval
  ret i8* %12
}

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
define i8* @strerror(i32 %errcode) #0 {
entry:
  %errcode.addr = alloca i32, align 4
  store i32 %errcode, i32* %errcode.addr, align 4
  %0 = load i32* %errcode.addr, align 4
  %call = call i8* @_Strerror(i32 %0, i8* null)
  ret i8* %call
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
