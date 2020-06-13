; ModuleID = './testcase_8slots/pointer_local_var_args.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 3, i32* %b, align 4, !tbaa !1
  store i32 2, i32* %c, align 4, !tbaa !1
  %call = call i32 @inFunct(i32 1, i32* %b, i32* %c)
  store i32 %call, i32* %b, align 4, !tbaa !1
  %call1 = call i32 @outFunct(i32 1, i32* %b, i32* %c) #3
  ret i32 %call1
}

; Function Attrs: nounwind readonly
define i32 @inFunct(i32 %a, i32* nocapture readonly %b, i32* nocapture readonly %c) #1 {
entry:
  %0 = load i32* %b, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, %a
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %1 = load i32* %c, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %1, %cond.false ], [ %0, %entry ]
  ret i32 %cond
}

declare i32 @outFunct(i32, i32*, i32*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
