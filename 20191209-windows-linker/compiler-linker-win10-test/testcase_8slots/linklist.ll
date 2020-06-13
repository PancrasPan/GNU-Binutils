; ModuleID = './testcase_8slots/linklist.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._LNode = type { i32, %struct._LNode* }

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %L1 = alloca %struct._LNode, align 4
  %L2 = alloca %struct._LNode, align 4
  %key = getelementptr inbounds %struct._LNode* %L1, i32 0, i32 0
  store i32 1, i32* %key, align 4, !tbaa !1
  %key1 = getelementptr inbounds %struct._LNode* %L2, i32 0, i32 0
  store i32 2, i32* %key1, align 4, !tbaa !1
  %next = getelementptr inbounds %struct._LNode* %L1, i32 0, i32 1
  store %struct._LNode* %L2, %struct._LNode** %next, align 4, !tbaa !7
  %next2 = getelementptr inbounds %struct._LNode* %L2, i32 0, i32 1
  store %struct._LNode* null, %struct._LNode** %next2, align 4, !tbaa !7
  %next314 = getelementptr inbounds %struct._LNode* %L1, i32 0, i32 1
  %0 = load %struct._LNode** %next314, align 4, !tbaa !7
  %tobool15 = icmp eq %struct._LNode* %0, null
  br i1 %tobool15, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %next317 = phi %struct._LNode** [ %next3, %while.body ], [ %next314, %entry ]
  %p.016 = phi %struct._LNode* [ %2, %while.body ], [ %L1, %entry ]
  %key4 = getelementptr inbounds %struct._LNode* %p.016, i32 0, i32 0
  %1 = load i32* %key4, align 4, !tbaa !1
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %key4, align 4, !tbaa !1
  %2 = load %struct._LNode** %next317, align 4, !tbaa !7
  %next3 = getelementptr inbounds %struct._LNode* %2, i32 0, i32 1
  %3 = load %struct._LNode** %next3, align 4, !tbaa !7
  %tobool = icmp eq %struct._LNode* %3, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %4 = load i32* %key1, align 4, !tbaa !1
  ret i32 %4
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1 = metadata !{metadata !2, metadata !3, i64 0}
!2 = metadata !{metadata !"_LNode", metadata !3, i64 0, metadata !6, i64 4}
!3 = metadata !{metadata !"int", metadata !4, i64 0}
!4 = metadata !{metadata !"omnipotent char", metadata !5, i64 0}
!5 = metadata !{metadata !"Simple C/C++ TBAA"}
!6 = metadata !{metadata !"any pointer", metadata !4, i64 0}
!7 = metadata !{metadata !2, metadata !6, i64 4}
