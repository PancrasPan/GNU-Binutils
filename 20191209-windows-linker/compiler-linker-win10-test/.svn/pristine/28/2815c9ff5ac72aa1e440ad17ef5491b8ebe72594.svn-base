; ModuleID = './testcase_8slots/compound_condition1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readnone
define i32 @main() #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %k.09 = phi i32 [ 2, %entry ], [ %inc2, %while.body ]
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %inc = add nsw i32 %i.08, 1
  %inc2 = add nsw i32 %k.09, 1
  %cmp = icmp slt i32 %inc, 4
  %cmp1 = icmp slt i32 %inc2, 4
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %while.body, label %while.end

while.end:                                        ; preds = %while.body
  %sub = sub i32 3, %i.08
  ret i32 %sub
}

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
