; ModuleID = './c_standard_lib-master/STRING/MEMMOVE.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i8* @memmove(i8* %s1, i8* %s2, i32 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 4
  %s2.addr = alloca i8*, align 4
  %n.addr = alloca i32, align 4
  %sc1 = alloca i8*, align 4
  %sc2 = alloca i8*, align 4
  store i8* %s1, i8** %s1.addr, align 4
  store i8* %s2, i8** %s2.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8** %s1.addr, align 4
  store i8* %0, i8** %sc1, align 4
  %1 = load i8** %s2.addr, align 4
  store i8* %1, i8** %sc2, align 4
  %2 = load i8** %sc2, align 4
  %3 = load i8** %sc1, align 4
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8** %sc1, align 4
  %5 = load i8** %sc2, align 4
  %6 = load i32* %n.addr, align 4
  %add.ptr = getelementptr inbounds i8* %5, i32 %6
  %cmp1 = icmp ult i8* %4, %add.ptr
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32* %n.addr, align 4
  %8 = load i8** %sc1, align 4
  %add.ptr2 = getelementptr inbounds i8* %8, i32 %7
  store i8* %add.ptr2, i8** %sc1, align 4
  %9 = load i32* %n.addr, align 4
  %10 = load i8** %sc2, align 4
  %add.ptr3 = getelementptr inbounds i8* %10, i32 %9
  store i8* %add.ptr3, i8** %sc2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32* %n.addr, align 4
  %cmp4 = icmp ult i32 0, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8** %sc2, align 4
  %incdec.ptr = getelementptr inbounds i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %sc2, align 4
  %13 = load i8* %incdec.ptr, align 1
  %14 = load i8** %sc1, align 4
  %incdec.ptr5 = getelementptr inbounds i8* %14, i32 -1
  store i8* %incdec.ptr5, i8** %sc1, align 4
  store i8 %13, i8* %incdec.ptr5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32* %n.addr, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc11, %if.else
  %16 = load i32* %n.addr, align 4
  %cmp7 = icmp ult i32 0, %16
  br i1 %cmp7, label %for.body8, label %for.end13

for.body8:                                        ; preds = %for.cond6
  %17 = load i8** %sc2, align 4
  %incdec.ptr9 = getelementptr inbounds i8* %17, i32 1
  store i8* %incdec.ptr9, i8** %sc2, align 4
  %18 = load i8* %17, align 1
  %19 = load i8** %sc1, align 4
  %incdec.ptr10 = getelementptr inbounds i8* %19, i32 1
  store i8* %incdec.ptr10, i8** %sc1, align 4
  store i8 %18, i8* %19, align 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.body8
  %20 = load i32* %n.addr, align 4
  %dec12 = add i32 %20, -1
  store i32 %dec12, i32* %n.addr, align 4
  br label %for.cond6

for.end13:                                        ; preds = %for.cond6
  br label %if.end

if.end:                                           ; preds = %for.end13, %for.end
  %21 = load i8** %s1.addr, align 4
  ret i8* %21
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
