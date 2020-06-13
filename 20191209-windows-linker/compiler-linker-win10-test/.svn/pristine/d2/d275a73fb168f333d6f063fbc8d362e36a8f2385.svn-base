; ModuleID = '.\benchmark\dspstone\fir.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.x = internal global [16 x i32] zeroinitializer, align 4
@main.h = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %px, i32* nocapture %ph, i32 %y) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.07 = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  %px.addr.06 = phi i32* [ %px, %entry ], [ %incdec.ptr, %for.body ]
  %ph.addr.05 = phi i32* [ %ph, %entry ], [ %incdec.ptr1, %for.body ]
  %incdec.ptr = getelementptr inbounds i32* %px.addr.06, i32 1
  store i32 %i.07, i32* %px.addr.06, align 4, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32* %ph.addr.05, i32 1
  store i32 %i.07, i32* %ph.addr.05, align 4, !tbaa !1
  %inc = add nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %inc, 17
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.07.i = phi i32 [ 1, %entry ], [ %inc.i, %for.body.i ]
  %px.addr.06.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), %entry ], [ %incdec.ptr.i, %for.body.i ]
  %ph.addr.05.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), %entry ], [ %incdec.ptr1.i, %for.body.i ]
  %incdec.ptr.i = getelementptr inbounds i32* %px.addr.06.i, i32 1
  store i32 %i.07.i, i32* %px.addr.06.i, align 4, !tbaa !1
  %incdec.ptr1.i = getelementptr inbounds i32* %ph.addr.05.i, i32 1
  store i32 %i.07.i, i32* %ph.addr.05.i, align 4, !tbaa !1
  %inc.i = add nsw i32 %i.07.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.i, label %for.body, label %for.body.i

for.body:                                         ; preds = %for.body.i, %for.body
  %y.026 = phi i32 [ %add, %for.body ], [ 0, %for.body.i ]
  %ph.025 = phi i32* [ %incdec.ptr, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 15), %for.body.i ]
  %px2.024 = phi i32* [ %incdec.ptr1, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 14), %for.body.i ]
  %px.023 = phi i32* [ %incdec.ptr2, %for.body ], [ getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 15), %for.body.i ]
  %i.022 = phi i32 [ %inc, %for.body ], [ 0, %for.body.i ]
  %incdec.ptr = getelementptr inbounds i32* %ph.025, i32 -1
  %0 = load i32* %ph.025, align 4, !tbaa !1
  %1 = load i32* %px.023, align 4, !tbaa !1
  %mul = mul nsw i32 %1, %0
  %add = add nsw i32 %mul, %y.026
  %incdec.ptr1 = getelementptr inbounds i32* %px2.024, i32 -1
  %2 = load i32* %px2.024, align 4, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i32* %px.023, i32 -1
  store i32 %2, i32* %px.023, align 4, !tbaa !1
  %inc = add nsw i32 %i.022, 1
  %exitcond = icmp eq i32 %inc, 15
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %3 = load i32* getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), align 4, !tbaa !1
  %4 = load i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), align 4, !tbaa !1
  %mul3 = mul nsw i32 %4, %3
  store i32 100, i32* getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), align 4, !tbaa !1
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.body.i20, %for.end
  %i.07.i13 = phi i32 [ 1, %for.end ], [ %inc.i18, %for.body.i20 ]
  %px.addr.06.i14 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.x, i32 0, i32 0), %for.end ], [ %incdec.ptr.i16, %for.body.i20 ]
  %ph.addr.05.i15 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.h, i32 0, i32 0), %for.end ], [ %incdec.ptr1.i17, %for.body.i20 ]
  %incdec.ptr.i16 = getelementptr inbounds i32* %px.addr.06.i14, i32 1
  store i32 %i.07.i13, i32* %px.addr.06.i14, align 4, !tbaa !1
  %incdec.ptr1.i17 = getelementptr inbounds i32* %ph.addr.05.i15, i32 1
  store i32 %i.07.i13, i32* %ph.addr.05.i15, align 4, !tbaa !1
  %inc.i18 = add nsw i32 %i.07.i13, 1
  %exitcond.i19 = icmp eq i32 %inc.i18, 17
  br i1 %exitcond.i19, label %pin_down.exit21, label %for.body.i20

pin_down.exit21:                                  ; preds = %for.body.i20
  %add4 = add nsw i32 %mul3, %add
  ret i32 %add4
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
