; ModuleID = './testcase_4slots/datarel2.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@g2 = common global i32 0, align 4

; Function Attrs: nounwind
define i32 @max(i32* %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32*, align 4
  %b.addr = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32* @g2, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @g2, align 4
  %1 = load i32** %a.addr, align 4
  %2 = load i32* %1, align 4
  %3 = load i32* %b.addr, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32** %a.addr, align 4
  %5 = load i32* %4, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ]
  ret i32 %cond
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
