; ModuleID = './testcase_8slots/compound_condition4.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readnone
define i32 @main() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %k.0 = phi i32 [ 2, %entry ], [ %inc4, %while.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %cmp = icmp slt i32 %i.0, 4
  %cmp1 = icmp slt i32 %k.0, 4
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %cmp2 = icmp slt i32 %i.0, %k.0
  %cmp3 = icmp slt i32 %k.0, 3
  %or.cond13 = and i1 %cmp2, %cmp3
  br i1 %or.cond13, label %while.body, label %while.end

while.body:                                       ; preds = %lor.rhs, %while.cond
  %inc = add nsw i32 %i.0, 1
  %inc4 = add nsw i32 %k.0, 1
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %sub = sub nsw i32 4, %i.0
  ret i32 %sub
}

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
