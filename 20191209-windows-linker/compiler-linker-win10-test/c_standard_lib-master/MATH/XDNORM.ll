; ModuleID = './c_standard_lib-master/MATH/XDNORM.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define signext i16 @_Dnorm(i16* %ps) #0 {
entry:
  %ps.addr = alloca i16*, align 4
  %xchar = alloca i16, align 2
  %sign = alloca i16, align 2
  store i16* %ps, i16** %ps.addr, align 4
  %0 = load i16** %ps.addr, align 4
  %arrayidx = getelementptr inbounds i16* %0, i32 3
  %1 = load i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 32768
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %sign, align 2
  store i16 1, i16* %xchar, align 2
  %2 = load i16** %ps.addr, align 4
  %arrayidx2 = getelementptr inbounds i16* %2, i32 3
  %3 = load i16* %arrayidx2, align 2
  %conv3 = zext i16 %3 to i32
  %and4 = and i32 %conv3, 15
  %conv5 = trunc i32 %and4 to i16
  store i16 %conv5, i16* %arrayidx2, align 2
  %conv6 = zext i16 %conv5 to i32
  %cmp = icmp ne i32 %conv6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i16** %ps.addr, align 4
  %arrayidx8 = getelementptr inbounds i16* %4, i32 2
  %5 = load i16* %arrayidx8, align 2
  %conv9 = zext i16 %5 to i32
  %tobool = icmp ne i32 %conv9, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %6 = load i16** %ps.addr, align 4
  %arrayidx11 = getelementptr inbounds i16* %6, i32 1
  %7 = load i16* %arrayidx11, align 2
  %conv12 = zext i16 %7 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %8 = load i16** %ps.addr, align 4
  %arrayidx15 = getelementptr inbounds i16* %8, i32 0
  %9 = load i16* %arrayidx15, align 2
  %conv16 = zext i16 %9 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i16** %ps.addr, align 4
  %arrayidx18 = getelementptr inbounds i16* %10, i32 3
  %11 = load i16* %arrayidx18, align 2
  %conv19 = zext i16 %11 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i16** %ps.addr, align 4
  %arrayidx22 = getelementptr inbounds i16* %12, i32 2
  %13 = load i16* %arrayidx22, align 2
  %14 = load i16** %ps.addr, align 4
  %arrayidx23 = getelementptr inbounds i16* %14, i32 3
  store i16 %13, i16* %arrayidx23, align 2
  %15 = load i16** %ps.addr, align 4
  %arrayidx24 = getelementptr inbounds i16* %15, i32 1
  %16 = load i16* %arrayidx24, align 2
  %17 = load i16** %ps.addr, align 4
  %arrayidx25 = getelementptr inbounds i16* %17, i32 2
  store i16 %16, i16* %arrayidx25, align 2
  %18 = load i16** %ps.addr, align 4
  %arrayidx26 = getelementptr inbounds i16* %18, i32 0
  %19 = load i16* %arrayidx26, align 2
  %20 = load i16** %ps.addr, align 4
  %arrayidx27 = getelementptr inbounds i16* %20, i32 1
  store i16 %19, i16* %arrayidx27, align 2
  %21 = load i16** %ps.addr, align 4
  %arrayidx28 = getelementptr inbounds i16* %21, i32 0
  store i16 0, i16* %arrayidx28, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i16* %xchar, align 2
  %conv29 = sext i16 %22 to i32
  %sub = sub nsw i32 %conv29, 16
  %conv30 = trunc i32 %sub to i16
  store i16 %conv30, i16* %xchar, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc65, %for.end
  %23 = load i16** %ps.addr, align 4
  %arrayidx32 = getelementptr inbounds i16* %23, i32 3
  %24 = load i16* %arrayidx32, align 2
  %conv33 = zext i16 %24 to i32
  %cmp34 = icmp slt i32 %conv33, 16
  br i1 %cmp34, label %for.body36, label %for.end66

for.body36:                                       ; preds = %for.cond31
  %25 = load i16** %ps.addr, align 4
  %arrayidx37 = getelementptr inbounds i16* %25, i32 3
  %26 = load i16* %arrayidx37, align 2
  %conv38 = zext i16 %26 to i32
  %shl = shl i32 %conv38, 1
  %27 = load i16** %ps.addr, align 4
  %arrayidx39 = getelementptr inbounds i16* %27, i32 2
  %28 = load i16* %arrayidx39, align 2
  %conv40 = zext i16 %28 to i32
  %shr = ashr i32 %conv40, 15
  %or = or i32 %shl, %shr
  %conv41 = trunc i32 %or to i16
  %29 = load i16** %ps.addr, align 4
  %arrayidx42 = getelementptr inbounds i16* %29, i32 3
  store i16 %conv41, i16* %arrayidx42, align 2
  %30 = load i16** %ps.addr, align 4
  %arrayidx43 = getelementptr inbounds i16* %30, i32 2
  %31 = load i16* %arrayidx43, align 2
  %conv44 = zext i16 %31 to i32
  %shl45 = shl i32 %conv44, 1
  %32 = load i16** %ps.addr, align 4
  %arrayidx46 = getelementptr inbounds i16* %32, i32 1
  %33 = load i16* %arrayidx46, align 2
  %conv47 = zext i16 %33 to i32
  %shr48 = ashr i32 %conv47, 15
  %or49 = or i32 %shl45, %shr48
  %conv50 = trunc i32 %or49 to i16
  %34 = load i16** %ps.addr, align 4
  %arrayidx51 = getelementptr inbounds i16* %34, i32 2
  store i16 %conv50, i16* %arrayidx51, align 2
  %35 = load i16** %ps.addr, align 4
  %arrayidx52 = getelementptr inbounds i16* %35, i32 1
  %36 = load i16* %arrayidx52, align 2
  %conv53 = zext i16 %36 to i32
  %shl54 = shl i32 %conv53, 1
  %37 = load i16** %ps.addr, align 4
  %arrayidx55 = getelementptr inbounds i16* %37, i32 0
  %38 = load i16* %arrayidx55, align 2
  %conv56 = zext i16 %38 to i32
  %shr57 = ashr i32 %conv56, 15
  %or58 = or i32 %shl54, %shr57
  %conv59 = trunc i32 %or58 to i16
  %39 = load i16** %ps.addr, align 4
  %arrayidx60 = getelementptr inbounds i16* %39, i32 1
  store i16 %conv59, i16* %arrayidx60, align 2
  %40 = load i16** %ps.addr, align 4
  %arrayidx61 = getelementptr inbounds i16* %40, i32 0
  %41 = load i16* %arrayidx61, align 2
  %conv62 = zext i16 %41 to i32
  %shl63 = shl i32 %conv62, 1
  %conv64 = trunc i32 %shl63 to i16
  store i16 %conv64, i16* %arrayidx61, align 2
  br label %for.inc65

for.inc65:                                        ; preds = %for.body36
  %42 = load i16* %xchar, align 2
  %dec = add i16 %42, -1
  store i16 %dec, i16* %xchar, align 2
  br label %for.cond31

for.end66:                                        ; preds = %for.cond31
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc104, %for.end66
  %43 = load i16** %ps.addr, align 4
  %arrayidx68 = getelementptr inbounds i16* %43, i32 3
  %44 = load i16* %arrayidx68, align 2
  %conv69 = zext i16 %44 to i32
  %cmp70 = icmp sle i32 32, %conv69
  br i1 %cmp70, label %for.body72, label %for.end105

for.body72:                                       ; preds = %for.cond67
  %45 = load i16** %ps.addr, align 4
  %arrayidx73 = getelementptr inbounds i16* %45, i32 0
  %46 = load i16* %arrayidx73, align 2
  %conv74 = zext i16 %46 to i32
  %shr75 = ashr i32 %conv74, 1
  %47 = load i16** %ps.addr, align 4
  %arrayidx76 = getelementptr inbounds i16* %47, i32 1
  %48 = load i16* %arrayidx76, align 2
  %conv77 = zext i16 %48 to i32
  %shl78 = shl i32 %conv77, 15
  %or79 = or i32 %shr75, %shl78
  %conv80 = trunc i32 %or79 to i16
  %49 = load i16** %ps.addr, align 4
  %arrayidx81 = getelementptr inbounds i16* %49, i32 0
  store i16 %conv80, i16* %arrayidx81, align 2
  %50 = load i16** %ps.addr, align 4
  %arrayidx82 = getelementptr inbounds i16* %50, i32 1
  %51 = load i16* %arrayidx82, align 2
  %conv83 = zext i16 %51 to i32
  %shr84 = ashr i32 %conv83, 1
  %52 = load i16** %ps.addr, align 4
  %arrayidx85 = getelementptr inbounds i16* %52, i32 2
  %53 = load i16* %arrayidx85, align 2
  %conv86 = zext i16 %53 to i32
  %shl87 = shl i32 %conv86, 15
  %or88 = or i32 %shr84, %shl87
  %conv89 = trunc i32 %or88 to i16
  %54 = load i16** %ps.addr, align 4
  %arrayidx90 = getelementptr inbounds i16* %54, i32 1
  store i16 %conv89, i16* %arrayidx90, align 2
  %55 = load i16** %ps.addr, align 4
  %arrayidx91 = getelementptr inbounds i16* %55, i32 2
  %56 = load i16* %arrayidx91, align 2
  %conv92 = zext i16 %56 to i32
  %shr93 = ashr i32 %conv92, 1
  %57 = load i16** %ps.addr, align 4
  %arrayidx94 = getelementptr inbounds i16* %57, i32 3
  %58 = load i16* %arrayidx94, align 2
  %conv95 = zext i16 %58 to i32
  %shl96 = shl i32 %conv95, 15
  %or97 = or i32 %shr93, %shl96
  %conv98 = trunc i32 %or97 to i16
  %59 = load i16** %ps.addr, align 4
  %arrayidx99 = getelementptr inbounds i16* %59, i32 2
  store i16 %conv98, i16* %arrayidx99, align 2
  %60 = load i16** %ps.addr, align 4
  %arrayidx100 = getelementptr inbounds i16* %60, i32 3
  %61 = load i16* %arrayidx100, align 2
  %conv101 = zext i16 %61 to i32
  %shr102 = ashr i32 %conv101, 1
  %conv103 = trunc i32 %shr102 to i16
  store i16 %conv103, i16* %arrayidx100, align 2
  br label %for.inc104

for.inc104:                                       ; preds = %for.body72
  %62 = load i16* %xchar, align 2
  %inc = add i16 %62, 1
  store i16 %inc, i16* %xchar, align 2
  br label %for.cond67

for.end105:                                       ; preds = %for.cond67
  %63 = load i16** %ps.addr, align 4
  %arrayidx106 = getelementptr inbounds i16* %63, i32 3
  %64 = load i16* %arrayidx106, align 2
  %conv107 = zext i16 %64 to i32
  %and108 = and i32 %conv107, 15
  %conv109 = trunc i32 %and108 to i16
  store i16 %conv109, i16* %arrayidx106, align 2
  br label %if.end

if.end:                                           ; preds = %for.end105, %lor.lhs.false14
  %65 = load i16* %sign, align 2
  %conv110 = zext i16 %65 to i32
  %66 = load i16** %ps.addr, align 4
  %arrayidx111 = getelementptr inbounds i16* %66, i32 3
  %67 = load i16* %arrayidx111, align 2
  %conv112 = zext i16 %67 to i32
  %or113 = or i32 %conv112, %conv110
  %conv114 = trunc i32 %or113 to i16
  store i16 %conv114, i16* %arrayidx111, align 2
  %68 = load i16* %xchar, align 2
  ret i16 %68
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
