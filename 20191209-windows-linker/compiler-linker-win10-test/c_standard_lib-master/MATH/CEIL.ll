; ModuleID = './c_standard_lib-master/MATH/CEIL.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readnone
define double @ceil(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double* %x.addr, align 8
  store double %0, double* %y, align 8
  %call = call signext i16 @_Dint(double* %y, i16 signext 0)
  %conv = sext i16 %call to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load double* %x.addr, align 8
  %cmp2 = fcmp olt double 0.000000e+00, %1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load double* %y, align 8
  %add = fadd double %2, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %3 = load double* %y, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %3, %cond.false ]
  ret double %cond
}

declare signext i16 @_Dint(double*, i16 signext) #1

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
