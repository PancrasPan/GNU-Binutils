; ModuleID = './c_standard_lib-master/_DUMMY/XFGPOS.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.FILE = type { i16, i16, i8*, i8*, i8*, i8*, i8*, i8*, [2 x i8], i8, i8, i8* }
%struct.fpos_t = type { i32 }

; Function Attrs: nounwind
define i32 @_Fgpos(%struct.FILE* %str, %struct.fpos_t* %ptr) #0 {
entry:
  %str.addr = alloca %struct.FILE*, align 4
  %ptr.addr = alloca %struct.fpos_t*, align 4
  store %struct.FILE* %str, %struct.FILE** %str.addr, align 4
  store %struct.fpos_t* %ptr, %struct.fpos_t** %ptr.addr, align 4
  ret i32 -1
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
