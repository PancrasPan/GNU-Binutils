; ModuleID = './c_standard_lib-master/_DUMMY/XFOPEN.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define i32 @_Fopen(i8* %path, i32 %smode, i8* %mods) #0 {
entry:
  %path.addr = alloca i8*, align 4
  %smode.addr = alloca i32, align 4
  %mods.addr = alloca i8*, align 4
  store i8* %path, i8** %path.addr, align 4
  store i32 %smode, i32* %smode.addr, align 4
  store i8* %mods, i8** %mods.addr, align 4
  ret i32 -1
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
