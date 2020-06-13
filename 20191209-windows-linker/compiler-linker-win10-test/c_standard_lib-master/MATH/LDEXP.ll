; ModuleID = './c_standard_lib-master/MATH/LDEXP.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@errno = external global i32

; Function Attrs: nounwind
define double @ldexp(double %x, i32 %xexp) #0 {
entry:
  %x.addr = alloca double, align 8
  %xexp.addr = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store i32 %xexp, i32* %xexp.addr, align 4
  %call = call signext i16 @_Dtest(double* %x.addr)
  %conv = sext i16 %call to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 33, i32* @errno, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 34, i32* @errno, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %0 = load i32* %xexp.addr, align 4
  %conv3 = trunc i32 %0 to i16
  %call4 = call signext i16 @_Dscale(double* %x.addr, i16 signext %conv3)
  %conv5 = sext i16 %call4 to i32
  %cmp = icmp sle i32 0, %conv5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i32 34, i32* @errno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load double* %x.addr, align 8
  ret double %1
}

declare signext i16 @_Dtest(double*) #1

declare signext i16 @_Dscale(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
