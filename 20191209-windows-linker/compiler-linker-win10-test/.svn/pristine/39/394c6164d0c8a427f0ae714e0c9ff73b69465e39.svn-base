; ModuleID = '.\benchmark\dspstone\fir2dim.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.coefficients = internal global [9 x i32] zeroinitializer, align 4
@main.image = internal global [16 x i32] zeroinitializer, align 4
@main.array = internal global [36 x i32] zeroinitializer, align 4
@main.output = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define void @pin_down(i32* nocapture %pimage, i32* nocapture %parray, i32* nocapture %pcoeff, i32* nocapture %poutput) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc4, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ]
  %pimage.addr.088 = phi i32* [ %pimage, %entry ], [ %scevgep96, %for.inc4 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %f.087 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %pimage.addr.186 = phi i32* [ %pimage.addr.088, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %incdec.ptr = getelementptr inbounds i32* %pimage.addr.186, i32 1
  store i32 1, i32* %pimage.addr.186, align 4, !tbaa !1
  %inc = add nsw i32 %f.087, 1
  %exitcond99 = icmp eq i32 %inc, 4
  br i1 %exitcond99, label %for.inc4, label %for.body3

for.inc4:                                         ; preds = %for.body3
  %scevgep96 = getelementptr i32* %pimage.addr.088, i32 4
  %inc5 = add nsw i32 %i.089, 1
  %exitcond101 = icmp eq i32 %inc5, 4
  br i1 %exitcond101, label %for.body9, label %for.cond1.preheader

for.body9:                                        ; preds = %for.inc4, %for.body9
  %i.185 = phi i32 [ %inc12, %for.body9 ], [ 0, %for.inc4 ]
  %pcoeff.addr.084 = phi i32* [ %incdec.ptr10, %for.body9 ], [ %pcoeff, %for.inc4 ]
  %incdec.ptr10 = getelementptr inbounds i32* %pcoeff.addr.084, i32 1
  store i32 1, i32* %pcoeff.addr.084, align 4, !tbaa !1
  %inc12 = add nsw i32 %i.185, 1
  %exitcond95 = icmp eq i32 %inc12, 9
  br i1 %exitcond95, label %for.body16, label %for.body9

for.cond21.preheader:                             ; preds = %for.body16
  %scevgep93 = getelementptr i32* %parray, i32 6
  br label %for.body23

for.body16:                                       ; preds = %for.body9, %for.body16
  %i.283 = phi i32 [ %inc19, %for.body16 ], [ 0, %for.body9 ]
  %parray.addr.082 = phi i32* [ %incdec.ptr17, %for.body16 ], [ %parray, %for.body9 ]
  %incdec.ptr17 = getelementptr inbounds i32* %parray.addr.082, i32 1
  store i32 0, i32* %parray.addr.082, align 4, !tbaa !1
  %inc19 = add nsw i32 %i.283, 1
  %exitcond94 = icmp eq i32 %inc19, 6
  br i1 %exitcond94, label %for.cond21.preheader, label %for.body16

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
  %exitcond91 = icmp eq i32 %inc31, 4
  br i1 %exitcond91, label %for.end32, label %for.body27

for.end32:                                        ; preds = %for.body27
  %scevgep = getelementptr i32* %pimage.addr.279, i32 4
  %incdec.ptr33 = getelementptr inbounds i32* %parray.addr.278, i32 2
  store i32 0, i32* %parray.addr.2, align 4, !tbaa !1
  %inc35 = add nsw i32 %f.181, 1
  %exitcond92 = icmp eq i32 %inc35, 4
  br i1 %exitcond92, label %for.body39, label %for.body23

for.body39:                                       ; preds = %for.end32, %for.body39
  %i.474 = phi i32 [ %inc42, %for.body39 ], [ 0, %for.end32 ]
  %parray.addr.373 = phi i32* [ %incdec.ptr40, %for.body39 ], [ %incdec.ptr33, %for.end32 ]
  %incdec.ptr40 = getelementptr inbounds i32* %parray.addr.373, i32 1
  store i32 0, i32* %parray.addr.373, align 4, !tbaa !1
  %inc42 = add nsw i32 %i.474, 1
  %exitcond90 = icmp eq i32 %inc42, 6
  br i1 %exitcond90, label %for.body46, label %for.body39

for.body46:                                       ; preds = %for.body39, %for.body46
  %i.572 = phi i32 [ %inc49, %for.body46 ], [ 0, %for.body39 ]
  %poutput.addr.071 = phi i32* [ %incdec.ptr47, %for.body46 ], [ %poutput, %for.body39 ]
  %incdec.ptr47 = getelementptr inbounds i32* %poutput.addr.071, i32 1
  store i32 0, i32* %poutput.addr.071, align 4, !tbaa !1
  %inc49 = add nsw i32 %i.572, 1
  %exitcond = icmp eq i32 %inc49, 16
  br i1 %exitcond, label %for.end50, label %for.body46

for.end50:                                        ; preds = %for.body46
  ret void
}

; Function Attrs: nounwind
define void @main() #0 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc4.i, %entry
  %i.089.i = phi i32 [ 0, %entry ], [ %inc5.i, %for.inc4.i ]
  %pimage.addr.088.i = phi i32* [ getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), %entry ], [ %scevgep96.i, %for.inc4.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %f.087.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.body3.i ]
  %pimage.addr.186.i = phi i32* [ %pimage.addr.088.i, %for.cond1.preheader.i ], [ %incdec.ptr.i, %for.body3.i ]
  %incdec.ptr.i = getelementptr inbounds i32* %pimage.addr.186.i, i32 1
  store i32 1, i32* %pimage.addr.186.i, align 4, !tbaa !1
  %inc.i = add nsw i32 %f.087.i, 1
  %exitcond99.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond99.i, label %for.inc4.i, label %for.body3.i

for.inc4.i:                                       ; preds = %for.body3.i
  %scevgep96.i = getelementptr i32* %pimage.addr.088.i, i32 4
  %inc5.i = add nsw i32 %i.089.i, 1
  %exitcond101.i = icmp eq i32 %inc5.i, 4
  br i1 %exitcond101.i, label %for.body9.i, label %for.cond1.preheader.i

for.body9.i:                                      ; preds = %for.inc4.i, %for.body9.i
  %i.185.i = phi i32 [ %inc12.i, %for.body9.i ], [ 0, %for.inc4.i ]
  %pcoeff.addr.084.i = phi i32* [ %incdec.ptr10.i, %for.body9.i ], [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), %for.inc4.i ]
  %incdec.ptr10.i = getelementptr inbounds i32* %pcoeff.addr.084.i, i32 1
  store i32 1, i32* %pcoeff.addr.084.i, align 4, !tbaa !1
  %inc12.i = add nsw i32 %i.185.i, 1
  %exitcond95.i = icmp eq i32 %inc12.i, 9
  br i1 %exitcond95.i, label %for.body16.i, label %for.body9.i

for.body16.i:                                     ; preds = %for.body9.i, %for.body16.i
  %i.283.i = phi i32 [ %inc19.i, %for.body16.i ], [ 0, %for.body9.i ]
  %parray.addr.082.i = phi i32* [ %incdec.ptr17.i, %for.body16.i ], [ getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), %for.body9.i ]
  %incdec.ptr17.i = getelementptr inbounds i32* %parray.addr.082.i, i32 1
  store i32 0, i32* %parray.addr.082.i, align 4, !tbaa !1
  %inc19.i = add nsw i32 %i.283.i, 1
  %exitcond94.i = icmp eq i32 %inc19.i, 6
  br i1 %exitcond94.i, label %for.body23.i, label %for.body16.i

for.body23.i:                                     ; preds = %for.body16.i, %for.end32.i
  %f.181.i = phi i32 [ %inc35.i, %for.end32.i ], [ 0, %for.body16.i ]
  %parray.addr.180.i = phi i32* [ %incdec.ptr33.i, %for.end32.i ], [ getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 6), %for.body16.i ]
  %pimage.addr.279.i = phi i32* [ %scevgep.i, %for.end32.i ], [ getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), %for.body16.i ]
  store i32 0, i32* %parray.addr.180.i, align 4, !tbaa !1
  %parray.addr.275.i = getelementptr inbounds i32* %parray.addr.180.i, i32 1
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i, %for.body23.i
  %0 = phi i32* [ %parray.addr.180.i, %for.body23.i ], [ %parray.addr.278.i, %for.body27.i ]
  %parray.addr.278.i = phi i32* [ %parray.addr.275.i, %for.body23.i ], [ %parray.addr.2.i, %for.body27.i ]
  %i.377.i = phi i32 [ 0, %for.body23.i ], [ %inc31.i, %for.body27.i ]
  %pimage.addr.376.i = phi i32* [ %pimage.addr.279.i, %for.body23.i ], [ %incdec.ptr28.i, %for.body27.i ]
  %incdec.ptr28.i = getelementptr inbounds i32* %pimage.addr.376.i, i32 1
  %1 = load i32* %pimage.addr.376.i, align 4, !tbaa !1
  store i32 %1, i32* %parray.addr.278.i, align 4, !tbaa !1
  %inc31.i = add nsw i32 %i.377.i, 1
  %parray.addr.2.i = getelementptr inbounds i32* %0, i32 2
  %exitcond91.i = icmp eq i32 %inc31.i, 4
  br i1 %exitcond91.i, label %for.end32.i, label %for.body27.i

for.end32.i:                                      ; preds = %for.body27.i
  %scevgep.i = getelementptr i32* %pimage.addr.279.i, i32 4
  %incdec.ptr33.i = getelementptr inbounds i32* %parray.addr.278.i, i32 2
  store i32 0, i32* %parray.addr.2.i, align 4, !tbaa !1
  %inc35.i = add nsw i32 %f.181.i, 1
  %exitcond92.i = icmp eq i32 %inc35.i, 4
  br i1 %exitcond92.i, label %for.body39.i, label %for.body23.i

for.body39.i:                                     ; preds = %for.end32.i, %for.body39.i
  %i.474.i = phi i32 [ %inc42.i, %for.body39.i ], [ 0, %for.end32.i ]
  %parray.addr.373.i = phi i32* [ %incdec.ptr40.i, %for.body39.i ], [ %incdec.ptr33.i, %for.end32.i ]
  %incdec.ptr40.i = getelementptr inbounds i32* %parray.addr.373.i, i32 1
  store i32 0, i32* %parray.addr.373.i, align 4, !tbaa !1
  %inc42.i = add nsw i32 %i.474.i, 1
  %exitcond90.i = icmp eq i32 %inc42.i, 6
  br i1 %exitcond90.i, label %for.body46.i, label %for.body39.i

for.body46.i:                                     ; preds = %for.body39.i, %for.body46.i
  %i.572.i = phi i32 [ %inc49.i, %for.body46.i ], [ 0, %for.body39.i ]
  %poutput.addr.071.i = phi i32* [ %incdec.ptr47.i, %for.body46.i ], [ getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0), %for.body39.i ]
  %incdec.ptr47.i = getelementptr inbounds i32* %poutput.addr.071.i, i32 1
  store i32 0, i32* %poutput.addr.071.i, align 4, !tbaa !1
  %inc49.i = add nsw i32 %i.572.i, 1
  %exitcond.i = icmp eq i32 %inc49.i, 16
  br i1 %exitcond.i, label %for.cond1.preheader, label %for.body46.i

for.cond1.preheader:                              ; preds = %for.body46.i, %for.inc36
  %k.0125 = phi i32 [ %inc37, %for.inc36 ], [ 0, %for.body46.i ]
  %poutput.0124 = phi i32* [ %scevgep, %for.inc36 ], [ getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0), %for.body46.i ]
  %mul = mul nsw i32 %k.0125, 6
  br label %for.body3

for.body3:                                        ; preds = %for.end31, %for.cond1.preheader
  %f.0123 = phi i32 [ 0, %for.cond1.preheader ], [ %inc34, %for.end31 ]
  %poutput.1122 = phi i32* [ %poutput.0124, %for.cond1.preheader ], [ %incdec.ptr32, %for.end31 ]
  %add = add nsw i32 %f.0123, %mul
  %arrayidx = getelementptr inbounds [36 x i32]* @main.array, i32 0, i32 %add
  %arrayidx.sum = add i32 %add, 6
  %add.ptr.sum = add i32 %add, 12
  store i32 0, i32* %poutput.1122, align 4, !tbaa !1
  br label %for.body8

for.cond12.preheader:                             ; preds = %for.body8
  %add.ptr = getelementptr inbounds [36 x i32]* @main.array, i32 0, i32 %arrayidx.sum
  br label %for.body14

for.body8:                                        ; preds = %for.body8, %for.body3
  %2 = phi i32 [ 0, %for.body3 ], [ %add11, %for.body8 ]
  %i.0115 = phi i32 [ 0, %for.body3 ], [ %inc, %for.body8 ]
  %pcoeff.0114 = phi i32* [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), %for.body3 ], [ %incdec.ptr, %for.body8 ]
  %parray.0113 = phi i32* [ %arrayidx, %for.body3 ], [ %incdec.ptr9, %for.body8 ]
  %incdec.ptr = getelementptr inbounds i32* %pcoeff.0114, i32 1
  %3 = load i32* %pcoeff.0114, align 4, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i32* %parray.0113, i32 1
  %4 = load i32* %parray.0113, align 4, !tbaa !1
  %mul10 = mul nsw i32 %4, %3
  %add11 = add nsw i32 %2, %mul10
  store i32 %add11, i32* %poutput.1122, align 4, !tbaa !1
  %inc = add nsw i32 %i.0115, 1
  %exitcond = icmp eq i32 %inc, 3
  br i1 %exitcond, label %for.cond12.preheader, label %for.body8

for.cond22.preheader:                             ; preds = %for.body14
  %add.ptr5 = getelementptr inbounds [36 x i32]* @main.array, i32 0, i32 %add.ptr.sum
  br label %for.body24

for.body14:                                       ; preds = %for.body14, %for.cond12.preheader
  %5 = phi i32 [ %add11, %for.cond12.preheader ], [ %add18, %for.body14 ]
  %i.1118 = phi i32 [ 0, %for.cond12.preheader ], [ %inc20, %for.body14 ]
  %6 = phi i32* [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 2), %for.cond12.preheader ], [ %pcoeff.1117, %for.body14 ]
  %pcoeff.1117 = phi i32* [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 3), %for.cond12.preheader ], [ %incdec.ptr15, %for.body14 ]
  %parray2.0116 = phi i32* [ %add.ptr, %for.cond12.preheader ], [ %incdec.ptr16, %for.body14 ]
  %incdec.ptr15 = getelementptr inbounds i32* %6, i32 2
  %7 = load i32* %pcoeff.1117, align 4, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i32* %parray2.0116, i32 1
  %8 = load i32* %parray2.0116, align 4, !tbaa !1
  %mul17 = mul nsw i32 %8, %7
  %add18 = add nsw i32 %5, %mul17
  store i32 %add18, i32* %poutput.1122, align 4, !tbaa !1
  %inc20 = add nsw i32 %i.1118, 1
  %exitcond126 = icmp eq i32 %inc20, 3
  br i1 %exitcond126, label %for.cond22.preheader, label %for.body14

for.body24:                                       ; preds = %for.body24, %for.cond22.preheader
  %9 = phi i32 [ %add18, %for.cond22.preheader ], [ %add28, %for.body24 ]
  %i.2121 = phi i32 [ 0, %for.cond22.preheader ], [ %inc30, %for.body24 ]
  %pcoeff.2120 = phi i32* [ %incdec.ptr15, %for.cond22.preheader ], [ %incdec.ptr25, %for.body24 ]
  %parray3.0119 = phi i32* [ %add.ptr5, %for.cond22.preheader ], [ %incdec.ptr26, %for.body24 ]
  %incdec.ptr25 = getelementptr inbounds i32* %pcoeff.2120, i32 1
  %10 = load i32* %pcoeff.2120, align 4, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i32* %parray3.0119, i32 1
  %11 = load i32* %parray3.0119, align 4, !tbaa !1
  %mul27 = mul nsw i32 %11, %10
  %add28 = add nsw i32 %9, %mul27
  store i32 %add28, i32* %poutput.1122, align 4, !tbaa !1
  %inc30 = add nsw i32 %i.2121, 1
  %exitcond127 = icmp eq i32 %inc30, 3
  br i1 %exitcond127, label %for.end31, label %for.body24

for.end31:                                        ; preds = %for.body24
  %incdec.ptr32 = getelementptr inbounds i32* %poutput.1122, i32 1
  %inc34 = add nsw i32 %f.0123, 1
  %exitcond128 = icmp eq i32 %inc34, 4
  br i1 %exitcond128, label %for.inc36, label %for.body3

for.inc36:                                        ; preds = %for.end31
  %scevgep = getelementptr i32* %poutput.0124, i32 4
  %inc37 = add nsw i32 %k.0125, 1
  %exitcond129 = icmp eq i32 %inc37, 4
  br i1 %exitcond129, label %for.cond1.preheader.i58, label %for.cond1.preheader

for.cond1.preheader.i58:                          ; preds = %for.inc36, %for.inc4.i68
  %i.089.i56 = phi i32 [ %inc5.i66, %for.inc4.i68 ], [ 0, %for.inc36 ]
  %pimage.addr.088.i57 = phi i32* [ %scevgep96.i65, %for.inc4.i68 ], [ getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), %for.inc36 ]
  br label %for.body3.i64

for.body3.i64:                                    ; preds = %for.body3.i64, %for.cond1.preheader.i58
  %f.087.i59 = phi i32 [ 0, %for.cond1.preheader.i58 ], [ %inc.i62, %for.body3.i64 ]
  %pimage.addr.186.i60 = phi i32* [ %pimage.addr.088.i57, %for.cond1.preheader.i58 ], [ %incdec.ptr.i61, %for.body3.i64 ]
  %incdec.ptr.i61 = getelementptr inbounds i32* %pimage.addr.186.i60, i32 1
  store i32 1, i32* %pimage.addr.186.i60, align 4, !tbaa !1
  %inc.i62 = add nsw i32 %f.087.i59, 1
  %exitcond99.i63 = icmp eq i32 %inc.i62, 4
  br i1 %exitcond99.i63, label %for.inc4.i68, label %for.body3.i64

for.inc4.i68:                                     ; preds = %for.body3.i64
  %scevgep96.i65 = getelementptr i32* %pimage.addr.088.i57, i32 4
  %inc5.i66 = add nsw i32 %i.089.i56, 1
  %exitcond101.i67 = icmp eq i32 %inc5.i66, 4
  br i1 %exitcond101.i67, label %for.body9.i74, label %for.cond1.preheader.i58

for.body9.i74:                                    ; preds = %for.inc4.i68, %for.body9.i74
  %i.185.i69 = phi i32 [ %inc12.i72, %for.body9.i74 ], [ 0, %for.inc4.i68 ]
  %pcoeff.addr.084.i70 = phi i32* [ %incdec.ptr10.i71, %for.body9.i74 ], [ getelementptr inbounds ([9 x i32]* @main.coefficients, i32 0, i32 0), %for.inc4.i68 ]
  %incdec.ptr10.i71 = getelementptr inbounds i32* %pcoeff.addr.084.i70, i32 1
  store i32 1, i32* %pcoeff.addr.084.i70, align 4, !tbaa !1
  %inc12.i72 = add nsw i32 %i.185.i69, 1
  %exitcond95.i73 = icmp eq i32 %inc12.i72, 9
  br i1 %exitcond95.i73, label %for.body16.i81, label %for.body9.i74

for.body16.i81:                                   ; preds = %for.body9.i74, %for.body16.i81
  %i.283.i76 = phi i32 [ %inc19.i79, %for.body16.i81 ], [ 0, %for.body9.i74 ]
  %parray.addr.082.i77 = phi i32* [ %incdec.ptr17.i78, %for.body16.i81 ], [ getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 0), %for.body9.i74 ]
  %incdec.ptr17.i78 = getelementptr inbounds i32* %parray.addr.082.i77, i32 1
  store i32 0, i32* %parray.addr.082.i77, align 4, !tbaa !1
  %inc19.i79 = add nsw i32 %i.283.i76, 1
  %exitcond94.i80 = icmp eq i32 %inc19.i79, 6
  br i1 %exitcond94.i80, label %for.body23.i86, label %for.body16.i81

for.body23.i86:                                   ; preds = %for.body16.i81, %for.end32.i99
  %f.181.i82 = phi i32 [ %inc35.i97, %for.end32.i99 ], [ 0, %for.body16.i81 ]
  %parray.addr.180.i83 = phi i32* [ %incdec.ptr33.i96, %for.end32.i99 ], [ getelementptr inbounds ([36 x i32]* @main.array, i32 0, i32 6), %for.body16.i81 ]
  %pimage.addr.279.i84 = phi i32* [ %scevgep.i95, %for.end32.i99 ], [ getelementptr inbounds ([16 x i32]* @main.image, i32 0, i32 0), %for.body16.i81 ]
  store i32 0, i32* %parray.addr.180.i83, align 4, !tbaa !1
  %parray.addr.275.i85 = getelementptr inbounds i32* %parray.addr.180.i83, i32 1
  br label %for.body27.i94

for.body27.i94:                                   ; preds = %for.body27.i94, %for.body23.i86
  %12 = phi i32* [ %parray.addr.180.i83, %for.body23.i86 ], [ %parray.addr.278.i87, %for.body27.i94 ]
  %parray.addr.278.i87 = phi i32* [ %parray.addr.275.i85, %for.body23.i86 ], [ %parray.addr.2.i92, %for.body27.i94 ]
  %i.377.i88 = phi i32 [ 0, %for.body23.i86 ], [ %inc31.i91, %for.body27.i94 ]
  %pimage.addr.376.i89 = phi i32* [ %pimage.addr.279.i84, %for.body23.i86 ], [ %incdec.ptr28.i90, %for.body27.i94 ]
  %incdec.ptr28.i90 = getelementptr inbounds i32* %pimage.addr.376.i89, i32 1
  %13 = load i32* %pimage.addr.376.i89, align 4, !tbaa !1
  store i32 %13, i32* %parray.addr.278.i87, align 4, !tbaa !1
  %inc31.i91 = add nsw i32 %i.377.i88, 1
  %parray.addr.2.i92 = getelementptr inbounds i32* %12, i32 2
  %exitcond91.i93 = icmp eq i32 %inc31.i91, 4
  br i1 %exitcond91.i93, label %for.end32.i99, label %for.body27.i94

for.end32.i99:                                    ; preds = %for.body27.i94
  %scevgep.i95 = getelementptr i32* %pimage.addr.279.i84, i32 4
  %incdec.ptr33.i96 = getelementptr inbounds i32* %parray.addr.278.i87, i32 2
  store i32 0, i32* %parray.addr.2.i92, align 4, !tbaa !1
  %inc35.i97 = add nsw i32 %f.181.i82, 1
  %exitcond92.i98 = icmp eq i32 %inc35.i97, 4
  br i1 %exitcond92.i98, label %for.body39.i105, label %for.body23.i86

for.body39.i105:                                  ; preds = %for.end32.i99, %for.body39.i105
  %i.474.i100 = phi i32 [ %inc42.i103, %for.body39.i105 ], [ 0, %for.end32.i99 ]
  %parray.addr.373.i101 = phi i32* [ %incdec.ptr40.i102, %for.body39.i105 ], [ %incdec.ptr33.i96, %for.end32.i99 ]
  %incdec.ptr40.i102 = getelementptr inbounds i32* %parray.addr.373.i101, i32 1
  store i32 0, i32* %parray.addr.373.i101, align 4, !tbaa !1
  %inc42.i103 = add nsw i32 %i.474.i100, 1
  %exitcond90.i104 = icmp eq i32 %inc42.i103, 6
  br i1 %exitcond90.i104, label %for.body46.i111, label %for.body39.i105

for.body46.i111:                                  ; preds = %for.body39.i105, %for.body46.i111
  %i.572.i106 = phi i32 [ %inc49.i109, %for.body46.i111 ], [ 0, %for.body39.i105 ]
  %poutput.addr.071.i107 = phi i32* [ %incdec.ptr47.i108, %for.body46.i111 ], [ getelementptr inbounds ([16 x i32]* @main.output, i32 0, i32 0), %for.body39.i105 ]
  %incdec.ptr47.i108 = getelementptr inbounds i32* %poutput.addr.071.i107, i32 1
  store i32 0, i32* %poutput.addr.071.i107, align 4, !tbaa !1
  %inc49.i109 = add nsw i32 %i.572.i106, 1
  %exitcond.i110 = icmp eq i32 %inc49.i109, 16
  br i1 %exitcond.i110, label %pin_down.exit112, label %for.body46.i111

pin_down.exit112:                                 ; preds = %for.body46.i111
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
