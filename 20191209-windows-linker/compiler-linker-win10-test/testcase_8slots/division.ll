; ModuleID = './testcase_8slots/division.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind readnone
define i32 @integer_div(i32 %dividend, i32 %divisor) #0 {
entry:
  %0 = icmp ugt i32 %dividend, %divisor
  br i1 %0, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry, %if.end10
  %res.042 = phi i32 [ %add13, %if.end10 ], [ 0, %entry ]
  %dividend.addr.041 = phi i32 [ %sub14, %if.end10 ], [ %dividend, %entry ]
  %cmp236 = icmp ult i32 %dividend.addr.041, %divisor
  br i1 %cmp236, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %c.038 = phi i32 [ %shl6, %for.inc ], [ %divisor, %for.cond.preheader ]
  %k.037 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %sub = sub i32 %dividend.addr.041, %c.038
  %cmp3 = icmp ult i32 %sub, %divisor
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %shl = shl i32 1, %k.037
  %add = add i32 %shl, %res.042
  br label %for.end

for.inc:                                          ; preds = %for.body
  %shl6 = shl i32 %c.038, 1
  %inc = add i32 %k.037, 1
  %cmp2 = icmp ult i32 %dividend.addr.041, %shl6
  br i1 %cmp2, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader, %if.then4
  %c.035 = phi i32 [ %c.038, %if.then4 ], [ %divisor, %for.cond.preheader ], [ %shl6, %for.inc ]
  %k.033 = phi i32 [ %k.037, %if.then4 ], [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %res.1 = phi i32 [ %add, %if.then4 ], [ %res.042, %for.cond.preheader ], [ %res.042, %for.inc ]
  %sub7 = sub i32 %dividend.addr.041, %c.035
  %cmp8 = icmp ult i32 %sub7, %divisor
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %for.end
  %sub11 = add i32 %k.033, -1
  %shl12 = shl i32 1, %sub11
  %add13 = add i32 %res.1, %shl12
  %shr = lshr i32 %c.035, 1
  %sub14 = sub i32 %dividend.addr.041, %shr
  %cmp1 = icmp ugt i32 %sub14, %divisor
  br i1 %cmp1, label %for.cond.preheader, label %return

return:                                           ; preds = %for.end, %if.end10, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %add13, %if.end10 ], [ %res.1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readnone
define i32 @main() #0 {
entry:
  ret i32 0
}

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
