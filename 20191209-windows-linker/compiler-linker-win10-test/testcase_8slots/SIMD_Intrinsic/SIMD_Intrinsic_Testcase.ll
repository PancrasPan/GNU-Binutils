; ModuleID = '.\testcase_8slots\SIMD_Intrinsic\SIMD_Intrinsic_Testcase.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nounwind
define void @SIMD_Intrinsic_Testcase0() #0 {
entry:
<<<<<<< .mine
  %a.addr.i275 = alloca <128 x i16>, align 256
  %b.addr.i276 = alloca <128 x i16>, align 256
  %a.addr.i273 = alloca <64 x i32>, align 256
  %b.addr.i274 = alloca <64 x i32>, align 256
  %a.addr.i271 = alloca <256 x i8>, align 256
  %b.addr.i272 = alloca <256 x i8>, align 256
  %a.addr.i269 = alloca <128 x i16>, align 256
  %b.addr.i270 = alloca <128 x i16>, align 256
  %a.addr.i267 = alloca <64 x i32>, align 256
  %b.addr.i268 = alloca <64 x i32>, align 256
  %a.addr.i266 = alloca <256 x i8>, align 256
  %a.addr.i265 = alloca <128 x i16>, align 256
  %a.addr.i263 = alloca <256 x i8>, align 256
  %b.addr.i264 = alloca <256 x i8>, align 256
  %a.addr.i261 = alloca <128 x i16>, align 256
  %b.addr.i262 = alloca <256 x i8>, align 256
  %a.addr.i259 = alloca <128 x i16>, align 256
  %b.addr.i260 = alloca <256 x i8>, align 256
  %a.addr.i258 = alloca <64 x i32>, align 256
  %a.addr.i257 = alloca <256 x i8>, align 256
  %a.addr.i255 = alloca <256 x i8>, align 256
  %b.addr.i256 = alloca <256 x i8>, align 256
  %a.addr.i253 = alloca <256 x i8>, align 256
  %b.addr.i254 = alloca <256 x i8>, align 256
  %a.addr.i251 = alloca <256 x i8>, align 256
  %b.addr.i252 = alloca <256 x i8>, align 256
  %a.addr.i249 = alloca <256 x i8>, align 256
  %b.addr.i250 = alloca i32, align 4
  %a.addr.i247 = alloca <128 x i16>, align 256
  %b.addr.i248 = alloca <256 x i8>, align 256
  %a.addr.i245 = alloca <128 x i16>, align 256
  %b.addr.i246 = alloca <256 x i8>, align 256
  %a.addr.i243 = alloca <256 x i8>, align 256
  %b.addr.i244 = alloca <256 x i8>, align 256
  %a.addr.i241 = alloca <128 x i16>, align 256
  %b.addr.i242 = alloca <128 x i16>, align 256
  %a.addr.i239 = alloca <64 x i32>, align 256
  %b.addr.i240 = alloca <64 x i32>, align 256
  %a.addr.i237 = alloca <256 x i8>, align 256
  %b.addr.i238 = alloca <256 x i8>, align 256
  %a.addr.i235 = alloca <128 x i16>, align 256
  %b.addr.i236 = alloca <128 x i16>, align 256
  %a.addr.i233 = alloca <64 x i32>, align 256
  %b.addr.i234 = alloca <64 x i32>, align 256
  %a.addr.i231 = alloca <256 x i8>, align 256
  %b.addr.i232 = alloca <256 x i8>, align 256
  %a.addr.i229 = alloca <128 x i16>, align 256
  %b.addr.i230 = alloca <128 x i16>, align 256
  %a.addr.i227 = alloca <64 x i32>, align 256
  %b.addr.i228 = alloca <64 x i32>, align 256
  %a.addr.i225 = alloca <256 x i8>, align 256
  %b.addr.i226 = alloca <256 x i8>, align 256
  %a.addr.i223 = alloca <128 x i16>, align 256
  %b.addr.i224 = alloca <128 x i16>, align 256
  %a.addr.i221 = alloca <64 x i32>, align 256
  %b.addr.i222 = alloca <64 x i32>, align 256
  %a.addr.i219 = alloca <256 x i8>, align 256
  %b.addr.i220 = alloca <256 x i8>, align 256
  %a.addr.i217 = alloca <128 x i16>, align 256
  %b.addr.i218 = alloca <128 x i16>, align 256
  %a.addr.i215 = alloca <64 x i32>, align 256
  %b.addr.i216 = alloca <64 x i32>, align 256
  %a.addr.i213 = alloca <256 x i8>, align 256
  %b.addr.i214 = alloca <256 x i8>, align 256
  %a.addr.i211 = alloca <128 x i16>, align 256
  %b.addr.i212 = alloca <128 x i16>, align 256
  %a.addr.i209 = alloca <64 x i32>, align 256
  %b.addr.i210 = alloca <64 x i32>, align 256
  %a.addr.i207 = alloca <256 x i8>, align 256
  %b.addr.i208 = alloca <256 x i8>, align 256
  %a.addr.i205 = alloca <128 x i16>, align 256
  %b.addr.i206 = alloca <128 x i16>, align 256
  %a.addr.i203 = alloca <64 x i32>, align 256
  %b.addr.i204 = alloca <64 x i32>, align 256
  %a.addr.i201 = alloca <256 x i8>, align 256
  %b.addr.i202 = alloca <256 x i8>, align 256
  %a.addr.i199 = alloca <128 x i16>, align 256
  %b.addr.i200 = alloca <128 x i16>, align 256
  %a.addr.i197 = alloca <64 x i32>, align 256
  %b.addr.i198 = alloca <64 x i32>, align 256
  %a.addr.i195 = alloca <256 x i8>, align 256
  %b.addr.i196 = alloca <256 x i8>, align 256
  %a.addr.i193 = alloca <128 x i16>, align 256
  %b.addr.i194 = alloca <128 x i16>, align 256
  %a.addr.i191 = alloca <64 x i32>, align 256
  %b.addr.i192 = alloca <64 x i32>, align 256
  %a.addr.i189 = alloca <256 x i8>, align 256
  %b.addr.i190 = alloca <256 x i8>, align 256
  %a.addr.i187 = alloca <128 x i16>, align 256
  %b.addr.i188 = alloca <128 x i16>, align 256
  %a.addr.i185 = alloca <64 x i32>, align 256
  %b.addr.i186 = alloca <64 x i32>, align 256
  %a.addr.i183 = alloca <256 x i8>, align 256
  %b.addr.i184 = alloca <256 x i8>, align 256
  %a.addr.i181 = alloca <128 x i16>, align 256
  %b.addr.i182 = alloca <128 x i16>, align 256
  %a.addr.i179 = alloca <64 x i32>, align 256
  %b.addr.i180 = alloca <64 x i32>, align 256
  %a.addr.i178 = alloca <256 x i8>, align 256
  %a.addr.i177 = alloca <128 x i16>, align 256
  %a.addr.i176 = alloca <64 x i32>, align 256
  %a.addr.i174 = alloca <256 x i8>, align 256
  %b.addr.i175 = alloca <256 x i8>, align 256
  %a.addr.i172 = alloca <128 x i16>, align 256
  %b.addr.i173 = alloca <128 x i16>, align 256
  %a.addr.i170 = alloca <64 x i32>, align 256
  %b.addr.i171 = alloca <64 x i32>, align 256
  %a.addr.i168 = alloca <256 x i8>, align 256
  %b.addr.i169 = alloca <256 x i8>, align 256
  %a.addr.i166 = alloca <128 x i16>, align 256
  %b.addr.i167 = alloca <128 x i16>, align 256
  %a.addr.i164 = alloca <64 x i32>, align 256
  %b.addr.i165 = alloca <64 x i32>, align 256
  %a.addr.i162 = alloca <256 x i8>, align 256
  %b.addr.i163 = alloca <256 x i8>, align 256
  %a.addr.i160 = alloca <128 x i16>, align 256
  %b.addr.i161 = alloca <128 x i16>, align 256
  %a.addr.i158 = alloca <128 x i16>, align 256
  %b.addr.i159 = alloca <128 x i16>, align 256
  %a.addr.i156 = alloca <64 x i32>, align 256
  %b.addr.i157 = alloca <64 x i32>, align 256
  %a.addr.i154 = alloca <64 x i32>, align 256
  %b.addr.i155 = alloca <64 x i32>, align 256
  %a.addr.i153 = alloca i32, align 4
  %a.addr.i152 = alloca i32, align 4
  %a.addr.i151 = alloca i32, align 4
  %a.addr.i150 = alloca i32, align 4
  %a.addr.i148 = alloca i32, align 4
  %b.addr.i149 = alloca i32, align 4
  %a.addr.i146 = alloca i32, align 4
  %b.addr.i147 = alloca i32, align 4
  %a.addr.i145 = alloca i32, align 4
  %a.addr.i143 = alloca i32, align 4
  %b.addr.i144 = alloca i32, align 4
  %a.addr.i141 = alloca i32, align 4
  %b.addr.i142 = alloca i32, align 4
  %a.addr.i139 = alloca i32, align 4
  %b.addr.i140 = alloca i32, align 4
  %a.addr.i137 = alloca i32, align 4
  %b.addr.i138 = alloca i32, align 4
  %a.addr.i135 = alloca i32, align 4
  %b.addr.i136 = alloca i32, align 4
  %a.addr.i133 = alloca i32, align 4
  %b.addr.i134 = alloca i32, align 4
  %a.addr.i131 = alloca i32, align 4
  %b.addr.i132 = alloca i32, align 4
  %a.addr.i129 = alloca i32, align 4
  %b.addr.i130 = alloca i32, align 4
  %a.addr.i127 = alloca i32, align 4
  %b.addr.i128 = alloca i32, align 4
  %a.addr.i125 = alloca i32, align 4
  %b.addr.i126 = alloca i32, align 4
  %a.addr.i122 = alloca i32, align 4
  %b.addr.i123 = alloca i32, align 4
  %c.addr.i124 = alloca i32, align 4
  %a.addr.i119 = alloca i32, align 4
  %b.addr.i120 = alloca i32, align 4
  %c.addr.i121 = alloca i32, align 4
  %a.addr.i117 = alloca i32, align 4
  %b.addr.i118 = alloca i32, align 4
  %c.addr.i = alloca i32, align 4
  %a.addr.i116 = alloca i32, align 4
  %a.addr.i115 = alloca i32, align 4
  %a.addr.i114 = alloca i32, align 4
  %a.addr.i112 = alloca i32, align 4
  %b.addr.i113 = alloca i32, align 4
  %a.addr.i110 = alloca i32, align 4
  %b.addr.i111 = alloca i32, align 4
  %a.addr.i108 = alloca i32, align 4
  %b.addr.i109 = alloca i32, align 4
  %a.addr.i106 = alloca <64 x i32>, align 256
  %b.addr.i107 = alloca i32, align 4
  %a.addr.i104 = alloca <128 x i16>, align 256
  %b.addr.i105 = alloca i32, align 4
  %a.addr.i102 = alloca <256 x i8>, align 256
  %b.addr.i103 = alloca i32, align 4
  %a.addr.i101 = alloca <256 x i8>, align 256
  %a.addr.i100 = alloca <256 x i8>, align 256
  %a.addr.i99 = alloca <256 x i8>, align 256
  %a.addr.i98 = alloca i32, align 4
  %a.addr.i97 = alloca i32, align 4
  %a.addr.i96 = alloca i32, align 4
||||||| .r57
  %a.addr.i194 = alloca <128 x i16>, align 256
  %b.addr.i195 = alloca <128 x i16>, align 256
  %a.addr.i192 = alloca <64 x i32>, align 256
  %b.addr.i193 = alloca <64 x i32>, align 256
  %a.addr.i190 = alloca <256 x i8>, align 256
  %b.addr.i191 = alloca <256 x i8>, align 256
  %a.addr.i188 = alloca <128 x i16>, align 256
  %b.addr.i189 = alloca <128 x i16>, align 256
  %a.addr.i186 = alloca <64 x i32>, align 256
  %b.addr.i187 = alloca <64 x i32>, align 256
  %a.addr.i185 = alloca <256 x i8>, align 256
  %a.addr.i184 = alloca <128 x i16>, align 256
  %a.addr.i183 = alloca <64 x i32>, align 256
  %a.addr.i182 = alloca <256 x i8>, align 256
  %a.addr.i180 = alloca <256 x i8>, align 256
  %b.addr.i181 = alloca <256 x i8>, align 256
  %a.addr.i178 = alloca <256 x i8>, align 256
  %b.addr.i179 = alloca <256 x i8>, align 256
  %a.addr.i176 = alloca <256 x i8>, align 256
  %b.addr.i177 = alloca <256 x i8>, align 256
  %a.addr.i174 = alloca <256 x i8>, align 256
  %b.addr.i175 = alloca i32, align 4
  %a.addr.i172 = alloca <128 x i16>, align 256
  %b.addr.i173 = alloca <128 x i16>, align 256
  %a.addr.i170 = alloca <128 x i16>, align 256
  %b.addr.i171 = alloca <128 x i16>, align 256
  %a.addr.i168 = alloca <256 x i8>, align 256
  %b.addr.i169 = alloca <256 x i8>, align 256
  %a.addr.i166 = alloca <128 x i16>, align 256
  %b.addr.i167 = alloca <128 x i16>, align 256
  %a.addr.i164 = alloca <64 x i32>, align 256
  %b.addr.i165 = alloca <64 x i32>, align 256
  %a.addr.i162 = alloca <256 x i8>, align 256
  %b.addr.i163 = alloca <256 x i8>, align 256
  %a.addr.i160 = alloca <128 x i16>, align 256
  %b.addr.i161 = alloca <128 x i16>, align 256
  %a.addr.i158 = alloca <64 x i32>, align 256
  %b.addr.i159 = alloca <64 x i32>, align 256
  %a.addr.i156 = alloca <256 x i8>, align 256
  %b.addr.i157 = alloca <256 x i8>, align 256
  %a.addr.i154 = alloca <128 x i16>, align 256
  %b.addr.i155 = alloca <128 x i16>, align 256
  %a.addr.i152 = alloca <64 x i32>, align 256
  %b.addr.i153 = alloca <64 x i32>, align 256
  %a.addr.i150 = alloca <256 x i8>, align 256
  %b.addr.i151 = alloca <256 x i8>, align 256
  %a.addr.i148 = alloca <128 x i16>, align 256
  %b.addr.i149 = alloca <128 x i16>, align 256
  %a.addr.i146 = alloca <64 x i32>, align 256
  %b.addr.i147 = alloca <64 x i32>, align 256
  %a.addr.i144 = alloca <256 x i8>, align 256
  %b.addr.i145 = alloca <256 x i8>, align 256
  %a.addr.i142 = alloca <128 x i16>, align 256
  %b.addr.i143 = alloca <128 x i16>, align 256
  %a.addr.i140 = alloca <64 x i32>, align 256
  %b.addr.i141 = alloca <64 x i32>, align 256
  %a.addr.i138 = alloca <256 x i8>, align 256
  %b.addr.i139 = alloca <256 x i8>, align 256
  %a.addr.i136 = alloca <128 x i16>, align 256
  %b.addr.i137 = alloca <128 x i16>, align 256
  %a.addr.i134 = alloca <64 x i32>, align 256
  %b.addr.i135 = alloca <64 x i32>, align 256
  %a.addr.i132 = alloca <256 x i8>, align 256
  %b.addr.i133 = alloca <256 x i8>, align 256
  %a.addr.i130 = alloca <128 x i16>, align 256
  %b.addr.i131 = alloca <128 x i16>, align 256
  %a.addr.i128 = alloca <64 x i32>, align 256
  %b.addr.i129 = alloca <64 x i32>, align 256
  %a.addr.i126 = alloca <256 x i8>, align 256
  %b.addr.i127 = alloca <256 x i8>, align 256
  %a.addr.i124 = alloca <128 x i16>, align 256
  %b.addr.i125 = alloca <128 x i16>, align 256
  %a.addr.i122 = alloca <64 x i32>, align 256
  %b.addr.i123 = alloca <64 x i32>, align 256
  %a.addr.i120 = alloca <256 x i8>, align 256
  %b.addr.i121 = alloca <256 x i8>, align 256
  %a.addr.i118 = alloca <128 x i16>, align 256
  %b.addr.i119 = alloca <128 x i16>, align 256
  %a.addr.i116 = alloca <64 x i32>, align 256
  %b.addr.i117 = alloca <64 x i32>, align 256
  %a.addr.i114 = alloca <256 x i8>, align 256
  %b.addr.i115 = alloca <256 x i8>, align 256
  %a.addr.i112 = alloca <128 x i16>, align 256
  %b.addr.i113 = alloca <128 x i16>, align 256
  %a.addr.i110 = alloca <64 x i32>, align 256
  %b.addr.i111 = alloca <64 x i32>, align 256
  %a.addr.i108 = alloca <256 x i8>, align 256
  %b.addr.i109 = alloca <256 x i8>, align 256
  %a.addr.i106 = alloca <128 x i16>, align 256
  %b.addr.i107 = alloca <128 x i16>, align 256
  %a.addr.i104 = alloca <64 x i32>, align 256
  %b.addr.i105 = alloca <64 x i32>, align 256
  %a.addr.i103 = alloca <256 x i8>, align 256
  %a.addr.i102 = alloca <128 x i16>, align 256
  %a.addr.i101 = alloca <64 x i32>, align 256
  %a.addr.i99 = alloca <256 x i8>, align 256
  %b.addr.i100 = alloca <256 x i8>, align 256
  %a.addr.i97 = alloca <128 x i16>, align 256
  %b.addr.i98 = alloca <128 x i16>, align 256
  %a.addr.i95 = alloca <64 x i32>, align 256
  %b.addr.i96 = alloca <64 x i32>, align 256
  %a.addr.i93 = alloca <256 x i8>, align 256
  %b.addr.i94 = alloca <256 x i8>, align 256
  %a.addr.i91 = alloca <128 x i16>, align 256
  %b.addr.i92 = alloca <128 x i16>, align 256
  %a.addr.i89 = alloca <64 x i32>, align 256
  %b.addr.i90 = alloca <64 x i32>, align 256
  %a.addr.i87 = alloca <256 x i8>, align 256
  %b.addr.i88 = alloca <256 x i8>, align 256
  %a.addr.i85 = alloca <128 x i16>, align 256
  %b.addr.i86 = alloca <128 x i16>, align 256
  %a.addr.i83 = alloca <128 x i16>, align 256
  %b.addr.i84 = alloca <128 x i16>, align 256
  %a.addr.i81 = alloca <64 x i32>, align 256
  %b.addr.i82 = alloca <64 x i32>, align 256
  %a.addr.i79 = alloca <64 x i32>, align 256
  %b.addr.i80 = alloca <64 x i32>, align 256
  %a.addr.i78 = alloca i32, align 4
  %a.addr.i77 = alloca i32, align 4
  %a.addr.i76 = alloca i32, align 4
  %a.addr.i75 = alloca i32, align 4
  %a.addr.i73 = alloca i32, align 4
  %b.addr.i74 = alloca i32, align 4
  %a.addr.i71 = alloca i32, align 4
  %b.addr.i72 = alloca i32, align 4
  %a.addr.i70 = alloca i32, align 4
=======
  %a.addr.i328 = alloca <128 x i16>, align 256
  %b.addr.i329 = alloca <128 x i16>, align 256
  %a.addr.i326 = alloca <64 x i32>, align 256
  %b.addr.i327 = alloca <64 x i32>, align 256
  %a.addr.i324 = alloca <256 x i8>, align 256
  %b.addr.i325 = alloca <256 x i8>, align 256
  %a.addr.i322 = alloca <128 x i16>, align 256
  %b.addr.i323 = alloca <128 x i16>, align 256
  %a.addr.i320 = alloca <64 x i32>, align 256
  %b.addr.i321 = alloca <64 x i32>, align 256
  %a.addr.i319 = alloca <256 x i8>, align 256
  %a.addr.i318 = alloca <128 x i16>, align 256
  %a.addr.i317 = alloca <64 x i32>, align 256
  %a.addr.i316 = alloca <256 x i8>, align 256
  %a.addr.i314 = alloca <256 x i8>, align 256
  %b.addr.i315 = alloca <256 x i8>, align 256
  %a.addr.i312 = alloca <256 x i8>, align 256
  %b.addr.i313 = alloca <256 x i8>, align 256
  %a.addr.i310 = alloca <256 x i8>, align 256
  %b.addr.i311 = alloca <256 x i8>, align 256
  %a.addr.i308 = alloca <256 x i8>, align 256
  %b.addr.i309 = alloca i32, align 4
  %a.addr.i306 = alloca <128 x i16>, align 256
  %b.addr.i307 = alloca <128 x i16>, align 256
  %a.addr.i304 = alloca <128 x i16>, align 256
  %b.addr.i305 = alloca <128 x i16>, align 256
  %a.addr.i302 = alloca i32, align 4
  %b.addr.i303 = alloca i32, align 4
  %a.addr.i300 = alloca i32, align 4
  %b.addr.i301 = alloca i32, align 4
  %a.addr.i298 = alloca i32, align 4
  %b.addr.i299 = alloca i32, align 4
  %a.addr.i296 = alloca i32, align 4
  %b.addr.i297 = alloca i32, align 4
  %a.addr.i294 = alloca i32, align 4
  %b.addr.i295 = alloca i32, align 4
  %a.addr.i292 = alloca i32, align 4
  %b.addr.i293 = alloca i32, align 4
  %a.addr.i290 = alloca i32, align 4
  %b.addr.i291 = alloca i32, align 4
  %a.addr.i288 = alloca <256 x i8>, align 256
  %b.addr.i289 = alloca <256 x i8>, align 256
  %a.addr.i286 = alloca <128 x i16>, align 256
  %b.addr.i287 = alloca <128 x i16>, align 256
  %a.addr.i284 = alloca <64 x i32>, align 256
  %b.addr.i285 = alloca <64 x i32>, align 256
  %a.addr.i282 = alloca <256 x i8>, align 256
  %b.addr.i283 = alloca <256 x i8>, align 256
  %a.addr.i280 = alloca <128 x i16>, align 256
  %b.addr.i281 = alloca <128 x i16>, align 256
  %a.addr.i278 = alloca <64 x i32>, align 256
  %b.addr.i279 = alloca <64 x i32>, align 256
  %a.addr.i276 = alloca <256 x i8>, align 256
  %b.addr.i277 = alloca <256 x i8>, align 256
  %a.addr.i274 = alloca <128 x i16>, align 256
  %b.addr.i275 = alloca <128 x i16>, align 256
  %a.addr.i272 = alloca <64 x i32>, align 256
  %b.addr.i273 = alloca <64 x i32>, align 256
  %a.addr.i270 = alloca <256 x i8>, align 256
  %b.addr.i271 = alloca <256 x i8>, align 256
  %a.addr.i268 = alloca <128 x i16>, align 256
  %b.addr.i269 = alloca <128 x i16>, align 256
  %a.addr.i266 = alloca <64 x i32>, align 256
  %b.addr.i267 = alloca <64 x i32>, align 256
  %a.addr.i264 = alloca <256 x i8>, align 256
  %b.addr.i265 = alloca <256 x i8>, align 256
  %a.addr.i262 = alloca <128 x i16>, align 256
  %b.addr.i263 = alloca <128 x i16>, align 256
  %a.addr.i260 = alloca <64 x i32>, align 256
  %b.addr.i261 = alloca <64 x i32>, align 256
  %a.addr.i258 = alloca <256 x i8>, align 256
  %b.addr.i259 = alloca <256 x i8>, align 256
  %a.addr.i256 = alloca <128 x i16>, align 256
  %b.addr.i257 = alloca <128 x i16>, align 256
  %a.addr.i254 = alloca <64 x i32>, align 256
  %b.addr.i255 = alloca <64 x i32>, align 256
  %a.addr.i252 = alloca <256 x i8>, align 256
  %b.addr.i253 = alloca <256 x i8>, align 256
  %a.addr.i250 = alloca <128 x i16>, align 256
  %b.addr.i251 = alloca <128 x i16>, align 256
  %a.addr.i248 = alloca <64 x i32>, align 256
  %b.addr.i249 = alloca <64 x i32>, align 256
  %a.addr.i246 = alloca <256 x i8>, align 256
  %b.addr.i247 = alloca <256 x i8>, align 256
  %a.addr.i244 = alloca <128 x i16>, align 256
  %b.addr.i245 = alloca <128 x i16>, align 256
  %a.addr.i242 = alloca <64 x i32>, align 256
  %b.addr.i243 = alloca <64 x i32>, align 256
  %a.addr.i240 = alloca <256 x i8>, align 256
  %b.addr.i241 = alloca <256 x i8>, align 256
  %a.addr.i238 = alloca <128 x i16>, align 256
  %b.addr.i239 = alloca <128 x i16>, align 256
  %a.addr.i236 = alloca <64 x i32>, align 256
  %b.addr.i237 = alloca <64 x i32>, align 256
  %a.addr.i234 = alloca <256 x i8>, align 256
  %b.addr.i235 = alloca <256 x i8>, align 256
  %a.addr.i232 = alloca <128 x i16>, align 256
  %b.addr.i233 = alloca <128 x i16>, align 256
  %a.addr.i230 = alloca <64 x i32>, align 256
  %b.addr.i231 = alloca <64 x i32>, align 256
  %a.addr.i228 = alloca <256 x i8>, align 256
  %b.addr.i229 = alloca <256 x i8>, align 256
  %a.addr.i226 = alloca <128 x i16>, align 256
  %b.addr.i227 = alloca <128 x i16>, align 256
  %a.addr.i224 = alloca <64 x i32>, align 256
  %b.addr.i225 = alloca <64 x i32>, align 256
  %a.addr.i223 = alloca <256 x i8>, align 256
  %a.addr.i222 = alloca <128 x i16>, align 256
  %a.addr.i221 = alloca <64 x i32>, align 256
  %a.addr.i219 = alloca <256 x i8>, align 256
  %b.addr.i220 = alloca <256 x i8>, align 256
  %a.addr.i217 = alloca <128 x i16>, align 256
  %b.addr.i218 = alloca <128 x i16>, align 256
  %a.addr.i215 = alloca <64 x i32>, align 256
  %b.addr.i216 = alloca <64 x i32>, align 256
  %a.addr.i213 = alloca <256 x i8>, align 256
  %b.addr.i214 = alloca <256 x i8>, align 256
  %a.addr.i211 = alloca <128 x i16>, align 256
  %b.addr.i212 = alloca <128 x i16>, align 256
  %a.addr.i209 = alloca <64 x i32>, align 256
  %b.addr.i210 = alloca <64 x i32>, align 256
  %a.addr.i207 = alloca <256 x i8>, align 256
  %b.addr.i208 = alloca <256 x i8>, align 256
  %a.addr.i205 = alloca <128 x i16>, align 256
  %b.addr.i206 = alloca <128 x i16>, align 256
  %a.addr.i203 = alloca <128 x i16>, align 256
  %b.addr.i204 = alloca <128 x i16>, align 256
  %a.addr.i201 = alloca <64 x i32>, align 256
  %b.addr.i202 = alloca <64 x i32>, align 256
  %a.addr.i199 = alloca <64 x i32>, align 256
  %b.addr.i200 = alloca <64 x i32>, align 256
  %a.addr.i197 = alloca i32, align 4
  %b.addr.i198 = alloca i32, align 4
  %a.addr.i195 = alloca i32, align 4
  %b.addr.i196 = alloca i32, align 4
  %a.addr.i193 = alloca i32, align 4
  %b.addr.i194 = alloca i32, align 4
  %a.addr.i191 = alloca i32, align 4
  %b.addr.i192 = alloca i32, align 4
  %a.addr.i189 = alloca i32, align 4
  %b.addr.i190 = alloca i32, align 4
  %a.addr.i187 = alloca i32, align 4
  %b.addr.i188 = alloca i32, align 4
  %a.addr.i185 = alloca i32, align 4
  %b.addr.i186 = alloca i32, align 4
  %a.addr.i183 = alloca i32, align 4
  %b.addr.i184 = alloca i32, align 4
  %a.addr.i181 = alloca i32, align 4
  %b.addr.i182 = alloca i32, align 4
  %a.addr.i179 = alloca i32, align 4
  %b.addr.i180 = alloca i32, align 4
  %a.addr.i177 = alloca i32, align 4
  %b.addr.i178 = alloca i32, align 4
  %a.addr.i175 = alloca i32, align 4
  %b.addr.i176 = alloca i32, align 4
  %a.addr.i172 = alloca i32, align 4
  %b.addr.i173 = alloca i32, align 4
  %c.addr.i174 = alloca i32, align 4
  %a.addr.i169 = alloca i32, align 4
  %b.addr.i170 = alloca i32, align 4
  %c.addr.i171 = alloca i32, align 4
  %a.addr.i166 = alloca i32, align 4
  %b.addr.i167 = alloca i32, align 4
  %c.addr.i168 = alloca i32, align 4
  %a.addr.i164 = alloca i32, align 4
  %b.addr.i165 = alloca i32, align 4
  %a.addr.i162 = alloca i32, align 4
  %b.addr.i163 = alloca i32, align 4
  %a.addr.i160 = alloca i32, align 4
  %b.addr.i161 = alloca i32, align 4
  %a.addr.i158 = alloca i32, align 4
  %b.addr.i159 = alloca i32, align 4
  %a.addr.i156 = alloca i32, align 4
  %b.addr.i157 = alloca i32, align 4
  %a.addr.i154 = alloca i32, align 4
  %b.addr.i155 = alloca i32, align 4
  %a.addr.i152 = alloca i32, align 4
  %b.addr.i153 = alloca i32, align 4
  %a.addr.i150 = alloca i32, align 4
  %b.addr.i151 = alloca i32, align 4
  %a.addr.i148 = alloca i32, align 4
  %b.addr.i149 = alloca i32, align 4
  %a.addr.i146 = alloca i32, align 4
  %b.addr.i147 = alloca i32, align 4
  %a.addr.i144 = alloca i32, align 4
  %b.addr.i145 = alloca i32, align 4
  %a.addr.i142 = alloca i32, align 4
  %b.addr.i143 = alloca i32, align 4
  %a.addr.i140 = alloca i32, align 4
  %b.addr.i141 = alloca i32, align 4
  %a.addr.i138 = alloca i32, align 4
  %b.addr.i139 = alloca i32, align 4
  %a.addr.i136 = alloca i32, align 4
  %b.addr.i137 = alloca i32, align 4
  %a.addr.i134 = alloca i32, align 4
  %b.addr.i135 = alloca i32, align 4
  %a.addr.i132 = alloca i32, align 4
  %b.addr.i133 = alloca i32, align 4
  %a.addr.i131 = alloca i32, align 4
  %a.addr.i130 = alloca i32, align 4
  %a.addr.i129 = alloca i32, align 4
  %a.addr.i128 = alloca i32, align 4
  %a.addr.i127 = alloca i32, align 4
  %a.addr.i124 = alloca i32, align 4
  %b.addr.i125 = alloca i32, align 4
  %c.addr.i126 = alloca i32, align 4
  %a.addr.i121 = alloca i32, align 4
  %b.addr.i122 = alloca i32, align 4
  %c.addr.i123 = alloca i32, align 4
  %a.addr.i119 = alloca i32, align 4
  %b.addr.i120 = alloca i32, align 4
  %c.addr.i = alloca i32, align 4
  %a.addr.i118 = alloca i32, align 4
  %a.addr.i117 = alloca i32, align 4
  %a.addr.i115 = alloca i32, align 4
  %b.addr.i116 = alloca i32, align 4
  %a.addr.i113 = alloca i32, align 4
  %b.addr.i114 = alloca i32, align 4
  %a.addr.i112 = alloca i32, align 4
>>>>>>> .r66
  %a.addr.i = alloca <256 x i8>, align 256
  %b.addr.i = alloca <256 x i8>, align 256
  %i8x256_t_dst = alloca <256 x i8>, align 256
  %i8x256_t_a = alloca <256 x i8>, align 256
  %i8x256_t_b = alloca <256 x i8>, align 256
  %i16x128_t_dst = alloca <128 x i16>, align 256
  %i16x128_t_a = alloca <128 x i16>, align 256
  %i16x128_t_b = alloca <128 x i16>, align 256
  %i32x64_t_dst = alloca <64 x i32>, align 256
  %i32x64_t_a = alloca <64 x i32>, align 256
  %i32x64_t_b = alloca <64 x i32>, align 256
  %int_dst = alloca i32, align 4
  %int_a = alloca i32, align 4
  %int_b = alloca i32, align 4
  %int_c = alloca i32, align 4
  store <256 x i8> <i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <256 x i8>* %i8x256_t_dst, align 256
  store <256 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 0, i8 97, i8 98, i8 99, i8 100, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> <i8 12, i8 23, i8 34, i8 45, i8 56, i8 67, i8 78, i8 89, i8 90, i8 10, i8 48, i8 49, i8 50, i8 51, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <256 x i8>* %i8x256_t_b, align 256
  store <128 x i16> <i16 16, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <128 x i16>* %i16x128_t_dst, align 256
  store <128 x i16> <i16 123, i16 234, i16 345, i16 456, i16 567, i16 678, i16 789, i16 890, i16 901, i16 102, i16 2, i16 3, i16 4, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <128 x i16>* %i16x128_t_a, align 256
  store <128 x i16> <i16 12, i16 23, i16 34, i16 45, i16 56, i16 67, i16 78, i16 89, i16 90, i16 10, i16 123, i16 234, i16 345, i16 456, i16 567, i16 678, i16 789, i16 890, i16 901, i16 102, i16 5, i16 6, i16 6, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <128 x i16>* %i16x128_t_b, align 256
  store <64 x i32> <i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <64 x i32>* %i32x64_t_dst, align 256
  store <64 x i32> <i32 12, i32 23, i32 34, i32 45, i32 56, i32 67, i32 78, i32 89, i32 90, i32 10, i32 123, i32 234, i32 345, i32 456, i32 567, i32 678, i32 789, i32 890, i32 901, i32 102, i32 5, i32 5, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 12, i32 23, i32 34, i32 45, i32 56, i32 67, i32 78, i32 89, i32 90, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <64 x i32>* %i32x64_t_a, align 256
  store <64 x i32> <i32 12, i32 23, i32 34, i32 45, i32 56, i32 67, i32 78, i32 89, i32 90, i32 10, i32 123, i32 234, i32 345, i32 456, i32 567, i32 678, i32 789, i32 890, i32 901, i32 102, i32 7, i32 7, i32 7, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 12, i32 23, i32 34, i32 45, i32 56, i32 67, i32 78, i32 89, i32 90, i32 10, i32 56, i32 567, i32 678, i32 789, i32 890, i32 901, i32 102, i32 3, i32 1, i32 2, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <64 x i32>* %i32x64_t_b, align 256
  store i32 1, i32* %int_a, align 4
  store i32 2, i32* %int_b, align 4
  store i32 3, i32* %int_c, align 4
  %0 = load <256 x i8>* %i8x256_t_a, align 256
  %1 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %0, <256 x i8>* %a.addr.i, align 256
  store <256 x i8> %1, <256 x i8>* %b.addr.i, align 256
  %2 = load <256 x i8>* %a.addr.i, align 256
  %3 = load <256 x i8>* %b.addr.i, align 256
<<<<<<< .mine
  %4 = call <256 x i8> @llvm.dsp.vmax.10(<256 x i8> %2, <256 x i8> %3) #3
  store <256 x i8> %4, <256 x i8>* %i8x256_t_dst, align 256
  %5 = load <128 x i16>* %i16x128_t_a, align 256
  %6 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %5, <128 x i16>* %a.addr.i275, align 256
  store <128 x i16> %6, <128 x i16>* %b.addr.i276, align 256
  %7 = load <128 x i16>* %a.addr.i275, align 256
  %8 = load <128 x i16>* %b.addr.i276, align 256
  %9 = call <128 x i16> @llvm.dsp.vmax.20(<128 x i16> %7, <128 x i16> %8) #3
  store <128 x i16> %9, <128 x i16>* %i16x128_t_dst, align 256
  %10 = load <64 x i32>* %i32x64_t_a, align 256
  %11 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %10, <64 x i32>* %a.addr.i273, align 256
  store <64 x i32> %11, <64 x i32>* %b.addr.i274, align 256
  %12 = load <64 x i32>* %a.addr.i273, align 256
  %13 = load <64 x i32>* %b.addr.i274, align 256
  %14 = call <64 x i32> @llvm.dsp.vmax.40(<64 x i32> %12, <64 x i32> %13) #3
  store <64 x i32> %14, <64 x i32>* %i32x64_t_dst, align 256
  %15 = load <256 x i8>* %i8x256_t_a, align 256
  %16 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %15, <256 x i8>* %a.addr.i271, align 256
  store <256 x i8> %16, <256 x i8>* %b.addr.i272, align 256
  %17 = load <256 x i8>* %a.addr.i271, align 256
  %18 = load <256 x i8>* %b.addr.i272, align 256
  %19 = call <256 x i8> @llvm.dsp.vmin.10(<256 x i8> %17, <256 x i8> %18) #3
  store <256 x i8> %19, <256 x i8>* %i8x256_t_dst, align 256
  %20 = load <128 x i16>* %i16x128_t_a, align 256
  %21 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %20, <128 x i16>* %a.addr.i269, align 256
  store <128 x i16> %21, <128 x i16>* %b.addr.i270, align 256
  %22 = load <128 x i16>* %a.addr.i269, align 256
  %23 = load <128 x i16>* %b.addr.i270, align 256
  %24 = call <128 x i16> @llvm.dsp.vmin.20(<128 x i16> %22, <128 x i16> %23) #3
  store <128 x i16> %24, <128 x i16>* %i16x128_t_dst, align 256
  %25 = load <64 x i32>* %i32x64_t_a, align 256
  %26 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %25, <64 x i32>* %a.addr.i267, align 256
  store <64 x i32> %26, <64 x i32>* %b.addr.i268, align 256
  %27 = load <64 x i32>* %a.addr.i267, align 256
  %28 = load <64 x i32>* %b.addr.i268, align 256
  %29 = call <64 x i32> @llvm.dsp.vmin.40(<64 x i32> %27, <64 x i32> %28) #3
  store <64 x i32> %29, <64 x i32>* %i32x64_t_dst, align 256
  %30 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %30, <256 x i8>* %a.addr.i266, align 256
  %31 = load <256 x i8>* %a.addr.i266, align 256
  %32 = call <256 x i8> @llvm.dsp.vsum.10(<256 x i8> %31) #3
  store <256 x i8> %32, <256 x i8>* %i8x256_t_dst, align 256
  %33 = load <128 x i16>* %i16x128_t_a, align 256
  store <128 x i16> %33, <128 x i16>* %a.addr.i265, align 256
  %34 = load <128 x i16>* %a.addr.i265, align 256
  %35 = call <128 x i16> @llvm.dsp.vsum.20(<128 x i16> %34) #3
  store <128 x i16> %35, <128 x i16>* %i16x128_t_dst, align 256
  %36 = load <256 x i8>* %i8x256_t_a, align 256
  %37 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %36, <256 x i8>* %a.addr.i263, align 256
  store <256 x i8> %37, <256 x i8>* %b.addr.i264, align 256
  %38 = load <256 x i8>* %a.addr.i263, align 256
  %39 = load <256 x i8>* %b.addr.i264, align 256
  %40 = call <256 x i8> @llvm.dsp.veq.10(<256 x i8> %38, <256 x i8> %39) #3
  store <256 x i8> %40, <256 x i8>* %i8x256_t_dst, align 256
  %41 = load <128 x i16>* %i16x128_t_a, align 256
  %42 = load <256 x i8>* %i8x256_t_b, align 256
  store <128 x i16> %41, <128 x i16>* %a.addr.i261, align 256
  store <256 x i8> %42, <256 x i8>* %b.addr.i262, align 256
  %43 = load <128 x i16>* %a.addr.i261, align 256
  %44 = load <256 x i8>* %b.addr.i262, align 256
  %45 = call <128 x i16> @llvm.dsp.vltl(<128 x i16> %43, <256 x i8> %44) #3
  store <128 x i16> %45, <128 x i16>* %i16x128_t_dst, align 256
  %46 = load <128 x i16>* %i16x128_t_a, align 256
  %47 = load <256 x i8>* %i8x256_t_b, align 256
  store <128 x i16> %46, <128 x i16>* %a.addr.i259, align 256
  store <256 x i8> %47, <256 x i8>* %b.addr.i260, align 256
  %48 = load <128 x i16>* %a.addr.i259, align 256
  %49 = load <256 x i8>* %b.addr.i260, align 256
  %50 = call <128 x i16> @llvm.dsp.vlth(<128 x i16> %48, <256 x i8> %49) #3
  store <128 x i16> %50, <128 x i16>* %i16x128_t_dst, align 256
  %51 = load <64 x i32>* %i32x64_t_a, align 256
  store <64 x i32> %51, <64 x i32>* %a.addr.i258, align 256
  %52 = load <64 x i32>* %a.addr.i258, align 256
  %53 = call <64 x i32> @llvm.dsp.vsum.40(<64 x i32> %52) #3
  store <64 x i32> %53, <64 x i32>* %i32x64_t_dst, align 256
  %54 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %54, <256 x i8>* %a.addr.i257, align 256
  %55 = load <256 x i8>* %a.addr.i257, align 256
  %56 = call <256 x i8> @llvm.dsp.vnot(<256 x i8> %55) #3
  store <256 x i8> %56, <256 x i8>* %i8x256_t_dst, align 256
  %57 = load <256 x i8>* %i8x256_t_a, align 256
  %58 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %57, <256 x i8>* %a.addr.i255, align 256
  store <256 x i8> %58, <256 x i8>* %b.addr.i256, align 256
  %59 = load <256 x i8>* %a.addr.i255, align 256
  %60 = load <256 x i8>* %b.addr.i256, align 256
  %61 = call <256 x i8> @llvm.dsp.vand(<256 x i8> %59, <256 x i8> %60) #3
  store <256 x i8> %61, <256 x i8>* %i8x256_t_dst, align 256
  %62 = load <256 x i8>* %i8x256_t_a, align 256
  %63 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %62, <256 x i8>* %a.addr.i253, align 256
  store <256 x i8> %63, <256 x i8>* %b.addr.i254, align 256
  %64 = load <256 x i8>* %a.addr.i253, align 256
  %65 = load <256 x i8>* %b.addr.i254, align 256
  %66 = call <256 x i8> @llvm.dsp.vor(<256 x i8> %64, <256 x i8> %65) #3
  store <256 x i8> %66, <256 x i8>* %i8x256_t_dst, align 256
  %67 = load <256 x i8>* %i8x256_t_a, align 256
  %68 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %67, <256 x i8>* %a.addr.i251, align 256
  store <256 x i8> %68, <256 x i8>* %b.addr.i252, align 256
  %69 = load <256 x i8>* %a.addr.i251, align 256
  %70 = load <256 x i8>* %b.addr.i252, align 256
  %71 = call <256 x i8> @llvm.dsp.vxor(<256 x i8> %69, <256 x i8> %70) #3
  store <256 x i8> %71, <256 x i8>* %i8x256_t_dst, align 256
  %72 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %72, <256 x i8>* %a.addr.i249, align 256
  store i32 1, i32* %b.addr.i250, align 4
  %73 = load <256 x i8>* %a.addr.i249, align 256
  %74 = load i32* %b.addr.i250, align 4
  %75 = call <256 x i8> @llvm.dsp.vmovcv2v(<256 x i8> %73, i32 %74) #3
  store <256 x i8> %75, <256 x i8>* %i8x256_t_dst, align 256
  %76 = load <128 x i16>* %i16x128_t_a, align 256
  %77 = load <256 x i8>* %i8x256_t_b, align 256
  store <128 x i16> %76, <128 x i16>* %a.addr.i247, align 256
  store <256 x i8> %77, <256 x i8>* %b.addr.i248, align 256
  %78 = load <128 x i16>* %a.addr.i247, align 256
  %79 = load <256 x i8>* %b.addr.i248, align 256
  %80 = call <128 x i16> @llvm.dsp.vltl(<128 x i16> %78, <256 x i8> %79) #3
  store <128 x i16> %80, <128 x i16>* %i16x128_t_dst, align 256
  %81 = load <128 x i16>* %i16x128_t_a, align 256
  %82 = load <256 x i8>* %i8x256_t_b, align 256
  store <128 x i16> %81, <128 x i16>* %a.addr.i245, align 256
  store <256 x i8> %82, <256 x i8>* %b.addr.i246, align 256
  %83 = load <128 x i16>* %a.addr.i245, align 256
  %84 = load <256 x i8>* %b.addr.i246, align 256
  %85 = call <128 x i16> @llvm.dsp.vlth(<128 x i16> %83, <256 x i8> %84) #3
  store <128 x i16> %85, <128 x i16>* %i16x128_t_dst, align 256
  %86 = load <256 x i8>* %i8x256_t_a, align 256
  %87 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %86, <256 x i8>* %a.addr.i243, align 256
  store <256 x i8> %87, <256 x i8>* %b.addr.i244, align 256
  %88 = load <256 x i8>* %a.addr.i243, align 256
  %89 = load <256 x i8>* %b.addr.i244, align 256
  %90 = call <256 x i8> @llvm.dsp.veq.10(<256 x i8> %88, <256 x i8> %89) #3
  store <256 x i8> %90, <256 x i8>* %i8x256_t_dst, align 256
  %91 = load <128 x i16>* %i16x128_t_a, align 256
  %92 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %91, <128 x i16>* %a.addr.i241, align 256
  store <128 x i16> %92, <128 x i16>* %b.addr.i242, align 256
  %93 = load <128 x i16>* %a.addr.i241, align 256
  %94 = load <128 x i16>* %b.addr.i242, align 256
  %95 = call <128 x i16> @llvm.dsp.veq.20(<128 x i16> %93, <128 x i16> %94) #3
  store <128 x i16> %95, <128 x i16>* %i16x128_t_dst, align 256
  %96 = load <64 x i32>* %i32x64_t_a, align 256
  %97 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %96, <64 x i32>* %a.addr.i239, align 256
  store <64 x i32> %97, <64 x i32>* %b.addr.i240, align 256
  %98 = load <64 x i32>* %a.addr.i239, align 256
  %99 = load <64 x i32>* %b.addr.i240, align 256
  %100 = call <64 x i32> @llvm.dsp.veq.40(<64 x i32> %98, <64 x i32> %99) #3
  store <64 x i32> %100, <64 x i32>* %i32x64_t_dst, align 256
  %101 = load <256 x i8>* %i8x256_t_a, align 256
  %102 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %101, <256 x i8>* %a.addr.i237, align 256
  store <256 x i8> %102, <256 x i8>* %b.addr.i238, align 256
  %103 = load <256 x i8>* %a.addr.i237, align 256
  %104 = load <256 x i8>* %b.addr.i238, align 256
  %105 = call <256 x i8> @llvm.dsp.vgt.10(<256 x i8> %103, <256 x i8> %104) #3
  store <256 x i8> %105, <256 x i8>* %i8x256_t_dst, align 256
  %106 = load <128 x i16>* %i16x128_t_a, align 256
  %107 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %106, <128 x i16>* %a.addr.i235, align 256
  store <128 x i16> %107, <128 x i16>* %b.addr.i236, align 256
  %108 = load <128 x i16>* %a.addr.i235, align 256
  %109 = load <128 x i16>* %b.addr.i236, align 256
  %110 = call <128 x i16> @llvm.dsp.vgt.20(<128 x i16> %108, <128 x i16> %109) #3
  store <128 x i16> %110, <128 x i16>* %i16x128_t_dst, align 256
  %111 = load <64 x i32>* %i32x64_t_a, align 256
  %112 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %111, <64 x i32>* %a.addr.i233, align 256
  store <64 x i32> %112, <64 x i32>* %b.addr.i234, align 256
  %113 = load <64 x i32>* %a.addr.i233, align 256
  %114 = load <64 x i32>* %b.addr.i234, align 256
  %115 = call <64 x i32> @llvm.dsp.vgt.40(<64 x i32> %113, <64 x i32> %114) #3
  store <64 x i32> %115, <64 x i32>* %i32x64_t_dst, align 256
  %116 = load <256 x i8>* %i8x256_t_a, align 256
  %117 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %116, <256 x i8>* %a.addr.i231, align 256
  store <256 x i8> %117, <256 x i8>* %b.addr.i232, align 256
  %118 = load <256 x i8>* %a.addr.i231, align 256
  %119 = load <256 x i8>* %b.addr.i232, align 256
  %120 = call <256 x i8> @llvm.dsp.vlt.10(<256 x i8> %118, <256 x i8> %119) #3
  store <256 x i8> %120, <256 x i8>* %i8x256_t_dst, align 256
  %121 = load <128 x i16>* %i16x128_t_a, align 256
  %122 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %121, <128 x i16>* %a.addr.i229, align 256
  store <128 x i16> %122, <128 x i16>* %b.addr.i230, align 256
  %123 = load <128 x i16>* %a.addr.i229, align 256
  %124 = load <128 x i16>* %b.addr.i230, align 256
  %125 = call <128 x i16> @llvm.dsp.vlt.20(<128 x i16> %123, <128 x i16> %124) #3
  store <128 x i16> %125, <128 x i16>* %i16x128_t_dst, align 256
  %126 = load <64 x i32>* %i32x64_t_a, align 256
  %127 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %126, <64 x i32>* %a.addr.i227, align 256
  store <64 x i32> %127, <64 x i32>* %b.addr.i228, align 256
  %128 = load <64 x i32>* %a.addr.i227, align 256
  %129 = load <64 x i32>* %b.addr.i228, align 256
  %130 = call <64 x i32> @llvm.dsp.vlt.40(<64 x i32> %128, <64 x i32> %129) #3
  store <64 x i32> %130, <64 x i32>* %i32x64_t_dst, align 256
  %131 = load <256 x i8>* %i8x256_t_a, align 256
  %132 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %131, <256 x i8>* %a.addr.i225, align 256
  store <256 x i8> %132, <256 x i8>* %b.addr.i226, align 256
  %133 = load <256 x i8>* %a.addr.i225, align 256
  %134 = load <256 x i8>* %b.addr.i226, align 256
  %135 = call <256 x i8> @llvm.dsp.vge.10(<256 x i8> %133, <256 x i8> %134) #3
  store <256 x i8> %135, <256 x i8>* %i8x256_t_dst, align 256
  %136 = load <128 x i16>* %i16x128_t_a, align 256
  %137 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %136, <128 x i16>* %a.addr.i223, align 256
  store <128 x i16> %137, <128 x i16>* %b.addr.i224, align 256
  %138 = load <128 x i16>* %a.addr.i223, align 256
  %139 = load <128 x i16>* %b.addr.i224, align 256
  %140 = call <128 x i16> @llvm.dsp.vge.20(<128 x i16> %138, <128 x i16> %139) #3
  store <128 x i16> %140, <128 x i16>* %i16x128_t_dst, align 256
  %141 = load <64 x i32>* %i32x64_t_a, align 256
  %142 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %141, <64 x i32>* %a.addr.i221, align 256
  store <64 x i32> %142, <64 x i32>* %b.addr.i222, align 256
  %143 = load <64 x i32>* %a.addr.i221, align 256
  %144 = load <64 x i32>* %b.addr.i222, align 256
  %145 = call <64 x i32> @llvm.dsp.vge.40(<64 x i32> %143, <64 x i32> %144) #3
  store <64 x i32> %145, <64 x i32>* %i32x64_t_dst, align 256
  %146 = load <256 x i8>* %i8x256_t_a, align 256
  %147 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %146, <256 x i8>* %a.addr.i219, align 256
  store <256 x i8> %147, <256 x i8>* %b.addr.i220, align 256
  %148 = load <256 x i8>* %a.addr.i219, align 256
  %149 = load <256 x i8>* %b.addr.i220, align 256
  %150 = call <256 x i8> @llvm.dsp.vle.10(<256 x i8> %148, <256 x i8> %149) #3
  store <256 x i8> %150, <256 x i8>* %i8x256_t_dst, align 256
  %151 = load <128 x i16>* %i16x128_t_a, align 256
  %152 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %151, <128 x i16>* %a.addr.i217, align 256
  store <128 x i16> %152, <128 x i16>* %b.addr.i218, align 256
  %153 = load <128 x i16>* %a.addr.i217, align 256
  %154 = load <128 x i16>* %b.addr.i218, align 256
  %155 = call <128 x i16> @llvm.dsp.vle.20(<128 x i16> %153, <128 x i16> %154) #3
  store <128 x i16> %155, <128 x i16>* %i16x128_t_dst, align 256
  %156 = load <64 x i32>* %i32x64_t_a, align 256
  %157 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %156, <64 x i32>* %a.addr.i215, align 256
  store <64 x i32> %157, <64 x i32>* %b.addr.i216, align 256
  %158 = load <64 x i32>* %a.addr.i215, align 256
  %159 = load <64 x i32>* %b.addr.i216, align 256
  %160 = call <64 x i32> @llvm.dsp.vle.40(<64 x i32> %158, <64 x i32> %159) #3
  store <64 x i32> %160, <64 x i32>* %i32x64_t_dst, align 256
  %161 = load <256 x i8>* %i8x256_t_a, align 256
  %162 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %161, <256 x i8>* %a.addr.i213, align 256
  store <256 x i8> %162, <256 x i8>* %b.addr.i214, align 256
  %163 = load <256 x i8>* %a.addr.i213, align 256
  %164 = load <256 x i8>* %b.addr.i214, align 256
  %165 = call <256 x i8> @llvm.dsp.vadd.10(<256 x i8> %163, <256 x i8> %164) #3
  store <256 x i8> %165, <256 x i8>* %i8x256_t_dst, align 256
  %166 = load <128 x i16>* %i16x128_t_a, align 256
  %167 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %166, <128 x i16>* %a.addr.i211, align 256
  store <128 x i16> %167, <128 x i16>* %b.addr.i212, align 256
  %168 = load <128 x i16>* %a.addr.i211, align 256
  %169 = load <128 x i16>* %b.addr.i212, align 256
  %170 = call <128 x i16> @llvm.dsp.vadd.20(<128 x i16> %168, <128 x i16> %169) #3
  store <128 x i16> %170, <128 x i16>* %i16x128_t_dst, align 256
  %171 = load <64 x i32>* %i32x64_t_a, align 256
  %172 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %171, <64 x i32>* %a.addr.i209, align 256
  store <64 x i32> %172, <64 x i32>* %b.addr.i210, align 256
  %173 = load <64 x i32>* %a.addr.i209, align 256
  %174 = load <64 x i32>* %b.addr.i210, align 256
  %175 = call <64 x i32> @llvm.dsp.vadd.40(<64 x i32> %173, <64 x i32> %174) #3
  store <64 x i32> %175, <64 x i32>* %i32x64_t_dst, align 256
  %176 = load <256 x i8>* %i8x256_t_a, align 256
  %177 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %176, <256 x i8>* %a.addr.i207, align 256
  store <256 x i8> %177, <256 x i8>* %b.addr.i208, align 256
  %178 = load <256 x i8>* %a.addr.i207, align 256
  %179 = load <256 x i8>* %b.addr.i208, align 256
  %180 = call <256 x i8> @llvm.dsp.vsub.10(<256 x i8> %178, <256 x i8> %179) #3
  store <256 x i8> %180, <256 x i8>* %i8x256_t_dst, align 256
  %181 = load <128 x i16>* %i16x128_t_a, align 256
  %182 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %181, <128 x i16>* %a.addr.i205, align 256
  store <128 x i16> %182, <128 x i16>* %b.addr.i206, align 256
  %183 = load <128 x i16>* %a.addr.i205, align 256
  %184 = load <128 x i16>* %b.addr.i206, align 256
  %185 = call <128 x i16> @llvm.dsp.vsub.20(<128 x i16> %183, <128 x i16> %184) #3
  store <128 x i16> %185, <128 x i16>* %i16x128_t_dst, align 256
  %186 = load <64 x i32>* %i32x64_t_a, align 256
  %187 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %186, <64 x i32>* %a.addr.i203, align 256
  store <64 x i32> %187, <64 x i32>* %b.addr.i204, align 256
  %188 = load <64 x i32>* %a.addr.i203, align 256
  %189 = load <64 x i32>* %b.addr.i204, align 256
  %190 = call <64 x i32> @llvm.dsp.vsub.40(<64 x i32> %188, <64 x i32> %189) #3
  store <64 x i32> %190, <64 x i32>* %i32x64_t_dst, align 256
  %191 = load <256 x i8>* %i8x256_t_a, align 256
  %192 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %191, <256 x i8>* %a.addr.i201, align 256
  store <256 x i8> %192, <256 x i8>* %b.addr.i202, align 256
  %193 = load <256 x i8>* %a.addr.i201, align 256
  %194 = load <256 x i8>* %b.addr.i202, align 256
  %195 = call <256 x i8> @llvm.dsp.vsl.10(<256 x i8> %193, <256 x i8> %194) #3
  store <256 x i8> %195, <256 x i8>* %i8x256_t_dst, align 256
  %196 = load <128 x i16>* %i16x128_t_a, align 256
  %197 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %196, <128 x i16>* %a.addr.i199, align 256
  store <128 x i16> %197, <128 x i16>* %b.addr.i200, align 256
  %198 = load <128 x i16>* %a.addr.i199, align 256
  %199 = load <128 x i16>* %b.addr.i200, align 256
  %200 = call <128 x i16> @llvm.dsp.vsl.20(<128 x i16> %198, <128 x i16> %199) #3
  store <128 x i16> %200, <128 x i16>* %i16x128_t_dst, align 256
  %201 = load <64 x i32>* %i32x64_t_a, align 256
  %202 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %201, <64 x i32>* %a.addr.i197, align 256
  store <64 x i32> %202, <64 x i32>* %b.addr.i198, align 256
  %203 = load <64 x i32>* %a.addr.i197, align 256
  %204 = load <64 x i32>* %b.addr.i198, align 256
  %205 = call <64 x i32> @llvm.dsp.vsl.40(<64 x i32> %203, <64 x i32> %204) #3
  store <64 x i32> %205, <64 x i32>* %i32x64_t_dst, align 256
  %206 = load <256 x i8>* %i8x256_t_a, align 256
  %207 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %206, <256 x i8>* %a.addr.i195, align 256
  store <256 x i8> %207, <256 x i8>* %b.addr.i196, align 256
  %208 = load <256 x i8>* %a.addr.i195, align 256
  %209 = load <256 x i8>* %b.addr.i196, align 256
  %210 = call <256 x i8> @llvm.dsp.vsls.10(<256 x i8> %208, <256 x i8> %209) #3
  store <256 x i8> %210, <256 x i8>* %i8x256_t_dst, align 256
  %211 = load <128 x i16>* %i16x128_t_a, align 256
  %212 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %211, <128 x i16>* %a.addr.i193, align 256
  store <128 x i16> %212, <128 x i16>* %b.addr.i194, align 256
  %213 = load <128 x i16>* %a.addr.i193, align 256
  %214 = load <128 x i16>* %b.addr.i194, align 256
  %215 = call <128 x i16> @llvm.dsp.vsls.20(<128 x i16> %213, <128 x i16> %214) #3
  store <128 x i16> %215, <128 x i16>* %i16x128_t_dst, align 256
  %216 = load <64 x i32>* %i32x64_t_a, align 256
  %217 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %216, <64 x i32>* %a.addr.i191, align 256
  store <64 x i32> %217, <64 x i32>* %b.addr.i192, align 256
  %218 = load <64 x i32>* %a.addr.i191, align 256
  %219 = load <64 x i32>* %b.addr.i192, align 256
  %220 = call <64 x i32> @llvm.dsp.vsls.40(<64 x i32> %218, <64 x i32> %219) #3
  store <64 x i32> %220, <64 x i32>* %i32x64_t_dst, align 256
  %221 = load <256 x i8>* %i8x256_t_a, align 256
  %222 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %221, <256 x i8>* %a.addr.i189, align 256
  store <256 x i8> %222, <256 x i8>* %b.addr.i190, align 256
  %223 = load <256 x i8>* %a.addr.i189, align 256
  %224 = load <256 x i8>* %b.addr.i190, align 256
  %225 = call <256 x i8> @llvm.dsp.vsra.10(<256 x i8> %223, <256 x i8> %224) #3
  store <256 x i8> %225, <256 x i8>* %i8x256_t_dst, align 256
  %226 = load <128 x i16>* %i16x128_t_a, align 256
  %227 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %226, <128 x i16>* %a.addr.i187, align 256
  store <128 x i16> %227, <128 x i16>* %b.addr.i188, align 256
  %228 = load <128 x i16>* %a.addr.i187, align 256
  %229 = load <128 x i16>* %b.addr.i188, align 256
  %230 = call <128 x i16> @llvm.dsp.vsra.20(<128 x i16> %228, <128 x i16> %229) #3
  store <128 x i16> %230, <128 x i16>* %i16x128_t_dst, align 256
  %231 = load <64 x i32>* %i32x64_t_a, align 256
  %232 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %231, <64 x i32>* %a.addr.i185, align 256
  store <64 x i32> %232, <64 x i32>* %b.addr.i186, align 256
  %233 = load <64 x i32>* %a.addr.i185, align 256
  %234 = load <64 x i32>* %b.addr.i186, align 256
  %235 = call <64 x i32> @llvm.dsp.vsra.40(<64 x i32> %233, <64 x i32> %234) #3
  store <64 x i32> %235, <64 x i32>* %i32x64_t_dst, align 256
  %236 = load <256 x i8>* %i8x256_t_a, align 256
  %237 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %236, <256 x i8>* %a.addr.i183, align 256
  store <256 x i8> %237, <256 x i8>* %b.addr.i184, align 256
  %238 = load <256 x i8>* %a.addr.i183, align 256
  %239 = load <256 x i8>* %b.addr.i184, align 256
  %240 = call <256 x i8> @llvm.dsp.vsrl.10(<256 x i8> %238, <256 x i8> %239) #3
  store <256 x i8> %240, <256 x i8>* %i8x256_t_dst, align 256
  %241 = load <128 x i16>* %i16x128_t_a, align 256
  %242 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %241, <128 x i16>* %a.addr.i181, align 256
  store <128 x i16> %242, <128 x i16>* %b.addr.i182, align 256
  %243 = load <128 x i16>* %a.addr.i181, align 256
  %244 = load <128 x i16>* %b.addr.i182, align 256
  %245 = call <128 x i16> @llvm.dsp.vsrl.20(<128 x i16> %243, <128 x i16> %244) #3
  store <128 x i16> %245, <128 x i16>* %i16x128_t_dst, align 256
  %246 = load <64 x i32>* %i32x64_t_a, align 256
  %247 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %246, <64 x i32>* %a.addr.i179, align 256
  store <64 x i32> %247, <64 x i32>* %b.addr.i180, align 256
  %248 = load <64 x i32>* %a.addr.i179, align 256
  %249 = load <64 x i32>* %b.addr.i180, align 256
  %250 = call <64 x i32> @llvm.dsp.vsrl.40(<64 x i32> %248, <64 x i32> %249) #3
  store <64 x i32> %250, <64 x i32>* %i32x64_t_dst, align 256
  %251 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %251, <256 x i8>* %a.addr.i178, align 256
  %252 = load <256 x i8>* %a.addr.i178, align 256
  %253 = call <256 x i8> @llvm.dsp.vabs.10(<256 x i8> %252) #3
  store <256 x i8> %253, <256 x i8>* %i8x256_t_dst, align 256
  %254 = load <128 x i16>* %i16x128_t_a, align 256
  store <128 x i16> %254, <128 x i16>* %a.addr.i177, align 256
  %255 = load <128 x i16>* %a.addr.i177, align 256
  %256 = call <128 x i16> @llvm.dsp.vabs.20(<128 x i16> %255) #3
  store <128 x i16> %256, <128 x i16>* %i16x128_t_dst, align 256
  %257 = load <64 x i32>* %i32x64_t_a, align 256
  store <64 x i32> %257, <64 x i32>* %a.addr.i176, align 256
  %258 = load <64 x i32>* %a.addr.i176, align 256
  %259 = call <64 x i32> @llvm.dsp.vabs.40(<64 x i32> %258) #3
  store <64 x i32> %259, <64 x i32>* %i32x64_t_dst, align 256
  %260 = load <256 x i8>* %i8x256_t_a, align 256
  %261 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %260, <256 x i8>* %a.addr.i174, align 256
  store <256 x i8> %261, <256 x i8>* %b.addr.i175, align 256
  %262 = load <256 x i8>* %a.addr.i174, align 256
  %263 = load <256 x i8>* %b.addr.i175, align 256
  %264 = call <256 x i8> @llvm.dsp.vfmul.10(<256 x i8> %262, <256 x i8> %263) #3
  store <256 x i8> %264, <256 x i8>* %i8x256_t_dst, align 256
  %265 = load <128 x i16>* %i16x128_t_a, align 256
  %266 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %265, <128 x i16>* %a.addr.i172, align 256
  store <128 x i16> %266, <128 x i16>* %b.addr.i173, align 256
  %267 = load <128 x i16>* %a.addr.i172, align 256
  %268 = load <128 x i16>* %b.addr.i173, align 256
  %269 = call <128 x i16> @llvm.dsp.vfmul.20(<128 x i16> %267, <128 x i16> %268) #3
  store <128 x i16> %269, <128 x i16>* %i16x128_t_dst, align 256
  %270 = load <64 x i32>* %i32x64_t_a, align 256
  %271 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %270, <64 x i32>* %a.addr.i170, align 256
  store <64 x i32> %271, <64 x i32>* %b.addr.i171, align 256
  %272 = load <64 x i32>* %a.addr.i170, align 256
  %273 = load <64 x i32>* %b.addr.i171, align 256
  %274 = call <64 x i32> @llvm.dsp.vfmul.40(<64 x i32> %272, <64 x i32> %273) #3
  store <64 x i32> %274, <64 x i32>* %i32x64_t_dst, align 256
  %275 = load <256 x i8>* %i8x256_t_a, align 256
  %276 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %275, <256 x i8>* %a.addr.i168, align 256
  store <256 x i8> %276, <256 x i8>* %b.addr.i169, align 256
  %277 = load <256 x i8>* %a.addr.i168, align 256
  %278 = load <256 x i8>* %b.addr.i169, align 256
  %279 = call <256 x i8> @llvm.dsp.vfmac.10(<256 x i8> %277, <256 x i8> %278) #3
  store <256 x i8> %279, <256 x i8>* %i8x256_t_dst, align 256
  %280 = load <128 x i16>* %i16x128_t_a, align 256
  %281 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %280, <128 x i16>* %a.addr.i166, align 256
  store <128 x i16> %281, <128 x i16>* %b.addr.i167, align 256
  %282 = load <128 x i16>* %a.addr.i166, align 256
  %283 = load <128 x i16>* %b.addr.i167, align 256
  %284 = call <128 x i16> @llvm.dsp.vfmac.20(<128 x i16> %282, <128 x i16> %283) #3
  store <128 x i16> %284, <128 x i16>* %i16x128_t_dst, align 256
  %285 = load <64 x i32>* %i32x64_t_a, align 256
  %286 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %285, <64 x i32>* %a.addr.i164, align 256
  store <64 x i32> %286, <64 x i32>* %b.addr.i165, align 256
  %287 = load <64 x i32>* %a.addr.i164, align 256
  %288 = load <64 x i32>* %b.addr.i165, align 256
  %289 = call <64 x i32> @llvm.dsp.vfmac.40(<64 x i32> %287, <64 x i32> %288) #3
  store <64 x i32> %289, <64 x i32>* %i32x64_t_dst, align 256
  %290 = load <256 x i8>* %i8x256_t_a, align 256
  %291 = load <256 x i8>* %i8x256_t_b, align 256
  store <256 x i8> %290, <256 x i8>* %a.addr.i162, align 256
  store <256 x i8> %291, <256 x i8>* %b.addr.i163, align 256
  %292 = load <256 x i8>* %a.addr.i162, align 256
  %293 = load <256 x i8>* %b.addr.i163, align 256
  %294 = call <256 x i8> @llvm.dsp.vcmac.10(<256 x i8> %292, <256 x i8> %293) #3
  store <256 x i8> %294, <256 x i8>* %i8x256_t_dst, align 256
  %295 = load <128 x i16>* %i16x128_t_a, align 256
  %296 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %295, <128 x i16>* %a.addr.i160, align 256
  store <128 x i16> %296, <128 x i16>* %b.addr.i161, align 256
  %297 = load <128 x i16>* %a.addr.i160, align 256
  %298 = load <128 x i16>* %b.addr.i161, align 256
  %299 = call <128 x i16> @llvm.dsp.vcmac.20(<128 x i16> %297, <128 x i16> %298) #3
  store <128 x i16> %299, <128 x i16>* %i16x128_t_dst, align 256
  %300 = load <128 x i16>* %i16x128_t_a, align 256
  %301 = load <128 x i16>* %i16x128_t_b, align 256
  store <128 x i16> %300, <128 x i16>* %a.addr.i158, align 256
  store <128 x i16> %301, <128 x i16>* %b.addr.i159, align 256
  %302 = load <128 x i16>* %a.addr.i158, align 256
  %303 = load <128 x i16>* %b.addr.i159, align 256
  %304 = call <128 x i16> @llvm.dsp.vcmul.20(<128 x i16> %302, <128 x i16> %303) #3
  store <128 x i16> %304, <128 x i16>* %i16x128_t_dst, align 256
  %305 = load <64 x i32>* %i32x64_t_a, align 256
  %306 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %305, <64 x i32>* %a.addr.i156, align 256
  store <64 x i32> %306, <64 x i32>* %b.addr.i157, align 256
  %307 = load <64 x i32>* %a.addr.i156, align 256
  %308 = load <64 x i32>* %b.addr.i157, align 256
  %309 = call <64 x i32> @llvm.dsp.vcmulr.40(<64 x i32> %307, <64 x i32> %308) #3
  store <64 x i32> %309, <64 x i32>* %i32x64_t_dst, align 256
  %310 = load <64 x i32>* %i32x64_t_a, align 256
  %311 = load <64 x i32>* %i32x64_t_b, align 256
  store <64 x i32> %310, <64 x i32>* %a.addr.i154, align 256
  store <64 x i32> %311, <64 x i32>* %b.addr.i155, align 256
  %312 = load <64 x i32>* %a.addr.i154, align 256
  %313 = load <64 x i32>* %b.addr.i155, align 256
  %314 = call <64 x i32> @llvm.dsp.vcmuli.40(<64 x i32> %312, <64 x i32> %313) #3
  store <64 x i32> %314, <64 x i32>* %i32x64_t_dst, align 256
  %315 = load i32* %int_a, align 4
  store i32 %315, i32* %a.addr.i153, align 4
  %316 = load i32* %a.addr.i153, align 4
  %317 = call i32 @llvm.dsp.cbw.qb(i32 %316) #3
  store i32 %317, i32* %int_dst, align 4
  %318 = load i32* %int_a, align 4
  store i32 %318, i32* %a.addr.i152, align 4
  %319 = load i32* %a.addr.i152, align 4
  %320 = call i32 @llvm.dsp.chw.qb(i32 %319) #3
  store i32 %320, i32* %int_dst, align 4
  %321 = load i32* %int_a, align 4
  store i32 %321, i32* %a.addr.i151, align 4
  %322 = load i32* %a.addr.i151, align 4
  %323 = call i32 @llvm.dsp.abs.qb(i32 %322) #3
  store i32 %323, i32* %int_dst, align 4
  %324 = load i32* %int_a, align 4
  store i32 %324, i32* %a.addr.i150, align 4
  %325 = load i32* %a.addr.i150, align 4
  %326 = call i32 @llvm.dsp.test.qb(i32 %325) #3
  store i32 %326, i32* %int_dst, align 4
  %327 = load i32* %int_a, align 4
  %328 = load i32* %int_b, align 4
  store i32 %327, i32* %a.addr.i148, align 4
  store i32 %328, i32* %b.addr.i149, align 4
  %329 = load i32* %a.addr.i148, align 4
  %330 = load i32* %b.addr.i149, align 4
  %331 = call i32 @llvm.dsp.max(i32 %329, i32 %330) #3
  store i32 %331, i32* %int_dst, align 4
  %332 = load i32* %int_a, align 4
  %333 = load i32* %int_b, align 4
  store i32 %332, i32* %a.addr.i146, align 4
  store i32 %333, i32* %b.addr.i147, align 4
  %334 = load i32* %a.addr.i146, align 4
  %335 = load i32* %b.addr.i147, align 4
  %336 = call i32 @llvm.dsp.min(i32 %334, i32 %335) #3
  store i32 %336, i32* %int_dst, align 4
  %337 = load i32* %int_a, align 4
  store i32 %337, i32* %a.addr.i145, align 4
  %338 = load i32* %a.addr.i145, align 4
  %339 = call i32 @llvm.dsp.not(i32 %338) #3
  store i32 %339, i32* %int_dst, align 4
  %340 = load i32* %int_a, align 4
  store i32 %340, i32* %a.addr.i143, align 4
  store i32 1, i32* %b.addr.i144, align 4
  %341 = load i32* %a.addr.i143, align 4
  %342 = load i32* %b.addr.i144, align 4
  %343 = call i32 @llvm.dsp.loadu.8(i32 %341, i32 %342) #3
  store i32 %343, i32* %int_dst, align 4
  %344 = load i32* %int_a, align 4
  store i32 %344, i32* %a.addr.i141, align 4
  store i32 1, i32* %b.addr.i142, align 4
  %345 = load i32* %a.addr.i141, align 4
  %346 = load i32* %b.addr.i142, align 4
  %347 = call i32 @llvm.dsp.loadu.16(i32 %345, i32 %346) #3
  store i32 %347, i32* %int_dst, align 4
  %348 = load i32* %int_a, align 4
  store i32 %348, i32* %a.addr.i139, align 4
  store i32 1, i32* %b.addr.i140, align 4
  %349 = load i32* %a.addr.i139, align 4
  %350 = load i32* %b.addr.i140, align 4
  %351 = call i32 @llvm.dsp.loadu.32(i32 %349, i32 %350) #3
  store i32 %351, i32* %int_dst, align 4
  %352 = load i32* %int_a, align 4
  %353 = load i32* %int_b, align 4
  store i32 %352, i32* %a.addr.i137, align 4
  store i32 %353, i32* %b.addr.i138, align 4
  %354 = load i32* %a.addr.i137, align 4
  %355 = load i32* %b.addr.i138, align 4
  %356 = call i32 @llvm.dsp.loado.16(i32 %354, i32 %355) #3
  store i32 %356, i32* %int_dst, align 4
  %357 = load i32* %int_a, align 4
  %358 = load i32* %int_b, align 4
  store i32 %357, i32* %a.addr.i135, align 4
  store i32 %358, i32* %b.addr.i136, align 4
  %359 = load i32* %a.addr.i135, align 4
  %360 = load i32* %b.addr.i136, align 4
  %361 = call i32 @llvm.dsp.loado.32(i32 %359, i32 %360) #3
  store i32 %361, i32* %int_dst, align 4
  %362 = load i32* %int_a, align 4
  %363 = load i32* %int_b, align 4
  store i32 %362, i32* %a.addr.i133, align 4
  store i32 %363, i32* %b.addr.i134, align 4
  %364 = load i32* %a.addr.i133, align 4
  %365 = load i32* %b.addr.i134, align 4
  %366 = call i32 @llvm.dsp.storeo.16(i32 %364, i32 %365) #3
  store i32 %366, i32* %int_dst, align 4
  %367 = load i32* %int_a, align 4
  %368 = load i32* %int_b, align 4
  store i32 %367, i32* %a.addr.i131, align 4
  store i32 %368, i32* %b.addr.i132, align 4
  %369 = load i32* %a.addr.i131, align 4
  %370 = load i32* %b.addr.i132, align 4
  %371 = call i32 @llvm.dsp.storeo.32(i32 %369, i32 %370) #3
  store i32 %371, i32* %int_dst, align 4
  %372 = load i32* %int_a, align 4
  store i32 %372, i32* %a.addr.i129, align 4
  store i32 1, i32* %b.addr.i130, align 4
  %373 = load i32* %a.addr.i129, align 4
  %374 = load i32* %b.addr.i130, align 4
  %375 = call <256 x i8> @llvm.dsp.storeu.10(i32 %373, i32 %374) #3
  store <256 x i8> %375, <256 x i8>* %i8x256_t_dst, align 256
  %376 = load i32* %int_a, align 4
  store i32 %376, i32* %a.addr.i127, align 4
  store i32 1, i32* %b.addr.i128, align 4
  %377 = load i32* %a.addr.i127, align 4
  %378 = load i32* %b.addr.i128, align 4
  %379 = call <128 x i16> @llvm.dsp.storeu.20(i32 %377, i32 %378) #3
  store <128 x i16> %379, <128 x i16>* %i16x128_t_dst, align 256
  %380 = load i32* %int_a, align 4
  store i32 %380, i32* %a.addr.i125, align 4
  store i32 1, i32* %b.addr.i126, align 4
  %381 = load i32* %a.addr.i125, align 4
  %382 = load i32* %b.addr.i126, align 4
  %383 = call <64 x i32> @llvm.dsp.storeu.40(i32 %381, i32 %382) #3
  store <64 x i32> %383, <64 x i32>* %i32x64_t_dst, align 256
  %384 = load i32* %int_a, align 4
  %385 = load i32* %int_b, align 4
  store i32 %384, i32* %a.addr.i122, align 4
  store i32 %385, i32* %b.addr.i123, align 4
  store i32 1, i32* %c.addr.i124, align 4
  %386 = load i32* %a.addr.i122, align 4
  %387 = load i32* %b.addr.i123, align 4
  %388 = load i32* %c.addr.i124, align 4
  call void @llvm.dsp.storeu.8(i32 %386, i32 %387, i32 %388) #3
  %389 = load i32* %int_a, align 4
  %390 = load i32* %int_b, align 4
  store i32 %389, i32* %a.addr.i119, align 4
  store i32 %390, i32* %b.addr.i120, align 4
  store i32 1, i32* %c.addr.i121, align 4
  %391 = load i32* %a.addr.i119, align 4
  %392 = load i32* %b.addr.i120, align 4
  %393 = load i32* %c.addr.i121, align 4
  call void @llvm.dsp.storeu.16(i32 %391, i32 %392, i32 %393) #3
  %394 = load i32* %int_a, align 4
  %395 = load i32* %int_b, align 4
  store i32 %394, i32* %a.addr.i117, align 4
  store i32 %395, i32* %b.addr.i118, align 4
  store i32 1, i32* %c.addr.i, align 4
  %396 = load i32* %a.addr.i117, align 4
  %397 = load i32* %b.addr.i118, align 4
  %398 = load i32* %c.addr.i, align 4
  call void @llvm.dsp.storeu.32(i32 %396, i32 %397, i32 %398) #3
  store i32 1, i32* %a.addr.i116, align 4
  %399 = load i32* %a.addr.i116, align 4
  %400 = call i32 @llvm.dsp.testi.qb(i32 %399) #3
  store i32 %400, i32* %int_dst, align 4
  store i32 2, i32* %a.addr.i115, align 4
  %401 = load i32* %a.addr.i115, align 4
  %402 = call i32 @llvm.dsp.bst.qb(i32 %401) #3
  store i32 %402, i32* %int_dst, align 4
  %403 = call i32 @llvm.dsp.bst.qb(i32 5)
  store i32 %403, i32* %int_dst, align 4
  store i32 5, i32* %a.addr.i114, align 4
  %404 = load i32* %a.addr.i114, align 4
  %405 = call i32 @llvm.dsp.bclr.qb(i32 %404) #3
  store i32 %405, i32* %int_dst, align 4
  %406 = load i32* %int_a, align 4
  store i32 %406, i32* %a.addr.i112, align 4
  store i32 1, i32* %b.addr.i113, align 4
  %407 = load i32* %a.addr.i112, align 4
  %408 = load i32* %b.addr.i113, align 4
  %409 = call <64 x i32> @llvm.dsp.movg2v.40(i32 %407, i32 %408) #3
  store <64 x i32> %409, <64 x i32>* %i32x64_t_dst, align 256
  %410 = load i32* %int_a, align 4
  store i32 %410, i32* %a.addr.i110, align 4
  store i32 1, i32* %b.addr.i111, align 4
  %411 = load i32* %a.addr.i110, align 4
  %412 = load i32* %b.addr.i111, align 4
  %413 = call <128 x i16> @llvm.dsp.movg2v.20(i32 %411, i32 %412) #3
  store <128 x i16> %413, <128 x i16>* %i16x128_t_dst, align 256
  %414 = load i32* %int_a, align 4
  store i32 %414, i32* %a.addr.i108, align 4
  store i32 1, i32* %b.addr.i109, align 4
  %415 = load i32* %a.addr.i108, align 4
  %416 = load i32* %b.addr.i109, align 4
  %417 = call <256 x i8> @llvm.dsp.movg2v.10(i32 %415, i32 %416) #3
  store <256 x i8> %417, <256 x i8>* %i8x256_t_dst, align 256
  %418 = load <64 x i32>* %i32x64_t_a, align 256
  store <64 x i32> %418, <64 x i32>* %a.addr.i106, align 256
  store i32 1, i32* %b.addr.i107, align 4
  %419 = load <64 x i32>* %a.addr.i106, align 256
  %420 = load i32* %b.addr.i107, align 4
  %421 = call i32 @llvm.dsp.movv2g.40(<64 x i32> %419, i32 %420) #3
  store i32 %421, i32* %int_dst, align 4
  %422 = load <128 x i16>* %i16x128_t_a, align 256
  store <128 x i16> %422, <128 x i16>* %a.addr.i104, align 256
  store i32 1, i32* %b.addr.i105, align 4
  %423 = load <128 x i16>* %a.addr.i104, align 256
  %424 = load i32* %b.addr.i105, align 4
  %425 = call i32 @llvm.dsp.movv2g.20(<128 x i16> %423, i32 %424) #3
  store i32 %425, i32* %int_dst, align 4
  %426 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %426, <256 x i8>* %a.addr.i102, align 256
  store i32 1, i32* %b.addr.i103, align 4
  %427 = load <256 x i8>* %a.addr.i102, align 256
  %428 = load i32* %b.addr.i103, align 4
  %429 = call i32 @llvm.dsp.movv2g.10(<256 x i8> %427, i32 %428) #3
  store i32 %429, i32* %int_dst, align 4
  %430 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %430, <256 x i8>* %a.addr.i101, align 256
  %431 = load <256 x i8>* %a.addr.i101, align 256
  call void @llvm.dsp.movl2v(<256 x i8> %431) #3
  %432 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %432, <256 x i8>* %a.addr.i100, align 256
  %433 = load <256 x i8>* %a.addr.i100, align 256
  call void @llvm.dsp.movv2l(<256 x i8> %433) #3
  %434 = load <256 x i8>* %i8x256_t_a, align 256
  store <256 x i8> %434, <256 x i8>* %a.addr.i99, align 256
  %435 = load <256 x i8>* %a.addr.i99, align 256
  %436 = call <256 x i8> @llvm.dsp.movv2v(<256 x i8> %435) #3
  store <256 x i8> %436, <256 x i8>* %i8x256_t_dst, align 256
  %437 = load i32* %int_a, align 4
  store i32 %437, i32* %a.addr.i98, align 4
  %438 = load i32* %a.addr.i98, align 4
  %439 = call <64 x i32> @llvm.dsp.vmovg2v.40(i32 %438) #3
  store <64 x i32> %439, <64 x i32>* %i32x64_t_dst, align 256
  %440 = load i32* %int_a, align 4
  store i32 %440, i32* %a.addr.i97, align 4
  %441 = load i32* %a.addr.i97, align 4
  %442 = call <128 x i16> @llvm.dsp.vmovg2v.20(i32 %441) #3
  store <128 x i16> %442, <128 x i16>* %i16x128_t_dst, align 256
  %443 = load i32* %int_a, align 4
  store i32 %443, i32* %a.addr.i96, align 4
  %444 = load i32* %a.addr.i96, align 4
  %445 = call <256 x i8> @llvm.dsp.vmovg2v.10(i32 %444) #3
  store <256 x i8> %445, <256 x i8>* %i8x256_t_dst, align 256
||||||| .r57
  %4 = call <256 x i8> @llvm.dsp.vmax.10(<256 x i8> %2, <256 x i8> %3) #2
  store <256 x i8> %4, <256 x i8>* %dspvi8_dst, align 256
  %5 = load <128 x i16>* %dspvi16_a, align 256
  %6 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %5, <128 x i16>* %a.addr.i194, align 256
  store <128 x i16> %6, <128 x i16>* %b.addr.i195, align 256
  %7 = load <128 x i16>* %a.addr.i194, align 256
  %8 = load <128 x i16>* %b.addr.i195, align 256
  %9 = call <128 x i16> @llvm.dsp.vmax.20(<128 x i16> %7, <128 x i16> %8) #2
  store <128 x i16> %9, <128 x i16>* %dspvi16_dst, align 256
  %10 = load <64 x i32>* %dspvi32_a, align 256
  %11 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %10, <64 x i32>* %a.addr.i192, align 256
  store <64 x i32> %11, <64 x i32>* %b.addr.i193, align 256
  %12 = load <64 x i32>* %a.addr.i192, align 256
  %13 = load <64 x i32>* %b.addr.i193, align 256
  %14 = call <64 x i32> @llvm.dsp.vmax.40(<64 x i32> %12, <64 x i32> %13) #2
  store <64 x i32> %14, <64 x i32>* %dspvi32_dst, align 256
  %15 = load <256 x i8>* %dspvi8_a, align 256
  %16 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %15, <256 x i8>* %a.addr.i190, align 256
  store <256 x i8> %16, <256 x i8>* %b.addr.i191, align 256
  %17 = load <256 x i8>* %a.addr.i190, align 256
  %18 = load <256 x i8>* %b.addr.i191, align 256
  %19 = call <256 x i8> @llvm.dsp.vmin.10(<256 x i8> %17, <256 x i8> %18) #2
  store <256 x i8> %19, <256 x i8>* %dspvi8_dst, align 256
  %20 = load <128 x i16>* %dspvi16_a, align 256
  %21 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %20, <128 x i16>* %a.addr.i188, align 256
  store <128 x i16> %21, <128 x i16>* %b.addr.i189, align 256
  %22 = load <128 x i16>* %a.addr.i188, align 256
  %23 = load <128 x i16>* %b.addr.i189, align 256
  %24 = call <128 x i16> @llvm.dsp.vmin.20(<128 x i16> %22, <128 x i16> %23) #2
  store <128 x i16> %24, <128 x i16>* %dspvi16_dst, align 256
  %25 = load <64 x i32>* %dspvi32_a, align 256
  %26 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %25, <64 x i32>* %a.addr.i186, align 256
  store <64 x i32> %26, <64 x i32>* %b.addr.i187, align 256
  %27 = load <64 x i32>* %a.addr.i186, align 256
  %28 = load <64 x i32>* %b.addr.i187, align 256
  %29 = call <64 x i32> @llvm.dsp.vmin.40(<64 x i32> %27, <64 x i32> %28) #2
  store <64 x i32> %29, <64 x i32>* %dspvi32_dst, align 256
  %30 = load <256 x i8>* %dspvi8_a, align 256
  store <256 x i8> %30, <256 x i8>* %a.addr.i185, align 256
  %31 = load <256 x i8>* %a.addr.i185, align 256
  %32 = call <256 x i8> @llvm.dsp.vsum.10(<256 x i8> %31) #2
  store <256 x i8> %32, <256 x i8>* %dspvi8_dst, align 256
  %33 = load <128 x i16>* %dspvi16_a, align 256
  store <128 x i16> %33, <128 x i16>* %a.addr.i184, align 256
  %34 = load <128 x i16>* %a.addr.i184, align 256
  %35 = call <128 x i16> @llvm.dsp.vsum.20(<128 x i16> %34) #2
  store <128 x i16> %35, <128 x i16>* %dspvi16_dst, align 256
  %36 = load <64 x i32>* %dspvi32_a, align 256
  store <64 x i32> %36, <64 x i32>* %a.addr.i183, align 256
  %37 = load <64 x i32>* %a.addr.i183, align 256
  %38 = call <64 x i32> @llvm.dsp.vsum.40(<64 x i32> %37) #2
  store <64 x i32> %38, <64 x i32>* %dspvi32_dst, align 256
  %39 = load <256 x i8>* %dspvi8_a, align 256
  store <256 x i8> %39, <256 x i8>* %a.addr.i182, align 256
  %40 = load <256 x i8>* %a.addr.i182, align 256
  %41 = call <256 x i8> @llvm.dsp.vnot(<256 x i8> %40) #2
  store <256 x i8> %41, <256 x i8>* %dspvi8_dst, align 256
  %42 = load <256 x i8>* %dspvi8_a, align 256
  %43 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %42, <256 x i8>* %a.addr.i180, align 256
  store <256 x i8> %43, <256 x i8>* %b.addr.i181, align 256
  %44 = load <256 x i8>* %a.addr.i180, align 256
  %45 = load <256 x i8>* %b.addr.i181, align 256
  %46 = call <256 x i8> @llvm.dsp.vand(<256 x i8> %44, <256 x i8> %45) #2
  store <256 x i8> %46, <256 x i8>* %dspvi8_dst, align 256
  %47 = load <256 x i8>* %dspvi8_a, align 256
  %48 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %47, <256 x i8>* %a.addr.i178, align 256
  store <256 x i8> %48, <256 x i8>* %b.addr.i179, align 256
  %49 = load <256 x i8>* %a.addr.i178, align 256
  %50 = load <256 x i8>* %b.addr.i179, align 256
  %51 = call <256 x i8> @llvm.dsp.vor(<256 x i8> %49, <256 x i8> %50) #2
  store <256 x i8> %51, <256 x i8>* %dspvi8_dst, align 256
  %52 = load <256 x i8>* %dspvi8_a, align 256
  %53 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %52, <256 x i8>* %a.addr.i176, align 256
  store <256 x i8> %53, <256 x i8>* %b.addr.i177, align 256
  %54 = load <256 x i8>* %a.addr.i176, align 256
  %55 = load <256 x i8>* %b.addr.i177, align 256
  %56 = call <256 x i8> @llvm.dsp.vxor(<256 x i8> %54, <256 x i8> %55) #2
  store <256 x i8> %56, <256 x i8>* %dspvi8_dst, align 256
  %57 = load <256 x i8>* %dspvi8_a, align 256
  %58 = load i32* %int_b, align 4
  store <256 x i8> %57, <256 x i8>* %a.addr.i174, align 256
  store i32 %58, i32* %b.addr.i175, align 4
  %59 = load <256 x i8>* %a.addr.i174, align 256
  %60 = load i32* %b.addr.i175, align 4
  %61 = call <256 x i8> @llvm.dsp.vmovcv2v(<256 x i8> %59, i32 %60) #2
  store <256 x i8> %61, <256 x i8>* %dspvi8_dst, align 256
  %62 = load <128 x i16>* %dspvi16_a, align 256
  %63 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %62, <128 x i16>* %a.addr.i172, align 256
  store <128 x i16> %63, <128 x i16>* %b.addr.i173, align 256
  %64 = load <128 x i16>* %a.addr.i172, align 256
  %65 = load <128 x i16>* %b.addr.i173, align 256
  %66 = call <128 x i16> @llvm.dsp.vltl(<128 x i16> %64, <128 x i16> %65) #2
  store <128 x i16> %66, <128 x i16>* %dspvi16_dst, align 256
  %67 = load <128 x i16>* %dspvi16_a, align 256
  %68 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %67, <128 x i16>* %a.addr.i170, align 256
  store <128 x i16> %68, <128 x i16>* %b.addr.i171, align 256
  %69 = load <128 x i16>* %a.addr.i170, align 256
  %70 = load <128 x i16>* %b.addr.i171, align 256
  %71 = call <128 x i16> @llvm.dsp.vlth(<128 x i16> %69, <128 x i16> %70) #2
  store <128 x i16> %71, <128 x i16>* %dspvi16_dst, align 256
  %72 = load <256 x i8>* %dspvi8_a, align 256
  %73 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %72, <256 x i8>* %a.addr.i168, align 256
  store <256 x i8> %73, <256 x i8>* %b.addr.i169, align 256
  %74 = load <256 x i8>* %a.addr.i168, align 256
  %75 = load <256 x i8>* %b.addr.i169, align 256
  %76 = call <256 x i8> @llvm.dsp.veq.10(<256 x i8> %74, <256 x i8> %75) #2
  store <256 x i8> %76, <256 x i8>* %dspvi8_dst, align 256
  %77 = load <128 x i16>* %dspvi16_a, align 256
  %78 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %77, <128 x i16>* %a.addr.i166, align 256
  store <128 x i16> %78, <128 x i16>* %b.addr.i167, align 256
  %79 = load <128 x i16>* %a.addr.i166, align 256
  %80 = load <128 x i16>* %b.addr.i167, align 256
  %81 = call <128 x i16> @llvm.dsp.veq.20(<128 x i16> %79, <128 x i16> %80) #2
  store <128 x i16> %81, <128 x i16>* %dspvi16_dst, align 256
  %82 = load <64 x i32>* %dspvi32_a, align 256
  %83 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %82, <64 x i32>* %a.addr.i164, align 256
  store <64 x i32> %83, <64 x i32>* %b.addr.i165, align 256
  %84 = load <64 x i32>* %a.addr.i164, align 256
  %85 = load <64 x i32>* %b.addr.i165, align 256
  %86 = call <64 x i32> @llvm.dsp.veq.40(<64 x i32> %84, <64 x i32> %85) #2
  store <64 x i32> %86, <64 x i32>* %dspvi32_dst, align 256
  %87 = load <256 x i8>* %dspvi8_a, align 256
  %88 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %87, <256 x i8>* %a.addr.i162, align 256
  store <256 x i8> %88, <256 x i8>* %b.addr.i163, align 256
  %89 = load <256 x i8>* %a.addr.i162, align 256
  %90 = load <256 x i8>* %b.addr.i163, align 256
  %91 = call <256 x i8> @llvm.dsp.vgt.10(<256 x i8> %89, <256 x i8> %90) #2
  store <256 x i8> %91, <256 x i8>* %dspvi8_dst, align 256
  %92 = load <128 x i16>* %dspvi16_a, align 256
  %93 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %92, <128 x i16>* %a.addr.i160, align 256
  store <128 x i16> %93, <128 x i16>* %b.addr.i161, align 256
  %94 = load <128 x i16>* %a.addr.i160, align 256
  %95 = load <128 x i16>* %b.addr.i161, align 256
  %96 = call <128 x i16> @llvm.dsp.vgt.20(<128 x i16> %94, <128 x i16> %95) #2
  store <128 x i16> %96, <128 x i16>* %dspvi16_dst, align 256
  %97 = load <64 x i32>* %dspvi32_a, align 256
  %98 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %97, <64 x i32>* %a.addr.i158, align 256
  store <64 x i32> %98, <64 x i32>* %b.addr.i159, align 256
  %99 = load <64 x i32>* %a.addr.i158, align 256
  %100 = load <64 x i32>* %b.addr.i159, align 256
  %101 = call <64 x i32> @llvm.dsp.vgt.40(<64 x i32> %99, <64 x i32> %100) #2
  store <64 x i32> %101, <64 x i32>* %dspvi32_dst, align 256
  %102 = load <256 x i8>* %dspvi8_a, align 256
  %103 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %102, <256 x i8>* %a.addr.i156, align 256
  store <256 x i8> %103, <256 x i8>* %b.addr.i157, align 256
  %104 = load <256 x i8>* %a.addr.i156, align 256
  %105 = load <256 x i8>* %b.addr.i157, align 256
  %106 = call <256 x i8> @llvm.dsp.vlt.10(<256 x i8> %104, <256 x i8> %105) #2
  store <256 x i8> %106, <256 x i8>* %dspvi8_dst, align 256
  %107 = load <128 x i16>* %dspvi16_a, align 256
  %108 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %107, <128 x i16>* %a.addr.i154, align 256
  store <128 x i16> %108, <128 x i16>* %b.addr.i155, align 256
  %109 = load <128 x i16>* %a.addr.i154, align 256
  %110 = load <128 x i16>* %b.addr.i155, align 256
  %111 = call <128 x i16> @llvm.dsp.vlt.20(<128 x i16> %109, <128 x i16> %110) #2
  store <128 x i16> %111, <128 x i16>* %dspvi16_dst, align 256
  %112 = load <64 x i32>* %dspvi32_a, align 256
  %113 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %112, <64 x i32>* %a.addr.i152, align 256
  store <64 x i32> %113, <64 x i32>* %b.addr.i153, align 256
  %114 = load <64 x i32>* %a.addr.i152, align 256
  %115 = load <64 x i32>* %b.addr.i153, align 256
  %116 = call <64 x i32> @llvm.dsp.vlt.40(<64 x i32> %114, <64 x i32> %115) #2
  store <64 x i32> %116, <64 x i32>* %dspvi32_dst, align 256
  %117 = load <256 x i8>* %dspvi8_a, align 256
  %118 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %117, <256 x i8>* %a.addr.i150, align 256
  store <256 x i8> %118, <256 x i8>* %b.addr.i151, align 256
  %119 = load <256 x i8>* %a.addr.i150, align 256
  %120 = load <256 x i8>* %b.addr.i151, align 256
  %121 = call <256 x i8> @llvm.dsp.vge.10(<256 x i8> %119, <256 x i8> %120) #2
  store <256 x i8> %121, <256 x i8>* %dspvi8_dst, align 256
  %122 = load <128 x i16>* %dspvi16_a, align 256
  %123 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %122, <128 x i16>* %a.addr.i148, align 256
  store <128 x i16> %123, <128 x i16>* %b.addr.i149, align 256
  %124 = load <128 x i16>* %a.addr.i148, align 256
  %125 = load <128 x i16>* %b.addr.i149, align 256
  %126 = call <128 x i16> @llvm.dsp.vge.20(<128 x i16> %124, <128 x i16> %125) #2
  store <128 x i16> %126, <128 x i16>* %dspvi16_dst, align 256
  %127 = load <64 x i32>* %dspvi32_a, align 256
  %128 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %127, <64 x i32>* %a.addr.i146, align 256
  store <64 x i32> %128, <64 x i32>* %b.addr.i147, align 256
  %129 = load <64 x i32>* %a.addr.i146, align 256
  %130 = load <64 x i32>* %b.addr.i147, align 256
  %131 = call <64 x i32> @llvm.dsp.vge.40(<64 x i32> %129, <64 x i32> %130) #2
  store <64 x i32> %131, <64 x i32>* %dspvi32_dst, align 256
  %132 = load <256 x i8>* %dspvi8_a, align 256
  %133 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %132, <256 x i8>* %a.addr.i144, align 256
  store <256 x i8> %133, <256 x i8>* %b.addr.i145, align 256
  %134 = load <256 x i8>* %a.addr.i144, align 256
  %135 = load <256 x i8>* %b.addr.i145, align 256
  %136 = call <256 x i8> @llvm.dsp.vle.10(<256 x i8> %134, <256 x i8> %135) #2
  store <256 x i8> %136, <256 x i8>* %dspvi8_dst, align 256
  %137 = load <128 x i16>* %dspvi16_a, align 256
  %138 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %137, <128 x i16>* %a.addr.i142, align 256
  store <128 x i16> %138, <128 x i16>* %b.addr.i143, align 256
  %139 = load <128 x i16>* %a.addr.i142, align 256
  %140 = load <128 x i16>* %b.addr.i143, align 256
  %141 = call <128 x i16> @llvm.dsp.vle.20(<128 x i16> %139, <128 x i16> %140) #2
  store <128 x i16> %141, <128 x i16>* %dspvi16_dst, align 256
  %142 = load <64 x i32>* %dspvi32_a, align 256
  %143 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %142, <64 x i32>* %a.addr.i140, align 256
  store <64 x i32> %143, <64 x i32>* %b.addr.i141, align 256
  %144 = load <64 x i32>* %a.addr.i140, align 256
  %145 = load <64 x i32>* %b.addr.i141, align 256
  %146 = call <64 x i32> @llvm.dsp.vle.40(<64 x i32> %144, <64 x i32> %145) #2
  store <64 x i32> %146, <64 x i32>* %dspvi32_dst, align 256
  %147 = load <256 x i8>* %dspvi8_a, align 256
  %148 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %147, <256 x i8>* %a.addr.i138, align 256
  store <256 x i8> %148, <256 x i8>* %b.addr.i139, align 256
  %149 = load <256 x i8>* %a.addr.i138, align 256
  %150 = load <256 x i8>* %b.addr.i139, align 256
  %151 = call <256 x i8> @llvm.dsp.vadd.10(<256 x i8> %149, <256 x i8> %150) #2
  store <256 x i8> %151, <256 x i8>* %dspvi8_dst, align 256
  %152 = load <128 x i16>* %dspvi16_a, align 256
  %153 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %152, <128 x i16>* %a.addr.i136, align 256
  store <128 x i16> %153, <128 x i16>* %b.addr.i137, align 256
  %154 = load <128 x i16>* %a.addr.i136, align 256
  %155 = load <128 x i16>* %b.addr.i137, align 256
  %156 = call <128 x i16> @llvm.dsp.vadd.20(<128 x i16> %154, <128 x i16> %155) #2
  store <128 x i16> %156, <128 x i16>* %dspvi16_dst, align 256
  %157 = load <64 x i32>* %dspvi32_a, align 256
  %158 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %157, <64 x i32>* %a.addr.i134, align 256
  store <64 x i32> %158, <64 x i32>* %b.addr.i135, align 256
  %159 = load <64 x i32>* %a.addr.i134, align 256
  %160 = load <64 x i32>* %b.addr.i135, align 256
  %161 = call <64 x i32> @llvm.dsp.vadd.40(<64 x i32> %159, <64 x i32> %160) #2
  store <64 x i32> %161, <64 x i32>* %dspvi32_dst, align 256
  %162 = load <256 x i8>* %dspvi8_a, align 256
  %163 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %162, <256 x i8>* %a.addr.i132, align 256
  store <256 x i8> %163, <256 x i8>* %b.addr.i133, align 256
  %164 = load <256 x i8>* %a.addr.i132, align 256
  %165 = load <256 x i8>* %b.addr.i133, align 256
  %166 = call <256 x i8> @llvm.dsp.vsub.10(<256 x i8> %164, <256 x i8> %165) #2
  store <256 x i8> %166, <256 x i8>* %dspvi8_dst, align 256
  %167 = load <128 x i16>* %dspvi16_a, align 256
  %168 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %167, <128 x i16>* %a.addr.i130, align 256
  store <128 x i16> %168, <128 x i16>* %b.addr.i131, align 256
  %169 = load <128 x i16>* %a.addr.i130, align 256
  %170 = load <128 x i16>* %b.addr.i131, align 256
  %171 = call <128 x i16> @llvm.dsp.vsub.20(<128 x i16> %169, <128 x i16> %170) #2
  store <128 x i16> %171, <128 x i16>* %dspvi16_dst, align 256
  %172 = load <64 x i32>* %dspvi32_a, align 256
  %173 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %172, <64 x i32>* %a.addr.i128, align 256
  store <64 x i32> %173, <64 x i32>* %b.addr.i129, align 256
  %174 = load <64 x i32>* %a.addr.i128, align 256
  %175 = load <64 x i32>* %b.addr.i129, align 256
  %176 = call <64 x i32> @llvm.dsp.vsub.40(<64 x i32> %174, <64 x i32> %175) #2
  store <64 x i32> %176, <64 x i32>* %dspvi32_dst, align 256
  %177 = load <256 x i8>* %dspvi8_a, align 256
  %178 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %177, <256 x i8>* %a.addr.i126, align 256
  store <256 x i8> %178, <256 x i8>* %b.addr.i127, align 256
  %179 = load <256 x i8>* %a.addr.i126, align 256
  %180 = load <256 x i8>* %b.addr.i127, align 256
  %181 = call <256 x i8> @llvm.dsp.vsl.10(<256 x i8> %179, <256 x i8> %180) #2
  store <256 x i8> %181, <256 x i8>* %dspvi8_dst, align 256
  %182 = load <128 x i16>* %dspvi16_a, align 256
  %183 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %182, <128 x i16>* %a.addr.i124, align 256
  store <128 x i16> %183, <128 x i16>* %b.addr.i125, align 256
  %184 = load <128 x i16>* %a.addr.i124, align 256
  %185 = load <128 x i16>* %b.addr.i125, align 256
  %186 = call <128 x i16> @llvm.dsp.vsl.20(<128 x i16> %184, <128 x i16> %185) #2
  store <128 x i16> %186, <128 x i16>* %dspvi16_dst, align 256
  %187 = load <64 x i32>* %dspvi32_a, align 256
  %188 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %187, <64 x i32>* %a.addr.i122, align 256
  store <64 x i32> %188, <64 x i32>* %b.addr.i123, align 256
  %189 = load <64 x i32>* %a.addr.i122, align 256
  %190 = load <64 x i32>* %b.addr.i123, align 256
  %191 = call <64 x i32> @llvm.dsp.vsl.40(<64 x i32> %189, <64 x i32> %190) #2
  store <64 x i32> %191, <64 x i32>* %dspvi32_dst, align 256
  %192 = load <256 x i8>* %dspvi8_a, align 256
  %193 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %192, <256 x i8>* %a.addr.i120, align 256
  store <256 x i8> %193, <256 x i8>* %b.addr.i121, align 256
  %194 = load <256 x i8>* %a.addr.i120, align 256
  %195 = load <256 x i8>* %b.addr.i121, align 256
  %196 = call <256 x i8> @llvm.dsp.vsls.10(<256 x i8> %194, <256 x i8> %195) #2
  store <256 x i8> %196, <256 x i8>* %dspvi8_dst, align 256
  %197 = load <128 x i16>* %dspvi16_a, align 256
  %198 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %197, <128 x i16>* %a.addr.i118, align 256
  store <128 x i16> %198, <128 x i16>* %b.addr.i119, align 256
  %199 = load <128 x i16>* %a.addr.i118, align 256
  %200 = load <128 x i16>* %b.addr.i119, align 256
  %201 = call <128 x i16> @llvm.dsp.vsls.20(<128 x i16> %199, <128 x i16> %200) #2
  store <128 x i16> %201, <128 x i16>* %dspvi16_dst, align 256
  %202 = load <64 x i32>* %dspvi32_a, align 256
  %203 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %202, <64 x i32>* %a.addr.i116, align 256
  store <64 x i32> %203, <64 x i32>* %b.addr.i117, align 256
  %204 = load <64 x i32>* %a.addr.i116, align 256
  %205 = load <64 x i32>* %b.addr.i117, align 256
  %206 = call <64 x i32> @llvm.dsp.vsls.40(<64 x i32> %204, <64 x i32> %205) #2
  store <64 x i32> %206, <64 x i32>* %dspvi32_dst, align 256
  %207 = load <256 x i8>* %dspvi8_a, align 256
  %208 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %207, <256 x i8>* %a.addr.i114, align 256
  store <256 x i8> %208, <256 x i8>* %b.addr.i115, align 256
  %209 = load <256 x i8>* %a.addr.i114, align 256
  %210 = load <256 x i8>* %b.addr.i115, align 256
  %211 = call <256 x i8> @llvm.dsp.vsra.10(<256 x i8> %209, <256 x i8> %210) #2
  store <256 x i8> %211, <256 x i8>* %dspvi8_dst, align 256
  %212 = load <128 x i16>* %dspvi16_a, align 256
  %213 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %212, <128 x i16>* %a.addr.i112, align 256
  store <128 x i16> %213, <128 x i16>* %b.addr.i113, align 256
  %214 = load <128 x i16>* %a.addr.i112, align 256
  %215 = load <128 x i16>* %b.addr.i113, align 256
  %216 = call <128 x i16> @llvm.dsp.vsra.20(<128 x i16> %214, <128 x i16> %215) #2
  store <128 x i16> %216, <128 x i16>* %dspvi16_dst, align 256
  %217 = load <64 x i32>* %dspvi32_a, align 256
  %218 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %217, <64 x i32>* %a.addr.i110, align 256
  store <64 x i32> %218, <64 x i32>* %b.addr.i111, align 256
  %219 = load <64 x i32>* %a.addr.i110, align 256
  %220 = load <64 x i32>* %b.addr.i111, align 256
  %221 = call <64 x i32> @llvm.dsp.vsra.40(<64 x i32> %219, <64 x i32> %220) #2
  store <64 x i32> %221, <64 x i32>* %dspvi32_dst, align 256
  %222 = load <256 x i8>* %dspvi8_a, align 256
  %223 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %222, <256 x i8>* %a.addr.i108, align 256
  store <256 x i8> %223, <256 x i8>* %b.addr.i109, align 256
  %224 = load <256 x i8>* %a.addr.i108, align 256
  %225 = load <256 x i8>* %b.addr.i109, align 256
  %226 = call <256 x i8> @llvm.dsp.vsrl.10(<256 x i8> %224, <256 x i8> %225) #2
  store <256 x i8> %226, <256 x i8>* %dspvi8_dst, align 256
  %227 = load <128 x i16>* %dspvi16_a, align 256
  %228 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %227, <128 x i16>* %a.addr.i106, align 256
  store <128 x i16> %228, <128 x i16>* %b.addr.i107, align 256
  %229 = load <128 x i16>* %a.addr.i106, align 256
  %230 = load <128 x i16>* %b.addr.i107, align 256
  %231 = call <128 x i16> @llvm.dsp.vsrl.20(<128 x i16> %229, <128 x i16> %230) #2
  store <128 x i16> %231, <128 x i16>* %dspvi16_dst, align 256
  %232 = load <64 x i32>* %dspvi32_a, align 256
  %233 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %232, <64 x i32>* %a.addr.i104, align 256
  store <64 x i32> %233, <64 x i32>* %b.addr.i105, align 256
  %234 = load <64 x i32>* %a.addr.i104, align 256
  %235 = load <64 x i32>* %b.addr.i105, align 256
  %236 = call <64 x i32> @llvm.dsp.vsrl.40(<64 x i32> %234, <64 x i32> %235) #2
  store <64 x i32> %236, <64 x i32>* %dspvi32_dst, align 256
  %237 = load <256 x i8>* %dspvi8_a, align 256
  store <256 x i8> %237, <256 x i8>* %a.addr.i103, align 256
  %238 = load <256 x i8>* %a.addr.i103, align 256
  %239 = call <256 x i8> @llvm.dsp.vabs.10(<256 x i8> %238) #2
  store <256 x i8> %239, <256 x i8>* %dspvi8_dst, align 256
  %240 = load <128 x i16>* %dspvi16_a, align 256
  store <128 x i16> %240, <128 x i16>* %a.addr.i102, align 256
  %241 = load <128 x i16>* %a.addr.i102, align 256
  %242 = call <128 x i16> @llvm.dsp.vabs.20(<128 x i16> %241) #2
  store <128 x i16> %242, <128 x i16>* %dspvi16_dst, align 256
  %243 = load <64 x i32>* %dspvi32_a, align 256
  store <64 x i32> %243, <64 x i32>* %a.addr.i101, align 256
  %244 = load <64 x i32>* %a.addr.i101, align 256
  %245 = call <64 x i32> @llvm.dsp.vabs.40(<64 x i32> %244) #2
  store <64 x i32> %245, <64 x i32>* %dspvi32_dst, align 256
  %246 = load <256 x i8>* %dspvi8_a, align 256
  %247 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %246, <256 x i8>* %a.addr.i99, align 256
  store <256 x i8> %247, <256 x i8>* %b.addr.i100, align 256
  %248 = load <256 x i8>* %a.addr.i99, align 256
  %249 = load <256 x i8>* %b.addr.i100, align 256
  %250 = call <256 x i8> @llvm.dsp.vfmul.10(<256 x i8> %248, <256 x i8> %249) #2
  store <256 x i8> %250, <256 x i8>* %dspvi8_dst, align 256
  %251 = load <128 x i16>* %dspvi16_a, align 256
  %252 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %251, <128 x i16>* %a.addr.i97, align 256
  store <128 x i16> %252, <128 x i16>* %b.addr.i98, align 256
  %253 = load <128 x i16>* %a.addr.i97, align 256
  %254 = load <128 x i16>* %b.addr.i98, align 256
  %255 = call <128 x i16> @llvm.dsp.vfmul.20(<128 x i16> %253, <128 x i16> %254) #2
  store <128 x i16> %255, <128 x i16>* %dspvi16_dst, align 256
  %256 = load <64 x i32>* %dspvi32_a, align 256
  %257 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %256, <64 x i32>* %a.addr.i95, align 256
  store <64 x i32> %257, <64 x i32>* %b.addr.i96, align 256
  %258 = load <64 x i32>* %a.addr.i95, align 256
  %259 = load <64 x i32>* %b.addr.i96, align 256
  %260 = call <64 x i32> @llvm.dsp.vfmul.40(<64 x i32> %258, <64 x i32> %259) #2
  store <64 x i32> %260, <64 x i32>* %dspvi32_dst, align 256
  %261 = load <256 x i8>* %dspvi8_a, align 256
  %262 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %261, <256 x i8>* %a.addr.i93, align 256
  store <256 x i8> %262, <256 x i8>* %b.addr.i94, align 256
  %263 = load <256 x i8>* %a.addr.i93, align 256
  %264 = load <256 x i8>* %b.addr.i94, align 256
  %265 = call <256 x i8> @llvm.dsp.vfmac.10(<256 x i8> %263, <256 x i8> %264) #2
  store <256 x i8> %265, <256 x i8>* %dspvi8_dst, align 256
  %266 = load <128 x i16>* %dspvi16_a, align 256
  %267 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %266, <128 x i16>* %a.addr.i91, align 256
  store <128 x i16> %267, <128 x i16>* %b.addr.i92, align 256
  %268 = load <128 x i16>* %a.addr.i91, align 256
  %269 = load <128 x i16>* %b.addr.i92, align 256
  %270 = call <128 x i16> @llvm.dsp.vfmac.20(<128 x i16> %268, <128 x i16> %269) #2
  store <128 x i16> %270, <128 x i16>* %dspvi16_dst, align 256
  %271 = load <64 x i32>* %dspvi32_a, align 256
  %272 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %271, <64 x i32>* %a.addr.i89, align 256
  store <64 x i32> %272, <64 x i32>* %b.addr.i90, align 256
  %273 = load <64 x i32>* %a.addr.i89, align 256
  %274 = load <64 x i32>* %b.addr.i90, align 256
  %275 = call <64 x i32> @llvm.dsp.vfmac.40(<64 x i32> %273, <64 x i32> %274) #2
  store <64 x i32> %275, <64 x i32>* %dspvi32_dst, align 256
  %276 = load <256 x i8>* %dspvi8_a, align 256
  %277 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %276, <256 x i8>* %a.addr.i87, align 256
  store <256 x i8> %277, <256 x i8>* %b.addr.i88, align 256
  %278 = load <256 x i8>* %a.addr.i87, align 256
  %279 = load <256 x i8>* %b.addr.i88, align 256
  %280 = call <256 x i8> @llvm.dsp.vcmac.10(<256 x i8> %278, <256 x i8> %279) #2
  store <256 x i8> %280, <256 x i8>* %dspvi8_dst, align 256
  %281 = load <128 x i16>* %dspvi16_a, align 256
  %282 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %281, <128 x i16>* %a.addr.i85, align 256
  store <128 x i16> %282, <128 x i16>* %b.addr.i86, align 256
  %283 = load <128 x i16>* %a.addr.i85, align 256
  %284 = load <128 x i16>* %b.addr.i86, align 256
  %285 = call <128 x i16> @llvm.dsp.vcmac.20(<128 x i16> %283, <128 x i16> %284) #2
  store <128 x i16> %285, <128 x i16>* %dspvi16_dst, align 256
  %286 = load <128 x i16>* %dspvi16_a, align 256
  %287 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %286, <128 x i16>* %a.addr.i83, align 256
  store <128 x i16> %287, <128 x i16>* %b.addr.i84, align 256
  %288 = load <128 x i16>* %a.addr.i83, align 256
  %289 = load <128 x i16>* %b.addr.i84, align 256
  %290 = call <128 x i16> @llvm.dsp.vcmul.20(<128 x i16> %288, <128 x i16> %289) #2
  store <128 x i16> %290, <128 x i16>* %dspvi16_dst, align 256
  %291 = load <64 x i32>* %dspvi32_a, align 256
  %292 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %291, <64 x i32>* %a.addr.i81, align 256
  store <64 x i32> %292, <64 x i32>* %b.addr.i82, align 256
  %293 = load <64 x i32>* %a.addr.i81, align 256
  %294 = load <64 x i32>* %b.addr.i82, align 256
  %295 = call <64 x i32> @llvm.dsp.vcmulr.40(<64 x i32> %293, <64 x i32> %294) #2
  store <64 x i32> %295, <64 x i32>* %dspvi32_dst, align 256
  %296 = load <64 x i32>* %dspvi32_a, align 256
  %297 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %296, <64 x i32>* %a.addr.i79, align 256
  store <64 x i32> %297, <64 x i32>* %b.addr.i80, align 256
  %298 = load <64 x i32>* %a.addr.i79, align 256
  %299 = load <64 x i32>* %b.addr.i80, align 256
  %300 = call <64 x i32> @llvm.dsp.vcmuli.40(<64 x i32> %298, <64 x i32> %299) #2
  store <64 x i32> %300, <64 x i32>* %dspvi32_dst, align 256
  %301 = load i32* %int_a, align 4
  store i32 %301, i32* %a.addr.i78, align 4
  %302 = load i32* %a.addr.i78, align 4
  %303 = call i32 @llvm.dsp.cbw.qb(i32 %302) #2
  store i32 %303, i32* %int_dst, align 4
  %304 = load i32* %int_a, align 4
  store i32 %304, i32* %a.addr.i77, align 4
  %305 = load i32* %a.addr.i77, align 4
  %306 = call i32 @llvm.dsp.chw.qb(i32 %305) #2
  store i32 %306, i32* %int_dst, align 4
  %307 = load i32* %int_a, align 4
  store i32 %307, i32* %a.addr.i76, align 4
  %308 = load i32* %a.addr.i76, align 4
  %309 = call i32 @llvm.dsp.abs.qb(i32 %308) #2
  store i32 %309, i32* %int_dst, align 4
  %310 = load i32* %int_a, align 4
  store i32 %310, i32* %a.addr.i75, align 4
  %311 = load i32* %a.addr.i75, align 4
  %312 = call i32 @llvm.dsp.test.qb(i32 %311) #2
  store i32 %312, i32* %int_dst, align 4
  %313 = load i32* %int_a, align 4
  %314 = load i32* %int_b, align 4
  store i32 %313, i32* %a.addr.i73, align 4
  store i32 %314, i32* %b.addr.i74, align 4
  %315 = load i32* %a.addr.i73, align 4
  %316 = load i32* %b.addr.i74, align 4
  %317 = call i32 @llvm.dsp.max(i32 %315, i32 %316) #2
  store i32 %317, i32* %int_dst, align 4
  %318 = load i32* %int_a, align 4
  %319 = load i32* %int_b, align 4
  store i32 %318, i32* %a.addr.i71, align 4
  store i32 %319, i32* %b.addr.i72, align 4
  %320 = load i32* %a.addr.i71, align 4
  %321 = load i32* %b.addr.i72, align 4
  %322 = call i32 @llvm.dsp.min(i32 %320, i32 %321) #2
  store i32 %322, i32* %int_dst, align 4
  %323 = load i32* %int_a, align 4
  store i32 %323, i32* %a.addr.i70, align 4
  %324 = load i32* %a.addr.i70, align 4
  %325 = call i32 @llvm.dsp.not(i32 %324) #2
  store i32 %325, i32* %int_dst, align 4
=======
  %4 = call <256 x i8> @llvm.dsp.vmax.10(<256 x i8> %2, <256 x i8> %3) #2
  store <256 x i8> %4, <256 x i8>* %dspvi8_dst, align 256
  %5 = load <128 x i16>* %dspvi16_a, align 256
  %6 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %5, <128 x i16>* %a.addr.i328, align 256
  store <128 x i16> %6, <128 x i16>* %b.addr.i329, align 256
  %7 = load <128 x i16>* %a.addr.i328, align 256
  %8 = load <128 x i16>* %b.addr.i329, align 256
  %9 = call <128 x i16> @llvm.dsp.vmax.20(<128 x i16> %7, <128 x i16> %8) #2
  store <128 x i16> %9, <128 x i16>* %dspvi16_dst, align 256
  %10 = load <64 x i32>* %dspvi32_a, align 256
  %11 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %10, <64 x i32>* %a.addr.i326, align 256
  store <64 x i32> %11, <64 x i32>* %b.addr.i327, align 256
  %12 = load <64 x i32>* %a.addr.i326, align 256
  %13 = load <64 x i32>* %b.addr.i327, align 256
  %14 = call <64 x i32> @llvm.dsp.vmax.40(<64 x i32> %12, <64 x i32> %13) #2
  store <64 x i32> %14, <64 x i32>* %dspvi32_dst, align 256
  %15 = load <256 x i8>* %dspvi8_a, align 256
  %16 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %15, <256 x i8>* %a.addr.i324, align 256
  store <256 x i8> %16, <256 x i8>* %b.addr.i325, align 256
  %17 = load <256 x i8>* %a.addr.i324, align 256
  %18 = load <256 x i8>* %b.addr.i325, align 256
  %19 = call <256 x i8> @llvm.dsp.vmin.10(<256 x i8> %17, <256 x i8> %18) #2
  store <256 x i8> %19, <256 x i8>* %dspvi8_dst, align 256
  %20 = load <128 x i16>* %dspvi16_a, align 256
  %21 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %20, <128 x i16>* %a.addr.i322, align 256
  store <128 x i16> %21, <128 x i16>* %b.addr.i323, align 256
  %22 = load <128 x i16>* %a.addr.i322, align 256
  %23 = load <128 x i16>* %b.addr.i323, align 256
  %24 = call <128 x i16> @llvm.dsp.vmin.20(<128 x i16> %22, <128 x i16> %23) #2
  store <128 x i16> %24, <128 x i16>* %dspvi16_dst, align 256
  %25 = load <64 x i32>* %dspvi32_a, align 256
  %26 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %25, <64 x i32>* %a.addr.i320, align 256
  store <64 x i32> %26, <64 x i32>* %b.addr.i321, align 256
  %27 = load <64 x i32>* %a.addr.i320, align 256
  %28 = load <64 x i32>* %b.addr.i321, align 256
  %29 = call <64 x i32> @llvm.dsp.vmin.40(<64 x i32> %27, <64 x i32> %28) #2
  store <64 x i32> %29, <64 x i32>* %dspvi32_dst, align 256
  %30 = load <256 x i8>* %dspvi8_a, align 256
  store <256 x i8> %30, <256 x i8>* %a.addr.i319, align 256
  %31 = load <256 x i8>* %a.addr.i319, align 256
  %32 = call <256 x i8> @llvm.dsp.vsum.10(<256 x i8> %31) #2
  store <256 x i8> %32, <256 x i8>* %dspvi8_dst, align 256
  %33 = load <128 x i16>* %dspvi16_a, align 256
  store <128 x i16> %33, <128 x i16>* %a.addr.i318, align 256
  %34 = load <128 x i16>* %a.addr.i318, align 256
  %35 = call <128 x i16> @llvm.dsp.vsum.20(<128 x i16> %34) #2
  store <128 x i16> %35, <128 x i16>* %dspvi16_dst, align 256
  %36 = load <64 x i32>* %dspvi32_a, align 256
  store <64 x i32> %36, <64 x i32>* %a.addr.i317, align 256
  %37 = load <64 x i32>* %a.addr.i317, align 256
  %38 = call <64 x i32> @llvm.dsp.vsum.40(<64 x i32> %37) #2
  store <64 x i32> %38, <64 x i32>* %dspvi32_dst, align 256
  %39 = load <256 x i8>* %dspvi8_a, align 256
  store <256 x i8> %39, <256 x i8>* %a.addr.i316, align 256
  %40 = load <256 x i8>* %a.addr.i316, align 256
  %41 = call <256 x i8> @llvm.dsp.vnot(<256 x i8> %40) #2
  store <256 x i8> %41, <256 x i8>* %dspvi8_dst, align 256
  %42 = load <256 x i8>* %dspvi8_a, align 256
  %43 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %42, <256 x i8>* %a.addr.i314, align 256
  store <256 x i8> %43, <256 x i8>* %b.addr.i315, align 256
  %44 = load <256 x i8>* %a.addr.i314, align 256
  %45 = load <256 x i8>* %b.addr.i315, align 256
  %46 = call <256 x i8> @llvm.dsp.vand(<256 x i8> %44, <256 x i8> %45) #2
  store <256 x i8> %46, <256 x i8>* %dspvi8_dst, align 256
  %47 = load <256 x i8>* %dspvi8_a, align 256
  %48 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %47, <256 x i8>* %a.addr.i312, align 256
  store <256 x i8> %48, <256 x i8>* %b.addr.i313, align 256
  %49 = load <256 x i8>* %a.addr.i312, align 256
  %50 = load <256 x i8>* %b.addr.i313, align 256
  %51 = call <256 x i8> @llvm.dsp.vor(<256 x i8> %49, <256 x i8> %50) #2
  store <256 x i8> %51, <256 x i8>* %dspvi8_dst, align 256
  %52 = load <256 x i8>* %dspvi8_a, align 256
  %53 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %52, <256 x i8>* %a.addr.i310, align 256
  store <256 x i8> %53, <256 x i8>* %b.addr.i311, align 256
  %54 = load <256 x i8>* %a.addr.i310, align 256
  %55 = load <256 x i8>* %b.addr.i311, align 256
  %56 = call <256 x i8> @llvm.dsp.vxor(<256 x i8> %54, <256 x i8> %55) #2
  store <256 x i8> %56, <256 x i8>* %dspvi8_dst, align 256
  %57 = load <256 x i8>* %dspvi8_a, align 256
  %58 = load i32* %int_b, align 4
  store <256 x i8> %57, <256 x i8>* %a.addr.i308, align 256
  store i32 %58, i32* %b.addr.i309, align 4
  %59 = load <256 x i8>* %a.addr.i308, align 256
  %60 = load i32* %b.addr.i309, align 4
  %61 = call <256 x i8> @llvm.dsp.vmovcv2v(<256 x i8> %59, i32 %60) #2
  store <256 x i8> %61, <256 x i8>* %dspvi8_dst, align 256
  %62 = load <128 x i16>* %dspvi16_a, align 256
  %63 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %62, <128 x i16>* %a.addr.i306, align 256
  store <128 x i16> %63, <128 x i16>* %b.addr.i307, align 256
  %64 = load <128 x i16>* %a.addr.i306, align 256
  %65 = load <128 x i16>* %b.addr.i307, align 256
  %66 = call <128 x i16> @llvm.dsp.vltl(<128 x i16> %64, <128 x i16> %65) #2
  store <128 x i16> %66, <128 x i16>* %dspvi16_dst, align 256
  %67 = load <128 x i16>* %dspvi16_a, align 256
  %68 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %67, <128 x i16>* %a.addr.i304, align 256
  store <128 x i16> %68, <128 x i16>* %b.addr.i305, align 256
  %69 = load <128 x i16>* %a.addr.i304, align 256
  %70 = load <128 x i16>* %b.addr.i305, align 256
  %71 = call <128 x i16> @llvm.dsp.vlth(<128 x i16> %69, <128 x i16> %70) #2
  store <128 x i16> %71, <128 x i16>* %dspvi16_dst, align 256
  %72 = load i32* %int_a, align 4
  %73 = load i32* %int_b, align 4
  store i32 %72, i32* %a.addr.i302, align 4
  store i32 %73, i32* %b.addr.i303, align 4
  %74 = load i32* %a.addr.i302, align 4
  %75 = load i32* %b.addr.i303, align 4
  %76 = call i32 @llvm.dsp.loadu.8(i32 %74, i32 %75) #2
  store i32 %76, i32* %int_dst, align 4
  %77 = load i32* %int_a, align 4
  %78 = load i32* %int_b, align 4
  store i32 %77, i32* %a.addr.i300, align 4
  store i32 %78, i32* %b.addr.i301, align 4
  %79 = load i32* %a.addr.i300, align 4
  %80 = load i32* %b.addr.i301, align 4
  %81 = call i32 @llvm.dsp.loadu.16(i32 %79, i32 %80) #2
  store i32 %81, i32* %int_dst, align 4
  %82 = load i32* %int_a, align 4
  %83 = load i32* %int_b, align 4
  store i32 %82, i32* %a.addr.i298, align 4
  store i32 %83, i32* %b.addr.i299, align 4
  %84 = load i32* %a.addr.i298, align 4
  %85 = load i32* %b.addr.i299, align 4
  %86 = call i32 @llvm.dsp.loadu.32(i32 %84, i32 %85) #2
  store i32 %86, i32* %int_dst, align 4
  %87 = load i32* %int_a, align 4
  %88 = load i32* %int_b, align 4
  store i32 %87, i32* %a.addr.i296, align 4
  store i32 %88, i32* %b.addr.i297, align 4
  %89 = load i32* %a.addr.i296, align 4
  %90 = load i32* %b.addr.i297, align 4
  %91 = call i32 @llvm.dsp.loado.16(i32 %89, i32 %90) #2
  store i32 %91, i32* %int_dst, align 4
  %92 = load i32* %int_a, align 4
  %93 = load i32* %int_b, align 4
  store i32 %92, i32* %a.addr.i294, align 4
  store i32 %93, i32* %b.addr.i295, align 4
  %94 = load i32* %a.addr.i294, align 4
  %95 = load i32* %b.addr.i295, align 4
  %96 = call i32 @llvm.dsp.loado.32(i32 %94, i32 %95) #2
  store i32 %96, i32* %int_dst, align 4
  %97 = load i32* %int_a, align 4
  %98 = load i32* %int_b, align 4
  store i32 %97, i32* %a.addr.i292, align 4
  store i32 %98, i32* %b.addr.i293, align 4
  %99 = load i32* %a.addr.i292, align 4
  %100 = load i32* %b.addr.i293, align 4
  %101 = call i32 @llvm.dsp.storeo.16(i32 %99, i32 %100) #2
  store i32 %101, i32* %int_dst, align 4
  %102 = load i32* %int_a, align 4
  %103 = load i32* %int_b, align 4
  store i32 %102, i32* %a.addr.i290, align 4
  store i32 %103, i32* %b.addr.i291, align 4
  %104 = load i32* %a.addr.i290, align 4
  %105 = load i32* %b.addr.i291, align 4
  %106 = call i32 @llvm.dsp.storeo.32(i32 %104, i32 %105) #2
  store i32 %106, i32* %int_dst, align 4
  %107 = load <256 x i8>* %dspvi8_a, align 256
  %108 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %107, <256 x i8>* %a.addr.i288, align 256
  store <256 x i8> %108, <256 x i8>* %b.addr.i289, align 256
  %109 = load <256 x i8>* %a.addr.i288, align 256
  %110 = load <256 x i8>* %b.addr.i289, align 256
  %111 = call <256 x i8> @llvm.dsp.veq.10(<256 x i8> %109, <256 x i8> %110) #2
  store <256 x i8> %111, <256 x i8>* %dspvi8_dst, align 256
  %112 = load <128 x i16>* %dspvi16_a, align 256
  %113 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %112, <128 x i16>* %a.addr.i286, align 256
  store <128 x i16> %113, <128 x i16>* %b.addr.i287, align 256
  %114 = load <128 x i16>* %a.addr.i286, align 256
  %115 = load <128 x i16>* %b.addr.i287, align 256
  %116 = call <128 x i16> @llvm.dsp.veq.20(<128 x i16> %114, <128 x i16> %115) #2
  store <128 x i16> %116, <128 x i16>* %dspvi16_dst, align 256
  %117 = load <64 x i32>* %dspvi32_a, align 256
  %118 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %117, <64 x i32>* %a.addr.i284, align 256
  store <64 x i32> %118, <64 x i32>* %b.addr.i285, align 256
  %119 = load <64 x i32>* %a.addr.i284, align 256
  %120 = load <64 x i32>* %b.addr.i285, align 256
  %121 = call <64 x i32> @llvm.dsp.veq.40(<64 x i32> %119, <64 x i32> %120) #2
  store <64 x i32> %121, <64 x i32>* %dspvi32_dst, align 256
  %122 = load <256 x i8>* %dspvi8_a, align 256
  %123 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %122, <256 x i8>* %a.addr.i282, align 256
  store <256 x i8> %123, <256 x i8>* %b.addr.i283, align 256
  %124 = load <256 x i8>* %a.addr.i282, align 256
  %125 = load <256 x i8>* %b.addr.i283, align 256
  %126 = call <256 x i8> @llvm.dsp.vgt.10(<256 x i8> %124, <256 x i8> %125) #2
  store <256 x i8> %126, <256 x i8>* %dspvi8_dst, align 256
  %127 = load <128 x i16>* %dspvi16_a, align 256
  %128 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %127, <128 x i16>* %a.addr.i280, align 256
  store <128 x i16> %128, <128 x i16>* %b.addr.i281, align 256
  %129 = load <128 x i16>* %a.addr.i280, align 256
  %130 = load <128 x i16>* %b.addr.i281, align 256
  %131 = call <128 x i16> @llvm.dsp.vgt.20(<128 x i16> %129, <128 x i16> %130) #2
  store <128 x i16> %131, <128 x i16>* %dspvi16_dst, align 256
  %132 = load <64 x i32>* %dspvi32_a, align 256
  %133 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %132, <64 x i32>* %a.addr.i278, align 256
  store <64 x i32> %133, <64 x i32>* %b.addr.i279, align 256
  %134 = load <64 x i32>* %a.addr.i278, align 256
  %135 = load <64 x i32>* %b.addr.i279, align 256
  %136 = call <64 x i32> @llvm.dsp.vgt.40(<64 x i32> %134, <64 x i32> %135) #2
  store <64 x i32> %136, <64 x i32>* %dspvi32_dst, align 256
  %137 = load <256 x i8>* %dspvi8_a, align 256
  %138 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %137, <256 x i8>* %a.addr.i276, align 256
  store <256 x i8> %138, <256 x i8>* %b.addr.i277, align 256
  %139 = load <256 x i8>* %a.addr.i276, align 256
  %140 = load <256 x i8>* %b.addr.i277, align 256
  %141 = call <256 x i8> @llvm.dsp.vlt.10(<256 x i8> %139, <256 x i8> %140) #2
  store <256 x i8> %141, <256 x i8>* %dspvi8_dst, align 256
  %142 = load <128 x i16>* %dspvi16_a, align 256
  %143 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %142, <128 x i16>* %a.addr.i274, align 256
  store <128 x i16> %143, <128 x i16>* %b.addr.i275, align 256
  %144 = load <128 x i16>* %a.addr.i274, align 256
  %145 = load <128 x i16>* %b.addr.i275, align 256
  %146 = call <128 x i16> @llvm.dsp.vlt.20(<128 x i16> %144, <128 x i16> %145) #2
  store <128 x i16> %146, <128 x i16>* %dspvi16_dst, align 256
  %147 = load <64 x i32>* %dspvi32_a, align 256
  %148 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %147, <64 x i32>* %a.addr.i272, align 256
  store <64 x i32> %148, <64 x i32>* %b.addr.i273, align 256
  %149 = load <64 x i32>* %a.addr.i272, align 256
  %150 = load <64 x i32>* %b.addr.i273, align 256
  %151 = call <64 x i32> @llvm.dsp.vlt.40(<64 x i32> %149, <64 x i32> %150) #2
  store <64 x i32> %151, <64 x i32>* %dspvi32_dst, align 256
  %152 = load <256 x i8>* %dspvi8_a, align 256
  %153 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %152, <256 x i8>* %a.addr.i270, align 256
  store <256 x i8> %153, <256 x i8>* %b.addr.i271, align 256
  %154 = load <256 x i8>* %a.addr.i270, align 256
  %155 = load <256 x i8>* %b.addr.i271, align 256
  %156 = call <256 x i8> @llvm.dsp.vge.10(<256 x i8> %154, <256 x i8> %155) #2
  store <256 x i8> %156, <256 x i8>* %dspvi8_dst, align 256
  %157 = load <128 x i16>* %dspvi16_a, align 256
  %158 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %157, <128 x i16>* %a.addr.i268, align 256
  store <128 x i16> %158, <128 x i16>* %b.addr.i269, align 256
  %159 = load <128 x i16>* %a.addr.i268, align 256
  %160 = load <128 x i16>* %b.addr.i269, align 256
  %161 = call <128 x i16> @llvm.dsp.vge.20(<128 x i16> %159, <128 x i16> %160) #2
  store <128 x i16> %161, <128 x i16>* %dspvi16_dst, align 256
  %162 = load <64 x i32>* %dspvi32_a, align 256
  %163 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %162, <64 x i32>* %a.addr.i266, align 256
  store <64 x i32> %163, <64 x i32>* %b.addr.i267, align 256
  %164 = load <64 x i32>* %a.addr.i266, align 256
  %165 = load <64 x i32>* %b.addr.i267, align 256
  %166 = call <64 x i32> @llvm.dsp.vge.40(<64 x i32> %164, <64 x i32> %165) #2
  store <64 x i32> %166, <64 x i32>* %dspvi32_dst, align 256
  %167 = load <256 x i8>* %dspvi8_a, align 256
  %168 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %167, <256 x i8>* %a.addr.i264, align 256
  store <256 x i8> %168, <256 x i8>* %b.addr.i265, align 256
  %169 = load <256 x i8>* %a.addr.i264, align 256
  %170 = load <256 x i8>* %b.addr.i265, align 256
  %171 = call <256 x i8> @llvm.dsp.vle.10(<256 x i8> %169, <256 x i8> %170) #2
  store <256 x i8> %171, <256 x i8>* %dspvi8_dst, align 256
  %172 = load <128 x i16>* %dspvi16_a, align 256
  %173 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %172, <128 x i16>* %a.addr.i262, align 256
  store <128 x i16> %173, <128 x i16>* %b.addr.i263, align 256
  %174 = load <128 x i16>* %a.addr.i262, align 256
  %175 = load <128 x i16>* %b.addr.i263, align 256
  %176 = call <128 x i16> @llvm.dsp.vle.20(<128 x i16> %174, <128 x i16> %175) #2
  store <128 x i16> %176, <128 x i16>* %dspvi16_dst, align 256
  %177 = load <64 x i32>* %dspvi32_a, align 256
  %178 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %177, <64 x i32>* %a.addr.i260, align 256
  store <64 x i32> %178, <64 x i32>* %b.addr.i261, align 256
  %179 = load <64 x i32>* %a.addr.i260, align 256
  %180 = load <64 x i32>* %b.addr.i261, align 256
  %181 = call <64 x i32> @llvm.dsp.vle.40(<64 x i32> %179, <64 x i32> %180) #2
  store <64 x i32> %181, <64 x i32>* %dspvi32_dst, align 256
  %182 = load <256 x i8>* %dspvi8_a, align 256
  %183 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %182, <256 x i8>* %a.addr.i258, align 256
  store <256 x i8> %183, <256 x i8>* %b.addr.i259, align 256
  %184 = load <256 x i8>* %a.addr.i258, align 256
  %185 = load <256 x i8>* %b.addr.i259, align 256
  %186 = call <256 x i8> @llvm.dsp.vadd.10(<256 x i8> %184, <256 x i8> %185) #2
  store <256 x i8> %186, <256 x i8>* %dspvi8_dst, align 256
  %187 = load <128 x i16>* %dspvi16_a, align 256
  %188 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %187, <128 x i16>* %a.addr.i256, align 256
  store <128 x i16> %188, <128 x i16>* %b.addr.i257, align 256
  %189 = load <128 x i16>* %a.addr.i256, align 256
  %190 = load <128 x i16>* %b.addr.i257, align 256
  %191 = call <128 x i16> @llvm.dsp.vadd.20(<128 x i16> %189, <128 x i16> %190) #2
  store <128 x i16> %191, <128 x i16>* %dspvi16_dst, align 256
  %192 = load <64 x i32>* %dspvi32_a, align 256
  %193 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %192, <64 x i32>* %a.addr.i254, align 256
  store <64 x i32> %193, <64 x i32>* %b.addr.i255, align 256
  %194 = load <64 x i32>* %a.addr.i254, align 256
  %195 = load <64 x i32>* %b.addr.i255, align 256
  %196 = call <64 x i32> @llvm.dsp.vadd.40(<64 x i32> %194, <64 x i32> %195) #2
  store <64 x i32> %196, <64 x i32>* %dspvi32_dst, align 256
  %197 = load <256 x i8>* %dspvi8_a, align 256
  %198 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %197, <256 x i8>* %a.addr.i252, align 256
  store <256 x i8> %198, <256 x i8>* %b.addr.i253, align 256
  %199 = load <256 x i8>* %a.addr.i252, align 256
  %200 = load <256 x i8>* %b.addr.i253, align 256
  %201 = call <256 x i8> @llvm.dsp.vsub.10(<256 x i8> %199, <256 x i8> %200) #2
  store <256 x i8> %201, <256 x i8>* %dspvi8_dst, align 256
  %202 = load <128 x i16>* %dspvi16_a, align 256
  %203 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %202, <128 x i16>* %a.addr.i250, align 256
  store <128 x i16> %203, <128 x i16>* %b.addr.i251, align 256
  %204 = load <128 x i16>* %a.addr.i250, align 256
  %205 = load <128 x i16>* %b.addr.i251, align 256
  %206 = call <128 x i16> @llvm.dsp.vsub.20(<128 x i16> %204, <128 x i16> %205) #2
  store <128 x i16> %206, <128 x i16>* %dspvi16_dst, align 256
  %207 = load <64 x i32>* %dspvi32_a, align 256
  %208 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %207, <64 x i32>* %a.addr.i248, align 256
  store <64 x i32> %208, <64 x i32>* %b.addr.i249, align 256
  %209 = load <64 x i32>* %a.addr.i248, align 256
  %210 = load <64 x i32>* %b.addr.i249, align 256
  %211 = call <64 x i32> @llvm.dsp.vsub.40(<64 x i32> %209, <64 x i32> %210) #2
  store <64 x i32> %211, <64 x i32>* %dspvi32_dst, align 256
  %212 = load <256 x i8>* %dspvi8_a, align 256
  %213 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %212, <256 x i8>* %a.addr.i246, align 256
  store <256 x i8> %213, <256 x i8>* %b.addr.i247, align 256
  %214 = load <256 x i8>* %a.addr.i246, align 256
  %215 = load <256 x i8>* %b.addr.i247, align 256
  %216 = call <256 x i8> @llvm.dsp.vsl.10(<256 x i8> %214, <256 x i8> %215) #2
  store <256 x i8> %216, <256 x i8>* %dspvi8_dst, align 256
  %217 = load <128 x i16>* %dspvi16_a, align 256
  %218 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %217, <128 x i16>* %a.addr.i244, align 256
  store <128 x i16> %218, <128 x i16>* %b.addr.i245, align 256
  %219 = load <128 x i16>* %a.addr.i244, align 256
  %220 = load <128 x i16>* %b.addr.i245, align 256
  %221 = call <128 x i16> @llvm.dsp.vsl.20(<128 x i16> %219, <128 x i16> %220) #2
  store <128 x i16> %221, <128 x i16>* %dspvi16_dst, align 256
  %222 = load <64 x i32>* %dspvi32_a, align 256
  %223 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %222, <64 x i32>* %a.addr.i242, align 256
  store <64 x i32> %223, <64 x i32>* %b.addr.i243, align 256
  %224 = load <64 x i32>* %a.addr.i242, align 256
  %225 = load <64 x i32>* %b.addr.i243, align 256
  %226 = call <64 x i32> @llvm.dsp.vsl.40(<64 x i32> %224, <64 x i32> %225) #2
  store <64 x i32> %226, <64 x i32>* %dspvi32_dst, align 256
  %227 = load <256 x i8>* %dspvi8_a, align 256
  %228 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %227, <256 x i8>* %a.addr.i240, align 256
  store <256 x i8> %228, <256 x i8>* %b.addr.i241, align 256
  %229 = load <256 x i8>* %a.addr.i240, align 256
  %230 = load <256 x i8>* %b.addr.i241, align 256
  %231 = call <256 x i8> @llvm.dsp.vsls.10(<256 x i8> %229, <256 x i8> %230) #2
  store <256 x i8> %231, <256 x i8>* %dspvi8_dst, align 256
  %232 = load <128 x i16>* %dspvi16_a, align 256
  %233 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %232, <128 x i16>* %a.addr.i238, align 256
  store <128 x i16> %233, <128 x i16>* %b.addr.i239, align 256
  %234 = load <128 x i16>* %a.addr.i238, align 256
  %235 = load <128 x i16>* %b.addr.i239, align 256
  %236 = call <128 x i16> @llvm.dsp.vsls.20(<128 x i16> %234, <128 x i16> %235) #2
  store <128 x i16> %236, <128 x i16>* %dspvi16_dst, align 256
  %237 = load <64 x i32>* %dspvi32_a, align 256
  %238 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %237, <64 x i32>* %a.addr.i236, align 256
  store <64 x i32> %238, <64 x i32>* %b.addr.i237, align 256
  %239 = load <64 x i32>* %a.addr.i236, align 256
  %240 = load <64 x i32>* %b.addr.i237, align 256
  %241 = call <64 x i32> @llvm.dsp.vsls.40(<64 x i32> %239, <64 x i32> %240) #2
  store <64 x i32> %241, <64 x i32>* %dspvi32_dst, align 256
  %242 = load <256 x i8>* %dspvi8_a, align 256
  %243 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %242, <256 x i8>* %a.addr.i234, align 256
  store <256 x i8> %243, <256 x i8>* %b.addr.i235, align 256
  %244 = load <256 x i8>* %a.addr.i234, align 256
  %245 = load <256 x i8>* %b.addr.i235, align 256
  %246 = call <256 x i8> @llvm.dsp.vsra.10(<256 x i8> %244, <256 x i8> %245) #2
  store <256 x i8> %246, <256 x i8>* %dspvi8_dst, align 256
  %247 = load <128 x i16>* %dspvi16_a, align 256
  %248 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %247, <128 x i16>* %a.addr.i232, align 256
  store <128 x i16> %248, <128 x i16>* %b.addr.i233, align 256
  %249 = load <128 x i16>* %a.addr.i232, align 256
  %250 = load <128 x i16>* %b.addr.i233, align 256
  %251 = call <128 x i16> @llvm.dsp.vsra.20(<128 x i16> %249, <128 x i16> %250) #2
  store <128 x i16> %251, <128 x i16>* %dspvi16_dst, align 256
  %252 = load <64 x i32>* %dspvi32_a, align 256
  %253 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %252, <64 x i32>* %a.addr.i230, align 256
  store <64 x i32> %253, <64 x i32>* %b.addr.i231, align 256
  %254 = load <64 x i32>* %a.addr.i230, align 256
  %255 = load <64 x i32>* %b.addr.i231, align 256
  %256 = call <64 x i32> @llvm.dsp.vsra.40(<64 x i32> %254, <64 x i32> %255) #2
  store <64 x i32> %256, <64 x i32>* %dspvi32_dst, align 256
  %257 = load <256 x i8>* %dspvi8_a, align 256
  %258 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %257, <256 x i8>* %a.addr.i228, align 256
  store <256 x i8> %258, <256 x i8>* %b.addr.i229, align 256
  %259 = load <256 x i8>* %a.addr.i228, align 256
  %260 = load <256 x i8>* %b.addr.i229, align 256
  %261 = call <256 x i8> @llvm.dsp.vsrl.10(<256 x i8> %259, <256 x i8> %260) #2
  store <256 x i8> %261, <256 x i8>* %dspvi8_dst, align 256
  %262 = load <128 x i16>* %dspvi16_a, align 256
  %263 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %262, <128 x i16>* %a.addr.i226, align 256
  store <128 x i16> %263, <128 x i16>* %b.addr.i227, align 256
  %264 = load <128 x i16>* %a.addr.i226, align 256
  %265 = load <128 x i16>* %b.addr.i227, align 256
  %266 = call <128 x i16> @llvm.dsp.vsrl.20(<128 x i16> %264, <128 x i16> %265) #2
  store <128 x i16> %266, <128 x i16>* %dspvi16_dst, align 256
  %267 = load <64 x i32>* %dspvi32_a, align 256
  %268 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %267, <64 x i32>* %a.addr.i224, align 256
  store <64 x i32> %268, <64 x i32>* %b.addr.i225, align 256
  %269 = load <64 x i32>* %a.addr.i224, align 256
  %270 = load <64 x i32>* %b.addr.i225, align 256
  %271 = call <64 x i32> @llvm.dsp.vsrl.40(<64 x i32> %269, <64 x i32> %270) #2
  store <64 x i32> %271, <64 x i32>* %dspvi32_dst, align 256
  %272 = load <256 x i8>* %dspvi8_a, align 256
  store <256 x i8> %272, <256 x i8>* %a.addr.i223, align 256
  %273 = load <256 x i8>* %a.addr.i223, align 256
  %274 = call <256 x i8> @llvm.dsp.vabs.10(<256 x i8> %273) #2
  store <256 x i8> %274, <256 x i8>* %dspvi8_dst, align 256
  %275 = load <128 x i16>* %dspvi16_a, align 256
  store <128 x i16> %275, <128 x i16>* %a.addr.i222, align 256
  %276 = load <128 x i16>* %a.addr.i222, align 256
  %277 = call <128 x i16> @llvm.dsp.vabs.20(<128 x i16> %276) #2
  store <128 x i16> %277, <128 x i16>* %dspvi16_dst, align 256
  %278 = load <64 x i32>* %dspvi32_a, align 256
  store <64 x i32> %278, <64 x i32>* %a.addr.i221, align 256
  %279 = load <64 x i32>* %a.addr.i221, align 256
  %280 = call <64 x i32> @llvm.dsp.vabs.40(<64 x i32> %279) #2
  store <64 x i32> %280, <64 x i32>* %dspvi32_dst, align 256
  %281 = load <256 x i8>* %dspvi8_a, align 256
  %282 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %281, <256 x i8>* %a.addr.i219, align 256
  store <256 x i8> %282, <256 x i8>* %b.addr.i220, align 256
  %283 = load <256 x i8>* %a.addr.i219, align 256
  %284 = load <256 x i8>* %b.addr.i220, align 256
  %285 = call <256 x i8> @llvm.dsp.vfmul.10(<256 x i8> %283, <256 x i8> %284) #2
  store <256 x i8> %285, <256 x i8>* %dspvi8_dst, align 256
  %286 = load <128 x i16>* %dspvi16_a, align 256
  %287 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %286, <128 x i16>* %a.addr.i217, align 256
  store <128 x i16> %287, <128 x i16>* %b.addr.i218, align 256
  %288 = load <128 x i16>* %a.addr.i217, align 256
  %289 = load <128 x i16>* %b.addr.i218, align 256
  %290 = call <128 x i16> @llvm.dsp.vfmul.20(<128 x i16> %288, <128 x i16> %289) #2
  store <128 x i16> %290, <128 x i16>* %dspvi16_dst, align 256
  %291 = load <64 x i32>* %dspvi32_a, align 256
  %292 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %291, <64 x i32>* %a.addr.i215, align 256
  store <64 x i32> %292, <64 x i32>* %b.addr.i216, align 256
  %293 = load <64 x i32>* %a.addr.i215, align 256
  %294 = load <64 x i32>* %b.addr.i216, align 256
  %295 = call <64 x i32> @llvm.dsp.vfmul.40(<64 x i32> %293, <64 x i32> %294) #2
  store <64 x i32> %295, <64 x i32>* %dspvi32_dst, align 256
  %296 = load <256 x i8>* %dspvi8_a, align 256
  %297 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %296, <256 x i8>* %a.addr.i213, align 256
  store <256 x i8> %297, <256 x i8>* %b.addr.i214, align 256
  %298 = load <256 x i8>* %a.addr.i213, align 256
  %299 = load <256 x i8>* %b.addr.i214, align 256
  %300 = call <256 x i8> @llvm.dsp.vfmac.10(<256 x i8> %298, <256 x i8> %299) #2
  store <256 x i8> %300, <256 x i8>* %dspvi8_dst, align 256
  %301 = load <128 x i16>* %dspvi16_a, align 256
  %302 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %301, <128 x i16>* %a.addr.i211, align 256
  store <128 x i16> %302, <128 x i16>* %b.addr.i212, align 256
  %303 = load <128 x i16>* %a.addr.i211, align 256
  %304 = load <128 x i16>* %b.addr.i212, align 256
  %305 = call <128 x i16> @llvm.dsp.vfmac.20(<128 x i16> %303, <128 x i16> %304) #2
  store <128 x i16> %305, <128 x i16>* %dspvi16_dst, align 256
  %306 = load <64 x i32>* %dspvi32_a, align 256
  %307 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %306, <64 x i32>* %a.addr.i209, align 256
  store <64 x i32> %307, <64 x i32>* %b.addr.i210, align 256
  %308 = load <64 x i32>* %a.addr.i209, align 256
  %309 = load <64 x i32>* %b.addr.i210, align 256
  %310 = call <64 x i32> @llvm.dsp.vfmac.40(<64 x i32> %308, <64 x i32> %309) #2
  store <64 x i32> %310, <64 x i32>* %dspvi32_dst, align 256
  %311 = load <256 x i8>* %dspvi8_a, align 256
  %312 = load <256 x i8>* %dspvi8_b, align 256
  store <256 x i8> %311, <256 x i8>* %a.addr.i207, align 256
  store <256 x i8> %312, <256 x i8>* %b.addr.i208, align 256
  %313 = load <256 x i8>* %a.addr.i207, align 256
  %314 = load <256 x i8>* %b.addr.i208, align 256
  %315 = call <256 x i8> @llvm.dsp.vcmac.10(<256 x i8> %313, <256 x i8> %314) #2
  store <256 x i8> %315, <256 x i8>* %dspvi8_dst, align 256
  %316 = load <128 x i16>* %dspvi16_a, align 256
  %317 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %316, <128 x i16>* %a.addr.i205, align 256
  store <128 x i16> %317, <128 x i16>* %b.addr.i206, align 256
  %318 = load <128 x i16>* %a.addr.i205, align 256
  %319 = load <128 x i16>* %b.addr.i206, align 256
  %320 = call <128 x i16> @llvm.dsp.vcmac.20(<128 x i16> %318, <128 x i16> %319) #2
  store <128 x i16> %320, <128 x i16>* %dspvi16_dst, align 256
  %321 = load <128 x i16>* %dspvi16_a, align 256
  %322 = load <128 x i16>* %dspvi16_b, align 256
  store <128 x i16> %321, <128 x i16>* %a.addr.i203, align 256
  store <128 x i16> %322, <128 x i16>* %b.addr.i204, align 256
  %323 = load <128 x i16>* %a.addr.i203, align 256
  %324 = load <128 x i16>* %b.addr.i204, align 256
  %325 = call <128 x i16> @llvm.dsp.vcmul.20(<128 x i16> %323, <128 x i16> %324) #2
  store <128 x i16> %325, <128 x i16>* %dspvi16_dst, align 256
  %326 = load <64 x i32>* %dspvi32_a, align 256
  %327 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %326, <64 x i32>* %a.addr.i201, align 256
  store <64 x i32> %327, <64 x i32>* %b.addr.i202, align 256
  %328 = load <64 x i32>* %a.addr.i201, align 256
  %329 = load <64 x i32>* %b.addr.i202, align 256
  %330 = call <64 x i32> @llvm.dsp.vcmulr.40(<64 x i32> %328, <64 x i32> %329) #2
  store <64 x i32> %330, <64 x i32>* %dspvi32_dst, align 256
  %331 = load <64 x i32>* %dspvi32_a, align 256
  %332 = load <64 x i32>* %dspvi32_b, align 256
  store <64 x i32> %331, <64 x i32>* %a.addr.i199, align 256
  store <64 x i32> %332, <64 x i32>* %b.addr.i200, align 256
  %333 = load <64 x i32>* %a.addr.i199, align 256
  %334 = load <64 x i32>* %b.addr.i200, align 256
  %335 = call <64 x i32> @llvm.dsp.vcmuli.40(<64 x i32> %333, <64 x i32> %334) #2
  store <64 x i32> %335, <64 x i32>* %dspvi32_dst, align 256
  %336 = load i32* %int_a, align 4
  %337 = load i32* %int_b, align 4
  store i32 %336, i32* %a.addr.i197, align 4
  store i32 %337, i32* %b.addr.i198, align 4
  %338 = load i32* %a.addr.i197, align 4
  %339 = load i32* %b.addr.i198, align 4
  %340 = call <256 x i8> @llvm.dsp.vloadr.8(i32 %338, i32 %339) #2
  store <256 x i8> %340, <256 x i8>* %dspvi8_dst, align 256
  %341 = load i32* %int_a, align 4
  %342 = load i32* %int_b, align 4
  store i32 %341, i32* %a.addr.i195, align 4
  store i32 %342, i32* %b.addr.i196, align 4
  %343 = load i32* %a.addr.i195, align 4
  %344 = load i32* %b.addr.i196, align 4
  %345 = call <128 x i16> @llvm.dsp.vloadr.16(i32 %343, i32 %344) #2
  store <128 x i16> %345, <128 x i16>* %dspvi16_dst, align 256
  %346 = load i32* %int_a, align 4
  %347 = load i32* %int_b, align 4
  store i32 %346, i32* %a.addr.i193, align 4
  store i32 %347, i32* %b.addr.i194, align 4
  %348 = load i32* %a.addr.i193, align 4
  %349 = load i32* %b.addr.i194, align 4
  %350 = call <64 x i32> @llvm.dsp.vloadr.32(i32 %348, i32 %349) #2
  store <64 x i32> %350, <64 x i32>* %dspvi32_dst, align 256
  %351 = load i32* %int_a, align 4
  %352 = load i32* %int_b, align 4
  store i32 %351, i32* %a.addr.i191, align 4
  store i32 %352, i32* %b.addr.i192, align 4
  %353 = load i32* %a.addr.i191, align 4
  %354 = load i32* %b.addr.i192, align 4
  %355 = call <256 x i8> @llvm.dsp.vloadu.8(i32 %353, i32 %354) #2
  store <256 x i8> %355, <256 x i8>* %dspvi8_dst, align 256
  %356 = load i32* %int_a, align 4
  %357 = load i32* %int_b, align 4
  store i32 %356, i32* %a.addr.i189, align 4
  store i32 %357, i32* %b.addr.i190, align 4
  %358 = load i32* %a.addr.i189, align 4
  %359 = load i32* %b.addr.i190, align 4
  %360 = call <128 x i16> @llvm.dsp.vloadu.16(i32 %358, i32 %359) #2
  store <128 x i16> %360, <128 x i16>* %dspvi16_dst, align 256
  %361 = load i32* %int_a, align 4
  %362 = load i32* %int_b, align 4
  store i32 %361, i32* %a.addr.i187, align 4
  store i32 %362, i32* %b.addr.i188, align 4
  %363 = load i32* %a.addr.i187, align 4
  %364 = load i32* %b.addr.i188, align 4
  %365 = call <64 x i32> @llvm.dsp.vloadu.32(i32 %363, i32 %364) #2
  store <64 x i32> %365, <64 x i32>* %dspvi32_dst, align 256
  %366 = load i32* %int_a, align 4
  %367 = load i32* %int_b, align 4
  store i32 %366, i32* %a.addr.i185, align 4
  store i32 %367, i32* %b.addr.i186, align 4
  %368 = load i32* %a.addr.i185, align 4
  %369 = load i32* %b.addr.i186, align 4
  %370 = call <256 x i8> @llvm.dsp.vloadur.8(i32 %368, i32 %369) #2
  store <256 x i8> %370, <256 x i8>* %dspvi8_dst, align 256
  %371 = load i32* %int_a, align 4
  %372 = load i32* %int_b, align 4
  store i32 %371, i32* %a.addr.i183, align 4
  store i32 %372, i32* %b.addr.i184, align 4
  %373 = load i32* %a.addr.i183, align 4
  %374 = load i32* %b.addr.i184, align 4
  %375 = call <128 x i16> @llvm.dsp.vloadur.16(i32 %373, i32 %374) #2
  store <128 x i16> %375, <128 x i16>* %dspvi16_dst, align 256
  %376 = load i32* %int_a, align 4
  %377 = load i32* %int_b, align 4
  store i32 %376, i32* %a.addr.i181, align 4
  store i32 %377, i32* %b.addr.i182, align 4
  %378 = load i32* %a.addr.i181, align 4
  %379 = load i32* %b.addr.i182, align 4
  %380 = call <64 x i32> @llvm.dsp.vloadur.32(i32 %378, i32 %379) #2
  store <64 x i32> %380, <64 x i32>* %dspvi32_dst, align 256
  %381 = load i32* %int_a, align 4
  %382 = load i32* %int_b, align 4
  store i32 %381, i32* %a.addr.i179, align 4
  store i32 %382, i32* %b.addr.i180, align 4
  %383 = load i32* %a.addr.i179, align 4
  %384 = load i32* %b.addr.i180, align 4
  %385 = call <256 x i8> @llvm.dsp.storeu.10(i32 %383, i32 %384) #2
  store <256 x i8> %385, <256 x i8>* %dspvi8_dst, align 256
  %386 = load i32* %int_a, align 4
  %387 = load i32* %int_b, align 4
  store i32 %386, i32* %a.addr.i177, align 4
  store i32 %387, i32* %b.addr.i178, align 4
  %388 = load i32* %a.addr.i177, align 4
  %389 = load i32* %b.addr.i178, align 4
  %390 = call <128 x i16> @llvm.dsp.storeu.20(i32 %388, i32 %389) #2
  store <128 x i16> %390, <128 x i16>* %dspvi16_dst, align 256
  %391 = load i32* %int_a, align 4
  %392 = load i32* %int_b, align 4
  store i32 %391, i32* %a.addr.i175, align 4
  store i32 %392, i32* %b.addr.i176, align 4
  %393 = load i32* %a.addr.i175, align 4
  %394 = load i32* %b.addr.i176, align 4
  %395 = call <64 x i32> @llvm.dsp.storeu.40(i32 %393, i32 %394) #2
  store <64 x i32> %395, <64 x i32>* %dspvi32_dst, align 256
  %396 = load i32* %int_a, align 4
  %397 = load i32* %int_b, align 4
  %398 = load i32* %int_c, align 4
  store i32 %396, i32* %a.addr.i172, align 4
  store i32 %397, i32* %b.addr.i173, align 4
  store i32 %398, i32* %c.addr.i174, align 4
  %399 = load i32* %a.addr.i172, align 4
  %400 = load i32* %b.addr.i173, align 4
  %401 = load i32* %c.addr.i174, align 4
  call void @llvm.dsp.storeu.8(i32 %399, i32 %400, i32 %401) #2
  %402 = load i32* %int_a, align 4
  %403 = load i32* %int_b, align 4
  %404 = load i32* %int_c, align 4
  store i32 %402, i32* %a.addr.i169, align 4
  store i32 %403, i32* %b.addr.i170, align 4
  store i32 %404, i32* %c.addr.i171, align 4
  %405 = load i32* %a.addr.i169, align 4
  %406 = load i32* %b.addr.i170, align 4
  %407 = load i32* %c.addr.i171, align 4
  call void @llvm.dsp.storeu.16(i32 %405, i32 %406, i32 %407) #2
  %408 = load i32* %int_a, align 4
  %409 = load i32* %int_b, align 4
  %410 = load i32* %int_c, align 4
  store i32 %408, i32* %a.addr.i166, align 4
  store i32 %409, i32* %b.addr.i167, align 4
  store i32 %410, i32* %c.addr.i168, align 4
  %411 = load i32* %a.addr.i166, align 4
  %412 = load i32* %b.addr.i167, align 4
  %413 = load i32* %c.addr.i168, align 4
  call void @llvm.dsp.storeu.32(i32 %411, i32 %412, i32 %413) #2
  %414 = load i32* %int_a, align 4
  %415 = load i32* %int_b, align 4
  store i32 %414, i32* %a.addr.i164, align 4
  store i32 %415, i32* %b.addr.i165, align 4
  %416 = load i32* %a.addr.i164, align 4
  %417 = load i32* %b.addr.i165, align 4
  %418 = call <256 x i8> @llvm.dsp.vstoreu.10(i32 %416, i32 %417) #2
  store <256 x i8> %418, <256 x i8>* %dspvi8_dst, align 256
  %419 = load i32* %int_a, align 4
  %420 = load i32* %int_b, align 4
  store i32 %419, i32* %a.addr.i162, align 4
  store i32 %420, i32* %b.addr.i163, align 4
  %421 = load i32* %a.addr.i162, align 4
  %422 = load i32* %b.addr.i163, align 4
  %423 = call <128 x i16> @llvm.dsp.vstoreu.20(i32 %421, i32 %422) #2
  store <128 x i16> %423, <128 x i16>* %dspvi16_dst, align 256
  %424 = load i32* %int_a, align 4
  %425 = load i32* %int_b, align 4
  store i32 %424, i32* %a.addr.i160, align 4
  store i32 %425, i32* %b.addr.i161, align 4
  %426 = load i32* %a.addr.i160, align 4
  %427 = load i32* %b.addr.i161, align 4
  %428 = call <64 x i32> @llvm.dsp.vstoreu.40(i32 %426, i32 %427) #2
  store <64 x i32> %428, <64 x i32>* %dspvi32_dst, align 256
  %429 = load i32* %int_a, align 4
  %430 = load i32* %int_b, align 4
  store i32 %429, i32* %a.addr.i158, align 4
  store i32 %430, i32* %b.addr.i159, align 4
  %431 = load i32* %a.addr.i158, align 4
  %432 = load i32* %b.addr.i159, align 4
  %433 = call <64 x i32> @llvm.dsp.loadvh(i32 %431, i32 %432) #2
  store <64 x i32> %433, <64 x i32>* %dspvi32_dst, align 256
  %434 = load i32* %int_a, align 4
  %435 = load i32* %int_b, align 4
  store i32 %434, i32* %a.addr.i156, align 4
  store i32 %435, i32* %b.addr.i157, align 4
  %436 = load i32* %a.addr.i156, align 4
  %437 = load i32* %b.addr.i157, align 4
  %438 = call <64 x i32> @llvm.dsp.loadvl(i32 %436, i32 %437) #2
  store <64 x i32> %438, <64 x i32>* %dspvi32_dst, align 256
  %439 = load i32* %int_a, align 4
  %440 = load i32* %int_b, align 4
  store i32 %439, i32* %a.addr.i154, align 4
  store i32 %440, i32* %b.addr.i155, align 4
  %441 = load i32* %a.addr.i154, align 4
  %442 = load i32* %b.addr.i155, align 4
  %443 = call <64 x i32> @llvm.dsp.storevh(i32 %441, i32 %442) #2
  store <64 x i32> %443, <64 x i32>* %dspvi32_dst, align 256
  %444 = load i32* %int_a, align 4
  %445 = load i32* %int_b, align 4
  store i32 %444, i32* %a.addr.i152, align 4
  store i32 %445, i32* %b.addr.i153, align 4
  %446 = load i32* %a.addr.i152, align 4
  %447 = load i32* %b.addr.i153, align 4
  %448 = call <64 x i32> @llvm.dsp.storevl(i32 %446, i32 %447) #2
  store <64 x i32> %448, <64 x i32>* %dspvi32_dst, align 256
  %449 = load i32* %int_a, align 4
  %450 = load i32* %int_b, align 4
  store i32 %449, i32* %a.addr.i150, align 4
  store i32 %450, i32* %b.addr.i151, align 4
  %451 = load i32* %a.addr.i150, align 4
  %452 = load i32* %b.addr.i151, align 4
  %453 = call <64 x i32> @llvm.dsp.loaduvh(i32 %451, i32 %452) #2
  store <64 x i32> %453, <64 x i32>* %dspvi32_dst, align 256
  %454 = load i32* %int_a, align 4
  %455 = load i32* %int_b, align 4
  store i32 %454, i32* %a.addr.i148, align 4
  store i32 %455, i32* %b.addr.i149, align 4
  %456 = load i32* %a.addr.i148, align 4
  %457 = load i32* %b.addr.i149, align 4
  %458 = call <64 x i32> @llvm.dsp.loaduvl(i32 %456, i32 %457) #2
  store <64 x i32> %458, <64 x i32>* %dspvi32_dst, align 256
  %459 = load i32* %int_a, align 4
  %460 = load i32* %int_b, align 4
  store i32 %459, i32* %a.addr.i146, align 4
  store i32 %460, i32* %b.addr.i147, align 4
  %461 = load i32* %a.addr.i146, align 4
  %462 = load i32* %b.addr.i147, align 4
  %463 = call <64 x i32> @llvm.dsp.storeuvh(i32 %461, i32 %462) #2
  store <64 x i32> %463, <64 x i32>* %dspvi32_dst, align 256
  %464 = load i32* %int_a, align 4
  %465 = load i32* %int_b, align 4
  store i32 %464, i32* %a.addr.i144, align 4
  store i32 %465, i32* %b.addr.i145, align 4
  %466 = load i32* %a.addr.i144, align 4
  %467 = load i32* %b.addr.i145, align 4
  %468 = call <64 x i32> @llvm.dsp.storeuvl(i32 %466, i32 %467) #2
  store <64 x i32> %468, <64 x i32>* %dspvi32_dst, align 256
  %469 = load i32* %int_a, align 4
  %470 = load i32* %int_b, align 4
  store i32 %469, i32* %a.addr.i142, align 4
  store i32 %470, i32* %b.addr.i143, align 4
  %471 = load i32* %a.addr.i142, align 4
  %472 = load i32* %b.addr.i143, align 4
  %473 = call <256 x i8> @llvm.dsp.vloado.8(i32 %471, i32 %472) #2
  store <256 x i8> %473, <256 x i8>* %dspvi8_dst, align 256
  %474 = load i32* %int_a, align 4
  %475 = load i32* %int_b, align 4
  store i32 %474, i32* %a.addr.i140, align 4
  store i32 %475, i32* %b.addr.i141, align 4
  %476 = load i32* %a.addr.i140, align 4
  %477 = load i32* %b.addr.i141, align 4
  %478 = call <128 x i16> @llvm.dsp.vloado.16(i32 %476, i32 %477) #2
  store <128 x i16> %478, <128 x i16>* %dspvi16_dst, align 256
  %479 = load i32* %int_a, align 4
  %480 = load i32* %int_b, align 4
  store i32 %479, i32* %a.addr.i138, align 4
  store i32 %480, i32* %b.addr.i139, align 4
  %481 = load i32* %a.addr.i138, align 4
  %482 = load i32* %b.addr.i139, align 4
  %483 = call <64 x i32> @llvm.dsp.vloado.32(i32 %481, i32 %482) #2
  store <64 x i32> %483, <64 x i32>* %dspvi32_dst, align 256
  %484 = load i32* %int_a, align 4
  %485 = load i32* %int_b, align 4
  store i32 %484, i32* %a.addr.i136, align 4
  store i32 %485, i32* %b.addr.i137, align 4
  %486 = load i32* %a.addr.i136, align 4
  %487 = load i32* %b.addr.i137, align 4
  %488 = call <256 x i8> @llvm.dsp.vstoreo.10(i32 %486, i32 %487) #2
  store <256 x i8> %488, <256 x i8>* %dspvi8_dst, align 256
  %489 = load i32* %int_a, align 4
  %490 = load i32* %int_b, align 4
  store i32 %489, i32* %a.addr.i134, align 4
  store i32 %490, i32* %b.addr.i135, align 4
  %491 = load i32* %a.addr.i134, align 4
  %492 = load i32* %b.addr.i135, align 4
  %493 = call <128 x i16> @llvm.dsp.vstoreo.20(i32 %491, i32 %492) #2
  store <128 x i16> %493, <128 x i16>* %dspvi16_dst, align 256
  %494 = load i32* %int_a, align 4
  %495 = load i32* %int_b, align 4
  store i32 %494, i32* %a.addr.i132, align 4
  store i32 %495, i32* %b.addr.i133, align 4
  %496 = load i32* %a.addr.i132, align 4
  %497 = load i32* %b.addr.i133, align 4
  %498 = call <64 x i32> @llvm.dsp.vstoreo.40(i32 %496, i32 %497) #2
  store <64 x i32> %498, <64 x i32>* %dspvi32_dst, align 256
  %499 = load i32* %int_a, align 4
  store i32 %499, i32* %a.addr.i131, align 4
  %500 = load i32* %a.addr.i131, align 4
  %501 = call i32 @llvm.dsp.abs.qb(i32 %500) #2
  store i32 %501, i32* %int_dst, align 4
  %502 = load i32* %int_a, align 4
  store i32 %502, i32* %a.addr.i130, align 4
  %503 = load i32* %a.addr.i130, align 4
  %504 = call i32 @llvm.dsp.test.qb(i32 %503) #2
  store i32 %504, i32* %int_dst, align 4
  %505 = load i32* %int_a, align 4
  store i32 %505, i32* %a.addr.i129, align 4
  %506 = load i32* %a.addr.i129, align 4
  %507 = call i32 @llvm.dsp.testi.qb(i32 %506) #2
  store i32 %507, i32* %int_dst, align 4
  %508 = load i32* %int_a, align 4
  store i32 %508, i32* %a.addr.i128, align 4
  %509 = load i32* %a.addr.i128, align 4
  %510 = call i32 @llvm.dsp.cbw.qb(i32 %509) #2
  store i32 %510, i32* %int_dst, align 4
  %511 = load i32* %int_a, align 4
  store i32 %511, i32* %a.addr.i127, align 4
  %512 = load i32* %a.addr.i127, align 4
  %513 = call i32 @llvm.dsp.chw.qb(i32 %512) #2
  store i32 %513, i32* %int_dst, align 4
  %514 = load i32* %int_a, align 4
  %515 = load i32* %int_b, align 4
  %516 = load i32* %int_c, align 4
  store i32 %514, i32* %a.addr.i124, align 4
  store i32 %515, i32* %b.addr.i125, align 4
  store i32 %516, i32* %c.addr.i126, align 4
  %517 = load i32* %a.addr.i124, align 4
  %518 = load i32* %b.addr.i125, align 4
  %519 = load i32* %c.addr.i126, align 4
  %520 = call i32 @llvm.dsp.bfext.qb(i32 %517, i32 %518, i32 %519) #2
  store i32 %520, i32* %int_dst, align 4
  %521 = load i32* %int_a, align 4
  %522 = load i32* %int_b, align 4
  %523 = load i32* %int_c, align 4
  store i32 %521, i32* %a.addr.i121, align 4
  store i32 %522, i32* %b.addr.i122, align 4
  store i32 %523, i32* %c.addr.i123, align 4
  %524 = load i32* %a.addr.i121, align 4
  %525 = load i32* %b.addr.i122, align 4
  %526 = load i32* %c.addr.i123, align 4
  %527 = call i32 @llvm.dsp.bfextu.qb(i32 %524, i32 %525, i32 %526) #2
  store i32 %527, i32* %int_dst, align 4
  %528 = load i32* %int_a, align 4
  %529 = load i32* %int_b, align 4
  %530 = load i32* %int_c, align 4
  store i32 %528, i32* %a.addr.i119, align 4
  store i32 %529, i32* %b.addr.i120, align 4
  store i32 %530, i32* %c.addr.i, align 4
  %531 = load i32* %a.addr.i119, align 4
  %532 = load i32* %b.addr.i120, align 4
  %533 = load i32* %c.addr.i, align 4
  %534 = call i32 @llvm.dsp.bfst.qb(i32 %531, i32 %532, i32 %533) #2
  store i32 %534, i32* %int_dst, align 4
  %535 = load i32* %int_a, align 4
  store i32 %535, i32* %a.addr.i118, align 4
  %536 = load i32* %a.addr.i118, align 4
  %537 = call i32 @llvm.dsp.bst.qb(i32 %536) #2
  store i32 %537, i32* %int_dst, align 4
  %538 = load i32* %int_a, align 4
  store i32 %538, i32* %a.addr.i117, align 4
  %539 = load i32* %a.addr.i117, align 4
  %540 = call i32 @llvm.dsp.bclr.qb(i32 %539) #2
  store i32 %540, i32* %int_dst, align 4
  %541 = load i32* %int_a, align 4
  %542 = load i32* %int_b, align 4
  store i32 %541, i32* %a.addr.i115, align 4
  store i32 %542, i32* %b.addr.i116, align 4
  %543 = load i32* %a.addr.i115, align 4
  %544 = load i32* %b.addr.i116, align 4
  %545 = call i32 @llvm.dsp.max(i32 %543, i32 %544) #2
  store i32 %545, i32* %int_dst, align 4
  %546 = load i32* %int_a, align 4
  %547 = load i32* %int_b, align 4
  store i32 %546, i32* %a.addr.i113, align 4
  store i32 %547, i32* %b.addr.i114, align 4
  %548 = load i32* %a.addr.i113, align 4
  %549 = load i32* %b.addr.i114, align 4
  %550 = call i32 @llvm.dsp.min(i32 %548, i32 %549) #2
  store i32 %550, i32* %int_dst, align 4
  %551 = load i32* %int_a, align 4
  store i32 %551, i32* %a.addr.i112, align 4
  %552 = load i32* %a.addr.i112, align 4
  %553 = call i32 @llvm.dsp.not(i32 %552) #2
  store i32 %553, i32* %int_dst, align 4
>>>>>>> .r66
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.bst.qb(i32) #1

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @SIMD_Intrinsic_Testcase0()
  ret i32 0
}

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vmovg2v.10(i32) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vmovg2v.20(i32) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vmovg2v.40(i32) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.movv2v(<256 x i8>) #1

; Function Attrs: noreturn nounwind
declare void @llvm.dsp.movv2l(<256 x i8>) #2

; Function Attrs: noreturn nounwind
declare void @llvm.dsp.movl2v(<256 x i8>) #2

; Function Attrs: nounwind
<<<<<<< .mine
declare i32 @llvm.dsp.movv2g.10(<256 x i8>, i32) #3
||||||| .r57
declare i32 @llvm.dsp.test.qb(i32) #2
=======
declare i32 @llvm.dsp.bclr.qb(i32) #2
>>>>>>> .r66

; Function Attrs: nounwind
<<<<<<< .mine
declare i32 @llvm.dsp.movv2g.20(<128 x i16>, i32) #3
||||||| .r57
declare i32 @llvm.dsp.abs.qb(i32) #2
=======
declare i32 @llvm.dsp.bst.qb(i32) #2
>>>>>>> .r66

; Function Attrs: nounwind
<<<<<<< .mine
declare i32 @llvm.dsp.movv2g.40(<64 x i32>, i32) #3
||||||| .r57
declare i32 @llvm.dsp.chw.qb(i32) #2
=======
declare i32 @llvm.dsp.bfst.qb(i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.bfextu.qb(i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.bfext.qb(i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.chw.qb(i32) #2
>>>>>>> .r66

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.movg2v.10(i32, i32) #3

<<<<<<< .mine
; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.movg2v.20(i32, i32) #3

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.movg2v.40(i32, i32) #3

||||||| .r57
=======
; Function Attrs: nounwind
declare i32 @llvm.dsp.testi.qb(i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.test.qb(i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.abs.qb(i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.vstoreo.40(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.vstoreo.20(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.vstoreo.10(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.vloado.32(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.vloado.16(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.vloado.8(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.storeuvl(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.storeuvh(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.loaduvl(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.loaduvh(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.storevl(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.storevh(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.loadvl(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.loadvh(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.vstoreu.40(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.vstoreu.20(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.vstoreu.10(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.dsp.storeu.32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.dsp.storeu.16(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.dsp.storeu.8(i32, i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.storeu.40(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.storeu.20(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.storeu.10(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.vloadur.32(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.vloadur.16(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.vloadur.8(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.vloadu.32(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.vloadu.16(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.vloadu.8(i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.vloadr.32(i32, i32) #2

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.vloadr.16(i32, i32) #2

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.vloadr.8(i32, i32) #2

>>>>>>> .r66
; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.bclr.qb(i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.testi.qb(i32) #1

; Function Attrs: noreturn nounwind
declare void @llvm.dsp.storeu.32(i32, i32, i32) #2

; Function Attrs: noreturn nounwind
declare void @llvm.dsp.storeu.16(i32, i32, i32) #2

; Function Attrs: noreturn nounwind
declare void @llvm.dsp.storeu.8(i32, i32, i32) #2

; Function Attrs: nounwind
declare <64 x i32> @llvm.dsp.storeu.40(i32, i32) #3

; Function Attrs: nounwind
declare <128 x i16> @llvm.dsp.storeu.20(i32, i32) #3

; Function Attrs: nounwind
declare <256 x i8> @llvm.dsp.storeu.10(i32, i32) #3

; Function Attrs: nounwind
declare i32 @llvm.dsp.storeo.32(i32, i32) #3

; Function Attrs: nounwind
declare i32 @llvm.dsp.storeo.16(i32, i32) #3

; Function Attrs: nounwind
declare i32 @llvm.dsp.loado.32(i32, i32) #3

; Function Attrs: nounwind
declare i32 @llvm.dsp.loado.16(i32, i32) #3

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.32(i32, i32) #3

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.16(i32, i32) #3

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.8(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.not(i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.min(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.max(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.test.qb(i32) #1

; Function Attrs: nounwind
declare i32 @llvm.dsp.abs.qb(i32) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.chw.qb(i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.dsp.cbw.qb(i32) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vcmuli.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vcmulr.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vcmul.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vcmac.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vcmac.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vfmac.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vfmac.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vfmac.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vfmul.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vfmul.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vfmul.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vabs.40(<64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vabs.20(<128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vabs.10(<256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vsrl.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vsrl.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vsrl.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vsra.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vsra.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vsra.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vsls.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vsls.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vsls.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vsl.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vsl.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vsl.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vsub.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vsub.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vsub.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vadd.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vadd.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vadd.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vle.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vle.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vle.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vge.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vge.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vge.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vlt.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vlt.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vlt.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vgt.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vgt.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vgt.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.veq.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.veq.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
<<<<<<< .mine
||||||| .r57
declare <256 x i8> @llvm.dsp.veq.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vlth(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vltl(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
=======
declare <256 x i8> @llvm.dsp.veq.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind
declare i32 @llvm.dsp.storeo.32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.storeo.16(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loado.32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loado.16(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.16(i32, i32) #2

; Function Attrs: nounwind
declare i32 @llvm.dsp.loadu.8(i32, i32) #2

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vlth(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vltl(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
>>>>>>> .r66
declare <256 x i8> @llvm.dsp.vmovcv2v(<256 x i8>, i32) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vxor(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vor(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vand(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vnot(<256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vsum.40(<64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vlth(<128 x i16>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vltl(<128 x i16>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.veq.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vsum.20(<128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vsum.10(<256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vmin.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vmin.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vmin.10(<256 x i8>, <256 x i8>) #1

; Function Attrs: nounwind readnone
declare <64 x i32> @llvm.dsp.vmax.40(<64 x i32>, <64 x i32>) #1

; Function Attrs: nounwind readnone
declare <128 x i16> @llvm.dsp.vmax.20(<128 x i16>, <128 x i16>) #1

; Function Attrs: nounwind readnone
declare <256 x i8> @llvm.dsp.vmax.10(<256 x i8>, <256 x i8>) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
