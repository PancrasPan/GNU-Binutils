; ModuleID = './c_standard_lib-master/MATH/XPOLY.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define double @_Poly(double %x, double* %tab, i32 %n) #0 {
entry:
  %x.addr = alloca double, align 8
  %tab.addr = alloca double*, align 4
  %n.addr = alloca i32, align 4
  %y = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double* %tab, double** %tab.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load double** %tab.addr, align 4
  %1 = load double* %0, align 8
  store double %1, double* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32* %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp = icmp sle i32 0, %dec
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double* %y, align 8
  %4 = load double* %x.addr, align 8
  %mul = fmul double %3, %4
  %5 = load double** %tab.addr, align 4
  %incdec.ptr = getelementptr inbounds double* %5, i32 1
  store double* %incdec.ptr, double** %tab.addr, align 4
  %6 = load double* %incdec.ptr, align 8
  %add = fadd double %mul, %6
  store double %add, double* %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double* %y, align 8
  ret double %7
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
