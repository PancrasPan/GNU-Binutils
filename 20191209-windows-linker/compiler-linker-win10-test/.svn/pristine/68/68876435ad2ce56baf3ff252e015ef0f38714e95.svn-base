; ModuleID = './testcase_8slots/startup.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@In = global [240 x i32] [i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 2, i32 3, i32 0, i32 1, i32 3, i32 2, i32 0, i32 2, i32 0, i32 2, i32 2, i32 3, i32 3, i32 3, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 3, i32 2, i32 0, i32 2, i32 0, i32 2, i32 2, i32 3, i32 3, i32 3, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 3, i32 3, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1, i32 3, i32 3, i32 1, i32 1, i32 2, i32 1, i32 0, i32 1], align 4

; Function Attrs: nounwind readnone
define void @pin_down(i32 %i) #0 {
entry:
  ret void
}

; Function Attrs: nounwind
define i32 @main() #1 {
entry:
  %Out = alloca [240 x i32], align 4
  %0 = bitcast [240 x i32]* %Out to i8*
  call void @llvm.lifetime.start(i64 960, i8* %0) #2
  %arraydecay = getelementptr inbounds [240 x i32]* %Out, i32 0, i32 0
  %1 = load i32* getelementptr inbounds ([240 x i32]* @In, i32 0, i32 0), align 4, !tbaa !1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %temp1.0.ph = phi i32 [ %2, %if.then ], [ %1, %entry ]
  %temp2.0.ph.in = phi i32* [ %incdec.ptr9, %if.then ], [ getelementptr inbounds ([240 x i32]* @In, i32 0, i32 1), %entry ]
  %Output.0.ph = phi i32* [ %incdec.ptr8, %if.then ], [ %arraydecay, %entry ]
  %temp2.0.ph = load i32* %temp2.0.ph.in, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %temp1.0 = phi i32 [ %2, %while.body ], [ %temp1.0.ph, %while.cond.outer ]
  %Input.0 = phi i32* [ %incdec.ptr6, %while.body ], [ %temp2.0.ph.in, %while.cond.outer ]
  %Output.0 = phi i32* [ %incdec.ptr5, %while.body ], [ %Output.0.ph, %while.cond.outer ]
  %cmp = icmp eq i32 %temp1.0, %temp2.0.ph
  br i1 %cmp, label %for.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr5 = getelementptr inbounds i32* %Output.0, i32 1
  store i32 0, i32* %Output.0, align 4, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i32* %Input.0, i32 1
  %2 = load i32* %incdec.ptr6, align 4, !tbaa !1
  %cmp7 = icmp eq i32 %2, %temp2.0.ph
  br i1 %cmp7, label %while.cond, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr8 = getelementptr inbounds i32* %Output.0, i32 2
  store i32 0, i32* %incdec.ptr5, align 4, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i32* %Input.0, i32 2
  br label %while.cond.outer

for.end:                                          ; preds = %while.cond
  %Output.0.lcssa120 = bitcast i32* %Output.0 to i8*
  call void @llvm.memset.p0i8.i32(i8* %Output.0.lcssa120, i8 0, i32 256, i32 4, i1 false)
  %scevgep = getelementptr i32* %Output.0, i32 64
  %add.ptr = getelementptr inbounds i32* %Input.0, i32 64
  %incdec.ptr12 = getelementptr inbounds i32* %Input.0, i32 65
  %3 = load i32* %add.ptr, align 4, !tbaa !1
  br label %while.cond13.outer

while.cond13.outer:                               ; preds = %if.then20, %for.end
  %N.0.ph = phi i32 [ %inc23, %if.then20 ], [ 0, %for.end ]
  %temp1.1.ph = phi i32 [ %4, %if.then20 ], [ %3, %for.end ]
  %temp2.1.ph.in = phi i32* [ %incdec.ptr22, %if.then20 ], [ %incdec.ptr12, %for.end ]
  %Output.2.ph = phi i32* [ %incdec.ptr21, %if.then20 ], [ %scevgep, %for.end ]
  %temp2.1.ph = load i32* %temp2.1.ph.in, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %while.cond13.outer, %while.body15
  %N.0 = phi i32 [ %inc18, %while.body15 ], [ %N.0.ph, %while.cond13.outer ]
  %temp1.1 = phi i32 [ %4, %while.body15 ], [ %temp1.1.ph, %while.cond13.outer ]
  %Input.1 = phi i32* [ %incdec.ptr17, %while.body15 ], [ %temp2.1.ph.in, %while.cond13.outer ]
  %Output.2 = phi i32* [ %incdec.ptr16, %while.body15 ], [ %Output.2.ph, %while.cond13.outer ]
  %cmp14 = icmp eq i32 %temp1.1, %temp2.1.ph
  br i1 %cmp14, label %while.cond26.outer, label %while.body15

while.body15:                                     ; preds = %while.cond13
  %incdec.ptr16 = getelementptr inbounds i32* %Output.2, i32 1
  store i32 3, i32* %Output.2, align 4, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i32* %Input.1, i32 1
  %4 = load i32* %incdec.ptr17, align 4, !tbaa !1
  %inc18 = add nsw i32 %N.0, 1
  %cmp19 = icmp eq i32 %4, %temp2.1.ph
  br i1 %cmp19, label %while.cond13, label %if.then20

if.then20:                                        ; preds = %while.body15
  %incdec.ptr21 = getelementptr inbounds i32* %Output.2, i32 2
  store i32 3, i32* %incdec.ptr16, align 4, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i32* %Input.1, i32 2
  %inc23 = add nsw i32 %N.0, 2
  br label %while.cond13.outer

while.body28:                                     ; preds = %land.lhs.true41, %land.lhs.true38, %land.lhs.true, %while.end33, %land.rhs, %while.cond26.outer
  %i.1.lcssa = phi i32 [ %i.1.ph, %while.cond26.outer ], [ 7, %land.rhs ], [ 7, %while.end33 ], [ 7, %land.lhs.true ], [ 7, %land.lhs.true38 ], [ 7, %land.lhs.true41 ]
  %incdec.ptr29 = getelementptr inbounds i32* %Input.2.ph, i32 1
  %add.ptr30 = getelementptr inbounds i32* %Input.2.ph, i32 -7
  %5 = load i32* %add.ptr30, align 4, !tbaa !1
  %6 = load i32* %incdec.ptr29, align 4, !tbaa !1
  %cmp31 = icmp eq i32 %5, %6
  %inc32 = add nsw i32 %i.1.lcssa, 1
  %inc32. = select i1 %cmp31, i32 %inc32, i32 0
  br label %while.cond26.outer

while.cond26.outer:                               ; preds = %while.cond13, %while.body28
  %i.1.ph = phi i32 [ %inc32., %while.body28 ], [ 0, %while.cond13 ]
  %Input.2.ph = phi i32* [ %incdec.ptr29, %while.body28 ], [ %Input.1, %while.cond13 ]
  %cmp27111 = icmp slt i32 %i.1.ph, 8
  br i1 %cmp27111, label %while.body28, label %while.end33

while.end33:                                      ; preds = %while.cond26.outer
  %add.ptr34 = getelementptr inbounds i32* %Input.2.ph, i32 -7
  %7 = load i32* %add.ptr34, align 4, !tbaa !1
  %cmp35 = icmp eq i32 %7, 0
  %add.ptr39 = getelementptr inbounds i32* %Input.2.ph, i32 -4
  %add.ptr42 = getelementptr inbounds i32* %Input.2.ph, i32 -2
  br i1 %cmp35, label %land.lhs.true, label %while.body28

land.lhs.true:                                    ; preds = %while.end33
  %add.ptr36 = getelementptr inbounds i32* %Input.2.ph, i32 -6
  %8 = load i32* %add.ptr36, align 4, !tbaa !1
  %cmp37 = icmp eq i32 %8, 0
  br i1 %cmp37, label %land.lhs.true38, label %while.body28

land.lhs.true38:                                  ; preds = %land.lhs.true
  %9 = load i32* %add.ptr39, align 4, !tbaa !1
  %and = and i32 %9, 1
  %cmp40 = icmp eq i32 %and, 0
  br i1 %cmp40, label %while.body28, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %10 = load i32* %add.ptr42, align 4, !tbaa !1
  %and43 = and i32 %10, 1
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %while.body28, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true41
  %11 = load i32* %Input.2.ph, align 4, !tbaa !1
  %and45 = and i32 %11, 1
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %while.body28, label %do.end

do.end:                                           ; preds = %land.rhs
  %div = sdiv i32 %N.0, 2
  %cmp49108 = icmp slt i32 %N.0, -1
  br i1 %cmp49108, label %for.end55, label %for.body50

for.body50:                                       ; preds = %do.end, %for.body50
  %Output.3110 = phi i32* [ %incdec.ptr52, %for.body50 ], [ %Output.2, %do.end ]
  %i.2109 = phi i32 [ %inc54, %for.body50 ], [ 0, %do.end ]
  %incdec.ptr51 = getelementptr inbounds i32* %Output.3110, i32 1
  store i32 0, i32* %Output.3110, align 4, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i32* %Output.3110, i32 2
  store i32 1, i32* %incdec.ptr51, align 4, !tbaa !1
  %inc54 = add nsw i32 %i.2109, 1
  %cmp49 = icmp slt i32 %i.2109, %div
  br i1 %cmp49, label %for.body50, label %for.end55

for.end55:                                        ; preds = %for.body50, %do.end
  call void @llvm.lifetime.end(i64 960, i8* %0) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
