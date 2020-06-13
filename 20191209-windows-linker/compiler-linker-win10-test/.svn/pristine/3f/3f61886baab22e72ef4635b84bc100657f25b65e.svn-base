; ModuleID = './testcase_8slots/argument_fir.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@nSamples = global i32 40, align 4
@nTaps = constant i32 16, align 4
@main.h = internal constant [51 x i32] [i32 -35, i32 -219, i32 -503, i32 -494, i32 -8, i32 347, i32 19, i32 -348, i32 26, i32 404, i32 -103, i32 -485, i32 220, i32 579, i32 -398, i32 -678, i32 663, i32 774, i32 -1073, i32 -859, i32 1769, i32 925, i32 -3279, i32 -968, i32 10363, i32 17367, i32 10363, i32 -968, i32 -3279, i32 925, i32 1769, i32 -859, i32 -1073, i32 774, i32 663, i32 -678, i32 -398, i32 579, i32 220, i32 -485, i32 -103, i32 404, i32 26, i32 -348, i32 19, i32 347, i32 -8, i32 -494, i32 -503, i32 -219, i32 -35], align 4
@main.x = private unnamed_addr constant [51 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0], align 4

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %x = alloca [51 x i32], align 4
  %y = alloca [51 x i32], align 4
  %0 = bitcast [51 x i32]* %x to i8*
  call void @llvm.lifetime.start(i64 204, i8* %0) #1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast ([51 x i32]* @main.x to i8*), i32 204, i32 4, i1 false)
  %1 = bitcast [51 x i32]* %y to i8*
  call void @llvm.lifetime.start(i64 204, i8* %1) #1
  call void @llvm.memset.p0i8.i32(i8* %1, i8 0, i32 204, i32 4, i1 false)
  %arraydecay = getelementptr inbounds [51 x i32]* %x, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [51 x i32]* %y, i32 0, i32 0
  call void @fir(i32* getelementptr inbounds ([51 x i32]* @main.h, i32 0, i32 0), i32* %arraydecay, i32* %arraydecay1)
  call void @llvm.lifetime.end(i64 204, i8* %1) #1
  call void @llvm.lifetime.end(i64 204, i8* %0) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

; Function Attrs: nounwind
define void @fir(i32* nocapture readonly %h, i32* nocapture readonly %x, i32* nocapture %y) #0 {
entry:
  %0 = load i32* @nSamples, align 4, !tbaa !1
  %cmp16 = icmp sgt i32 %0, 0
  br i1 %cmp16, label %while.cond1.preheader, label %while.end7

while.cond.loopexit:                              ; preds = %while.body3
  %cmp = icmp sgt i32 %n.017, 0
  br i1 %cmp, label %while.cond1.preheader, label %while.end7

while.cond1.preheader:                            ; preds = %entry, %while.cond.loopexit
  %n.017.in = phi i32 [ %n.017, %while.cond.loopexit ], [ %0, %entry ]
  %n.017 = add nsw i32 %n.017.in, -1
  %arrayidx6 = getelementptr inbounds i32* %y, i32 %n.017
  br label %while.body3

while.body3:                                      ; preds = %while.body3, %while.cond1.preheader
  %m.014 = phi i32 [ 0, %while.cond1.preheader ], [ %inc, %while.body3 ]
  %arrayidx = getelementptr inbounds i32* %h, i32 %m.014
  %1 = load i32* %arrayidx, align 4, !tbaa !1
  %sub4 = sub nsw i32 %n.017, %m.014
  %arrayidx5 = getelementptr inbounds i32* %x, i32 %sub4
  %2 = load i32* %arrayidx5, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %1
  %3 = load i32* %arrayidx6, align 4, !tbaa !1
  %add = add nsw i32 %3, %mul
  store i32 %add, i32* %arrayidx6, align 4, !tbaa !1
  %inc = add nsw i32 %m.014, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %while.cond.loopexit, label %while.body3

while.end7:                                       ; preds = %while.cond.loopexit, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
