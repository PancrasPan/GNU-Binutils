; ModuleID = './testcase_4slots/linklist.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._LNode = type { i32, %struct._LNode* }

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %L1 = alloca %struct._LNode, align 4
  %L2 = alloca %struct._LNode, align 4
  %p = alloca %struct._LNode*, align 4
  %q = alloca %struct._LNode*, align 4
  store i32 0, i32* %retval
  store %struct._LNode* %L1, %struct._LNode** %p, align 4
  store %struct._LNode* %L2, %struct._LNode** %q, align 4
  %0 = load %struct._LNode** %p, align 4
  %key = getelementptr inbounds %struct._LNode* %0, i32 0, i32 0
  store i32 1, i32* %key, align 4
  %1 = load %struct._LNode** %q, align 4
  %key1 = getelementptr inbounds %struct._LNode* %1, i32 0, i32 0
  store i32 2, i32* %key1, align 4
  %2 = load %struct._LNode** %q, align 4
  %3 = load %struct._LNode** %p, align 4
  %next = getelementptr inbounds %struct._LNode* %3, i32 0, i32 1
  store %struct._LNode* %2, %struct._LNode** %next, align 4
  %4 = load %struct._LNode** %q, align 4
  %next2 = getelementptr inbounds %struct._LNode* %4, i32 0, i32 1
  store %struct._LNode* null, %struct._LNode** %next2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct._LNode** %p, align 4
  %next3 = getelementptr inbounds %struct._LNode* %5, i32 0, i32 1
  %6 = load %struct._LNode** %next3, align 4
  %tobool = icmp ne %struct._LNode* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._LNode** %p, align 4
  %key4 = getelementptr inbounds %struct._LNode* %7, i32 0, i32 0
  %8 = load i32* %key4, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %key4, align 4
  %9 = load %struct._LNode** %p, align 4
  %next5 = getelementptr inbounds %struct._LNode* %9, i32 0, i32 1
  %10 = load %struct._LNode** %next5, align 4
  store %struct._LNode* %10, %struct._LNode** %p, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct._LNode** %q, align 4
  %key6 = getelementptr inbounds %struct._LNode* %11, i32 0, i32 0
  %12 = load i32* %key6, align 4
  ret i32 %12
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
