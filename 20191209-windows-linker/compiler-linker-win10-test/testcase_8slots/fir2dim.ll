; ModuleID = './testcase_8slots/fir2dim.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.coefficients = internal global [9 x i32] zeroinitializer, align 4
@main.image = internal global [16 x i32] zeroinitializer, align 4
@main.array = internal global [36 x i32] zeroinitializer, align 4
@main.output = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %pimage, i32* nocapture %parray, i32* nocapture %pcoeff, i32* nocapture %poutput) #0 {
entry:
  %poutput90 = bitcast i32* %poutput to i8*
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc4, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ]
  %pimage.addr.088 = phi i32* [ %pimage, %entry ], [ %scevgep97, %for.inc4 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %f.087 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %pimage.addr.186 = phi i32* [ %pimage.addr.088, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %incdec.ptr = getelementptr inbounds i32* %pimage.addr.186, i32 1
  store i32 1, i32* %pimage.addr.186, align 4, !tbaa !1
  %inc = add nsw i32 %f.087, 1
  %exitcond100 = icmp eq i32 %inc, 4
  br i1 %exitcond100, label %for.inc4, label %for.body3

for.inc4:                                         ; preds = %for.body3
  %scevgep97 = getelementptr i32* %pimage.addr.088, i32 4
  %inc5 = add nsw i32 %i.089, 1
  %exitcond102 = icmp eq i32 %inc5, 4
  br i1 %exitcond102, label %for.end6, label %for.cond1.preheader

for.end6:                                         ; preds = %for.inc4
  %parray95 = bitcast i32* %parray to i8*
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.end6
  %i.185 = phi i32 [ 0, %for.end6 ], [ %inc12, %for.body9 ]
  %pcoeff.addr.084 = phi i32* [ %pcoeff, %for.end6 ], [ %incdec.ptr10, %for.body9 ]
  %incdec.ptr10 = getelementptr inbounds i32* %pcoeff.addr.084, i32 1
  store i32 1, i32* %pcoeff.addr.084, align 4, !tbaa !1
  %inc12 = add nsw i32 %i.185, 1
  %exitcond96 = icmp eq i32 %inc12, 9
  br i1 %exitcond96, label %for.cond21.preheader, label %for.body9

for.cond21.preheader:                             ; preds = %for.body9
  call void @llvm.memset.p0i8.i32(i8* %parray95, i8 0, i32 24, i32 4, i1 false)
  %scevgep93 = getelementptr i32* %parray, i32 6
  br label %for.body23

for.body23:                                       ; preds = %for.end32, %for.cond21.preheader
  %f.181 = phi i32 [ 0, %for.cond21.preheader ], [ %inc35, %for.end32 ]
  %parray.addr.180 = phi i32* [ %scevgep93, %for.cond21.preheader ], [ %incdec.ptr33, %for.end32 ]
  %pimage.addr.279 = phi i32* [ %pimage, %for.cond21.preheader ], [ %scevgep, %for.end32 ]
  store i32 0, i32* %parray.addr.180, align 4, !tbaa !1
  %parray.addr.275 = getelementptr inbounds i32* %parray.addr.180, i32 1
  br label %for.body27

for.body27:                                       ; preds = %for.body27, %for.body23
  %0 = phi i32* [ %parray.addr.180, %for.body23 ], [ %parray.addr.278, %for.body27 ]
  %parray.addr.278 = phi i32* [ %parray.addr.275, %for.body23 ], [ %parray.addr.2, %for.body27 ]
  %i.377 = phi i32 [ 0, %for.body23 ], [ %inc31, %for.body27 ]
  %pimage.addr.376 = phi i32* [ %pimage.addr.279, %for.body23 ], [ %incdec.ptr28, %for.body27 ]
  %incdec.ptr28 = getelementptr inbounds i32* %pimage.addr.376, i32 1
  %1 = load i32* %pimage.addr.376, align 4, !tbaa !1
  store i32 %1, i32* %parray.addr.278, align 4, !tbaa !1
  %inc31 = add nsw i32 %i.377, 1
  %parray.addr.2 = getelementptr inbounds i32* %0, i32 2
  %exitcond = icmp eq i32 %inc31, 4
  br i1 %exitcond, label %for.end32, label %for.body27

for.end32:                                        ; preds = %for.body27
  %scevgep = getelementptr i32* %pimage.addr.279, i32 4
  %incdec.ptr33 = getelementptr inbounds i32* %parray.addr.278, i32 2
  store i32 0, i32* %parray.addr.2, align 4, !tbaa !1
  %inc35 = add nsw i32 %f.181, 1
  %exitcond92 = icmp eq i32 %inc35, 4
  br i1 %exitcond92, label %for.end50, label %for.body23

for.end50:                                        ; preds = %for.end32
  %incdec.ptr33.lcssa91 = bitcast i32* %incdec.ptr33 to i8*
  call void @llvm.memset.p0i8.i32(i8* %incdec.ptr33.lcssa91, i8 0, i32 24, i32 4, i1 false)
  call void @llvm.memset.p0i8.i32(i8* %poutput90, i8 0, i32 64, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  tail call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), i32* getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0))
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc36, %entry
  %k.068 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ]
  %poutput.067 = phi i32* [ getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0), %entry ], [ %scevgep, %for.inc36 ]
  %mul = mul nsw i32 %k.068, 6
  br label %for.body3

for.body3:                                        ; preds = %for.end31, %for.cond1.preheader
  %f.066 = phi i32 [ 0, %for.cond1.preheader ], [ %inc34, %for.end31 ]
  %poutput.165 = phi i32* [ %poutput.067, %for.cond1.preheader ], [ %incdec.ptr32, %for.end31 ]
  %add = add nsw i32 %f.066, %mul
  %arrayidx = getelementptr inbounds [36 x i32]* @main.array, i32 0, i32 %add
  %arrayidx.sum = add i32 %add, 6
  %add.ptr.sum = add i32 %add, 12
  store i32 0, i32* %poutput.165, align 4, !tbaa !1
  br label %for.body8

for.cond12.preheader:                             ; preds = %for.body8
  %add.ptr = getelementptr inbounds [36 x i32]* @main.array, i32 0, i32 %arrayidx.sum
  br label %for.body14

for.body8:                                        ; preds = %for.body8, %for.body3
  %i.058 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %pcoeff.057 = phi i32* [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), %for.body3 ], [ %incdec.ptr, %for.body8 ]
  %parray.056 = phi i32* [ %arrayidx, %for.body3 ], [ %incdec.ptr9, %for.body8 ]
  %incdec.ptr = getelementptr inbounds i32* %pcoeff.057, i32 1
  %0 = load i32* %pcoeff.057, align 4, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i32* %parray.056, i32 1
  %1 = load i32* %parray.056, align 4, !tbaa !1
  %mul10 = mul nsw i32 %1, %0
  %2 = load i32* %poutput.165, align 4, !tbaa !1
  %add11 = add nsw i32 %2, %mul10
  store i32 %add11, i32* %poutput.165, align 4, !tbaa !1
  %inc = add nsw i32 %i.058, 1
  %exitcond = icmp eq i32 %inc, 3
  br i1 %exitcond, label %for.cond12.preheader, label %for.body8

for.cond22.preheader:                             ; preds = %for.body14
  %add.ptr5 = getelementptr inbounds [36 x i32]* @main.array, i32 0, i32 %add.ptr.sum
  br label %for.body24

for.body14:                                       ; preds = %for.body14, %for.cond12.preheader
  %i.161 = phi i32 [ 0, %for.cond12.preheader ], [ %inc20, %for.body14 ]
  %3 = phi i32* [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 2), %for.cond12.preheader ], [ %pcoeff.160, %for.body14 ]
  %pcoeff.160 = phi i32* [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 3), %for.cond12.preheader ], [ %incdec.ptr15, %for.body14 ]
  %parray2.059 = phi i32* [ %add.ptr, %for.cond12.preheader ], [ %incdec.ptr16, %for.body14 ]
  %incdec.ptr15 = getelementptr inbounds i32* %3, i32 2
  %4 = load i32* %pcoeff.160, align 4, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i32* %parray2.059, i32 1
  %5 = load i32* %parray2.059, align 4, !tbaa !1
  %mul17 = mul nsw i32 %5, %4
  %6 = load i32* %poutput.165, align 4, !tbaa !1
  %add18 = add nsw i32 %6, %mul17
  store i32 %add18, i32* %poutput.165, align 4, !tbaa !1
  %inc20 = add nsw i32 %i.161, 1
  %exitcond69 = icmp eq i32 %inc20, 3
  br i1 %exitcond69, label %for.cond22.preheader, label %for.body14

for.body24:                                       ; preds = %for.body24, %for.cond22.preheader
  %i.264 = phi i32 [ 0, %for.cond22.preheader ], [ %inc30, %for.body24 ]
  %pcoeff.263 = phi i32* [ %incdec.ptr15, %for.cond22.preheader ], [ %incdec.ptr25, %for.body24 ]
  %parray3.062 = phi i32* [ %add.ptr5, %for.cond22.preheader ], [ %incdec.ptr26, %for.body24 ]
  %incdec.ptr25 = getelementptr inbounds i32* %pcoeff.263, i32 1
  %7 = load i32* %pcoeff.263, align 4, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i32* %parray3.062, i32 1
  %8 = load i32* %parray3.062, align 4, !tbaa !1
  %mul27 = mul nsw i32 %8, %7
  %9 = load i32* %poutput.165, align 4, !tbaa !1
  %add28 = add nsw i32 %9, %mul27
  store i32 %add28, i32* %poutput.165, align 4, !tbaa !1
  %inc30 = add nsw i32 %i.264, 1
  %exitcond70 = icmp eq i32 %inc30, 3
  br i1 %exitcond70, label %for.end31, label %for.body24

for.end31:                                        ; preds = %for.body24
  %incdec.ptr32 = getelementptr inbounds i32* %poutput.165, i32 1
  %inc34 = add nsw i32 %f.066, 1
  %exitcond71 = icmp eq i32 %inc34, 4
  br i1 %exitcond71, label %for.inc36, label %for.body3

for.inc36:                                        ; preds = %for.end31
  %scevgep = getelementptr i32* %poutput.067, i32 4
  %inc37 = add nsw i32 %k.068, 1
  %exitcond74 = icmp eq i32 %inc37, 4
  br i1 %exitcond74, label %for.end38, label %for.cond1.preheader

for.end38:                                        ; preds = %for.inc36
  tail call void @pin_down(i32* getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), i32* getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
