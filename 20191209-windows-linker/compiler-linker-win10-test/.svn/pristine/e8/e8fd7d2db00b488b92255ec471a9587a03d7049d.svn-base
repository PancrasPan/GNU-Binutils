; ModuleID = './testcase_8slots/recursion.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readnone
define i32 @main() #0 {
entry:
  %call = tail call i32 @sum(i32 5)
  ret i32 %call
}

; Function Attrs: nounwind readnone
define i32 @sum(i32 %x) #0 {
entry:
  %cmp = icmp slt i32 %x, 2
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %x, -1
  %call = tail call i32 @sum(i32 %sub)
  %add = add nsw i32 %call, %x
  ret i32 %add

return:                                           ; preds = %entry
  ret i32 %x
}

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
