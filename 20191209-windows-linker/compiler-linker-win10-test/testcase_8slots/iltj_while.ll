; ModuleID = './testcase_8slots/iltj_while.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readnone
define i32 @main() #0 {
entry:
  br label %while.cond.loopexit

while.cond.loopexit:                              ; preds = %while.cond.loopexit, %entry
  %k.021 = phi i32 [ 2, %entry ], [ %smax22, %while.cond.loopexit ]
  %i.020 = phi i32 [ 0, %entry ], [ %smax, %while.cond.loopexit ]
  %0 = icmp sgt i32 %i.020, %k.021
  %1 = icmp sgt i32 %k.021, 4
  %smax = select i1 %0, i32 %i.020, i32 %k.021
  %smax22 = select i1 %1, i32 %k.021, i32 4
  %cmp = icmp slt i32 %smax, 4
  br i1 %cmp, label %while.cond.loopexit, label %while.end10

while.end10:                                      ; preds = %while.cond.loopexit
  %sub = sub nsw i32 4, %smax
  ret i32 %sub
}

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
