
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(OBJ, G_OBJ0, G_OBJ1, G_OBJ2, G_OBJ3, G_OBJ4,
     >  G_OBJ5, X0, X1, X2, X3, X4, X5, H_OBJ0, H_OBJ1, H_OBJ2, H_OBJ3,
     >  H_OBJ4, H_OBJ5, H_OBJ6, H_OBJ7, H_OBJ8, H_OBJ9, H_OBJ10,
     >  H_OBJ11, H_OBJ12, H_OBJ13, H_OBJ14, H_OBJ15, H_OBJ16, H_OBJ17,
     >  H_OBJ18, H_OBJ19, H_OBJ20)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_112
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_122
      REAL(w2f__8) OpenAD_Symbol_123
      REAL(w2f__8) OpenAD_Symbol_124
      REAL(w2f__8) OpenAD_Symbol_125
      REAL(w2f__8) OpenAD_Symbol_126
      REAL(w2f__8) OpenAD_Symbol_127
      REAL(w2f__8) OpenAD_Symbol_128
      REAL(w2f__8) OpenAD_Symbol_129
      REAL(w2f__8) OpenAD_Symbol_130
      REAL(w2f__8) OpenAD_Symbol_131
      REAL(w2f__8) OpenAD_Symbol_132
      REAL(w2f__8) OpenAD_Symbol_133
      REAL(w2f__8) OpenAD_Symbol_134
      REAL(w2f__8) OpenAD_Symbol_135
      REAL(w2f__8) OpenAD_Symbol_136
      REAL(w2f__8) OpenAD_Symbol_137
      REAL(w2f__8) OpenAD_Symbol_138
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_140
      REAL(w2f__8) OpenAD_Symbol_142
      REAL(w2f__8) OpenAD_Symbol_146
      REAL(w2f__8) OpenAD_Symbol_147
      REAL(w2f__8) OpenAD_Symbol_149
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_150
      REAL(w2f__8) OpenAD_Symbol_152
      REAL(w2f__8) OpenAD_Symbol_154
      REAL(w2f__8) OpenAD_Symbol_155
      REAL(w2f__8) OpenAD_Symbol_156
      REAL(w2f__8) OpenAD_Symbol_157
      REAL(w2f__8) OpenAD_Symbol_158
      REAL(w2f__8) OpenAD_Symbol_159
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_160
      REAL(w2f__8) OpenAD_Symbol_161
      REAL(w2f__8) OpenAD_Symbol_162
      REAL(w2f__8) OpenAD_Symbol_163
      REAL(w2f__8) OpenAD_Symbol_164
      REAL(w2f__8) OpenAD_Symbol_165
      REAL(w2f__8) OpenAD_Symbol_166
      REAL(w2f__8) OpenAD_Symbol_167
      REAL(w2f__8) OpenAD_Symbol_168
      REAL(w2f__8) OpenAD_Symbol_169
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_170
      REAL(w2f__8) OpenAD_Symbol_171
      REAL(w2f__8) OpenAD_Symbol_172
      REAL(w2f__8) OpenAD_Symbol_173
      REAL(w2f__8) OpenAD_Symbol_174
      REAL(w2f__8) OpenAD_Symbol_175
      REAL(w2f__8) OpenAD_Symbol_176
      REAL(w2f__8) OpenAD_Symbol_177
      REAL(w2f__8) OpenAD_Symbol_178
      REAL(w2f__8) OpenAD_Symbol_179
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_180
      REAL(w2f__8) OpenAD_Symbol_181
      REAL(w2f__8) OpenAD_Symbol_182
      REAL(w2f__8) OpenAD_Symbol_183
      REAL(w2f__8) OpenAD_Symbol_184
      REAL(w2f__8) OpenAD_Symbol_185
      REAL(w2f__8) OpenAD_Symbol_186
      REAL(w2f__8) OpenAD_Symbol_187
      REAL(w2f__8) OpenAD_Symbol_188
      REAL(w2f__8) OpenAD_Symbol_189
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_190
      REAL(w2f__8) OpenAD_Symbol_191
      REAL(w2f__8) OpenAD_Symbol_192
      REAL(w2f__8) OpenAD_Symbol_193
      REAL(w2f__8) OpenAD_Symbol_194
      REAL(w2f__8) OpenAD_Symbol_195
      REAL(w2f__8) OpenAD_Symbol_196
      REAL(w2f__8) OpenAD_Symbol_197
      REAL(w2f__8) OpenAD_Symbol_198
      REAL(w2f__8) OpenAD_Symbol_199
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_200
      REAL(w2f__8) OpenAD_Symbol_201
      REAL(w2f__8) OpenAD_Symbol_202
      REAL(w2f__8) OpenAD_Symbol_203
      REAL(w2f__8) OpenAD_Symbol_204
      REAL(w2f__8) OpenAD_Symbol_205
      REAL(w2f__8) OpenAD_Symbol_206
      REAL(w2f__8) OpenAD_Symbol_207
      REAL(w2f__8) OpenAD_Symbol_208
      REAL(w2f__8) OpenAD_Symbol_209
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_210
      REAL(w2f__8) OpenAD_Symbol_211
      REAL(w2f__8) OpenAD_Symbol_212
      REAL(w2f__8) OpenAD_Symbol_213
      REAL(w2f__8) OpenAD_Symbol_214
      REAL(w2f__8) OpenAD_Symbol_215
      REAL(w2f__8) OpenAD_Symbol_216
      REAL(w2f__8) OpenAD_Symbol_217
      REAL(w2f__8) OpenAD_Symbol_218
      REAL(w2f__8) OpenAD_Symbol_219
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_220
      REAL(w2f__8) OpenAD_Symbol_221
      REAL(w2f__8) OpenAD_Symbol_222
      REAL(w2f__8) OpenAD_Symbol_223
      REAL(w2f__8) OpenAD_Symbol_224
      REAL(w2f__8) OpenAD_Symbol_225
      REAL(w2f__8) OpenAD_Symbol_226
      REAL(w2f__8) OpenAD_Symbol_227
      REAL(w2f__8) OpenAD_Symbol_228
      REAL(w2f__8) OpenAD_Symbol_229
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_230
      REAL(w2f__8) OpenAD_Symbol_231
      REAL(w2f__8) OpenAD_Symbol_232
      REAL(w2f__8) OpenAD_Symbol_233
      REAL(w2f__8) OpenAD_Symbol_234
      REAL(w2f__8) OpenAD_Symbol_235
      REAL(w2f__8) OpenAD_Symbol_236
      REAL(w2f__8) OpenAD_Symbol_237
      REAL(w2f__8) OpenAD_Symbol_238
      REAL(w2f__8) OpenAD_Symbol_239
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_240
      REAL(w2f__8) OpenAD_Symbol_241
      REAL(w2f__8) OpenAD_Symbol_242
      REAL(w2f__8) OpenAD_Symbol_243
      REAL(w2f__8) OpenAD_Symbol_244
      REAL(w2f__8) OpenAD_Symbol_245
      REAL(w2f__8) OpenAD_Symbol_246
      REAL(w2f__8) OpenAD_Symbol_247
      REAL(w2f__8) OpenAD_Symbol_248
      REAL(w2f__8) OpenAD_Symbol_249
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_250
      REAL(w2f__8) OpenAD_Symbol_251
      REAL(w2f__8) OpenAD_Symbol_252
      REAL(w2f__8) OpenAD_Symbol_253
      REAL(w2f__8) OpenAD_Symbol_254
      REAL(w2f__8) OpenAD_Symbol_255
      REAL(w2f__8) OpenAD_Symbol_256
      REAL(w2f__8) OpenAD_Symbol_257
      REAL(w2f__8) OpenAD_Symbol_258
      REAL(w2f__8) OpenAD_Symbol_259
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_260
      REAL(w2f__8) OpenAD_Symbol_261
      REAL(w2f__8) OpenAD_Symbol_262
      REAL(w2f__8) OpenAD_Symbol_263
      REAL(w2f__8) OpenAD_Symbol_264
      REAL(w2f__8) OpenAD_Symbol_265
      REAL(w2f__8) OpenAD_Symbol_266
      REAL(w2f__8) OpenAD_Symbol_267
      REAL(w2f__8) OpenAD_Symbol_268
      REAL(w2f__8) OpenAD_Symbol_269
      REAL(w2f__8) OpenAD_Symbol_270
      REAL(w2f__8) OpenAD_Symbol_271
      REAL(w2f__8) OpenAD_Symbol_272
      REAL(w2f__8) OpenAD_Symbol_273
      REAL(w2f__8) OpenAD_Symbol_274
      REAL(w2f__8) OpenAD_Symbol_275
      REAL(w2f__8) OpenAD_Symbol_276
      REAL(w2f__8) OpenAD_Symbol_277
      REAL(w2f__8) OpenAD_Symbol_278
      REAL(w2f__8) OpenAD_Symbol_279
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_280
      REAL(w2f__8) OpenAD_Symbol_281
      REAL(w2f__8) OpenAD_Symbol_282
      REAL(w2f__8) OpenAD_Symbol_283
      REAL(w2f__8) OpenAD_Symbol_284
      REAL(w2f__8) OpenAD_Symbol_285
      REAL(w2f__8) OpenAD_Symbol_286
      REAL(w2f__8) OpenAD_Symbol_287
      REAL(w2f__8) OpenAD_Symbol_288
      REAL(w2f__8) OpenAD_Symbol_289
      REAL(w2f__8) OpenAD_Symbol_290
      REAL(w2f__8) OpenAD_Symbol_291
      REAL(w2f__8) OpenAD_Symbol_292
      REAL(w2f__8) OpenAD_Symbol_293
      REAL(w2f__8) OpenAD_Symbol_294
      REAL(w2f__8) OpenAD_Symbol_295
      REAL(w2f__8) OpenAD_Symbol_296
      REAL(w2f__8) OpenAD_Symbol_297
      REAL(w2f__8) OpenAD_Symbol_298
      REAL(w2f__8) OpenAD_Symbol_299
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_300
      REAL(w2f__8) OpenAD_Symbol_301
      REAL(w2f__8) OpenAD_Symbol_302
      REAL(w2f__8) OpenAD_Symbol_303
      type(active) :: OpenAD_Symbol_304
      REAL(w2f__8) OpenAD_Symbol_305
      REAL(w2f__8) OpenAD_Symbol_306
      REAL(w2f__8) OpenAD_Symbol_307
      REAL(w2f__8) OpenAD_Symbol_308
      REAL(w2f__8) OpenAD_Symbol_309
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_310
      REAL(w2f__8) OpenAD_Symbol_311
      REAL(w2f__8) OpenAD_Symbol_312
      REAL(w2f__8) OpenAD_Symbol_313
      REAL(w2f__8) OpenAD_Symbol_314
      REAL(w2f__8) OpenAD_Symbol_315
      REAL(w2f__8) OpenAD_Symbol_316
      REAL(w2f__8) OpenAD_Symbol_317
      REAL(w2f__8) OpenAD_Symbol_318
      REAL(w2f__8) OpenAD_Symbol_319
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_320
      REAL(w2f__8) OpenAD_Symbol_321
      REAL(w2f__8) OpenAD_Symbol_322
      REAL(w2f__8) OpenAD_Symbol_323
      REAL(w2f__8) OpenAD_Symbol_324
      REAL(w2f__8) OpenAD_Symbol_325
      REAL(w2f__8) OpenAD_Symbol_326
      REAL(w2f__8) OpenAD_Symbol_327
      REAL(w2f__8) OpenAD_Symbol_328
      REAL(w2f__8) OpenAD_Symbol_329
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_330
      REAL(w2f__8) OpenAD_Symbol_331
      REAL(w2f__8) OpenAD_Symbol_332
      type(active) :: OpenAD_Symbol_333
      REAL(w2f__8) OpenAD_Symbol_334
      REAL(w2f__8) OpenAD_Symbol_335
      type(active) :: OpenAD_Symbol_336
      REAL(w2f__8) OpenAD_Symbol_337
      REAL(w2f__8) OpenAD_Symbol_338
      REAL(w2f__8) OpenAD_Symbol_339
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_57
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_60
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_62
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_64
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_68
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_84
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_86
      REAL(w2f__8) OpenAD_Symbol_87
      REAL(w2f__8) OpenAD_Symbol_88
      REAL(w2f__8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_Symbol_91
      REAL(w2f__8) OpenAD_Symbol_92
      REAL(w2f__8) OpenAD_Symbol_93
      REAL(w2f__8) OpenAD_Symbol_94
      REAL(w2f__8) OpenAD_Symbol_95
      REAL(w2f__8) OpenAD_Symbol_96
      REAL(w2f__8) OpenAD_Symbol_97
      REAL(w2f__8) OpenAD_Symbol_98
      REAL(w2f__8) OpenAD_Symbol_99
C
C     **** Parameters and Result ****
C
      type(active) :: OBJ
      type(active) :: G_OBJ0
      type(active) :: G_OBJ1
      type(active) :: G_OBJ2
      type(active) :: G_OBJ3
      type(active) :: G_OBJ4
      type(active) :: G_OBJ5
      type(active) :: X0
      type(active) :: X1
      type(active) :: X2
      type(active) :: X3
      type(active) :: X4
      type(active) :: X5
      type(active) :: H_OBJ0
      type(active) :: H_OBJ1
      type(active) :: H_OBJ2
      type(active) :: H_OBJ3
      type(active) :: H_OBJ4
      type(active) :: H_OBJ5
      type(active) :: H_OBJ6
      type(active) :: H_OBJ7
      type(active) :: H_OBJ8
      type(active) :: H_OBJ9
      type(active) :: H_OBJ10
      type(active) :: H_OBJ11
      type(active) :: H_OBJ12
      type(active) :: H_OBJ13
      type(active) :: H_OBJ14
      type(active) :: H_OBJ15
      type(active) :: H_OBJ16
      type(active) :: H_OBJ17
      type(active) :: H_OBJ18
      type(active) :: H_OBJ19
      type(active) :: H_OBJ20
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) AB
      type(active) :: ADJ_M0
      type(active) :: ADJ_M1
      type(active) :: ADJ_M2
      type(active) :: ADJ_M3
      REAL(w2f__8) B
      REAL(w2f__8) BM1
      type(active) :: D00
      type(active) :: D01
      type(active) :: D03
      type(active) :: D11
      type(active) :: D12
      type(active) :: F
      REAL(w2f__8) FOUR3RD
      type(active) :: G
      type(active) :: GG
      type(active) :: LOC1
      type(active) :: LOC2
      type(active) :: M00
      type(active) :: M01
      type(active) :: M02
      type(active) :: M03
      type(active) :: M11
      type(active) :: M12
      type(active) :: M13
      type(active) :: M22
      type(active) :: M23
      type(active) :: M33
      type(active) :: MATR0
      type(active) :: MATR1
      type(active) :: MATR2
      type(active) :: MATR3
      REAL(w2f__8) NORM
      type(active) :: R00
      type(active) :: R02
      type(active) :: R03
      type(active) :: R11
      type(active) :: R12
      type(active) :: R13
      REAL(w2f__8) R22
      REAL(w2f__8) R33
      REAL(w2f__8) SQRT3
      REAL(w2f__8) THIRD
      REAL(w2f__8) TSQRT3
      REAL(w2f__8) TWO3RD
      REAL(w2f__8) TWOSQRT3
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X0)
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD INDEPENDENT(X3)
C$OPENAD INDEPENDENT(X4)
C$OPENAD INDEPENDENT(X5)
C$OPENAD DEPENDENT(OBJ)
C$OPENAD DEPENDENT(G_OBJ0)
C$OPENAD DEPENDENT(G_OBJ1)
C$OPENAD DEPENDENT(G_OBJ2)
C$OPENAD DEPENDENT(G_OBJ3)
C$OPENAD DEPENDENT(G_OBJ4)
C$OPENAD DEPENDENT(G_OBJ5)
C$OPENAD DEPENDENT(H_OBJ0)
C$OPENAD DEPENDENT(H_OBJ1)
C$OPENAD DEPENDENT(H_OBJ2)
C$OPENAD DEPENDENT(H_OBJ3)
C$OPENAD DEPENDENT(H_OBJ4)
C$OPENAD DEPENDENT(H_OBJ5)
C$OPENAD DEPENDENT(H_OBJ6)
C$OPENAD DEPENDENT(H_OBJ7)
C$OPENAD DEPENDENT(H_OBJ8)
C$OPENAD DEPENDENT(H_OBJ9)
C$OPENAD DEPENDENT(H_OBJ10)
C$OPENAD DEPENDENT(H_OBJ11)
C$OPENAD DEPENDENT(H_OBJ12)
C$OPENAD DEPENDENT(H_OBJ13)
C$OPENAD DEPENDENT(H_OBJ14)
C$OPENAD DEPENDENT(H_OBJ15)
C$OPENAD DEPENDENT(H_OBJ16)
C$OPENAD DEPENDENT(H_OBJ17)
C$OPENAD DEPENDENT(H_OBJ18)
C$OPENAD DEPENDENT(H_OBJ19)
C$OPENAD DEPENDENT(H_OBJ20)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      B = (-1.0D00)
      AB = (A * B)
      SQRT3 = 5.77350258827209472656D-01
      TSQRT3 = 1.15470051765441894531D00
      TWOSQRT3 = 1.15470051765441894531D00
      THIRD = 3.33333343267440795898D-01
      TWO3RD = 6.66666686534881591797D-01
      FOUR3RD = 1.33333337306976318359D00
      BM1 = (-2.0D00)
      MATR0%v = (X1%v-X0%v)
      OpenAD_Symbol_0 = (X2%v*2.0D00-X1%v-X0%v)
      MATR1%v = (SQRT3*OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
      MATR2%v = (X4%v-X3%v)
      OpenAD_Symbol_4 = (X5%v*2.0D00-X4%v-X3%v)
      MATR3%v = (SQRT3*OpenAD_Symbol_4)
      OpenAD_Symbol_6 = SQRT3
      M03%v = (MATR0%v*MATR3%v)
      OpenAD_Symbol_8 = MATR3%v
      OpenAD_Symbol_9 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_Symbol_10 = MATR2%v
      OpenAD_Symbol_11 = MATR1%v
      G%v = (M03%v-M12%v)
      D00%v = (M03%v*2.0D00)
      D11%v = (M12%v*2.0D00)
      M00%v = (MATR0%v*MATR0%v)
      OpenAD_Symbol_14 = MATR0%v
      OpenAD_Symbol_15 = MATR0%v
      M11%v = (MATR1%v*MATR1%v)
      OpenAD_Symbol_16 = MATR1%v
      OpenAD_Symbol_17 = MATR1%v
      M22%v = (MATR2%v*MATR2%v)
      OpenAD_Symbol_18 = MATR2%v
      OpenAD_Symbol_19 = MATR2%v
      M33%v = (MATR3%v*MATR3%v)
      OpenAD_Symbol_20 = MATR3%v
      OpenAD_Symbol_21 = MATR3%v
      D12%v = (M00%v*M33%v)
      OpenAD_Symbol_22 = M33%v
      OpenAD_Symbol_23 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_Symbol_24 = M22%v
      OpenAD_Symbol_25 = M11%v
      F%v = (D03%v+D12%v)
      NORM = F%v
      OpenAD_Symbol_26 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_Symbol_26)
      OpenAD_Symbol_30 = (-(1.0D00/(G%v*G%v)))
      OpenAD_Symbol_28 = A
      OBJ%v = (F%v*LOC1%v)
      OpenAD_Symbol_31 = LOC1%v
      OpenAD_Symbol_32 = F%v
      OpenAD_Symbol_36 = (G%v*G%v)
      OpenAD_Symbol_33 = (1.0D00 / OpenAD_Symbol_36)
      LOC2%v = (AB*OpenAD_Symbol_33)
      OpenAD_Symbol_39 = G%v
      OpenAD_Symbol_40 = G%v
      OpenAD_Symbol_38 = (-(1.0D00 /(OpenAD_Symbol_36 *
     >  OpenAD_Symbol_36)))
      OpenAD_Symbol_35 = AB
      OpenAD_Symbol_41 = (AB * B)
      OpenAD_Symbol_48 = (G%v*G%v)
      OpenAD_Symbol_45 = (G%v*OpenAD_Symbol_48)
      OpenAD_Symbol_42 = (1.0D00 / OpenAD_Symbol_45)
      GG%v = (OpenAD_Symbol_41*OpenAD_Symbol_42)
      OpenAD_Symbol_49 = OpenAD_Symbol_48
      OpenAD_Symbol_51 = G%v
      OpenAD_Symbol_52 = G%v
      OpenAD_Symbol_50 = G%v
      OpenAD_Symbol_47 = (-(1.0D00 /(OpenAD_Symbol_45 *
     >  OpenAD_Symbol_45)))
      OpenAD_Symbol_44 = OpenAD_Symbol_41
      OpenAD_Symbol_155 = (OpenAD_Symbol_30 * OpenAD_Symbol_28)
      OpenAD_Symbol_156 = (OpenAD_Symbol_155 * OpenAD_Symbol_32)
      OpenAD_Symbol_157 = (INT((-1_w2f__i8)) * OpenAD_Symbol_6)
      OpenAD_Symbol_158 = (INT((-1_w2f__i8)) * OpenAD_Symbol_6)
      OpenAD_Symbol_159 = (2.0D00 * OpenAD_Symbol_6)
      OpenAD_Symbol_160 = (INT((-1_w2f__i8)) * OpenAD_Symbol_2)
      OpenAD_Symbol_161 = (INT((-1_w2f__i8)) * OpenAD_Symbol_2)
      OpenAD_Symbol_162 = (2.0D00 * OpenAD_Symbol_2)
      OpenAD_Symbol_163 = (INT((-1_w2f__i8)) * OpenAD_Symbol_11)
      OpenAD_Symbol_164 = (INT((-1_w2f__i8)) * OpenAD_Symbol_8)
      OpenAD_Symbol_165 = (OpenAD_Symbol_10 * INT((-1_w2f__i8)))
      OpenAD_Symbol_166 = (OpenAD_Symbol_10 * 2.0D00)
      OpenAD_Symbol_167 = (OpenAD_Symbol_11 * INT((-1_w2f__i8)))
      OpenAD_Symbol_168 = (OpenAD_Symbol_163 * INT((-1_w2f__i8)))
      OpenAD_Symbol_169 = (OpenAD_Symbol_11 * 2.0D00)
      OpenAD_Symbol_170 = (OpenAD_Symbol_163 * 2.0D00)
      OpenAD_Symbol_171 = (OpenAD_Symbol_157 * OpenAD_Symbol_9)
      OpenAD_Symbol_172 = (OpenAD_Symbol_158 * OpenAD_Symbol_9)
      OpenAD_Symbol_173 = (OpenAD_Symbol_159 * OpenAD_Symbol_9)
      OpenAD_Symbol_174 = (OpenAD_Symbol_8 * 2.0D00)
      OpenAD_Symbol_175 = (OpenAD_Symbol_164 * 2.0D00)
      OpenAD_Symbol_176 = (OpenAD_Symbol_171 * 2.0D00)
      OpenAD_Symbol_177 = (OpenAD_Symbol_172 * 2.0D00)
      OpenAD_Symbol_178 = (OpenAD_Symbol_173 * 2.0D00)
      OpenAD_Symbol_179 = (OpenAD_Symbol_160 * OpenAD_Symbol_165)
      OpenAD_Symbol_180 = (OpenAD_Symbol_161 * OpenAD_Symbol_165)
      OpenAD_Symbol_181 = (OpenAD_Symbol_162 * OpenAD_Symbol_165)
      OpenAD_Symbol_182 = (OpenAD_Symbol_160 * OpenAD_Symbol_166)
      OpenAD_Symbol_183 = (OpenAD_Symbol_161 * OpenAD_Symbol_166)
      OpenAD_Symbol_184 = (OpenAD_Symbol_162 * OpenAD_Symbol_166)
      OpenAD_Symbol_185 = (OpenAD_Symbol_167 * OpenAD_Symbol_155)
      OpenAD_Symbol_186 = (OpenAD_Symbol_168 * OpenAD_Symbol_155)
      OpenAD_Symbol_187 = (OpenAD_Symbol_8 * OpenAD_Symbol_155)
      OpenAD_Symbol_188 = (OpenAD_Symbol_164 * OpenAD_Symbol_155)
      OpenAD_Symbol_189 = (OpenAD_Symbol_171 * OpenAD_Symbol_155)
      OpenAD_Symbol_190 = (OpenAD_Symbol_172 * OpenAD_Symbol_155)
      OpenAD_Symbol_191 = (OpenAD_Symbol_173 * OpenAD_Symbol_155)
      OpenAD_Symbol_192 = (OpenAD_Symbol_179 * OpenAD_Symbol_155)
      OpenAD_Symbol_193 = (OpenAD_Symbol_180 * OpenAD_Symbol_155)
      OpenAD_Symbol_194 = (OpenAD_Symbol_181 * OpenAD_Symbol_155)
      OpenAD_Symbol_195 = (OpenAD_Symbol_14 + OpenAD_Symbol_15)
      OpenAD_Symbol_196 = (OpenAD_Symbol_16 + OpenAD_Symbol_17)
      OpenAD_Symbol_197 = (OpenAD_Symbol_18 + OpenAD_Symbol_19)
      OpenAD_Symbol_198 = (OpenAD_Symbol_20 + OpenAD_Symbol_21)
      OpenAD_Symbol_199 = ((OpenAD_Symbol_49 +(OpenAD_Symbol_51 +
     >  OpenAD_Symbol_52) * OpenAD_Symbol_50) * OpenAD_Symbol_47 *
     >  OpenAD_Symbol_44)
      OpenAD_Symbol_200 = ((OpenAD_Symbol_39 + OpenAD_Symbol_40) *
     >  OpenAD_Symbol_38 * OpenAD_Symbol_35)
      OpenAD_Symbol_201 = (OpenAD_Symbol_198 * OpenAD_Symbol_23)
      OpenAD_Symbol_202 = (OpenAD_Symbol_196 * OpenAD_Symbol_24)
      OpenAD_Symbol_203 = (OpenAD_Symbol_197 * OpenAD_Symbol_25)
      OpenAD_Symbol_204 = (OpenAD_Symbol_195 * OpenAD_Symbol_22)
      OpenAD_Symbol_205 = (INT((-1_w2f__i8)) * OpenAD_Symbol_197)
      OpenAD_Symbol_206 = (INT((-1_w2f__i8)) * OpenAD_Symbol_203)
      OpenAD_Symbol_207 = (INT((-1_w2f__i8)) * OpenAD_Symbol_195)
      OpenAD_Symbol_208 = (INT((-1_w2f__i8)) * OpenAD_Symbol_204)
      OpenAD_Symbol_209 = (OpenAD_Symbol_202 * OpenAD_Symbol_31)
      OpenAD_Symbol_210 = (OpenAD_Symbol_201 * OpenAD_Symbol_31)
      OpenAD_Symbol_211 = (OpenAD_Symbol_157 * OpenAD_Symbol_198)
      OpenAD_Symbol_212 = (OpenAD_Symbol_158 * OpenAD_Symbol_198)
      OpenAD_Symbol_213 = (OpenAD_Symbol_159 * OpenAD_Symbol_198)
      OpenAD_Symbol_214 = (OpenAD_Symbol_157 * OpenAD_Symbol_201)
      OpenAD_Symbol_215 = (OpenAD_Symbol_158 * OpenAD_Symbol_201)
      OpenAD_Symbol_216 = (OpenAD_Symbol_159 * OpenAD_Symbol_201)
      OpenAD_Symbol_217 = (OpenAD_Symbol_157 * OpenAD_Symbol_201)
      OpenAD_Symbol_218 = (OpenAD_Symbol_158 * OpenAD_Symbol_201)
      OpenAD_Symbol_219 = (OpenAD_Symbol_159 * OpenAD_Symbol_201)
      OpenAD_Symbol_220 = (OpenAD_Symbol_160 * OpenAD_Symbol_196)
      OpenAD_Symbol_221 = (OpenAD_Symbol_161 * OpenAD_Symbol_196)
      OpenAD_Symbol_222 = (OpenAD_Symbol_162 * OpenAD_Symbol_196)
      OpenAD_Symbol_223 = (OpenAD_Symbol_160 * OpenAD_Symbol_202)
      OpenAD_Symbol_224 = (OpenAD_Symbol_161 * OpenAD_Symbol_202)
      OpenAD_Symbol_225 = (OpenAD_Symbol_162 * OpenAD_Symbol_202)
      OpenAD_Symbol_226 = (OpenAD_Symbol_160 * OpenAD_Symbol_202)
      OpenAD_Symbol_227 = (OpenAD_Symbol_161 * OpenAD_Symbol_202)
      OpenAD_Symbol_228 = (OpenAD_Symbol_162 * OpenAD_Symbol_202)
      OpenAD_Symbol_229 = (OpenAD_Symbol_167 * OpenAD_Symbol_199)
      OpenAD_Symbol_230 = (OpenAD_Symbol_168 * OpenAD_Symbol_199)
      OpenAD_Symbol_231 = (OpenAD_Symbol_8 * OpenAD_Symbol_199)
      OpenAD_Symbol_232 = (OpenAD_Symbol_164 * OpenAD_Symbol_199)
      OpenAD_Symbol_233 = (OpenAD_Symbol_171 * OpenAD_Symbol_199)
      OpenAD_Symbol_234 = (OpenAD_Symbol_172 * OpenAD_Symbol_199)
      OpenAD_Symbol_235 = (OpenAD_Symbol_173 * OpenAD_Symbol_199)
      OpenAD_Symbol_236 = (OpenAD_Symbol_179 * OpenAD_Symbol_199)
      OpenAD_Symbol_237 = (OpenAD_Symbol_180 * OpenAD_Symbol_199)
      OpenAD_Symbol_238 = (OpenAD_Symbol_181 * OpenAD_Symbol_199)
      OpenAD_Symbol_239 = (OpenAD_Symbol_167 * OpenAD_Symbol_200)
      OpenAD_Symbol_240 = (OpenAD_Symbol_168 * OpenAD_Symbol_200)
      OpenAD_Symbol_241 = (OpenAD_Symbol_8 * OpenAD_Symbol_200)
      OpenAD_Symbol_242 = (OpenAD_Symbol_164 * OpenAD_Symbol_200)
      OpenAD_Symbol_243 = (OpenAD_Symbol_171 * OpenAD_Symbol_200)
      OpenAD_Symbol_244 = (OpenAD_Symbol_172 * OpenAD_Symbol_200)
      OpenAD_Symbol_245 = (OpenAD_Symbol_173 * OpenAD_Symbol_200)
      OpenAD_Symbol_246 = (OpenAD_Symbol_179 * OpenAD_Symbol_200)
      OpenAD_Symbol_247 = (OpenAD_Symbol_180 * OpenAD_Symbol_200)
      OpenAD_Symbol_248 = (OpenAD_Symbol_181 * OpenAD_Symbol_200)
      OpenAD_Symbol_249 = (OpenAD_Symbol_203 * OpenAD_Symbol_31 +
     >  OpenAD_Symbol_167 * OpenAD_Symbol_156)
      OpenAD_Symbol_250 = (OpenAD_Symbol_206 * OpenAD_Symbol_31 +
     >  OpenAD_Symbol_168 * OpenAD_Symbol_156)
      OpenAD_Symbol_251 = (OpenAD_Symbol_204 * OpenAD_Symbol_31 +
     >  OpenAD_Symbol_8 * OpenAD_Symbol_156)
      OpenAD_Symbol_252 = (OpenAD_Symbol_208 * OpenAD_Symbol_31 +
     >  OpenAD_Symbol_164 * OpenAD_Symbol_156)
      OpenAD_Symbol_253 = (OpenAD_Symbol_157 * OpenAD_Symbol_210 +
     >  OpenAD_Symbol_171 * OpenAD_Symbol_156)
      OpenAD_Symbol_254 = (OpenAD_Symbol_158 * OpenAD_Symbol_210 +
     >  OpenAD_Symbol_172 * OpenAD_Symbol_156)
      OpenAD_Symbol_255 = (OpenAD_Symbol_159 * OpenAD_Symbol_210 +
     >  OpenAD_Symbol_173 * OpenAD_Symbol_156)
      OpenAD_Symbol_256 = (OpenAD_Symbol_160 * OpenAD_Symbol_209 +
     >  OpenAD_Symbol_179 * OpenAD_Symbol_156)
      OpenAD_Symbol_257 = (OpenAD_Symbol_161 * OpenAD_Symbol_209 +
     >  OpenAD_Symbol_180 * OpenAD_Symbol_156)
      OpenAD_Symbol_258 = (OpenAD_Symbol_162 * OpenAD_Symbol_209 +
     >  OpenAD_Symbol_181 * OpenAD_Symbol_156)
      CALL sax(1_w2f__i8,X1,MATR0)
      CALL saxpy(-1_w2f__i8,X0,MATR0)
      CALL sax(1_w2f__i8,X4,MATR2)
      CALL saxpy(-1_w2f__i8,X3,MATR2)
      CALL sax(OpenAD_Symbol_195,X1,M00)
      CALL saxpy(OpenAD_Symbol_207,X0,M00)
      CALL sax(OpenAD_Symbol_197,X4,M22)
      CALL saxpy(OpenAD_Symbol_205,X3,M22)
      CALL sax(OpenAD_Symbol_160,X0,MATR1)
      CALL saxpy(OpenAD_Symbol_161,X1,MATR1)
      CALL saxpy(OpenAD_Symbol_162,X2,MATR1)
      CALL sax(OpenAD_Symbol_157,X3,MATR3)
      CALL saxpy(OpenAD_Symbol_158,X4,MATR3)
      CALL saxpy(OpenAD_Symbol_159,X5,MATR3)
      CALL sax(OpenAD_Symbol_8,X1,M03)
      CALL saxpy(OpenAD_Symbol_164,X0,M03)
      CALL saxpy(OpenAD_Symbol_171,X3,M03)
      CALL saxpy(OpenAD_Symbol_172,X4,M03)
      CALL saxpy(OpenAD_Symbol_173,X5,M03)
      CALL sax(OpenAD_Symbol_174,X1,D00)
      CALL saxpy(OpenAD_Symbol_175,X0,D00)
      CALL saxpy(OpenAD_Symbol_176,X3,D00)
      CALL saxpy(OpenAD_Symbol_177,X4,D00)
      CALL saxpy(OpenAD_Symbol_178,X5,D00)
      CALL sax(OpenAD_Symbol_169,X4,D11)
      CALL saxpy(OpenAD_Symbol_170,X3,D11)
      CALL saxpy(OpenAD_Symbol_182,X0,D11)
      CALL saxpy(OpenAD_Symbol_183,X1,D11)
      CALL saxpy(OpenAD_Symbol_184,X2,D11)
      CALL sax(OpenAD_Symbol_220,X0,M11)
      CALL saxpy(OpenAD_Symbol_221,X1,M11)
      CALL saxpy(OpenAD_Symbol_222,X2,M11)
      CALL sax(OpenAD_Symbol_211,X3,M33)
      CALL saxpy(OpenAD_Symbol_212,X4,M33)
      CALL saxpy(OpenAD_Symbol_213,X5,M33)
      CALL sax(OpenAD_Symbol_204,X1,D12)
      CALL saxpy(OpenAD_Symbol_208,X0,D12)
      CALL saxpy(OpenAD_Symbol_214,X3,D12)
      CALL saxpy(OpenAD_Symbol_215,X4,D12)
      CALL saxpy(OpenAD_Symbol_216,X5,D12)
      CALL sax(OpenAD_Symbol_203,X4,D03)
      CALL saxpy(OpenAD_Symbol_206,X3,D03)
      CALL saxpy(OpenAD_Symbol_223,X0,D03)
      CALL saxpy(OpenAD_Symbol_224,X1,D03)
      CALL saxpy(OpenAD_Symbol_225,X2,D03)
      CALL sax(OpenAD_Symbol_203,X4,F)
      CALL saxpy(OpenAD_Symbol_206,X3,F)
      CALL saxpy(OpenAD_Symbol_204,X1,F)
      CALL saxpy(OpenAD_Symbol_208,X0,F)
      CALL saxpy(OpenAD_Symbol_217,X3,F)
      CALL saxpy(OpenAD_Symbol_218,X4,F)
      CALL saxpy(OpenAD_Symbol_219,X5,F)
      CALL saxpy(OpenAD_Symbol_226,X0,F)
      CALL saxpy(OpenAD_Symbol_227,X1,F)
      CALL saxpy(OpenAD_Symbol_228,X2,F)
      CALL sax(OpenAD_Symbol_185,X4,LOC1)
      CALL saxpy(OpenAD_Symbol_186,X3,LOC1)
      CALL saxpy(OpenAD_Symbol_187,X1,LOC1)
      CALL saxpy(OpenAD_Symbol_188,X0,LOC1)
      CALL saxpy(OpenAD_Symbol_189,X3,LOC1)
      CALL saxpy(OpenAD_Symbol_190,X4,LOC1)
      CALL saxpy(OpenAD_Symbol_191,X5,LOC1)
      CALL saxpy(OpenAD_Symbol_192,X0,LOC1)
      CALL saxpy(OpenAD_Symbol_193,X1,LOC1)
      CALL saxpy(OpenAD_Symbol_194,X2,LOC1)
      CALL sax(OpenAD_Symbol_249,X4,OBJ)
      CALL saxpy(OpenAD_Symbol_250,X3,OBJ)
      CALL saxpy(OpenAD_Symbol_251,X1,OBJ)
      CALL saxpy(OpenAD_Symbol_252,X0,OBJ)
      CALL saxpy(OpenAD_Symbol_253,X3,OBJ)
      CALL saxpy(OpenAD_Symbol_254,X4,OBJ)
      CALL saxpy(OpenAD_Symbol_255,X5,OBJ)
      CALL saxpy(OpenAD_Symbol_256,X0,OBJ)
      CALL saxpy(OpenAD_Symbol_257,X1,OBJ)
      CALL saxpy(OpenAD_Symbol_258,X2,OBJ)
      CALL sax(OpenAD_Symbol_239,X4,LOC2)
      CALL saxpy(OpenAD_Symbol_240,X3,LOC2)
      CALL saxpy(OpenAD_Symbol_241,X1,LOC2)
      CALL saxpy(OpenAD_Symbol_242,X0,LOC2)
      CALL saxpy(OpenAD_Symbol_243,X3,LOC2)
      CALL saxpy(OpenAD_Symbol_244,X4,LOC2)
      CALL saxpy(OpenAD_Symbol_245,X5,LOC2)
      CALL saxpy(OpenAD_Symbol_246,X0,LOC2)
      CALL saxpy(OpenAD_Symbol_247,X1,LOC2)
      CALL saxpy(OpenAD_Symbol_248,X2,LOC2)
      CALL sax(OpenAD_Symbol_229,X4,GG)
      CALL saxpy(OpenAD_Symbol_230,X3,GG)
      CALL saxpy(OpenAD_Symbol_231,X1,GG)
      CALL saxpy(OpenAD_Symbol_232,X0,GG)
      CALL saxpy(OpenAD_Symbol_233,X3,GG)
      CALL saxpy(OpenAD_Symbol_234,X4,GG)
      CALL saxpy(OpenAD_Symbol_235,X5,GG)
      CALL saxpy(OpenAD_Symbol_236,X0,GG)
      CALL saxpy(OpenAD_Symbol_237,X1,GG)
      CALL saxpy(OpenAD_Symbol_238,X2,GG)
      G%v = (F%v*LOC2%v)
      OpenAD_Symbol_53 = LOC2%v
      OpenAD_Symbol_54 = F%v
      F%v = (LOC1%v*2.0D00)
      ADJ_M0%v = (F%v*MATR0%v+G%v*MATR3%v)
      OpenAD_Symbol_56 = MATR0%v
      OpenAD_Symbol_57 = F%v
      OpenAD_Symbol_58 = MATR3%v
      OpenAD_Symbol_59 = G%v
      ADJ_M1%v = (F%v*MATR1%v-G%v*MATR2%v)
      OpenAD_Symbol_60 = MATR1%v
      OpenAD_Symbol_61 = F%v
      OpenAD_Symbol_62 = MATR2%v
      OpenAD_Symbol_63 = G%v
      ADJ_M2%v = (F%v*MATR2%v-G%v*MATR1%v)
      OpenAD_Symbol_64 = MATR2%v
      OpenAD_Symbol_65 = F%v
      OpenAD_Symbol_66 = MATR1%v
      OpenAD_Symbol_67 = G%v
      ADJ_M3%v = (F%v*MATR3%v+G%v*MATR0%v)
      OpenAD_Symbol_68 = MATR3%v
      OpenAD_Symbol_69 = F%v
      OpenAD_Symbol_70 = MATR0%v
      OpenAD_Symbol_71 = G%v
      LOC1%v = (ADJ_M1%v*SQRT3)
      OpenAD_Symbol_72 = SQRT3
      G_OBJ0%v = (-(ADJ_M0%v+LOC1%v))
      G_OBJ1%v = (ADJ_M0%v-LOC1%v)
      G_OBJ2%v = (LOC1%v*2.0D00)
      OpenAD_Symbol_259 = (OpenAD_Symbol_66 * INT((-1_w2f__i8)))
      OpenAD_Symbol_260 = (OpenAD_Symbol_67 * INT((-1_w2f__i8)))
      OpenAD_Symbol_261 = (OpenAD_Symbol_62 * INT((-1_w2f__i8)))
      OpenAD_Symbol_262 = (OpenAD_Symbol_63 * INT((-1_w2f__i8)))
      OpenAD_Symbol_263 = (2.0D00 * OpenAD_Symbol_68)
      OpenAD_Symbol_264 = (2.0D00 * OpenAD_Symbol_64)
      OpenAD_Symbol_265 = (2.0D00 * OpenAD_Symbol_60)
      OpenAD_Symbol_266 = (2.0D00 * OpenAD_Symbol_56)
      OpenAD_Symbol_267 = (OpenAD_Symbol_59 * INT((-1_w2f__i8)))
      OpenAD_Symbol_268 = (OpenAD_Symbol_57 * INT((-1_w2f__i8)))
      OpenAD_Symbol_269 = (OpenAD_Symbol_72 * INT((-1_w2f__i8)))
      OpenAD_Symbol_270 = (OpenAD_Symbol_72 * 2.0D00)
      OpenAD_Symbol_271 = (OpenAD_Symbol_72 * INT((-1_w2f__i8)))
      OpenAD_Symbol_272 = (OpenAD_Symbol_58 + OpenAD_Symbol_261 *
     >  OpenAD_Symbol_269)
      OpenAD_Symbol_273 = (OpenAD_Symbol_261 * OpenAD_Symbol_270)
      OpenAD_Symbol_274 = (OpenAD_Symbol_58 * INT((-1_w2f__i8)) +
     >  OpenAD_Symbol_261 * OpenAD_Symbol_271)
      OpenAD_Symbol_275 = (OpenAD_Symbol_262 * OpenAD_Symbol_269)
      OpenAD_Symbol_276 = (OpenAD_Symbol_262 * OpenAD_Symbol_270)
      OpenAD_Symbol_277 = (OpenAD_Symbol_262 * OpenAD_Symbol_271)
      OpenAD_Symbol_278 = (OpenAD_Symbol_61 * OpenAD_Symbol_269)
      OpenAD_Symbol_279 = (OpenAD_Symbol_61 * OpenAD_Symbol_270)
      OpenAD_Symbol_280 = (OpenAD_Symbol_61 * OpenAD_Symbol_271)
      OpenAD_Symbol_281 = (OpenAD_Symbol_266 + OpenAD_Symbol_265 *
     >  OpenAD_Symbol_269)
      OpenAD_Symbol_282 = (OpenAD_Symbol_265 * OpenAD_Symbol_270)
      OpenAD_Symbol_283 = (OpenAD_Symbol_266 * INT((-1_w2f__i8)) +
     >  OpenAD_Symbol_265 * OpenAD_Symbol_271)
      OpenAD_Symbol_284 = (OpenAD_Symbol_53 * OpenAD_Symbol_70)
      OpenAD_Symbol_285 = (OpenAD_Symbol_53 * OpenAD_Symbol_259)
      OpenAD_Symbol_286 = (OpenAD_Symbol_53 * OpenAD_Symbol_272)
      OpenAD_Symbol_287 = (OpenAD_Symbol_53 * OpenAD_Symbol_274)
      OpenAD_Symbol_288 = (OpenAD_Symbol_53 * OpenAD_Symbol_273)
      OpenAD_Symbol_289 = (OpenAD_Symbol_54 * OpenAD_Symbol_70)
      OpenAD_Symbol_290 = (OpenAD_Symbol_54 * OpenAD_Symbol_259)
      OpenAD_Symbol_291 = (OpenAD_Symbol_54 * OpenAD_Symbol_272)
      OpenAD_Symbol_292 = (OpenAD_Symbol_54 * OpenAD_Symbol_274)
      OpenAD_Symbol_293 = (OpenAD_Symbol_54 * OpenAD_Symbol_273)
      CALL sax(OpenAD_Symbol_260,MATR1,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_65,MATR2,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_264,LOC1,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_285,F,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_290,LOC2,ADJ_M2)
      CALL sax(OpenAD_Symbol_71,MATR0,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_69,MATR3,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_263,LOC1,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_284,F,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_289,LOC2,ADJ_M3)
      CALL sax(OpenAD_Symbol_59,MATR3,G_OBJ1)
      CALL saxpy(OpenAD_Symbol_57,MATR0,G_OBJ1)
      CALL saxpy(OpenAD_Symbol_275,MATR2,G_OBJ1)
      CALL saxpy(OpenAD_Symbol_278,MATR1,G_OBJ1)
      CALL saxpy(OpenAD_Symbol_281,LOC1,G_OBJ1)
      CALL saxpy(OpenAD_Symbol_286,F,G_OBJ1)
      CALL saxpy(OpenAD_Symbol_291,LOC2,G_OBJ1)
      CALL sax(OpenAD_Symbol_276,MATR2,G_OBJ2)
      CALL saxpy(OpenAD_Symbol_279,MATR1,G_OBJ2)
      CALL saxpy(OpenAD_Symbol_282,LOC1,G_OBJ2)
      CALL saxpy(OpenAD_Symbol_288,F,G_OBJ2)
      CALL saxpy(OpenAD_Symbol_293,LOC2,G_OBJ2)
      CALL sax(OpenAD_Symbol_267,MATR3,G_OBJ0)
      CALL saxpy(OpenAD_Symbol_268,MATR0,G_OBJ0)
      CALL saxpy(OpenAD_Symbol_277,MATR2,G_OBJ0)
      CALL saxpy(OpenAD_Symbol_280,MATR1,G_OBJ0)
      CALL saxpy(OpenAD_Symbol_283,LOC1,G_OBJ0)
      CALL saxpy(OpenAD_Symbol_287,F,G_OBJ0)
      CALL saxpy(OpenAD_Symbol_292,LOC2,G_OBJ0)
      LOC1%v = (ADJ_M3%v*SQRT3)
      OpenAD_Symbol_75 = SQRT3
      G_OBJ3%v = (-(ADJ_M2%v+LOC1%v))
      G_OBJ4%v = (ADJ_M2%v-LOC1%v)
      G_OBJ5%v = (LOC1%v*2.0D00)
      OpenAD_Symbol_79 = (LOC2%v*2.0D00)
      LOC2%v = OpenAD_Symbol_79
      R00%v = (D00%v*LOC2%v+GG%v*M33%v)
      OpenAD_Symbol_80 = LOC2%v
      OpenAD_Symbol_81 = D00%v
      OpenAD_Symbol_82 = M33%v
      OpenAD_Symbol_83 = GG%v
      R11%v = (D11%v*LOC2%v+GG%v*M22%v)
      OpenAD_Symbol_84 = LOC2%v
      OpenAD_Symbol_85 = D11%v
      OpenAD_Symbol_86 = M22%v
      OpenAD_Symbol_87 = GG%v
      R22 = (D11%v*LOC2%v+GG%v*M11%v)
      R33 = (D00%v*LOC2%v+GG%v*M00%v)
      M01%v = (MATR0%v*MATR1%v)
      OpenAD_Symbol_88 = MATR1%v
      OpenAD_Symbol_89 = MATR0%v
      M02%v = (MATR0%v*MATR2%v)
      OpenAD_Symbol_90 = MATR2%v
      OpenAD_Symbol_91 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_Symbol_92 = MATR2%v
      OpenAD_Symbol_93 = MATR1%v
      M13%v = (MATR1%v*MATR3%v)
      OpenAD_Symbol_94 = MATR3%v
      OpenAD_Symbol_95 = MATR1%v
      M23%v = (MATR2%v*MATR3%v)
      OpenAD_Symbol_96 = MATR3%v
      OpenAD_Symbol_97 = MATR2%v
      OpenAD_Symbol_98 = (M02%v+M13%v)
      D01%v = (LOC2%v*OpenAD_Symbol_98)
      OpenAD_Symbol_99 = OpenAD_Symbol_98
      OpenAD_Symbol_100 = LOC2%v
      OpenAD_Symbol_294 = (OpenAD_Symbol_94 * OpenAD_Symbol_100)
      OpenAD_Symbol_295 = (OpenAD_Symbol_95 * OpenAD_Symbol_100)
      OpenAD_Symbol_296 = (OpenAD_Symbol_90 * OpenAD_Symbol_100)
      OpenAD_Symbol_297 = (OpenAD_Symbol_91 * OpenAD_Symbol_100)
      OpenAD_Symbol_298 = (2.0D00 * OpenAD_Symbol_99)
      OpenAD_Symbol_299 = (2.0D00 * OpenAD_Symbol_85)
      OpenAD_Symbol_300 = (2.0D00 * OpenAD_Symbol_81)
      OpenAD_Symbol_301 = (OpenAD_Symbol_75 * INT((-1_w2f__i8)))
      OpenAD_Symbol_302 = (OpenAD_Symbol_75 * 2.0D00)
      OpenAD_Symbol_303 = (OpenAD_Symbol_75 * INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_Symbol_304,LOC2)
      CALL sax(OpenAD_Symbol_301,ADJ_M3,G_OBJ4)
      CALL saxpy(1_w2f__i8,ADJ_M2,G_OBJ4)
      CALL sax(OpenAD_Symbol_302,ADJ_M3,G_OBJ5)
      CALL sax(2.0D00,OpenAD_Symbol_304,LOC2)
      CALL sax(OpenAD_Symbol_88,MATR0,M01)
      CALL saxpy(OpenAD_Symbol_89,MATR1,M01)
      CALL sax(OpenAD_Symbol_90,MATR0,M02)
      CALL saxpy(OpenAD_Symbol_91,MATR2,M02)
      CALL sax(OpenAD_Symbol_92,MATR1,M12)
      CALL saxpy(OpenAD_Symbol_93,MATR2,M12)
      CALL sax(OpenAD_Symbol_94,MATR1,M13)
      CALL saxpy(OpenAD_Symbol_95,MATR3,M13)
      CALL sax(OpenAD_Symbol_96,MATR2,M23)
      CALL saxpy(OpenAD_Symbol_97,MATR3,M23)
      CALL sax(-1_w2f__i8,ADJ_M2,G_OBJ3)
      CALL saxpy(OpenAD_Symbol_303,ADJ_M3,G_OBJ3)
      CALL sax(OpenAD_Symbol_83,M33,R00)
      CALL saxpy(OpenAD_Symbol_82,GG,R00)
      CALL saxpy(OpenAD_Symbol_80,D00,R00)
      CALL saxpy(OpenAD_Symbol_300,OpenAD_Symbol_304,R00)
      CALL sax(OpenAD_Symbol_87,M22,R11)
      CALL saxpy(OpenAD_Symbol_86,GG,R11)
      CALL saxpy(OpenAD_Symbol_84,D11,R11)
      CALL saxpy(OpenAD_Symbol_299,OpenAD_Symbol_304,R11)
      CALL sax(OpenAD_Symbol_294,MATR1,D01)
      CALL saxpy(OpenAD_Symbol_295,MATR3,D01)
      CALL saxpy(OpenAD_Symbol_296,MATR0,D01)
      CALL saxpy(OpenAD_Symbol_297,MATR2,D01)
      CALL saxpy(OpenAD_Symbol_298,OpenAD_Symbol_304,D01)
      LOC1%v = (R11%v*THIRD)
      OpenAD_Symbol_101 = THIRD
      OpenAD_Symbol_103 = (D01%v+GG%v*M23%v)
      F%v = (TWOSQRT3*OpenAD_Symbol_103)
      OpenAD_Symbol_106 = M23%v
      OpenAD_Symbol_107 = GG%v
      OpenAD_Symbol_105 = TWOSQRT3
      G%v = (LOC1%v+R00%v)
      H_OBJ1%v = (LOC1%v-R00%v)
      H_OBJ0%v = (F%v+G%v)
      H_OBJ3%v = (G%v-F%v)
      OpenAD_Symbol_305 = (OpenAD_Symbol_106 * OpenAD_Symbol_105)
      OpenAD_Symbol_306 = (OpenAD_Symbol_107 * OpenAD_Symbol_105)
      OpenAD_Symbol_307 = (OpenAD_Symbol_105 * INT((-1_w2f__i8)))
      OpenAD_Symbol_308 = (OpenAD_Symbol_305 * INT((-1_w2f__i8)))
      OpenAD_Symbol_309 = (OpenAD_Symbol_306 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_101,R11,H_OBJ1)
      CALL saxpy(-1_w2f__i8,R00,H_OBJ1)
      CALL sax(OpenAD_Symbol_105,D01,F)
      CALL saxpy(OpenAD_Symbol_305,GG,F)
      CALL saxpy(OpenAD_Symbol_306,M23,F)
      CALL sax(OpenAD_Symbol_101,R11,H_OBJ0)
      CALL saxpy(1_w2f__i8,R00,H_OBJ0)
      CALL saxpy(OpenAD_Symbol_105,D01,H_OBJ0)
      CALL saxpy(OpenAD_Symbol_305,GG,H_OBJ0)
      CALL saxpy(OpenAD_Symbol_306,M23,H_OBJ0)
      CALL sax(OpenAD_Symbol_101,R11,H_OBJ3)
      CALL saxpy(1_w2f__i8,R00,H_OBJ3)
      CALL saxpy(OpenAD_Symbol_307,D01,H_OBJ3)
      CALL saxpy(OpenAD_Symbol_308,GG,H_OBJ3)
      CALL saxpy(OpenAD_Symbol_309,M23,H_OBJ3)
      LOC1%v = (-(R11%v*TWO3RD))
      OpenAD_Symbol_108 = TWO3RD
      H_OBJ2%v = (LOC1%v-F%v)
      H_OBJ4%v = (F%v+LOC1%v)
      H_OBJ5%v = (FOUR3RD*R11%v)
      OpenAD_Symbol_111 = FOUR3RD
      OpenAD_Symbol_310 = (OpenAD_Symbol_108 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_111,R11,H_OBJ5)
      CALL sax(OpenAD_Symbol_310,R11,H_OBJ2)
      CALL saxpy(-1_w2f__i8,F,H_OBJ2)
      CALL sax(OpenAD_Symbol_310,R11,H_OBJ4)
      CALL saxpy(1_w2f__i8,F,H_OBJ4)
      LOC1%v = (R00%v*THIRD)
      OpenAD_Symbol_112 = THIRD
      OpenAD_Symbol_114 = (D01%v+GG%v*M01%v)
      F%v = (TWOSQRT3*OpenAD_Symbol_114)
      OpenAD_Symbol_117 = M01%v
      OpenAD_Symbol_118 = GG%v
      OpenAD_Symbol_116 = TWOSQRT3
      G%v = (LOC1%v+R11%v)
      H_OBJ16%v = (LOC1%v-R11%v)
      H_OBJ15%v = (F%v+G%v)
      H_OBJ18%v = (G%v-F%v)
      OpenAD_Symbol_311 = (OpenAD_Symbol_117 * OpenAD_Symbol_116)
      OpenAD_Symbol_312 = (OpenAD_Symbol_118 * OpenAD_Symbol_116)
      OpenAD_Symbol_313 = (OpenAD_Symbol_116 * INT((-1_w2f__i8)))
      OpenAD_Symbol_314 = (OpenAD_Symbol_311 * INT((-1_w2f__i8)))
      OpenAD_Symbol_315 = (OpenAD_Symbol_312 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_112,R00,H_OBJ16)
      CALL saxpy(-1_w2f__i8,R11,H_OBJ16)
      CALL sax(OpenAD_Symbol_116,D01,F)
      CALL saxpy(OpenAD_Symbol_311,GG,F)
      CALL saxpy(OpenAD_Symbol_312,M01,F)
      CALL sax(OpenAD_Symbol_112,R00,H_OBJ15)
      CALL saxpy(1_w2f__i8,R11,H_OBJ15)
      CALL saxpy(OpenAD_Symbol_116,D01,H_OBJ15)
      CALL saxpy(OpenAD_Symbol_311,GG,H_OBJ15)
      CALL saxpy(OpenAD_Symbol_312,M01,H_OBJ15)
      CALL sax(OpenAD_Symbol_112,R00,H_OBJ18)
      CALL saxpy(1_w2f__i8,R11,H_OBJ18)
      CALL saxpy(OpenAD_Symbol_313,D01,H_OBJ18)
      CALL saxpy(OpenAD_Symbol_314,GG,H_OBJ18)
      CALL saxpy(OpenAD_Symbol_315,M01,H_OBJ18)
      LOC1%v = (-(R00%v*TWO3RD))
      OpenAD_Symbol_119 = TWO3RD
      H_OBJ17%v = (LOC1%v-F%v)
      H_OBJ19%v = (F%v+LOC1%v)
      H_OBJ20%v = (FOUR3RD*R00%v)
      OpenAD_Symbol_122 = FOUR3RD
      OpenAD_Symbol_316 = (OpenAD_Symbol_119 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_122,R00,H_OBJ20)
      CALL sax(OpenAD_Symbol_316,R00,H_OBJ17)
      CALL saxpy(-1_w2f__i8,F,H_OBJ17)
      CALL sax(OpenAD_Symbol_316,R00,H_OBJ19)
      CALL saxpy(1_w2f__i8,F,H_OBJ19)
      OpenAD_Symbol_123 = (M01%v+M23%v)
      LOC1%v = (LOC2%v*OpenAD_Symbol_123)
      OpenAD_Symbol_124 = OpenAD_Symbol_123
      OpenAD_Symbol_125 = LOC2%v
      R13%v = (LOC1%v+GG%v*M02%v)
      OpenAD_Symbol_126 = M02%v
      OpenAD_Symbol_127 = GG%v
      R02%v = (LOC1%v+GG%v*M13%v)
      OpenAD_Symbol_128 = M13%v
      OpenAD_Symbol_129 = GG%v
      R03%v = (D03%v*LOC2%v+GG%v*M03%v)
      OpenAD_Symbol_130 = LOC2%v
      OpenAD_Symbol_131 = D03%v
      OpenAD_Symbol_132 = M03%v
      OpenAD_Symbol_133 = GG%v
      R12%v = (D12%v*LOC2%v+GG%v*M12%v)
      OpenAD_Symbol_134 = LOC2%v
      OpenAD_Symbol_135 = D12%v
      OpenAD_Symbol_136 = M12%v
      OpenAD_Symbol_137 = GG%v
      G%v = (-(R13%v*TWO3RD))
      OpenAD_Symbol_138 = TWO3RD
      F%v = (R03%v*TWOSQRT3)
      OpenAD_Symbol_140 = TWOSQRT3
      H_OBJ8%v = (G%v-F%v)
      H_OBJ11%v = (F%v+G%v)
      OpenAD_Symbol_317 = (OpenAD_Symbol_138 * INT((-1_w2f__i8)))
      OpenAD_Symbol_318 = (OpenAD_Symbol_140 * INT((-1_w2f__i8)))
      OpenAD_Symbol_319 = (OpenAD_Symbol_133 * OpenAD_Symbol_318)
      OpenAD_Symbol_320 = (OpenAD_Symbol_130 * OpenAD_Symbol_318)
      OpenAD_Symbol_321 = (OpenAD_Symbol_133 * OpenAD_Symbol_140)
      OpenAD_Symbol_322 = (OpenAD_Symbol_130 * OpenAD_Symbol_140)
      OpenAD_Symbol_323 = (OpenAD_Symbol_126 * OpenAD_Symbol_317)
      OpenAD_Symbol_324 = (OpenAD_Symbol_127 * OpenAD_Symbol_317)
      OpenAD_Symbol_325 = (OpenAD_Symbol_124 * OpenAD_Symbol_317)
      OpenAD_Symbol_326 = (OpenAD_Symbol_125 * OpenAD_Symbol_317)
      OpenAD_Symbol_327 = (OpenAD_Symbol_125 * OpenAD_Symbol_317)
      OpenAD_Symbol_328 = (OpenAD_Symbol_132 * OpenAD_Symbol_318 +
     >  OpenAD_Symbol_323)
      OpenAD_Symbol_329 = (OpenAD_Symbol_131 * OpenAD_Symbol_318 +
     >  OpenAD_Symbol_325)
      OpenAD_Symbol_330 = (OpenAD_Symbol_132 * OpenAD_Symbol_140 +
     >  OpenAD_Symbol_323)
      OpenAD_Symbol_331 = (OpenAD_Symbol_131 * OpenAD_Symbol_140 +
     >  OpenAD_Symbol_325)
      CALL sax(OpenAD_Symbol_126,GG,R13)
      CALL saxpy(OpenAD_Symbol_127,M02,R13)
      CALL saxpy(OpenAD_Symbol_124,LOC2,R13)
      CALL saxpy(OpenAD_Symbol_125,M01,R13)
      CALL saxpy(OpenAD_Symbol_125,M23,R13)
      CALL sax(OpenAD_Symbol_128,GG,R02)
      CALL saxpy(OpenAD_Symbol_129,M13,R02)
      CALL saxpy(OpenAD_Symbol_124,LOC2,R02)
      CALL saxpy(OpenAD_Symbol_125,M01,R02)
      CALL saxpy(OpenAD_Symbol_125,M23,R02)
      CALL sax(OpenAD_Symbol_132,GG,R03)
      CALL saxpy(OpenAD_Symbol_133,M03,R03)
      CALL saxpy(OpenAD_Symbol_130,D03,R03)
      CALL saxpy(OpenAD_Symbol_131,LOC2,R03)
      CALL sax(OpenAD_Symbol_136,GG,R12)
      CALL saxpy(OpenAD_Symbol_134,D12,R12)
      CALL saxpy(OpenAD_Symbol_137,M12,R12)
      CALL saxpy(OpenAD_Symbol_135,LOC2,R12)
      CALL sax(OpenAD_Symbol_323,GG,G)
      CALL saxpy(OpenAD_Symbol_324,M02,G)
      CALL saxpy(OpenAD_Symbol_325,LOC2,G)
      CALL saxpy(OpenAD_Symbol_326,M01,G)
      CALL saxpy(OpenAD_Symbol_327,M23,G)
      CALL sax(OpenAD_Symbol_319,M03,H_OBJ8)
      CALL saxpy(OpenAD_Symbol_320,D03,H_OBJ8)
      CALL saxpy(OpenAD_Symbol_328,GG,H_OBJ8)
      CALL saxpy(OpenAD_Symbol_324,M02,H_OBJ8)
      CALL saxpy(OpenAD_Symbol_329,LOC2,H_OBJ8)
      CALL saxpy(OpenAD_Symbol_326,M01,H_OBJ8)
      CALL saxpy(OpenAD_Symbol_327,M23,H_OBJ8)
      CALL sax(OpenAD_Symbol_321,M03,H_OBJ11)
      CALL saxpy(OpenAD_Symbol_322,D03,H_OBJ11)
      CALL saxpy(OpenAD_Symbol_330,GG,H_OBJ11)
      CALL saxpy(OpenAD_Symbol_324,M02,H_OBJ11)
      CALL saxpy(OpenAD_Symbol_331,LOC2,H_OBJ11)
      CALL saxpy(OpenAD_Symbol_326,M01,H_OBJ11)
      CALL saxpy(OpenAD_Symbol_327,M23,H_OBJ11)
      F%v = (R12%v*TWOSQRT3)
      OpenAD_Symbol_142 = TWOSQRT3
      H_OBJ12%v = (G%v-F%v)
      H_OBJ13%v = (F%v+G%v)
      H_OBJ14%v = (R13%v*1.2D+01)
      G%v = (FOUR3RD*R02%v)
      OpenAD_Symbol_146 = FOUR3RD
      OpenAD_Symbol_332 = (OpenAD_Symbol_142 * INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_Symbol_333,G)
      CALL sax(OpenAD_Symbol_332,R12,H_OBJ12)
      CALL saxpy(1_w2f__i8,OpenAD_Symbol_333,H_OBJ12)
      CALL sax(OpenAD_Symbol_142,R12,H_OBJ13)
      CALL saxpy(1_w2f__i8,OpenAD_Symbol_333,H_OBJ13)
      CALL sax(1.2D+01,R13,H_OBJ14)
      CALL sax(OpenAD_Symbol_146,R02,G)
      OpenAD_Symbol_147 = (R03%v+R12%v)
      F%v = (SQRT3*OpenAD_Symbol_147)
      OpenAD_Symbol_149 = SQRT3
      H_OBJ10%v = (G%v-F%v)
      H_OBJ6%v = (F%v+G%v)
      G%v = (R02%v*TWO3RD)
      OpenAD_Symbol_150 = TWO3RD
      OpenAD_Symbol_334 = (OpenAD_Symbol_149 * INT((-1_w2f__i8)))
      OpenAD_Symbol_335 = (OpenAD_Symbol_149 * INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_Symbol_336,G)
      CALL sax(OpenAD_Symbol_150,R02,G)
      CALL sax(OpenAD_Symbol_334,R03,H_OBJ10)
      CALL saxpy(OpenAD_Symbol_335,R12,H_OBJ10)
      CALL saxpy(1_w2f__i8,OpenAD_Symbol_336,H_OBJ10)
      CALL sax(OpenAD_Symbol_149,R03,H_OBJ6)
      CALL saxpy(OpenAD_Symbol_149,R12,H_OBJ6)
      CALL saxpy(1_w2f__i8,OpenAD_Symbol_336,H_OBJ6)
      OpenAD_Symbol_152 = (R03%v-R12%v)
      F%v = (SQRT3*OpenAD_Symbol_152)
      OpenAD_Symbol_154 = SQRT3
      H_OBJ9%v = (G%v-F%v)
      H_OBJ7%v = (F%v+G%v)
      OpenAD_Symbol_337 = (INT((-1_w2f__i8)) * OpenAD_Symbol_154)
      OpenAD_Symbol_338 = (OpenAD_Symbol_154 * INT((-1_w2f__i8)))
      OpenAD_Symbol_339 = (OpenAD_Symbol_337 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_338,R03,H_OBJ9)
      CALL saxpy(OpenAD_Symbol_339,R12,H_OBJ9)
      CALL saxpy(1_w2f__i8,G,H_OBJ9)
      CALL sax(OpenAD_Symbol_154,R03,H_OBJ7)
      CALL saxpy(OpenAD_Symbol_337,R12,H_OBJ7)
      CALL saxpy(1_w2f__i8,G,H_OBJ7)
      END SUBROUTINE
