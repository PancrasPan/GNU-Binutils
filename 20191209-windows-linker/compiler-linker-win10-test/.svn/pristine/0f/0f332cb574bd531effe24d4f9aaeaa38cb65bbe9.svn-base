; ModuleID = './testcase_8slots/heapsort.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @heapsort(i32* nocapture %array, i32 %start, i32 %end) #0 {
entry:
  %call = tail call fastcc i32 @buildheap(i32* %array, i32 %start, i32 %end)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry
  %cmp20 = icmp sgt i32 %end, %start
  br i1 %cmp20, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx1 = getelementptr inbounds i32* %array, i32 %start
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.021 = phi i32 [ %end, %for.body.lr.ph ], [ %sub, %for.body ]
  %arrayidx = getelementptr inbounds i32* %array, i32 %i.021
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %1 = load i32* %arrayidx1, align 4, !tbaa !1
  store i32 %1, i32* %arrayidx, align 4, !tbaa !1
  store i32 %0, i32* %arrayidx1, align 4, !tbaa !1
  %sub = add nsw i32 %i.021, -1
  tail call fastcc void @adjustdown(i32* %array, i32 %start, i32 %start, i32 %sub)
  %cmp = icmp sgt i32 %sub, %start
  br i1 %cmp, label %for.body, label %return

return:                                           ; preds = %for.body, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal fastcc i32 @buildheap(i32* nocapture %array, i32 %start, i32 %end) #0 {
entry:
  %cmp = icmp slt i32 %end, %start
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i32 1, %start
  %add = add i32 %sub, %end
  %cmp111 = icmp sgt i32 %add, 1
  br i1 %cmp111, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end
  %div = sdiv i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.012 = phi i32 [ %div, %for.body.lr.ph ], [ %sub2, %for.body ]
  %sub2 = add nsw i32 %i.012, -1
  %add3 = add nsw i32 %sub2, %start
  tail call fastcc void @adjustdown(i32* %array, i32 %add3, i32 %start, i32 %end)
  %cmp1 = icmp sgt i32 %sub2, 0
  br i1 %cmp1, label %for.body, label %return

return:                                           ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal fastcc void @adjustdown(i32* nocapture %array, i32 %pos, i32 %start, i32 %end) #0 {
entry:
  %cmp = icmp slt i32 %end, %start
  %cmp1 = icmp slt i32 %pos, %start
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp sgt i32 %pos, %end
  %or.cond2 = or i1 %or.cond, %cmp3
  br i1 %or.cond2, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i32 %pos, 1
  %add = sub i32 %sub, %start
  %sub4 = sub nsw i32 %end, %start
  %add5 = add nsw i32 %sub4, 1
  %arrayidx = getelementptr inbounds i32* %array, i32 %pos
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %mul3 = shl nsw i32 %add, 1
  %cmp64 = icmp sgt i32 %mul3, %add5
  br i1 %cmp64, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %sub19 = add i32 %start, -1
  %sub22 = add i32 %start, -1
  %sub13 = add i32 %start, -1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then26
  %mul6 = phi i32 [ %mul3, %while.body.lr.ph ], [ %mul, %if.then26 ]
  %ordi.05 = phi i32 [ %add, %while.body.lr.ph ], [ %ordi.1, %if.then26 ]
  %add71 = or i32 %mul6, 1
  %cmp8 = icmp sgt i32 %add71, %add5
  br i1 %cmp8, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %add11 = add nsw i32 %mul6, %start
  %arrayidx12 = getelementptr inbounds i32* %array, i32 %add11
  %1 = load i32* %arrayidx12, align 4, !tbaa !1
  %add14 = add i32 %sub13, %mul6
  %arrayidx15 = getelementptr inbounds i32* %array, i32 %add14
  %2 = load i32* %arrayidx15, align 4, !tbaa !1
  %cmp16 = icmp sgt i32 %1, %2
  %add71.mul = select i1 %cmp16, i32 %add71, i32 %mul6
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %while.body
  %ordi.1 = phi i32 [ %mul6, %while.body ], [ %add71.mul, %land.lhs.true ]
  %add20 = add i32 %sub19, %ordi.1
  %arrayidx21 = getelementptr inbounds i32* %array, i32 %add20
  %3 = load i32* %arrayidx21, align 4, !tbaa !1
  %div = sdiv i32 %ordi.1, 2
  %add23 = add i32 %sub22, %div
  %arrayidx24 = getelementptr inbounds i32* %array, i32 %add23
  %4 = load i32* %arrayidx24, align 4, !tbaa !1
  %cmp25 = icmp sgt i32 %3, %4
  br i1 %cmp25, label %if.then26, label %while.end

if.then26:                                        ; preds = %if.end18
  store i32 %3, i32* %arrayidx24, align 4, !tbaa !1
  %mul = shl nsw i32 %ordi.1, 1
  %cmp6 = icmp sgt i32 %mul, %add5
  br i1 %cmp6, label %while.end, label %while.body

while.end:                                        ; preds = %if.end18, %if.then26, %if.end
  %ordi.0.lcssa = phi i32 [ %add, %if.end ], [ %ordi.05, %if.end18 ], [ %ordi.1, %if.then26 ]
  %sub35 = add i32 %start, -1
  %add36 = add i32 %sub35, %ordi.0.lcssa
  %arrayidx37 = getelementptr inbounds i32* %array, i32 %add36
  store i32 %0, i32* %arrayidx37, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %entry, %while.end
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
