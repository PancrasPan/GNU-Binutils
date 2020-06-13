; ModuleID = './testcase_8slots/local_array.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@main.g_Array = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4

; Function Attrs: nounwind readnone
define i32 @main() #0 {
entry:
  %g_Array = alloca [5 x i32], align 4
  %0 = bitcast [5 x i32]* %g_Array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast ([5 x i32]* @main.g_Array to i8*), i32 20, i32 4, i1 false)
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc1, %for.body ]
  %arrayidx = getelementptr inbounds [5 x i32]* %g_Array, i32 0, i32 %i.04
  %1 = load i32* %arrayidx, align 4, !tbaa !1
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !1
  %inc1 = add nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc1, 5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
