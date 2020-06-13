; ModuleID = '.\HWlooptest\fail\bubblesort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@size = external global i32
@Array = external global [0 x i32]

; Function Attrs: nounwind
define i32 @bubblesort() #0 {
entry:
  %0 = load i32* @size, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %Sortpos.0.in = phi i32 [ %0, %entry ], [ %Sortpos.0, %for.end ]
  %Sortpos.0 = add nsw i32 %Sortpos.0.in, -1
  %cmp = icmp sgt i32 %Sortpos.0, 0
  br i1 %cmp, label %for.cond1.outer, label %for.end15

for.cond1.outer:                                  ; preds = %for.cond, %if.then
  %hasOutOrder.0.ph = phi i32 [ 1, %if.then ], [ 0, %for.cond ]
  %i.0.ph = phi i32 [ %add, %if.then ], [ 0, %for.cond ]
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.outer, %for.body3
  %i.0 = phi i32 [ %add, %for.body3 ], [ %i.0.ph, %for.cond1.outer ]
  %cmp2 = icmp slt i32 %i.0, %Sortpos.0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %i.0
  %1 = load i32* %arrayidx, align 4, !tbaa !1
  %add = add nsw i32 %i.0, 1
  %arrayidx4 = getelementptr inbounds [0 x i32]* @Array, i32 0, i32 %add
  %2 = load i32* %arrayidx4, align 4, !tbaa !1
  %cmp5 = icmp sgt i32 %1, %2
  br i1 %cmp5, label %if.then, label %for.cond1

if.then:                                          ; preds = %for.body3
  store i32 %2, i32* %arrayidx, align 4, !tbaa !1
  store i32 %1, i32* %arrayidx4, align 4, !tbaa !1
  br label %for.cond1.outer

for.end:                                          ; preds = %for.cond1
  %tobool = icmp eq i32 %hasOutOrder.0.ph, 0
  br i1 %tobool, label %for.end15, label %for.cond

for.end15:                                        ; preds = %for.end, %for.cond
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
