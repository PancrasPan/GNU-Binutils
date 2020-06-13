; ModuleID = './testcase_4slots/testb.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_gB = global i32 5, align 4
@uninit_gB = common global i32 0, align 4

; Function Attrs: nounwind
define i32 @testb(i32 %gA1, i32 %sA1, i32* %pgA2, i32* %psA2, i32 %gB1, i32* %pgB2) #0 {
entry:
  %gA1.addr = alloca i32, align 4
  %sA1.addr = alloca i32, align 4
  %pgA2.addr = alloca i32*, align 4
  %psA2.addr = alloca i32*, align 4
  %gB1.addr = alloca i32, align 4
  %pgB2.addr = alloca i32*, align 4
  %localb = alloca i32, align 4
  store i32 %gA1, i32* %gA1.addr, align 4
  store i32 %sA1, i32* %sA1.addr, align 4
  store i32* %pgA2, i32** %pgA2.addr, align 4
  store i32* %psA2, i32** %psA2.addr, align 4
  store i32 %gB1, i32* %gB1.addr, align 4
  store i32* %pgB2, i32** %pgB2.addr, align 4
  store i32 10, i32* %localb, align 4
  %0 = load i32* %gA1.addr, align 4
  %1 = load i32** %pgA2.addr, align 4
  store i32 %0, i32* %1, align 4
  %2 = load i32* %sA1.addr, align 4
  %3 = load i32** %psA2.addr, align 4
  store i32 %2, i32* %3, align 4
  %4 = load i32* %gB1.addr, align 4
  %5 = load i32** %pgB2.addr, align 4
  store i32 %4, i32* %5, align 4
  %6 = load i32* %gA1.addr, align 4
  %7 = load i32** %pgA2.addr, align 4
  %8 = load i32* %7, align 4
  %add = add nsw i32 %6, %8
  %9 = load i32* %sA1.addr, align 4
  %add1 = add nsw i32 %add, %9
  %10 = load i32** %psA2.addr, align 4
  %11 = load i32* %10, align 4
  %add2 = add nsw i32 %add1, %11
  %12 = load i32* @init_gB, align 4
  %add3 = add nsw i32 %add2, %12
  %13 = load i32* @uninit_gB, align 4
  %add4 = add nsw i32 %add3, %13
  %14 = load i32* %localb, align 4
  %add5 = add nsw i32 %14, %add4
  store i32 %add5, i32* %localb, align 4
  %call = call i32 @neg(i32* %localb)
  %15 = load i32* %localb, align 4
  ret i32 %15
}

; Function Attrs: nounwind
define i32 @neg(i32* %x) #0 {
entry:
  %x.addr = alloca i32*, align 4
  store i32* %x, i32** %x.addr, align 4
  %0 = load i32** %x.addr, align 4
  %1 = load i32* %0, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32** %x.addr, align 4
  store i32 %sub, i32* %2, align 4
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
