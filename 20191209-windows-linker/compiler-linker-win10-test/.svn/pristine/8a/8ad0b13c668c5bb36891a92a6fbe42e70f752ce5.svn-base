; ModuleID = './c_standard_lib-master/MATH/XDSCALE.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@_Inf = external constant %union.anon

; Function Attrs: nounwind
define signext i16 @_Dscale(double* %px, i16 signext %xexp) #0 {
entry:
  %retval = alloca i16, align 2
  %px.addr = alloca double*, align 4
  %xexp.addr = alloca i16, align 2
  %lexp = alloca i32, align 4
  %ps = alloca i16*, align 4
  %xchar = alloca i16, align 2
  %sign = alloca i16, align 2
  store double* %px, double** %px.addr, align 4
  store i16 %xexp, i16* %xexp.addr, align 2
  %0 = load double** %px.addr, align 4
  %1 = bitcast double* %0 to i16*
  store i16* %1, i16** %ps, align 4
  %2 = load i16** %ps, align 4
  %arrayidx = getelementptr inbounds i16* %2, i32 3
  %3 = load i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32752
  %shr = ashr i32 %and, 4
  %conv1 = trunc i32 %shr to i16
  store i16 %conv1, i16* %xchar, align 2
  %4 = load i16* %xchar, align 2
  %conv2 = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv2, 2047
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %5 = load i16** %ps, align 4
  %arrayidx4 = getelementptr inbounds i16* %5, i32 3
  %6 = load i16* %arrayidx4, align 2
  %conv5 = zext i16 %6 to i32
  %and6 = and i32 %conv5, 15
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i16** %ps, align 4
  %arrayidx7 = getelementptr inbounds i16* %7, i32 2
  %8 = load i16* %arrayidx7, align 2
  %conv8 = zext i16 %8 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then18, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %9 = load i16** %ps, align 4
  %arrayidx11 = getelementptr inbounds i16* %9, i32 1
  %10 = load i16* %arrayidx11, align 2
  %conv12 = zext i16 %10 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %11 = load i16** %ps, align 4
  %arrayidx15 = getelementptr inbounds i16* %11, i32 0
  %12 = load i16* %arrayidx15, align 2
  %conv16 = zext i16 %12 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %if.then
  store i16 2, i16* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false14
  store i16 1, i16* %retval
  br label %return

if.else19:                                        ; preds = %entry
  %13 = load i16* %xchar, align 2
  %conv20 = sext i16 %13 to i32
  %cmp21 = icmp slt i32 0, %conv20
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else19
  br label %if.end29

if.else24:                                        ; preds = %if.else19
  %14 = load i16** %ps, align 4
  %call = call signext i16 @_Dnorm(i16* %14)
  store i16 %call, i16* %xchar, align 2
  %conv25 = sext i16 %call to i32
  %cmp26 = icmp slt i32 0, %conv25
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.else24
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %if.else24
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then23
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  %15 = load i16* %xexp.addr, align 2
  %conv31 = sext i16 %15 to i32
  %16 = load i16* %xchar, align 2
  %conv32 = sext i16 %16 to i32
  %add = add nsw i32 %conv31, %conv32
  store i32 %add, i32* %lexp, align 4
  %17 = load i32* %lexp, align 4
  %cmp33 = icmp sle i32 2047, %17
  br i1 %cmp33, label %if.then35, label %if.else43

if.then35:                                        ; preds = %if.end30
  %18 = load i16** %ps, align 4
  %arrayidx36 = getelementptr inbounds i16* %18, i32 3
  %19 = load i16* %arrayidx36, align 2
  %conv37 = zext i16 %19 to i32
  %and38 = and i32 %conv37, 32768
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.then35
  %20 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  %sub = fsub double -0.000000e+00, %20
  %21 = load double** %px.addr, align 4
  store double %sub, double* %21, align 8
  br label %if.end42

if.else41:                                        ; preds = %if.then35
  %22 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  %23 = load double** %px.addr, align 4
  store double %22, double* %23, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  store i16 1, i16* %retval
  br label %return

if.else43:                                        ; preds = %if.end30
  %24 = load i32* %lexp, align 4
  %cmp44 = icmp slt i32 0, %24
  br i1 %cmp44, label %if.then46, label %if.else54

if.then46:                                        ; preds = %if.else43
  %25 = load i16** %ps, align 4
  %arrayidx47 = getelementptr inbounds i16* %25, i32 3
  %26 = load i16* %arrayidx47, align 2
  %conv48 = zext i16 %26 to i32
  %and49 = and i32 %conv48, -32753
  %27 = load i32* %lexp, align 4
  %conv50 = trunc i32 %27 to i16
  %conv51 = sext i16 %conv50 to i32
  %shl = shl i32 %conv51, 4
  %or = or i32 %and49, %shl
  %conv52 = trunc i32 %or to i16
  %28 = load i16** %ps, align 4
  %arrayidx53 = getelementptr inbounds i16* %28, i32 3
  store i16 %conv52, i16* %arrayidx53, align 2
  store i16 -1, i16* %retval
  br label %return

if.else54:                                        ; preds = %if.else43
  %29 = load i16** %ps, align 4
  %arrayidx55 = getelementptr inbounds i16* %29, i32 3
  %30 = load i16* %arrayidx55, align 2
  %conv56 = zext i16 %30 to i32
  %and57 = and i32 %conv56, 32768
  %conv58 = trunc i32 %and57 to i16
  store i16 %conv58, i16* %sign, align 2
  %31 = load i16** %ps, align 4
  %arrayidx59 = getelementptr inbounds i16* %31, i32 3
  %32 = load i16* %arrayidx59, align 2
  %conv60 = zext i16 %32 to i32
  %and61 = and i32 %conv60, 15
  %or62 = or i32 16, %and61
  %conv63 = trunc i32 %or62 to i16
  %33 = load i16** %ps, align 4
  %arrayidx64 = getelementptr inbounds i16* %33, i32 3
  store i16 %conv63, i16* %arrayidx64, align 2
  %34 = load i32* %lexp, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %lexp, align 4
  %cmp65 = icmp slt i32 %dec, -52
  br i1 %cmp65, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.else54
  %35 = load i16* %sign, align 2
  %36 = load i16** %ps, align 4
  %arrayidx68 = getelementptr inbounds i16* %36, i32 3
  store i16 %35, i16* %arrayidx68, align 2
  %37 = load i16** %ps, align 4
  %arrayidx69 = getelementptr inbounds i16* %37, i32 2
  store i16 0, i16* %arrayidx69, align 2
  %38 = load i16** %ps, align 4
  %arrayidx70 = getelementptr inbounds i16* %38, i32 1
  store i16 0, i16* %arrayidx70, align 2
  %39 = load i16** %ps, align 4
  %arrayidx71 = getelementptr inbounds i16* %39, i32 0
  store i16 0, i16* %arrayidx71, align 2
  store i16 0, i16* %retval
  br label %return

if.else72:                                        ; preds = %if.else54
  %40 = load i32* %lexp, align 4
  %conv73 = trunc i32 %40 to i16
  store i16 %conv73, i16* %xexp.addr, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else72
  %41 = load i16* %xexp.addr, align 2
  %conv74 = sext i16 %41 to i32
  %cmp75 = icmp sle i32 %conv74, -16
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i16** %ps, align 4
  %arrayidx77 = getelementptr inbounds i16* %42, i32 1
  %43 = load i16* %arrayidx77, align 2
  %44 = load i16** %ps, align 4
  %arrayidx78 = getelementptr inbounds i16* %44, i32 0
  store i16 %43, i16* %arrayidx78, align 2
  %45 = load i16** %ps, align 4
  %arrayidx79 = getelementptr inbounds i16* %45, i32 2
  %46 = load i16* %arrayidx79, align 2
  %47 = load i16** %ps, align 4
  %arrayidx80 = getelementptr inbounds i16* %47, i32 1
  store i16 %46, i16* %arrayidx80, align 2
  %48 = load i16** %ps, align 4
  %arrayidx81 = getelementptr inbounds i16* %48, i32 3
  %49 = load i16* %arrayidx81, align 2
  %50 = load i16** %ps, align 4
  %arrayidx82 = getelementptr inbounds i16* %50, i32 2
  store i16 %49, i16* %arrayidx82, align 2
  %51 = load i16** %ps, align 4
  %arrayidx83 = getelementptr inbounds i16* %51, i32 3
  store i16 0, i16* %arrayidx83, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i16* %xexp.addr, align 2
  %conv84 = sext i16 %52 to i32
  %add85 = add nsw i32 %conv84, 16
  %conv86 = trunc i32 %add85 to i16
  store i16 %conv86, i16* %xexp.addr, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load i16* %xexp.addr, align 2
  %conv87 = sext i16 %53 to i32
  %sub88 = sub nsw i32 0, %conv87
  %conv89 = trunc i32 %sub88 to i16
  store i16 %conv89, i16* %xexp.addr, align 2
  %conv90 = sext i16 %conv89 to i32
  %cmp91 = icmp ne i32 %conv90, 0
  br i1 %cmp91, label %if.then93, label %if.end135

if.then93:                                        ; preds = %for.end
  %54 = load i16** %ps, align 4
  %arrayidx94 = getelementptr inbounds i16* %54, i32 0
  %55 = load i16* %arrayidx94, align 2
  %conv95 = zext i16 %55 to i32
  %56 = load i16* %xexp.addr, align 2
  %conv96 = sext i16 %56 to i32
  %shr97 = ashr i32 %conv95, %conv96
  %57 = load i16** %ps, align 4
  %arrayidx98 = getelementptr inbounds i16* %57, i32 1
  %58 = load i16* %arrayidx98, align 2
  %conv99 = zext i16 %58 to i32
  %59 = load i16* %xexp.addr, align 2
  %conv100 = sext i16 %59 to i32
  %sub101 = sub nsw i32 16, %conv100
  %shl102 = shl i32 %conv99, %sub101
  %or103 = or i32 %shr97, %shl102
  %conv104 = trunc i32 %or103 to i16
  %60 = load i16** %ps, align 4
  %arrayidx105 = getelementptr inbounds i16* %60, i32 0
  store i16 %conv104, i16* %arrayidx105, align 2
  %61 = load i16** %ps, align 4
  %arrayidx106 = getelementptr inbounds i16* %61, i32 1
  %62 = load i16* %arrayidx106, align 2
  %conv107 = zext i16 %62 to i32
  %63 = load i16* %xexp.addr, align 2
  %conv108 = sext i16 %63 to i32
  %shr109 = ashr i32 %conv107, %conv108
  %64 = load i16** %ps, align 4
  %arrayidx110 = getelementptr inbounds i16* %64, i32 2
  %65 = load i16* %arrayidx110, align 2
  %conv111 = zext i16 %65 to i32
  %66 = load i16* %xexp.addr, align 2
  %conv112 = sext i16 %66 to i32
  %sub113 = sub nsw i32 16, %conv112
  %shl114 = shl i32 %conv111, %sub113
  %or115 = or i32 %shr109, %shl114
  %conv116 = trunc i32 %or115 to i16
  %67 = load i16** %ps, align 4
  %arrayidx117 = getelementptr inbounds i16* %67, i32 1
  store i16 %conv116, i16* %arrayidx117, align 2
  %68 = load i16** %ps, align 4
  %arrayidx118 = getelementptr inbounds i16* %68, i32 2
  %69 = load i16* %arrayidx118, align 2
  %conv119 = zext i16 %69 to i32
  %70 = load i16* %xexp.addr, align 2
  %conv120 = sext i16 %70 to i32
  %shr121 = ashr i32 %conv119, %conv120
  %71 = load i16** %ps, align 4
  %arrayidx122 = getelementptr inbounds i16* %71, i32 3
  %72 = load i16* %arrayidx122, align 2
  %conv123 = zext i16 %72 to i32
  %73 = load i16* %xexp.addr, align 2
  %conv124 = sext i16 %73 to i32
  %sub125 = sub nsw i32 16, %conv124
  %shl126 = shl i32 %conv123, %sub125
  %or127 = or i32 %shr121, %shl126
  %conv128 = trunc i32 %or127 to i16
  %74 = load i16** %ps, align 4
  %arrayidx129 = getelementptr inbounds i16* %74, i32 2
  store i16 %conv128, i16* %arrayidx129, align 2
  %75 = load i16* %xexp.addr, align 2
  %conv130 = sext i16 %75 to i32
  %76 = load i16** %ps, align 4
  %arrayidx131 = getelementptr inbounds i16* %76, i32 3
  %77 = load i16* %arrayidx131, align 2
  %conv132 = zext i16 %77 to i32
  %shr133 = ashr i32 %conv132, %conv130
  %conv134 = trunc i32 %shr133 to i16
  store i16 %conv134, i16* %arrayidx131, align 2
  br label %if.end135

if.end135:                                        ; preds = %if.then93, %for.end
  %78 = load i16* %sign, align 2
  %conv136 = zext i16 %78 to i32
  %79 = load i16** %ps, align 4
  %arrayidx137 = getelementptr inbounds i16* %79, i32 3
  %80 = load i16* %arrayidx137, align 2
  %conv138 = zext i16 %80 to i32
  %or139 = or i32 %conv138, %conv136
  %conv140 = trunc i32 %or139 to i16
  store i16 %conv140, i16* %arrayidx137, align 2
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.end135, %if.then67, %if.then46, %if.end42, %if.then28, %if.else, %if.then18
  %81 = load i16* %retval
  ret i16 %81
}

declare signext i16 @_Dnorm(i16*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
