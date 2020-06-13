; ModuleID = './testcase_8slots/testb.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_gB = global i32 5, align 4
@uninit_gB = common global i32 0, align 4

; Function Attrs: nounwind
define i32 @testb(i32 %gA1, i32 %sA1, i32* nocapture %pgA2, i32* nocapture %psA2, i32 %gB1, i32* nocapture %pgB2) #0 {
entry:
  %localb = alloca i32, align 4
  store i32 10, i32* %localb, align 4, !tbaa !1
  store i32 %gA1, i32* %pgA2, align 4, !tbaa !1
  store i32 %sA1, i32* %psA2, align 4, !tbaa !1
  store i32 %gB1, i32* %pgB2, align 4, !tbaa !1
  %0 = load i32* %pgA2, align 4, !tbaa !1
  %1 = load i32* %psA2, align 4, !tbaa !1
  %2 = load i32* @init_gB, align 4, !tbaa !1
  %3 = load i32* @uninit_gB, align 4, !tbaa !1
  %4 = load i32* %localb, align 4, !tbaa !1
  %add = add i32 %sA1, %gA1
  %add1 = add i32 %add, %0
  %add2 = add i32 %add1, %1
  %add3 = add i32 %add2, %2
  %add4 = add i32 %add3, %3
  %add5 = add i32 %add4, %4
  store i32 %add5, i32* %localb, align 4, !tbaa !1
  %call = call i32 @neg(i32* %localb)
  %5 = load i32* %localb, align 4, !tbaa !1
  ret i32 %5
}

; Function Attrs: nounwind
define i32 @neg(i32* nocapture %x) #0 {
entry:
  %0 = load i32* %x, align 4, !tbaa !1
  %sub = sub nsw i32 0, %0
  store i32 %sub, i32* %x, align 4, !tbaa !1
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
