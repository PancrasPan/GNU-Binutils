; ModuleID = './testcase_8slots/testa.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_gA = global i32 1, align 4
@main.uninit_sA = internal global i32 0, align 4
@uninit_gA = common global i32 0, align 4
@init_gB = external global i32
@uninit_gB = external global i32

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %0 = load i32* @init_gA, align 4, !tbaa !1
  %1 = load i32* @init_gB, align 4, !tbaa !1
  %call = tail call i32 @testb(i32 %0, i32 2, i32* @uninit_gA, i32* @main.uninit_sA, i32 %1, i32* @uninit_gB) #2
  ret i32 0
}

declare i32 @testb(i32, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
