; ModuleID = './testcase_8slots/2\whiletrue.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@bound = external global i32
@flagsar = external global [10 x i32]

; Function Attrs: nounwind
define i32 @check(i32* nocapture readonly %Array, i32 %start, i32 %end) #0 {
entry:
  %0 = load i32* %Array, align 4, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32* %Array, i32 1
  %1 = load i32* %arrayidx111, align 4, !tbaa !1
  %cmp12 = icmp sgt i32 %0, %1
  %.flag.013 = sext i1 %cmp12 to i32
  %2 = load i32* @bound, align 4, !tbaa !1
  %cmp214 = icmp sgt i32 %2, 0
  br i1 %cmp214, label %if.end4, label %do.end

if.end4:                                          ; preds = %entry, %if.end4
  %.flag.017 = phi i32 [ %.flag.0, %if.end4 ], [ %.flag.013, %entry ]
  %add16 = phi i32 [ %add, %if.end4 ], [ 1, %entry ]
  %i.015 = phi i32 [ %add16, %if.end4 ], [ 0, %entry ]
  %arrayidx5 = getelementptr inbounds [10 x i32]* @flagsar, i32 0, i32 %i.015
  store i32 -1, i32* %arrayidx5, align 4, !tbaa !1
  %arrayidx = getelementptr inbounds i32* %Array, i32 %add16
  %3 = load i32* %arrayidx, align 4, !tbaa !1
  %add = add nsw i32 %add16, 1
  %arrayidx1 = getelementptr inbounds i32* %Array, i32 %add
  %4 = load i32* %arrayidx1, align 4, !tbaa !1
  %cmp = icmp sgt i32 %3, %4
  %.flag.0 = select i1 %cmp, i32 -1, i32 %.flag.017
  %5 = load i32* @bound, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %add16, %5
  br i1 %cmp2, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end4, %entry
  %.flag.0.lcssa = phi i32 [ %.flag.013, %entry ], [ %.flag.0, %if.end4 ]
  ret i32 %.flag.0.lcssa
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
