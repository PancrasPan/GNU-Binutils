; ModuleID = './testcase_4slots/select.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @sum(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32* %a.addr, align 4
  %1 = load i32* %b.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i16, align 2
  %m = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i8, align 1
  %n = alloca i8, align 1
  store i32 0, i32* %retval
  store i16 5, i16* %k, align 2
  store i16 7, i16* %m, align 2
  %0 = load i16* %k, align 2
  %conv = sext i16 %0 to i32
  %sub = sub nsw i32 0, %conv
  %1 = load i16* %m, align 2
  %conv1 = sext i16 %1 to i32
  %sub2 = sub nsw i32 0, %conv1
  %call = call i32 @sum(i32 %sub, i32 %sub2)
  store i32 9, i32* %i, align 4
  store i32 2, i32* %j, align 4
  %2 = load i16* %m, align 2
  %conv3 = sext i16 %2 to i32
  %3 = load i32* %i, align 4
  %add = add nsw i32 %conv3, %3
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %k, align 2
  %4 = load i16* %m, align 2
  %conv5 = sext i16 %4 to i32
  %5 = load i16* %k, align 2
  %conv6 = sext i16 %5 to i32
  %sub7 = sub nsw i32 %conv5, %conv6
  store i32 %sub7, i32* %i, align 4
  %6 = load i32* %i, align 4
  %sub8 = sub nsw i32 0, %6
  %7 = load i32* %j, align 4
  %sub9 = sub nsw i32 0, %7
  %call10 = call i32 @sum(i32 %sub8, i32 %sub9)
  store i8 8, i8* %l, align 1
  store i8 6, i8* %n, align 1
  %8 = load i8* %l, align 1
  %conv11 = sext i8 %8 to i32
  %sub12 = sub nsw i32 0, %conv11
  %9 = load i8* %n, align 1
  %conv13 = sext i8 %9 to i32
  %sub14 = sub nsw i32 0, %conv13
  %call15 = call i32 @sum(i32 %sub12, i32 %sub14)
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
