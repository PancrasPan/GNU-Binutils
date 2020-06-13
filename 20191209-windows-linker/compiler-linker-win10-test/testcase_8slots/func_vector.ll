; ModuleID = './testcase_8slots/func_vector.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@init_vgb = common global <128 x i16> zeroinitializer, align 256

; Function Attrs: nounwind
define i32 @vsum(<128 x i16> %v1, <128 x i16> %v2, <128 x i16> %v3) #0 {
entry:
  %add = add <128 x i16> %v2, %v3
  %add1 = add <128 x i16> %add, %v1
  %0 = load <128 x i16>* @init_vgb, align 256, !tbaa !1
  %add2 = add <128 x i16> %0, %add1
  store <128 x i16> %add2, <128 x i16>* @init_vgb, align 256, !tbaa !1
  ret i32 undef
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"omnipotent char", metadata !3, i64 0}
!3 = metadata !{metadata !"Simple C/C++ TBAA"}
