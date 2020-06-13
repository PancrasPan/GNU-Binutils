; ModuleID = './c_standard_lib-master/MATH/POW.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%union.anon = type { double }

@pow.shuge = internal constant i16 1842, align 2
@pow.dhuge = internal constant double 1.842000e+03, align 8
@pow.ln2 = internal constant double 0x3FE62E42FEFA39EF, align 8
@pow.rthalf = internal constant double 0x3FE6A09E667F3BCD, align 8
@_Nan = external constant %union.anon
@errno = external global i32
@_Inf = external constant %union.anon

; Function Attrs: nounwind
define double @pow(double %x, double %y) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %yi = alloca double, align 8
  %yx = alloca double, align 8
  %z = alloca double, align 8
  %n = alloca i16, align 2
  %xexp = alloca i16, align 2
  %zexp = alloca i16, align 2
  %neg = alloca i16, align 2
  %errx = alloca i16, align 2
  %erry = alloca i16, align 2
  %dexp = alloca double, align 8
  %zl = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double* %y.addr, align 8
  store double %0, double* %yi, align 8
  store i16 0, i16* %neg, align 2
  %call = call signext i16 @_Dunscale(i16* %xexp, double* %x.addr)
  store i16 %call, i16* %errx, align 2
  %call1 = call signext i16 @_Dint(double* %yi, i16 signext 0)
  store i16 %call1, i16* %erry, align 2
  %1 = load i16* %errx, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp sle i32 0, %conv
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i16* %erry, align 2
  %conv3 = sext i16 %2 to i32
  %cmp4 = icmp slt i32 0, %conv3
  br i1 %cmp4, label %if.then, label %if.end107

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %3, double* %z, align 8
  %4 = load i16* %errx, align 2
  %conv6 = sext i16 %4 to i32
  %cmp7 = icmp eq i32 %conv6, 2
  br i1 %cmp7, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.then
  %5 = load i16* %erry, align 2
  %conv10 = sext i16 %5 to i32
  %cmp11 = icmp eq i32 %conv10, 2
  br i1 %cmp11, label %if.then13, label %if.else18

if.then13:                                        ; preds = %lor.lhs.false9, %if.then
  %6 = load i16* %errx, align 2
  %conv14 = sext i16 %6 to i32
  %cmp15 = icmp eq i32 %conv14, 2
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then13
  %7 = load double* %x.addr, align 8
  store double %7, double* %z, align 8
  br label %if.end

if.else:                                          ; preds = %if.then13
  %8 = load double* %y.addr, align 8
  store double %8, double* %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then17
  store i16 2, i16* %errx, align 2
  br label %if.end93

if.else18:                                        ; preds = %lor.lhs.false9
  %9 = load i16* %erry, align 2
  %conv19 = sext i16 %9 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %if.then22, label %if.else57

if.then22:                                        ; preds = %if.else18
  %10 = load i16* %errx, align 2
  %conv23 = sext i16 %10 to i32
  %cmp24 = icmp eq i32 %conv23, 1
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.then22
  store i16 1, i16* %errx, align 2
  br label %if.end56

if.else27:                                        ; preds = %if.then22
  %11 = load i16* %xexp, align 2
  %conv28 = sext i16 %11 to i32
  %cmp29 = icmp sle i32 %conv28, 0
  br i1 %cmp29, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else27
  %12 = bitcast double* %y.addr to i16*
  %arrayidx = getelementptr inbounds i16* %12, i32 3
  %13 = load i16* %arrayidx, align 2
  %conv32 = zext i16 %13 to i32
  %and = and i32 %conv32, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.then31
  store i16 1, i16* %errx, align 2
  br label %if.end35

if.else34:                                        ; preds = %if.then31
  store i16 0, i16* %errx, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  br label %if.end55

if.else36:                                        ; preds = %if.else27
  %14 = load i16* %xexp, align 2
  %conv37 = sext i16 %14 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %land.lhs.true, label %if.else46

land.lhs.true:                                    ; preds = %if.else36
  %15 = load double* %x.addr, align 8
  %cmp40 = fcmp oeq double %15, 5.000000e-01
  br i1 %cmp40, label %if.then45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true
  %16 = load double* %x.addr, align 8
  %cmp43 = fcmp oeq double %16, -5.000000e-01
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %lor.lhs.false42, %land.lhs.true
  store i16 2, i16* %errx, align 2
  br label %if.end54

if.else46:                                        ; preds = %lor.lhs.false42, %if.else36
  %17 = bitcast double* %y.addr to i16*
  %arrayidx47 = getelementptr inbounds i16* %17, i32 3
  %18 = load i16* %arrayidx47, align 2
  %conv48 = zext i16 %18 to i32
  %and49 = and i32 %conv48, 32768
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else46
  store i16 0, i16* %errx, align 2
  br label %if.end53

if.else52:                                        ; preds = %if.else46
  store i16 1, i16* %errx, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then51
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then45
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end35
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then26
  br label %if.end92

if.else57:                                        ; preds = %if.else18
  %19 = load double* %y.addr, align 8
  %cmp58 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.else57
  store double 1.000000e+00, double* %retval
  br label %return

if.else61:                                        ; preds = %if.else57
  %20 = load i16* %errx, align 2
  %conv62 = sext i16 %20 to i32
  %cmp63 = icmp eq i32 %conv62, 1
  br i1 %cmp63, label %if.then65, label %if.else84

if.then65:                                        ; preds = %if.else61
  %21 = load double* %y.addr, align 8
  %cmp66 = fcmp olt double %21, 0.000000e+00
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.then65
  store i16 0, i16* %errx, align 2
  br label %if.end70

if.else69:                                        ; preds = %if.then65
  store i16 1, i16* %errx, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then68
  %22 = bitcast double* %x.addr to i16*
  %arrayidx71 = getelementptr inbounds i16* %22, i32 3
  %23 = load i16* %arrayidx71, align 2
  %conv72 = zext i16 %23 to i32
  %and73 = and i32 %conv72, 32768
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %land.lhs.true75, label %land.end

land.lhs.true75:                                  ; preds = %if.end70
  %24 = load i16* %erry, align 2
  %conv76 = sext i16 %24 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true75
  %call79 = call signext i16 @_Dint(double* %y.addr, i16 signext -1)
  %conv80 = sext i16 %call79 to i32
  %cmp81 = icmp slt i32 %conv80, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true75, %if.end70
  %25 = phi i1 [ false, %land.lhs.true75 ], [ false, %if.end70 ], [ %cmp81, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  %conv83 = trunc i32 %land.ext to i16
  store i16 %conv83, i16* %neg, align 2
  br label %if.end90

if.else84:                                        ; preds = %if.else61
  %26 = load double* %y.addr, align 8
  %cmp85 = fcmp olt double %26, 0.000000e+00
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.else84
  store i16 1, i16* %errx, align 2
  br label %if.end89

if.else88:                                        ; preds = %if.else84
  store i16 0, i16* %errx, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.then87
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %land.end
  br label %if.end91

if.end91:                                         ; preds = %if.end90
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end56
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end
  %27 = load i16* %errx, align 2
  %conv94 = sext i16 %27 to i32
  %cmp95 = icmp eq i32 %conv94, 0
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.end93
  store double 0.000000e+00, double* %retval
  br label %return

if.else98:                                        ; preds = %if.end93
  %28 = load i16* %errx, align 2
  %conv99 = sext i16 %28 to i32
  %cmp100 = icmp eq i32 %conv99, 1
  br i1 %cmp100, label %if.then102, label %if.else106

if.then102:                                       ; preds = %if.else98
  store i32 34, i32* @errno, align 4
  %29 = load i16* %neg, align 2
  %tobool103 = icmp ne i16 %29, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.then102
  %30 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  %sub = fsub double -0.000000e+00, %30
  store double %sub, double* %retval
  br label %return

if.else105:                                       ; preds = %if.then102
  %31 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  store double %31, double* %retval
  br label %return

if.else106:                                       ; preds = %if.else98
  store i32 33, i32* @errno, align 4
  %32 = load double* %z, align 8
  store double %32, double* %retval
  br label %return

if.end107:                                        ; preds = %lor.lhs.false
  %33 = load double* %y.addr, align 8
  %cmp108 = fcmp oeq double %33, 0.000000e+00
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end107
  store double 1.000000e+00, double* %retval
  br label %return

if.end111:                                        ; preds = %if.end107
  %34 = load double* %x.addr, align 8
  %cmp112 = fcmp olt double 0.000000e+00, %34
  br i1 %cmp112, label %if.then114, label %if.else115

if.then114:                                       ; preds = %if.end111
  store i16 0, i16* %neg, align 2
  br label %if.end128

if.else115:                                       ; preds = %if.end111
  %35 = load i16* %erry, align 2
  %conv116 = sext i16 %35 to i32
  %cmp117 = icmp slt i32 %conv116, 0
  br i1 %cmp117, label %if.then119, label %if.else120

if.then119:                                       ; preds = %if.else115
  store i32 33, i32* @errno, align 4
  %36 = load double* getelementptr inbounds (%union.anon* @_Nan, i32 0, i32 0), align 8
  store double %36, double* %retval
  br label %return

if.else120:                                       ; preds = %if.else115
  %37 = load double* %x.addr, align 8
  %sub121 = fsub double -0.000000e+00, %37
  store double %sub121, double* %x.addr, align 8
  %call122 = call signext i16 @_Dint(double* %yi, i16 signext -1)
  %conv123 = sext i16 %call122 to i32
  %cmp124 = icmp slt i32 %conv123, 0
  %conv125 = zext i1 %cmp124 to i32
  %conv126 = trunc i32 %conv125 to i16
  store i16 %conv126, i16* %neg, align 2
  br label %if.end127

if.end127:                                        ; preds = %if.else120
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then114
  %38 = load double* %x.addr, align 8
  %cmp129 = fcmp olt double %38, 0x3FE6A09E667F3BCD
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end128
  %39 = load double* %x.addr, align 8
  %mul = fmul double %39, 2.000000e+00
  store double %mul, double* %x.addr, align 8
  %40 = load i16* %xexp, align 2
  %dec = add i16 %40, -1
  store i16 %dec, i16* %xexp, align 2
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end128
  store i16 0, i16* %n, align 2
  store double 0.000000e+00, double* %yx, align 8
  %41 = load double* %y.addr, align 8
  %cmp133 = fcmp ole double %41, -1.842000e+03
  br i1 %cmp133, label %if.then135, label %if.else148

if.then135:                                       ; preds = %if.end132
  %42 = load i16* %xexp, align 2
  %conv136 = sext i16 %42 to i32
  %cmp137 = icmp slt i32 %conv136, 0
  br i1 %cmp137, label %if.then139, label %if.else140

if.then139:                                       ; preds = %if.then135
  store i16 1842, i16* %zexp, align 2
  br label %if.end147

if.else140:                                       ; preds = %if.then135
  %43 = load i16* %xexp, align 2
  %conv141 = sext i16 %43 to i32
  %cmp142 = icmp eq i32 %conv141, 0
  br i1 %cmp142, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.else140
  store i16 0, i16* %zexp, align 2
  br label %if.end146

if.else145:                                       ; preds = %if.else140
  store i16 -1842, i16* %zexp, align 2
  br label %if.end146

if.end146:                                        ; preds = %if.else145, %if.then144
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then139
  br label %if.end201

if.else148:                                       ; preds = %if.end132
  %44 = load double* %y.addr, align 8
  %cmp149 = fcmp ole double 1.842000e+03, %44
  br i1 %cmp149, label %if.then151, label %if.else164

if.then151:                                       ; preds = %if.else148
  %45 = load i16* %xexp, align 2
  %conv152 = sext i16 %45 to i32
  %cmp153 = icmp slt i32 %conv152, 0
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.then151
  store i16 -1842, i16* %zexp, align 2
  br label %if.end163

if.else156:                                       ; preds = %if.then151
  %46 = load i16* %xexp, align 2
  %conv157 = sext i16 %46 to i32
  %cmp158 = icmp eq i32 %conv157, 0
  br i1 %cmp158, label %if.then160, label %if.else161

if.then160:                                       ; preds = %if.else156
  store i16 0, i16* %zexp, align 2
  br label %if.end162

if.else161:                                       ; preds = %if.else156
  store i16 1842, i16* %zexp, align 2
  br label %if.end162

if.end162:                                        ; preds = %if.else161, %if.then160
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then155
  br label %if.end200

if.else164:                                       ; preds = %if.else148
  %47 = load i16* %xexp, align 2
  %conv165 = sitofp i16 %47 to double
  store double %conv165, double* %dexp, align 8
  %48 = load double* %y.addr, align 8
  %49 = load double* %dexp, align 8
  %mul166 = fmul double %48, %49
  store double %mul166, double* %yx, align 8
  %conv167 = fptosi double %mul166 to i32
  store i32 %conv167, i32* %zl, align 4
  %50 = load i32* %zl, align 4
  %cmp168 = icmp ne i32 %50, 0
  br i1 %cmp168, label %if.then170, label %if.end177

if.then170:                                       ; preds = %if.else164
  %51 = load double* %y.addr, align 8
  store double %51, double* %yx, align 8
  %call171 = call signext i16 @_Dint(double* %yx, i16 signext 16)
  %52 = load double* %yx, align 8
  %53 = load double* %dexp, align 8
  %mul172 = fmul double %52, %53
  %54 = load i32* %zl, align 4
  %conv173 = sitofp i32 %54 to double
  %sub174 = fsub double %mul172, %conv173
  %55 = load double* %y.addr, align 8
  %56 = load double* %yx, align 8
  %sub175 = fsub double %55, %56
  %57 = load double* %dexp, align 8
  %mul176 = fmul double %sub175, %57
  %add = fadd double %sub174, %mul176
  store double %add, double* %yx, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then170, %if.else164
  %58 = load double* %yx, align 8
  %mul178 = fmul double %58, 0x3FE62E42FEFA39EF
  store double %mul178, double* %yx, align 8
  %59 = load i32* %zl, align 4
  %cmp179 = icmp sle i32 %59, -1842
  br i1 %cmp179, label %if.then181, label %if.else182

if.then181:                                       ; preds = %if.end177
  store i16 -1842, i16* %zexp, align 2
  br label %if.end189

if.else182:                                       ; preds = %if.end177
  %60 = load i32* %zl, align 4
  %cmp183 = icmp slt i32 %60, 1842
  br i1 %cmp183, label %if.then185, label %if.else187

if.then185:                                       ; preds = %if.else182
  %61 = load i32* %zl, align 4
  %conv186 = trunc i32 %61 to i16
  store i16 %conv186, i16* %zexp, align 2
  br label %if.end188

if.else187:                                       ; preds = %if.else182
  store i16 1842, i16* %zexp, align 2
  br label %if.end188

if.end188:                                        ; preds = %if.else187, %if.then185
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.then181
  %62 = load double* %y.addr, align 8
  %conv190 = fptosi double %62 to i16
  store i16 %conv190, i16* %n, align 2
  %conv191 = sext i16 %conv190 to i32
  %cmp192 = icmp slt i32 %conv191, -1023
  br i1 %cmp192, label %if.then198, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.end189
  %63 = load i16* %n, align 2
  %conv195 = sext i16 %63 to i32
  %cmp196 = icmp slt i32 1023, %conv195
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %lor.lhs.false194, %if.end189
  store i16 0, i16* %n, align 2
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %lor.lhs.false194
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.end163
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end147
  store double 1.000000e+00, double* %z, align 8
  %64 = load double* %x.addr, align 8
  %cmp202 = fcmp une double %64, 1.000000e+00
  br i1 %cmp202, label %if.then204, label %if.end240

if.then204:                                       ; preds = %if.end201
  %65 = load double* %y.addr, align 8
  %66 = load i16* %n, align 2
  %conv205 = sitofp i16 %66 to double
  %sub206 = fsub double %65, %conv205
  store double %sub206, double* %yi, align 8
  %cmp207 = fcmp une double %sub206, 0.000000e+00
  br i1 %cmp207, label %if.then209, label %if.end213

if.then209:                                       ; preds = %if.then204
  %67 = load double* %x.addr, align 8
  %call210 = call double @_Log(double %67, i32 0)
  %68 = load double* %yi, align 8
  %mul211 = fmul double %call210, %68
  %69 = load double* %yx, align 8
  %add212 = fadd double %69, %mul211
  store double %add212, double* %yx, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.then209, %if.then204
  %70 = load i16* %n, align 2
  %conv214 = sext i16 %70 to i32
  %cmp215 = icmp slt i32 %conv214, 0
  br i1 %cmp215, label %if.then217, label %if.end221

if.then217:                                       ; preds = %if.end213
  %71 = load i16* %n, align 2
  %conv218 = sext i16 %71 to i32
  %sub219 = sub nsw i32 0, %conv218
  %conv220 = trunc i32 %sub219 to i16
  store i16 %conv220, i16* %n, align 2
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %if.end213
  %72 = load double* %x.addr, align 8
  store double %72, double* %yi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end221
  %73 = load i16* %n, align 2
  %conv222 = sext i16 %73 to i32
  %and223 = and i32 %conv222, 1
  %tobool224 = icmp ne i32 %and223, 0
  br i1 %tobool224, label %if.then225, label %if.end227

if.then225:                                       ; preds = %for.cond
  %74 = load double* %yi, align 8
  %75 = load double* %z, align 8
  %mul226 = fmul double %75, %74
  store double %mul226, double* %z, align 8
  br label %if.end227

if.end227:                                        ; preds = %if.then225, %for.cond
  %76 = load i16* %n, align 2
  %conv228 = sext i16 %76 to i32
  %shr = ashr i32 %conv228, 1
  %conv229 = trunc i32 %shr to i16
  store i16 %conv229, i16* %n, align 2
  %conv230 = sext i16 %conv229 to i32
  %cmp231 = icmp eq i32 %conv230, 0
  br i1 %cmp231, label %if.then233, label %if.end234

if.then233:                                       ; preds = %if.end227
  br label %for.end

if.end234:                                        ; preds = %if.end227
  br label %for.inc

for.inc:                                          ; preds = %if.end234
  %77 = load double* %yi, align 8
  %78 = load double* %yi, align 8
  %mul235 = fmul double %78, %77
  store double %mul235, double* %yi, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then233
  %79 = load double* %y.addr, align 8
  %cmp236 = fcmp olt double %79, 0.000000e+00
  br i1 %cmp236, label %if.then238, label %if.end239

if.then238:                                       ; preds = %for.end
  %80 = load double* %z, align 8
  %div = fdiv double 1.000000e+00, %80
  store double %div, double* %z, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %for.end
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.end201
  %81 = load double* %yx, align 8
  %cmp241 = fcmp une double %81, 0.000000e+00
  br i1 %cmp241, label %if.then243, label %if.end257

if.then243:                                       ; preds = %if.end240
  %call244 = call signext i16 @_Exp(double* %yx, i16 signext 0)
  %conv245 = sext i16 %call244 to i32
  %cmp246 = icmp slt i32 %conv245, 0
  br i1 %cmp246, label %if.then248, label %if.else250

if.then248:                                       ; preds = %if.then243
  %82 = load double* %z, align 8
  %83 = load double* %yx, align 8
  %mul249 = fmul double %82, %83
  store double %mul249, double* %z, align 8
  br label %if.end256

if.else250:                                       ; preds = %if.then243
  %84 = load double* %y.addr, align 8
  %cmp251 = fcmp olt double %84, 0.000000e+00
  br i1 %cmp251, label %if.then253, label %if.else254

if.then253:                                       ; preds = %if.else250
  store double 0.000000e+00, double* %z, align 8
  br label %if.end255

if.else254:                                       ; preds = %if.else250
  %85 = load double* getelementptr inbounds (%union.anon* @_Inf, i32 0, i32 0), align 8
  store double %85, double* %z, align 8
  br label %if.end255

if.end255:                                        ; preds = %if.else254, %if.then253
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %if.then248
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.end240
  %86 = load i16* %zexp, align 2
  %call258 = call signext i16 @_Dscale(double* %z, i16 signext %86)
  %conv259 = sext i16 %call258 to i32
  %cmp260 = icmp sle i32 0, %conv259
  br i1 %cmp260, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end257
  store i32 34, i32* @errno, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.end257
  %87 = load i16* %neg, align 2
  %tobool264 = icmp ne i16 %87, 0
  br i1 %tobool264, label %if.then265, label %if.else267

if.then265:                                       ; preds = %if.end263
  %88 = load double* %z, align 8
  %sub266 = fsub double -0.000000e+00, %88
  store double %sub266, double* %retval
  br label %return

if.else267:                                       ; preds = %if.end263
  %89 = load double* %z, align 8
  store double %89, double* %retval
  br label %return

return:                                           ; preds = %if.else267, %if.then265, %if.then119, %if.then110, %if.else106, %if.else105, %if.then104, %if.then97, %if.then60
  %90 = load double* %retval
  ret double %90
}

declare signext i16 @_Dunscale(i16*, double*) #1

declare signext i16 @_Dint(double*, i16 signext) #1

declare double @_Log(double, i32) #1

declare signext i16 @_Exp(double*, i16 signext) #1

declare signext i16 @_Dscale(double*, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
