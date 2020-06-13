; ModuleID = './testcase_8slots/quicksort1.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @partition_1(i32* %array, i32 %start, i32 %end) #0 {
entry:
  %cmp63 = icmp sgt i32 %start, %end
  br i1 %cmp63, label %return, label %if.end

if.end:                                           ; preds = %entry, %while.end19
  %start.tr64 = phi i32 [ %add, %while.end19 ], [ %start, %entry ]
  %arrayidx = getelementptr inbounds i32* %array, i32 %start.tr64
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %cmp158 = icmp slt i32 %start.tr64, %end
  br i1 %cmp158, label %while.cond2.preheader, label %while.end19

while.cond2.preheader:                            ; preds = %if.end, %while.end16
  %j.060 = phi i32 [ %j.1.lcssa, %while.end16 ], [ %end, %if.end ]
  %i.059 = phi i32 [ %i.1.lcssa, %while.end16 ], [ %start.tr64, %if.end ]
  %cmp351 = icmp slt i32 %i.059, %j.060
  br i1 %cmp351, label %land.rhs, label %while.end

while.cond2:                                      ; preds = %land.rhs
  %cmp3 = icmp slt i32 %i.059, %dec
  br i1 %cmp3, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond2.preheader, %while.cond2
  %j.152 = phi i32 [ %dec, %while.cond2 ], [ %j.060, %while.cond2.preheader ]
  %arrayidx4 = getelementptr inbounds i32* %array, i32 %j.152
  %1 = load i32* %arrayidx4, align 4, !tbaa !1
  %cmp5 = icmp slt i32 %1, %0
  %dec = add nsw i32 %j.152, -1
  br i1 %cmp5, label %while.end, label %while.cond2

while.end:                                        ; preds = %while.cond2, %land.rhs, %while.cond2.preheader
  %j.1.lcssa = phi i32 [ %j.060, %while.cond2.preheader ], [ %dec, %while.cond2 ], [ %j.152, %land.rhs ]
  %arrayidx7 = getelementptr inbounds i32* %array, i32 %j.1.lcssa
  %2 = load i32* %arrayidx7, align 4, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32* %array, i32 %i.059
  store i32 %2, i32* %arrayidx8, align 4, !tbaa !1
  %cmp1054 = icmp slt i32 %i.059, %j.1.lcssa
  br i1 %cmp1054, label %land.rhs11, label %while.end16

while.cond9:                                      ; preds = %land.rhs11
  %cmp10 = icmp slt i32 %inc, %j.1.lcssa
  br i1 %cmp10, label %land.rhs11, label %while.end16

land.rhs11:                                       ; preds = %while.end, %while.cond9
  %i.155 = phi i32 [ %inc, %while.cond9 ], [ %i.059, %while.end ]
  %arrayidx12 = getelementptr inbounds i32* %array, i32 %i.155
  %3 = load i32* %arrayidx12, align 4, !tbaa !1
  %cmp13 = icmp sgt i32 %3, %0
  %inc = add nsw i32 %i.155, 1
  br i1 %cmp13, label %while.end16, label %while.cond9

while.end16:                                      ; preds = %while.cond9, %land.rhs11, %while.end
  %i.1.lcssa = phi i32 [ %i.059, %while.end ], [ %inc, %while.cond9 ], [ %i.155, %land.rhs11 ]
  %arrayidx17 = getelementptr inbounds i32* %array, i32 %i.1.lcssa
  %4 = load i32* %arrayidx17, align 4, !tbaa !1
  store i32 %4, i32* %arrayidx7, align 4, !tbaa !1
  %cmp1 = icmp slt i32 %i.1.lcssa, %j.1.lcssa
  br i1 %cmp1, label %while.cond2.preheader, label %while.end19

while.end19:                                      ; preds = %while.end16, %if.end
  %j.0.lcssa = phi i32 [ %end, %if.end ], [ %j.1.lcssa, %while.end16 ]
  %i.0.lcssa = phi i32 [ %start.tr64, %if.end ], [ %i.1.lcssa, %while.end16 ]
  %arrayidx20 = getelementptr inbounds i32* %array, i32 %j.0.lcssa
  store i32 %0, i32* %arrayidx20, align 4, !tbaa !1
  %sub = add nsw i32 %i.0.lcssa, -1
  %call = tail call i32 @partition_1(i32* %array, i32 %start.tr64, i32 %sub)
  %add = add nsw i32 %j.0.lcssa, 1
  %cmp = icmp slt i32 %j.0.lcssa, %end
  br i1 %cmp, label %if.end, label %return

return:                                           ; preds = %while.end19, %entry
  %accumulator.tr.lcssa = phi i32 [ -1, %entry ], [ 0, %while.end19 ]
  ret i32 %accumulator.tr.lcssa
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
