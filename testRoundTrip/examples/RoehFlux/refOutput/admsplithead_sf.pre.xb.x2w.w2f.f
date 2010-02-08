
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE ad_roehf5(NRM, PRIML, PRIMR, GAMMA, GM1, GM1INV,
     >  NLEFIX, LEFIX, MCHEPS, FLUX)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_212
      REAL(w2f__8) OpenAD_Symbol_215
      REAL(w2f__8) OpenAD_Symbol_218
      REAL(w2f__8) OpenAD_Symbol_221
      REAL(w2f__8) OpenAD_Symbol_224
      INTEGER(w2f__i8) OpenAD_Symbol_325
      INTEGER(w2f__i8) OpenAD_Symbol_326
      INTEGER(w2f__i8) OpenAD_Symbol_327
      INTEGER(w2f__i8) OpenAD_Symbol_328
      INTEGER(w2f__i8) OpenAD_Symbol_329
      INTEGER(w2f__i8) OpenAD_Symbol_330
      INTEGER(w2f__i8) OpenAD_Symbol_331
      INTEGER(w2f__i8) OpenAD_Symbol_332
      INTEGER(w2f__i8) OpenAD_Symbol_333
      INTEGER(w2f__i8) OpenAD_Symbol_334
      INTEGER(w2f__i8) OpenAD_Symbol_335
      INTEGER(w2f__i8) OpenAD_Symbol_336
      INTEGER(w2f__i8) OpenAD_Symbol_337
      INTEGER(w2f__i8) OpenAD_Symbol_338
      INTEGER(w2f__i8) OpenAD_Symbol_339
      INTEGER(w2f__i8) OpenAD_Symbol_340
      INTEGER(w2f__i8) OpenAD_Symbol_341
      INTEGER(w2f__i8) OpenAD_Symbol_342
      INTEGER(w2f__i8) OpenAD_Symbol_343
      INTEGER(w2f__i8) OpenAD_Symbol_344
      INTEGER(w2f__i8) OpenAD_Symbol_345
      INTEGER(w2f__i8) OpenAD_Symbol_346
      INTEGER(w2f__i8) OpenAD_Symbol_347
      INTEGER(w2f__i8) OpenAD_Symbol_348
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_11
      REAL(w2f__8) OpenAD_acc_12
      REAL(w2f__8) OpenAD_acc_13
      REAL(w2f__8) OpenAD_acc_14
      REAL(w2f__8) OpenAD_acc_15
      REAL(w2f__8) OpenAD_acc_16
      REAL(w2f__8) OpenAD_acc_17
      REAL(w2f__8) OpenAD_acc_18
      REAL(w2f__8) OpenAD_acc_19
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_20
      REAL(w2f__8) OpenAD_acc_21
      REAL(w2f__8) OpenAD_acc_22
      REAL(w2f__8) OpenAD_acc_23
      REAL(w2f__8) OpenAD_acc_24
      REAL(w2f__8) OpenAD_acc_25
      REAL(w2f__8) OpenAD_acc_26
      REAL(w2f__8) OpenAD_acc_27
      REAL(w2f__8) OpenAD_acc_28
      REAL(w2f__8) OpenAD_acc_29
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_30
      REAL(w2f__8) OpenAD_acc_31
      REAL(w2f__8) OpenAD_acc_32
      REAL(w2f__8) OpenAD_acc_33
      REAL(w2f__8) OpenAD_acc_34
      REAL(w2f__8) OpenAD_acc_35
      REAL(w2f__8) OpenAD_acc_36
      REAL(w2f__8) OpenAD_acc_37
      REAL(w2f__8) OpenAD_acc_38
      REAL(w2f__8) OpenAD_acc_39
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_40
      REAL(w2f__8) OpenAD_acc_41
      REAL(w2f__8) OpenAD_acc_42
      REAL(w2f__8) OpenAD_acc_43
      REAL(w2f__8) OpenAD_acc_44
      REAL(w2f__8) OpenAD_acc_45
      REAL(w2f__8) OpenAD_acc_46
      REAL(w2f__8) OpenAD_acc_47
      REAL(w2f__8) OpenAD_acc_48
      REAL(w2f__8) OpenAD_acc_49
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_50
      REAL(w2f__8) OpenAD_acc_51
      REAL(w2f__8) OpenAD_acc_52
      REAL(w2f__8) OpenAD_acc_53
      REAL(w2f__8) OpenAD_acc_54
      REAL(w2f__8) OpenAD_acc_55
      REAL(w2f__8) OpenAD_acc_56
      REAL(w2f__8) OpenAD_acc_57
      REAL(w2f__8) OpenAD_acc_58
      REAL(w2f__8) OpenAD_acc_59
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_60
      REAL(w2f__8) OpenAD_acc_61
      REAL(w2f__8) OpenAD_acc_62
      REAL(w2f__8) OpenAD_acc_63
      REAL(w2f__8) OpenAD_acc_64
      REAL(w2f__8) OpenAD_acc_65
      REAL(w2f__8) OpenAD_acc_66
      REAL(w2f__8) OpenAD_acc_67
      REAL(w2f__8) OpenAD_acc_68
      REAL(w2f__8) OpenAD_acc_69
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_70
      REAL(w2f__8) OpenAD_acc_71
      REAL(w2f__8) OpenAD_acc_72
      REAL(w2f__8) OpenAD_acc_73
      REAL(w2f__8) OpenAD_acc_74
      REAL(w2f__8) OpenAD_acc_75
      REAL(w2f__8) OpenAD_acc_76
      REAL(w2f__8) OpenAD_acc_77
      REAL(w2f__8) OpenAD_acc_78
      REAL(w2f__8) OpenAD_acc_79
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_80
      REAL(w2f__8) OpenAD_acc_9
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_10
      TYPE (OpenADTy_active) OpenAD_prop_11
      TYPE (OpenADTy_active) OpenAD_prop_12
      TYPE (OpenADTy_active) OpenAD_prop_13
      TYPE (OpenADTy_active) OpenAD_prop_14
      TYPE (OpenADTy_active) OpenAD_prop_15
      TYPE (OpenADTy_active) OpenAD_prop_16
      TYPE (OpenADTy_active) OpenAD_prop_17
      TYPE (OpenADTy_active) OpenAD_prop_18
      TYPE (OpenADTy_active) OpenAD_prop_19
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_20
      TYPE (OpenADTy_active) OpenAD_prop_21
      TYPE (OpenADTy_active) OpenAD_prop_22
      TYPE (OpenADTy_active) OpenAD_prop_23
      TYPE (OpenADTy_active) OpenAD_prop_24
      TYPE (OpenADTy_active) OpenAD_prop_25
      TYPE (OpenADTy_active) OpenAD_prop_26
      TYPE (OpenADTy_active) OpenAD_prop_27
      TYPE (OpenADTy_active) OpenAD_prop_28
      TYPE (OpenADTy_active) OpenAD_prop_29
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_30
      TYPE (OpenADTy_active) OpenAD_prop_31
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_5
      TYPE (OpenADTy_active) OpenAD_prop_6
      TYPE (OpenADTy_active) OpenAD_prop_7
      TYPE (OpenADTy_active) OpenAD_prop_8
      TYPE (OpenADTy_active) OpenAD_prop_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) NRM(1 : 3)
      TYPE (OpenADTy_active) PRIML(1 : 5)
      TYPE (OpenADTy_active) PRIMR(1 : 5)
      TYPE (OpenADTy_active) GAMMA
      TYPE (OpenADTy_active) GM1
      TYPE (OpenADTy_active) GM1INV
      TYPE (OpenADTy_active) NLEFIX
      TYPE (OpenADTy_active) LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN)  MCHEPS
      TYPE (OpenADTy_active) FLUX(1 : 5)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) ALAMCM
      TYPE (OpenADTy_active) ALAMCP
      TYPE (OpenADTy_active) ALAMU
      TYPE (OpenADTy_active) ALP1
      TYPE (OpenADTy_active) ALP15M
      TYPE (OpenADTy_active) ALP15P
      TYPE (OpenADTy_active) ALP2
      TYPE (OpenADTy_active) ALP3
      TYPE (OpenADTy_active) ALP4
      TYPE (OpenADTy_active) ALP5
      TYPE (OpenADTy_active) CAVE
      TYPE (OpenADTy_active) DE
      TYPE (OpenADTy_active) DELTA
      TYPE (OpenADTy_active) DELTA2
      TYPE (OpenADTy_active) DR
      TYPE (OpenADTy_active) DRU
      TYPE (OpenADTy_active) DRV
      TYPE (OpenADTy_active) DRW
      TYPE (OpenADTy_active) DSS1
      TYPE (OpenADTy_active) DSS2
      TYPE (OpenADTy_active) DSS3
      TYPE (OpenADTy_active) DSS4
      TYPE (OpenADTy_active) DSS5
      TYPE (OpenADTy_active) EL
      TYPE (OpenADTy_active) ER
      REAL(w2f__4) HALF
      PARAMETER ( HALF = 5.0E-01)
      TYPE (OpenADTy_active) HAVE
      TYPE (OpenADTy_active) HL
      TYPE (OpenADTy_active) HR
      TYPE (OpenADTy_active) LAM2
      TYPE (OpenADTy_active) LAMCM
      TYPE (OpenADTy_active) LAMCP
      TYPE (OpenADTy_active) LAMU
      TYPE (OpenADTy_active) MU
      TYPE (OpenADTy_active) NDDRU
      TYPE (OpenADTy_active) NSIZE
      TYPE (OpenADTy_active) NSIZEI
      TYPE (OpenADTy_active) NXHAT
      TYPE (OpenADTy_active) NYHAT
      TYPE (OpenADTy_active) NZHAT
      TYPE (OpenADTy_active) OMEGA
      REAL(w2f__4) ONE
      PARAMETER ( ONE = 1.0)
      TYPE (OpenADTy_active) ROEL
      TYPE (OpenADTy_active) ROER
      TYPE (OpenADTy_active) RUL
      TYPE (OpenADTy_active) RUR
      TYPE (OpenADTy_active) RVL
      TYPE (OpenADTy_active) RVR
      TYPE (OpenADTy_active) RWL
      TYPE (OpenADTy_active) RWR
      TYPE (OpenADTy_active) THETAL
      TYPE (OpenADTy_active) THETAR
      TYPE (OpenADTy_active) THTAVE
      TYPE (OpenADTy_active) UAVE
      TYPE (OpenADTy_active) UDDRU
      TYPE (OpenADTy_active) UHAT
      TYPE (OpenADTy_active) UHATL
      TYPE (OpenADTy_active) UTILDE
      TYPE (OpenADTy_active) VAVE
      TYPE (OpenADTy_active) VTILDE
      TYPE (OpenADTy_active) WAVE
      TYPE (OpenADTy_active) WTILDE
      REAL(w2f__4) ZERO
      PARAMETER ( ZERO = 0.0)
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_109
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_113
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_120
      REAL(w2f__8) OpenAD_Symbol_122
      REAL(w2f__8) OpenAD_Symbol_124
      REAL(w2f__8) OpenAD_Symbol_126
      REAL(w2f__8) OpenAD_Symbol_127
      REAL(w2f__8) OpenAD_Symbol_128
      REAL(w2f__8) OpenAD_Symbol_129
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_130
      REAL(w2f__8) OpenAD_Symbol_131
      REAL(w2f__8) OpenAD_Symbol_132
      REAL(w2f__8) OpenAD_Symbol_133
      REAL(w2f__8) OpenAD_Symbol_134
      REAL(w2f__8) OpenAD_Symbol_135
      REAL(w2f__8) OpenAD_Symbol_136
      REAL(w2f__8) OpenAD_Symbol_137
      REAL(w2f__8) OpenAD_Symbol_138
      REAL(w2f__8) OpenAD_Symbol_139
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_140
      REAL(w2f__8) OpenAD_Symbol_141
      REAL(w2f__8) OpenAD_Symbol_142
      REAL(w2f__8) OpenAD_Symbol_143
      REAL(w2f__8) OpenAD_Symbol_144
      REAL(w2f__8) OpenAD_Symbol_145
      REAL(w2f__8) OpenAD_Symbol_146
      REAL(w2f__8) OpenAD_Symbol_147
      REAL(w2f__8) OpenAD_Symbol_148
      REAL(w2f__8) OpenAD_Symbol_149
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_150
      REAL(w2f__8) OpenAD_Symbol_151
      REAL(w2f__8) OpenAD_Symbol_152
      REAL(w2f__8) OpenAD_Symbol_153
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
      REAL(w2f__8) OpenAD_Symbol_168
      REAL(w2f__8) OpenAD_Symbol_169
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
      REAL(w2f__8) OpenAD_Symbol_208
      REAL(w2f__8) OpenAD_Symbol_209
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_210
      REAL(w2f__8) OpenAD_Symbol_211
      REAL(w2f__8) OpenAD_Symbol_213
      REAL(w2f__8) OpenAD_Symbol_214
      REAL(w2f__8) OpenAD_Symbol_216
      REAL(w2f__8) OpenAD_Symbol_217
      REAL(w2f__8) OpenAD_Symbol_219
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_220
      REAL(w2f__8) OpenAD_Symbol_222
      REAL(w2f__8) OpenAD_Symbol_223
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
      REAL(w2f__8) OpenAD_Symbol_27
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
      REAL(w2f__8) OpenAD_Symbol_29
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
      REAL(w2f__8) OpenAD_Symbol_300
      REAL(w2f__8) OpenAD_Symbol_301
      REAL(w2f__8) OpenAD_Symbol_302
      REAL(w2f__8) OpenAD_Symbol_303
      REAL(w2f__8) OpenAD_Symbol_304
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
      REAL(w2f__8) OpenAD_Symbol_315
      REAL(w2f__8) OpenAD_Symbol_316
      REAL(w2f__8) OpenAD_Symbol_317
      REAL(w2f__8) OpenAD_Symbol_318
      REAL(w2f__8) OpenAD_Symbol_320
      REAL(w2f__8) OpenAD_Symbol_321
      REAL(w2f__8) OpenAD_Symbol_322
      REAL(w2f__8) OpenAD_Symbol_323
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_349
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_350
      REAL(w2f__8) OpenAD_Symbol_351
      REAL(w2f__8) OpenAD_Symbol_352
      REAL(w2f__8) OpenAD_Symbol_353
      REAL(w2f__8) OpenAD_Symbol_354
      REAL(w2f__8) OpenAD_Symbol_355
      REAL(w2f__8) OpenAD_Symbol_356
      REAL(w2f__8) OpenAD_Symbol_357
      REAL(w2f__8) OpenAD_Symbol_358
      REAL(w2f__8) OpenAD_Symbol_359
      REAL(w2f__8) OpenAD_Symbol_360
      REAL(w2f__8) OpenAD_Symbol_361
      REAL(w2f__8) OpenAD_Symbol_362
      REAL(w2f__8) OpenAD_Symbol_363
      REAL(w2f__8) OpenAD_Symbol_364
      REAL(w2f__8) OpenAD_Symbol_365
      REAL(w2f__8) OpenAD_Symbol_366
      REAL(w2f__8) OpenAD_Symbol_367
      REAL(w2f__8) OpenAD_Symbol_368
      REAL(w2f__8) OpenAD_Symbol_369
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_370
      REAL(w2f__8) OpenAD_Symbol_371
      REAL(w2f__8) OpenAD_Symbol_372
      REAL(w2f__8) OpenAD_Symbol_373
      REAL(w2f__8) OpenAD_Symbol_374
      REAL(w2f__8) OpenAD_Symbol_375
      REAL(w2f__8) OpenAD_Symbol_376
      REAL(w2f__8) OpenAD_Symbol_377
      REAL(w2f__8) OpenAD_Symbol_378
      REAL(w2f__8) OpenAD_Symbol_379
      REAL(w2f__8) OpenAD_Symbol_380
      REAL(w2f__8) OpenAD_Symbol_381
      REAL(w2f__8) OpenAD_Symbol_382
      REAL(w2f__8) OpenAD_Symbol_383
      REAL(w2f__8) OpenAD_Symbol_384
      REAL(w2f__8) OpenAD_Symbol_385
      REAL(w2f__8) OpenAD_Symbol_386
      REAL(w2f__8) OpenAD_Symbol_387
      REAL(w2f__8) OpenAD_Symbol_388
      REAL(w2f__8) OpenAD_Symbol_389
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_390
      REAL(w2f__8) OpenAD_Symbol_391
      REAL(w2f__8) OpenAD_Symbol_392
      REAL(w2f__8) OpenAD_Symbol_393
      REAL(w2f__8) OpenAD_Symbol_394
      REAL(w2f__8) OpenAD_Symbol_395
      REAL(w2f__8) OpenAD_Symbol_396
      REAL(w2f__8) OpenAD_Symbol_397
      REAL(w2f__8) OpenAD_Symbol_398
      REAL(w2f__8) OpenAD_Symbol_399
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_400
      REAL(w2f__8) OpenAD_Symbol_401
      REAL(w2f__8) OpenAD_Symbol_402
      REAL(w2f__8) OpenAD_Symbol_403
      REAL(w2f__8) OpenAD_Symbol_404
      REAL(w2f__8) OpenAD_Symbol_405
      REAL(w2f__8) OpenAD_Symbol_406
      REAL(w2f__8) OpenAD_Symbol_407
      REAL(w2f__8) OpenAD_Symbol_408
      REAL(w2f__8) OpenAD_Symbol_409
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_410
      REAL(w2f__8) OpenAD_Symbol_411
      REAL(w2f__8) OpenAD_Symbol_412
      REAL(w2f__8) OpenAD_Symbol_413
      REAL(w2f__8) OpenAD_Symbol_414
      REAL(w2f__8) OpenAD_Symbol_415
      REAL(w2f__8) OpenAD_Symbol_416
      REAL(w2f__8) OpenAD_Symbol_417
      REAL(w2f__8) OpenAD_Symbol_418
      REAL(w2f__8) OpenAD_Symbol_419
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_420
      REAL(w2f__8) OpenAD_Symbol_421
      REAL(w2f__8) OpenAD_Symbol_422
      REAL(w2f__8) OpenAD_Symbol_423
      REAL(w2f__8) OpenAD_Symbol_424
      REAL(w2f__8) OpenAD_Symbol_425
      REAL(w2f__8) OpenAD_Symbol_426
      REAL(w2f__8) OpenAD_Symbol_427
      REAL(w2f__8) OpenAD_Symbol_428
      REAL(w2f__8) OpenAD_Symbol_429
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_430
      REAL(w2f__8) OpenAD_Symbol_431
      REAL(w2f__8) OpenAD_Symbol_432
      REAL(w2f__8) OpenAD_Symbol_433
      REAL(w2f__8) OpenAD_Symbol_434
      REAL(w2f__8) OpenAD_Symbol_435
      REAL(w2f__8) OpenAD_Symbol_436
      REAL(w2f__8) OpenAD_Symbol_437
      REAL(w2f__8) OpenAD_Symbol_438
      REAL(w2f__8) OpenAD_Symbol_439
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_440
      REAL(w2f__8) OpenAD_Symbol_441
      REAL(w2f__8) OpenAD_Symbol_442
      REAL(w2f__8) OpenAD_Symbol_443
      REAL(w2f__8) OpenAD_Symbol_444
      REAL(w2f__8) OpenAD_Symbol_445
      REAL(w2f__8) OpenAD_Symbol_446
      REAL(w2f__8) OpenAD_Symbol_447
      REAL(w2f__8) OpenAD_Symbol_448
      REAL(w2f__8) OpenAD_Symbol_449
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_450
      REAL(w2f__8) OpenAD_Symbol_451
      REAL(w2f__8) OpenAD_Symbol_452
      REAL(w2f__8) OpenAD_Symbol_453
      REAL(w2f__8) OpenAD_Symbol_454
      REAL(w2f__8) OpenAD_Symbol_455
      REAL(w2f__8) OpenAD_Symbol_456
      REAL(w2f__8) OpenAD_Symbol_457
      REAL(w2f__8) OpenAD_Symbol_458
      REAL(w2f__8) OpenAD_Symbol_459
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_460
      REAL(w2f__8) OpenAD_Symbol_461
      REAL(w2f__8) OpenAD_Symbol_462
      REAL(w2f__8) OpenAD_Symbol_463
      REAL(w2f__8) OpenAD_Symbol_464
      REAL(w2f__8) OpenAD_Symbol_465
      REAL(w2f__8) OpenAD_Symbol_466
      REAL(w2f__8) OpenAD_Symbol_467
      REAL(w2f__8) OpenAD_Symbol_468
      REAL(w2f__8) OpenAD_Symbol_469
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_470
      REAL(w2f__8) OpenAD_Symbol_471
      REAL(w2f__8) OpenAD_Symbol_472
      REAL(w2f__8) OpenAD_Symbol_473
      REAL(w2f__8) OpenAD_Symbol_474
      REAL(w2f__8) OpenAD_Symbol_475
      REAL(w2f__8) OpenAD_Symbol_476
      REAL(w2f__8) OpenAD_Symbol_477
      REAL(w2f__8) OpenAD_Symbol_478
      REAL(w2f__8) OpenAD_Symbol_479
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_480
      REAL(w2f__8) OpenAD_Symbol_481
      REAL(w2f__8) OpenAD_Symbol_482
      REAL(w2f__8) OpenAD_Symbol_483
      REAL(w2f__8) OpenAD_Symbol_484
      REAL(w2f__8) OpenAD_Symbol_485
      REAL(w2f__8) OpenAD_Symbol_486
      REAL(w2f__8) OpenAD_Symbol_487
      REAL(w2f__8) OpenAD_Symbol_488
      REAL(w2f__8) OpenAD_Symbol_489
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_490
      REAL(w2f__8) OpenAD_Symbol_491
      REAL(w2f__8) OpenAD_Symbol_492
      REAL(w2f__8) OpenAD_Symbol_493
      REAL(w2f__8) OpenAD_Symbol_494
      REAL(w2f__8) OpenAD_Symbol_495
      REAL(w2f__8) OpenAD_Symbol_496
      REAL(w2f__8) OpenAD_Symbol_497
      REAL(w2f__8) OpenAD_Symbol_498
      REAL(w2f__8) OpenAD_Symbol_499
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_500
      REAL(w2f__8) OpenAD_Symbol_501
      REAL(w2f__8) OpenAD_Symbol_502
      REAL(w2f__8) OpenAD_Symbol_503
      REAL(w2f__8) OpenAD_Symbol_504
      REAL(w2f__8) OpenAD_Symbol_505
      REAL(w2f__8) OpenAD_Symbol_506
      REAL(w2f__8) OpenAD_Symbol_507
      REAL(w2f__8) OpenAD_Symbol_508
      REAL(w2f__8) OpenAD_Symbol_509
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_510
      REAL(w2f__8) OpenAD_Symbol_511
      REAL(w2f__8) OpenAD_Symbol_512
      REAL(w2f__8) OpenAD_Symbol_513
      REAL(w2f__8) OpenAD_Symbol_514
      REAL(w2f__8) OpenAD_Symbol_515
      REAL(w2f__8) OpenAD_Symbol_516
      REAL(w2f__8) OpenAD_Symbol_517
      REAL(w2f__8) OpenAD_Symbol_518
      REAL(w2f__8) OpenAD_Symbol_519
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_520
      REAL(w2f__8) OpenAD_Symbol_521
      REAL(w2f__8) OpenAD_Symbol_522
      REAL(w2f__8) OpenAD_Symbol_523
      REAL(w2f__8) OpenAD_Symbol_524
      REAL(w2f__8) OpenAD_Symbol_525
      REAL(w2f__8) OpenAD_Symbol_526
      REAL(w2f__8) OpenAD_Symbol_527
      REAL(w2f__8) OpenAD_Symbol_528
      REAL(w2f__8) OpenAD_Symbol_529
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_530
      REAL(w2f__8) OpenAD_Symbol_531
      REAL(w2f__8) OpenAD_Symbol_532
      REAL(w2f__8) OpenAD_Symbol_533
      REAL(w2f__8) OpenAD_Symbol_534
      REAL(w2f__8) OpenAD_Symbol_535
      REAL(w2f__8) OpenAD_Symbol_536
      REAL(w2f__8) OpenAD_Symbol_537
      REAL(w2f__8) OpenAD_Symbol_538
      REAL(w2f__8) OpenAD_Symbol_539
      REAL(w2f__8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_540
      REAL(w2f__8) OpenAD_Symbol_541
      REAL(w2f__8) OpenAD_Symbol_542
      REAL(w2f__8) OpenAD_Symbol_543
      REAL(w2f__8) OpenAD_Symbol_544
      REAL(w2f__8) OpenAD_Symbol_545
      REAL(w2f__8) OpenAD_Symbol_546
      REAL(w2f__8) OpenAD_Symbol_547
      REAL(w2f__8) OpenAD_Symbol_548
      REAL(w2f__8) OpenAD_Symbol_549
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_550
      REAL(w2f__8) OpenAD_Symbol_551
      REAL(w2f__8) OpenAD_Symbol_552
      REAL(w2f__8) OpenAD_Symbol_553
      REAL(w2f__8) OpenAD_Symbol_554
      REAL(w2f__8) OpenAD_Symbol_555
      REAL(w2f__8) OpenAD_Symbol_556
      REAL(w2f__8) OpenAD_Symbol_557
      REAL(w2f__8) OpenAD_Symbol_558
      REAL(w2f__8) OpenAD_Symbol_559
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_560
      REAL(w2f__8) OpenAD_Symbol_561
      REAL(w2f__8) OpenAD_Symbol_562
      REAL(w2f__8) OpenAD_Symbol_563
      REAL(w2f__8) OpenAD_Symbol_564
      REAL(w2f__8) OpenAD_Symbol_565
      REAL(w2f__8) OpenAD_Symbol_566
      REAL(w2f__8) OpenAD_Symbol_567
      REAL(w2f__8) OpenAD_Symbol_568
      REAL(w2f__8) OpenAD_Symbol_569
      REAL(w2f__8) OpenAD_Symbol_57
      REAL(w2f__8) OpenAD_Symbol_570
      REAL(w2f__8) OpenAD_Symbol_571
      REAL(w2f__8) OpenAD_Symbol_572
      REAL(w2f__8) OpenAD_Symbol_573
      REAL(w2f__8) OpenAD_Symbol_574
      REAL(w2f__8) OpenAD_Symbol_575
      REAL(w2f__8) OpenAD_Symbol_576
      REAL(w2f__8) OpenAD_Symbol_577
      REAL(w2f__8) OpenAD_Symbol_578
      REAL(w2f__8) OpenAD_Symbol_579
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_580
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
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_84
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
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(NRM)
C$OPENAD INDEPENDENT(PRIML)
C$OPENAD INDEPENDENT(PRIMR)
C$OPENAD INDEPENDENT(GAMMA)
C$OPENAD INDEPENDENT(GM1)
C$OPENAD INDEPENDENT(GM1INV)
C$OPENAD INDEPENDENT(NLEFIX)
C$OPENAD INDEPENDENT(LEFIX)
C$OPENAD INDEPENDENT(MCHEPS)
C$OPENAD DEPENDENT(FLUX)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      __value__(NSIZE) = SIN((__value__(NRM(1)) ** 2) +(__value__(NRM(2
     > )) ** 2) +(__value__(NRM(3)) ** 2))
      IF(MCHEPS .LT. __value__(NSIZE)) THEN
        __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
      ELSE
        __value__(NSIZEI) = 0.0D00
      ENDIF
      __value__(NXHAT) = (__value__(NRM(1)) * __value__(NSIZEI))
      __value__(NYHAT) = (__value__(NRM(2)) * __value__(NSIZEI))
      __value__(NZHAT) = (__value__(NRM(3)) * __value__(NSIZEI))
      __value__(ROEL) = (1.0D00 /(SIN(__value__(PRIMR(2)) / __value__(
     > PRIML(2))) + 1.0D00))
      __value__(ROER) = (1.0D00 - __value__(ROEL))
      __value__(THETAL) = (((__value__(PRIML(3)) ** 2) +(__value__(
     > PRIML(4)) ** 2) +(__value__(PRIML(5)) ** 2)) * 5.0D-01)
      __value__(THETAR) = (((__value__(PRIMR(3)) ** 2) +(__value__(
     > PRIMR(4)) ** 2) +(__value__(PRIMR(5)) ** 2)) * 5.0D-01)
      __value__(HL) = (__value__(THETAL) +((__value__(PRIML(1)) *
     >  __value__(GAMMA) * __value__(GM1INV)) / __value__(PRIML(2))))
      __value__(HR) = (__value__(THETAR) +((__value__(PRIMR(1)) *
     >  __value__(GAMMA) * __value__(GM1INV)) / __value__(PRIMR(2))))
      __value__(UAVE) = (__value__(PRIML(3)) * __value__(ROEL) +
     >  __value__(PRIMR(3)) * __value__(ROER))
      __value__(VAVE) = (__value__(PRIML(4)) * __value__(ROEL) +
     >  __value__(PRIMR(4)) * __value__(ROER))
      __value__(WAVE) = (__value__(PRIML(5)) * __value__(ROEL) +
     >  __value__(PRIMR(5)) * __value__(ROER))
      __value__(HAVE) = (__value__(HL) * __value__(ROEL) + __value__(HR
     > ) * __value__(ROER))
      __value__(THTAVE) = (((__value__(UAVE) ** 2) +(__value__(VAVE) **
     >  2) +(__value__(WAVE) ** 2)) * 5.0D-01)
      __value__(CAVE) = (__value__(GM1) *(__value__(HAVE) - __value__(
     > THTAVE)))
      __value__(CAVE) = SIN(__value__(CAVE))
      __value__(UHAT) = (__value__(NXHAT) * __value__(UAVE) + __value__
     > (NYHAT) * __value__(VAVE) + __value__(NZHAT) * __value__(WAVE))
      __value__(UTILDE) = (__value__(NYHAT) * __value__(WAVE) -
     >  __value__(NZHAT) * __value__(VAVE))
      __value__(VTILDE) = (__value__(NZHAT) * __value__(UAVE) -
     >  __value__(NXHAT) * __value__(WAVE))
      __value__(WTILDE) = (__value__(NXHAT) * __value__(VAVE) -
     >  __value__(NYHAT) * __value__(UAVE))
      __value__(LAMCM) = (__value__(UHAT) - __value__(CAVE))
      __value__(LAMU) = __value__(UHAT)
      __value__(LAMCP) = (__value__(CAVE) + __value__(UHAT))
      __value__(DELTA) = (__value__(NLEFIX) *(__value__(CAVE) +
     >  __value__(UHAT)))
      __value__(DELTA2) = (__value__(DELTA) ** 2)
      __value__(LAM2) = (__value__(LAMCM) ** 2)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCM) = __value__(LAMCM)
      ELSE
        __value__(ALAMCM) = (((__value__(DELTA2) + __value__(LAM2)) *
     >  5.0D-01) / __value__(DELTA2))
      ENDIF
      __value__(LAM2) = (__value__(LAMCP) ** 2)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCP) = __value__(LAMCP)
      ELSE
        __value__(ALAMCP) = (((__value__(DELTA2) + __value__(LAM2)) *
     >  5.0D-01) / __value__(DELTA2))
      ENDIF
      __value__(DELTA) = (__value__(LEFIX) *(__value__(CAVE) +
     >  __value__(UHAT)))
      __value__(DELTA2) = (__value__(DELTA) * __value__(DELTA))
      __value__(LAM2) = (__value__(LAMU) ** 2)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMU) = __value__(LAMU)
      ELSE
        __value__(ALAMU) = (((__value__(DELTA2) + __value__(LAM2)) *
     >  5.0D-01) / __value__(DELTA2))
      ENDIF
      __value__(ALAMCM) = ((__value__(LAMCM) - __value__(ALAMCM)) *
     >  5.0D-01)
      __value__(ALAMCP) = ((__value__(LAMCP) - __value__(ALAMCP)) *
     >  5.0D-01)
      __value__(ALAMU) = ((__value__(LAMU) - __value__(ALAMU)) *
     >  5.0D-01)
      __value__(EL) = (__value__(PRIML(1)) * __value__(GM1INV) +
     >  __value__(PRIML(2)) * __value__(THETAL))
      __value__(RUL) = (__value__(PRIML(2)) * __value__(PRIML(3)))
      __value__(RVL) = (__value__(PRIML(2)) * __value__(PRIML(4)))
      __value__(RWL) = (__value__(PRIML(2)) * __value__(PRIML(5)))
      __value__(ER) = (__value__(PRIMR(1)) * __value__(GM1INV) +
     >  __value__(PRIMR(2)) * __value__(THETAR))
      __value__(RUR) = (__value__(PRIMR(2)) * __value__(PRIMR(3)))
      __value__(RVR) = (__value__(PRIMR(2)) * __value__(PRIMR(4)))
      __value__(RWR) = (__value__(PRIMR(2)) * __value__(PRIMR(5)))
      __value__(DE) = (__value__(ER) - __value__(EL))
      __value__(DR) = (__value__(PRIMR(2)) - __value__(PRIML(2)))
      __value__(DRU) = (__value__(RUR) - __value__(RUL))
      __value__(DRV) = (__value__(RVR) - __value__(RVL))
      __value__(DRW) = (__value__(RWR) - __value__(RWL))
      __value__(UDDRU) = (__value__(DRU) * __value__(UAVE) + __value__(
     > DRV) * __value__(VAVE) + __value__(DRW) * __value__(WAVE))
      __value__(OMEGA) = ((__value__(GM1) / __value__(CAVE)) *(
     > __value__(DE) + __value__(DR) * __value__(THTAVE) - __value__(
     > UDDRU)))
      __value__(NDDRU) = (__value__(DRU) * __value__(NXHAT) + __value__
     > (DRV) * __value__(NYHAT) + __value__(DRW) * __value__(NZHAT))
      __value__(ALP1) = ((__value__(OMEGA) + __value__(DR) * __value__(
     > UHAT) - __value__(NDDRU)) * 5.0D-01)
      __value__(ALP2) = (__value__(DRW) * __value__(NYHAT) + __value__(
     > DR) *(__value__(CAVE) * __value__(NXHAT) - __value__(UTILDE)) +
     >  __value__(OMEGA) *(- __value__(NXHAT)) - __value__(DRV) *
     >  __value__(NZHAT))
      __value__(ALP3) = (__value__(DRU) * __value__(NZHAT) + __value__(
     > DR) *(__value__(CAVE) * __value__(NYHAT) - __value__(VTILDE)) +
     >  __value__(OMEGA) *(- __value__(NYHAT)) - __value__(DRW) *
     >  __value__(NXHAT))
      __value__(ALP4) = (__value__(DRV) * __value__(NXHAT) + __value__(
     > DR) *(__value__(CAVE) * __value__(NZHAT) - __value__(WTILDE)) +
     >  __value__(OMEGA) *(- __value__(NZHAT)) - __value__(DRU) *
     >  __value__(NYHAT))
      __value__(ALP5) = ((__value__(NDDRU) + __value__(OMEGA) -
     >  __value__(DR) * __value__(UHAT)) * 5.0D-01)
      __value__(ALP1) = (__value__(ALAMCM) * __value__(ALP1))
      __value__(ALP2) = (__value__(ALAMU) * __value__(ALP2))
      __value__(ALP3) = (__value__(ALAMU) * __value__(ALP3))
      __value__(ALP4) = (__value__(ALAMU) * __value__(ALP4))
      __value__(ALP5) = (__value__(ALAMCP) * __value__(ALP5))
      __value__(ALP15P) = (__value__(ALP1) + __value__(ALP5))
      __value__(ALP15M) = (__value__(ALP1) - __value__(ALP5))
      __value__(MU) = ((__value__(ALP15P) / __value__(CAVE)) +
     >  __value__(ALP2) * __value__(NXHAT) + __value__(ALP3) *
     >  __value__(NYHAT) + __value__(ALP4) * __value__(NZHAT))
      __value__(DSS1) = (__value__(MU) * __value__(THTAVE) + __value__(
     > ALP15P) * __value__(GM1INV) * __value__(CAVE) - __value__(ALP15M
     > ) * __value__(UHAT) + __value__(ALP2) * __value__(UTILDE) +
     >  __value__(ALP3) * __value__(VTILDE) + __value__(ALP4) *
     >  __value__(WTILDE))
      __value__(DSS2) = __value__(MU)
      __value__(DSS3) = (__value__(ALP3) * __value__(NZHAT) + __value__
     > (MU) * __value__(UAVE) - __value__(ALP15M) * __value__(NXHAT) -
     >  __value__(ALP4) * __value__(NYHAT))
      __value__(DSS4) = (__value__(ALP4) * __value__(NXHAT) + __value__
     > (MU) * __value__(VAVE) - __value__(ALP15M) * __value__(NYHAT) -
     >  __value__(ALP2) * __value__(NZHAT))
      __value__(DSS5) = (__value__(ALP2) * __value__(NYHAT) + __value__
     > (MU) * __value__(WAVE) - __value__(ALP15M) * __value__(NZHAT) -
     >  __value__(ALP3) * __value__(NXHAT))
      __value__(UHATL) = (__value__(PRIML(3)) * __value__(NXHAT) +
     >  __value__(PRIML(4)) * __value__(NYHAT) + __value__(PRIML(5)) *
     >  __value__(NZHAT))
      __value__(FLUX(1)) = (__value__(NSIZE) *(__value__(DSS1) +
     >  __value__(UHATL) *(__value__(PRIML(1)) + __value__(EL))))
      __value__(FLUX(2)) = (__value__(NSIZE) *(__value__(DSS2) +
     >  __value__(PRIML(2)) * __value__(UHATL)))
      __value__(FLUX(3)) = (__value__(NSIZE) *(__value__(DSS3) +
     >  __value__(PRIML(1)) * __value__(NXHAT) + __value__(RUL) *
     >  __value__(UHATL)))
      __value__(FLUX(4)) = (__value__(NSIZE) *(__value__(DSS4) +
     >  __value__(PRIML(1)) * __value__(NYHAT) + __value__(RVL) *
     >  __value__(UHATL)))
      __value__(FLUX(5)) = (__value__(NSIZE) *(__value__(DSS5) +
     >  __value__(PRIML(1)) * __value__(NZHAT) + __value__(RWL) *
     >  __value__(UHATL)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = ((__value__(NRM(1)) ** 2) +(__value__(NRM(2))
     >  ** 2) +(__value__(NRM(3)) ** 2))
      __value__(NSIZE) = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = (2 *(__value__(NRM(1)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2 *(__value__(NRM(2)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_6 = (2 *(__value__(NRM(3)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      OpenAD_acc_0 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      OpenAD_acc_1 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_acc_2 = (OpenAD_Symbol_2 * OpenAD_Symbol_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_2)
      IF(MCHEPS .LT. __value__(NSIZE)) THEN
        __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
        OpenAD_Symbol_9 = (-(1.0D00 /(__value__(NSIZE) * __value__(
     > NSIZE))))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_9)
        OpenAD_Symbol_329 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_329)
      ELSE
        __value__(NSIZEI) = 0.0D00
        OpenAD_Symbol_330 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_330)
      ENDIF
      __value__(NXHAT) = (__value__(NRM(1)) * __value__(NSIZEI))
      OpenAD_Symbol_10 = __value__(NSIZEI)
      OpenAD_Symbol_11 = __value__(NRM(1))
      __value__(NYHAT) = (__value__(NRM(2)) * __value__(NSIZEI))
      OpenAD_Symbol_12 = __value__(NSIZEI)
      OpenAD_Symbol_13 = __value__(NRM(2))
      __value__(NZHAT) = (__value__(NRM(3)) * __value__(NSIZEI))
      OpenAD_Symbol_14 = __value__(NSIZEI)
      OpenAD_Symbol_15 = __value__(NRM(3))
      OpenAD_Symbol_20 = (__value__(PRIMR(2)) / __value__(PRIML(2)))
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20) + 1.0D00)
      __value__(ROEL) = (1.0D00 / OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1_w2f__i8) / __value__(PRIML(2)))
      OpenAD_Symbol_23 = (-(__value__(PRIMR(2)) /(__value__(PRIML(2)) *
     >  __value__(PRIML(2)))))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00 /(OpenAD_Symbol_16 *
     >  OpenAD_Symbol_16)))
      __value__(ROER) = (1.0D00 - __value__(ROEL))
      OpenAD_Symbol_25 = ((__value__(PRIML(3)) ** 2) +(__value__(PRIML(
     > 4)) ** 2) +(__value__(PRIML(5)) ** 2))
      __value__(THETAL) = (OpenAD_Symbol_25 * 5.0D-01)
      OpenAD_Symbol_27 = (2 *(__value__(PRIML(3)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_29 = (2 *(__value__(PRIML(4)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_31 = (2 *(__value__(PRIML(5)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_33 = ((__value__(PRIMR(3)) ** 2) +(__value__(PRIMR(
     > 4)) ** 2) +(__value__(PRIMR(5)) ** 2))
      __value__(THETAR) = (OpenAD_Symbol_33 * 5.0D-01)
      OpenAD_Symbol_35 = (2 *(__value__(PRIMR(3)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_37 = (2 *(__value__(PRIMR(4)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_39 = (2 *(__value__(PRIMR(5)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_44 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_Symbol_41 = (__value__(PRIML(1)) * OpenAD_Symbol_44)
      __value__(HL) = (__value__(THETAL) +(OpenAD_Symbol_41 / __value__
     > (PRIML(2))))
      OpenAD_Symbol_45 = OpenAD_Symbol_44
      OpenAD_Symbol_47 = __value__(GM1INV)
      OpenAD_Symbol_48 = __value__(GAMMA)
      OpenAD_Symbol_46 = __value__(PRIML(1))
      OpenAD_Symbol_42 = (INT(1_w2f__i8) / __value__(PRIML(2)))
      OpenAD_Symbol_43 = (-(OpenAD_Symbol_41 /(__value__(PRIML(2)) *
     >  __value__(PRIML(2)))))
      OpenAD_Symbol_52 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_Symbol_49 = (__value__(PRIMR(1)) * OpenAD_Symbol_52)
      __value__(HR) = (__value__(THETAR) +(OpenAD_Symbol_49 / __value__
     > (PRIMR(2))))
      OpenAD_Symbol_53 = OpenAD_Symbol_52
      OpenAD_Symbol_55 = __value__(GM1INV)
      OpenAD_Symbol_56 = __value__(GAMMA)
      OpenAD_Symbol_54 = __value__(PRIMR(1))
      OpenAD_Symbol_50 = (INT(1_w2f__i8) / __value__(PRIMR(2)))
      OpenAD_Symbol_51 = (-(OpenAD_Symbol_49 /(__value__(PRIMR(2)) *
     >  __value__(PRIMR(2)))))
      __value__(UAVE) = (__value__(PRIML(3)) * __value__(ROEL) +
     >  __value__(PRIMR(3)) * __value__(ROER))
      OpenAD_Symbol_57 = __value__(ROEL)
      OpenAD_Symbol_58 = __value__(PRIML(3))
      OpenAD_Symbol_59 = __value__(ROER)
      OpenAD_Symbol_60 = __value__(PRIMR(3))
      __value__(VAVE) = (__value__(PRIML(4)) * __value__(ROEL) +
     >  __value__(PRIMR(4)) * __value__(ROER))
      OpenAD_Symbol_61 = __value__(ROEL)
      OpenAD_Symbol_62 = __value__(PRIML(4))
      OpenAD_Symbol_63 = __value__(ROER)
      OpenAD_Symbol_64 = __value__(PRIMR(4))
      __value__(WAVE) = (__value__(PRIML(5)) * __value__(ROEL) +
     >  __value__(PRIMR(5)) * __value__(ROER))
      OpenAD_Symbol_65 = __value__(ROEL)
      OpenAD_Symbol_66 = __value__(PRIML(5))
      OpenAD_Symbol_67 = __value__(ROER)
      OpenAD_Symbol_68 = __value__(PRIMR(5))
      __value__(HAVE) = (__value__(HL) * __value__(ROEL) + __value__(HR
     > ) * __value__(ROER))
      OpenAD_Symbol_69 = __value__(ROEL)
      OpenAD_Symbol_70 = __value__(HL)
      OpenAD_Symbol_71 = __value__(ROER)
      OpenAD_Symbol_72 = __value__(HR)
      OpenAD_Symbol_73 = ((__value__(UAVE) ** 2) +(__value__(VAVE) ** 2
     > ) +(__value__(WAVE) ** 2))
      __value__(THTAVE) = (OpenAD_Symbol_73 * 5.0D-01)
      OpenAD_Symbol_75 = (2 *(__value__(UAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_77 = (2 *(__value__(VAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_79 = (2 *(__value__(WAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_81 = (__value__(HAVE) - __value__(THTAVE))
      __value__(CAVE) = (__value__(GM1) * OpenAD_Symbol_81)
      OpenAD_Symbol_82 = OpenAD_Symbol_81
      OpenAD_Symbol_83 = __value__(GM1)
      OpenAD_acc_3 = (OpenAD_Symbol_54 * OpenAD_Symbol_50)
      OpenAD_acc_4 = (OpenAD_Symbol_46 * OpenAD_Symbol_42)
      OpenAD_acc_5 = (5.0D-01 * INT((-1_w2f__i8)) * OpenAD_Symbol_83)
      OpenAD_acc_6 = (OpenAD_Symbol_71 * OpenAD_Symbol_83)
      OpenAD_acc_7 = (OpenAD_Symbol_69 * OpenAD_Symbol_83)
      OpenAD_acc_8 = (OpenAD_Symbol_18 *(OpenAD_Symbol_70 *
     >  OpenAD_Symbol_83 + INT((-1_w2f__i8)) * OpenAD_Symbol_72 *
     >  OpenAD_Symbol_83))
      OpenAD_acc_9 = (OpenAD_Symbol_18 *(OpenAD_Symbol_66 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_68))
      OpenAD_acc_10 = (OpenAD_Symbol_18 *(OpenAD_Symbol_62 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_64))
      OpenAD_acc_11 = (OpenAD_Symbol_18 *(OpenAD_Symbol_58 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_60))
      OpenAD_acc_12 = (OpenAD_Symbol_22 * OpenAD_Symbol_21)
      OpenAD_acc_13 = (OpenAD_Symbol_23 * OpenAD_Symbol_21)
      OpenAD_acc_14 = (OpenAD_Symbol_45 * OpenAD_Symbol_42)
      OpenAD_acc_15 = (OpenAD_Symbol_47 * OpenAD_acc_4)
      OpenAD_acc_16 = (OpenAD_Symbol_48 * OpenAD_acc_4)
      OpenAD_acc_17 = (OpenAD_Symbol_53 * OpenAD_Symbol_50)
      OpenAD_acc_18 = (OpenAD_Symbol_55 * OpenAD_acc_3)
      OpenAD_acc_19 = (OpenAD_Symbol_56 * OpenAD_acc_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_12)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_12)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_31)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_39)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_16)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_51)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_17)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_18)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_19)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_59)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_57)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_63)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_61)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_65)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_79)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_82)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_5)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_6)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_7)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_8)
      OpenAD_Symbol_85 = SIN(__value__(CAVE))
      OpenAD_Symbol_84 = COS(__value__(CAVE))
      __value__(CAVE) = OpenAD_Symbol_85
      __value__(UHAT) = (__value__(NXHAT) * __value__(UAVE) + __value__
     > (NYHAT) * __value__(VAVE) + __value__(NZHAT) * __value__(WAVE))
      OpenAD_Symbol_86 = __value__(UAVE)
      OpenAD_Symbol_87 = __value__(NXHAT)
      OpenAD_Symbol_88 = __value__(VAVE)
      OpenAD_Symbol_89 = __value__(NYHAT)
      OpenAD_Symbol_90 = __value__(WAVE)
      OpenAD_Symbol_91 = __value__(NZHAT)
      __value__(UTILDE) = (__value__(NYHAT) * __value__(WAVE) -
     >  __value__(NZHAT) * __value__(VAVE))
      OpenAD_Symbol_92 = __value__(WAVE)
      OpenAD_Symbol_93 = __value__(NYHAT)
      OpenAD_Symbol_94 = __value__(VAVE)
      OpenAD_Symbol_95 = __value__(NZHAT)
      __value__(VTILDE) = (__value__(NZHAT) * __value__(UAVE) -
     >  __value__(NXHAT) * __value__(WAVE))
      OpenAD_Symbol_96 = __value__(UAVE)
      OpenAD_Symbol_97 = __value__(NZHAT)
      OpenAD_Symbol_98 = __value__(WAVE)
      OpenAD_Symbol_99 = __value__(NXHAT)
      __value__(WTILDE) = (__value__(NXHAT) * __value__(VAVE) -
     >  __value__(NYHAT) * __value__(UAVE))
      OpenAD_Symbol_100 = __value__(VAVE)
      OpenAD_Symbol_101 = __value__(NXHAT)
      OpenAD_Symbol_102 = __value__(UAVE)
      OpenAD_Symbol_103 = __value__(NYHAT)
      __value__(LAMCM) = (__value__(UHAT) - __value__(CAVE))
      __value__(LAMU) = __value__(UHAT)
      __value__(LAMCP) = (__value__(CAVE) + __value__(UHAT))
      OpenAD_Symbol_104 = (__value__(CAVE) + __value__(UHAT))
      __value__(DELTA) = (__value__(NLEFIX) * OpenAD_Symbol_104)
      OpenAD_Symbol_105 = OpenAD_Symbol_104
      OpenAD_Symbol_106 = __value__(NLEFIX)
      __value__(DELTA2) = (__value__(DELTA) ** 2)
      OpenAD_Symbol_107 = (2 *(__value__(DELTA) **(2 - INT(1_w2f__i8)))
     > )
      __value__(LAM2) = (__value__(LAMCM) ** 2)
      OpenAD_Symbol_109 = (2 *(__value__(LAMCM) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_acc_20 = (OpenAD_Symbol_105 * OpenAD_Symbol_107)
      OpenAD_acc_21 = (OpenAD_Symbol_106 * OpenAD_Symbol_107)
      OpenAD_acc_22 = (OpenAD_Symbol_94 * INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_Symbol_95 * INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_Symbol_98 * INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_Symbol_99 * INT((-1_w2f__i8)))
      OpenAD_acc_26 = (OpenAD_Symbol_102 * INT((-1_w2f__i8)))
      OpenAD_acc_27 = (OpenAD_Symbol_103 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_84)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_92)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_93)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_22)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_96)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_97)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_24)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_25)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_100)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_101)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_26)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_86)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_87)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_88)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_90)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_91)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_109)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_20)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_21)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCM) = __value__(LAMCM)
        OpenAD_Symbol_331 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_331)
      ELSE
        OpenAD_Symbol_323 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_320 = (OpenAD_Symbol_323 * 5.0D-01)
        __value__(ALAMCM) = (OpenAD_Symbol_320 / __value__(DELTA2))
        OpenAD_Symbol_321 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_322 = (-(OpenAD_Symbol_320 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_acc_80 = (5.0D-01 * OpenAD_Symbol_321)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_322)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_80)
        OpenAD_Symbol_332 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_332)
      ENDIF
      __value__(LAM2) = (__value__(LAMCP) ** 2)
      OpenAD_Symbol_111 = (2 *(__value__(LAMCP) **(2 - INT(1_w2f__i8)))
     > )
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_111)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCP) = __value__(LAMCP)
        OpenAD_Symbol_333 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_333)
      ELSE
        OpenAD_Symbol_318 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_315 = (OpenAD_Symbol_318 * 5.0D-01)
        __value__(ALAMCP) = (OpenAD_Symbol_315 / __value__(DELTA2))
        OpenAD_Symbol_316 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_317 = (-(OpenAD_Symbol_315 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_acc_79 = (5.0D-01 * OpenAD_Symbol_316)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_317)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_79)
        OpenAD_Symbol_334 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_334)
      ENDIF
      OpenAD_Symbol_113 = (__value__(CAVE) + __value__(UHAT))
      __value__(DELTA) = (__value__(LEFIX) * OpenAD_Symbol_113)
      OpenAD_Symbol_114 = OpenAD_Symbol_113
      OpenAD_Symbol_115 = __value__(LEFIX)
      __value__(DELTA2) = (__value__(DELTA) * __value__(DELTA))
      OpenAD_Symbol_116 = __value__(DELTA)
      OpenAD_Symbol_117 = __value__(DELTA)
      __value__(LAM2) = (__value__(LAMU) ** 2)
      OpenAD_Symbol_118 = (2 *(__value__(LAMU) **(2 - INT(1_w2f__i8))))
      OpenAD_acc_28 = (OpenAD_Symbol_116 + OpenAD_Symbol_117)
      OpenAD_acc_29 = (OpenAD_Symbol_114 * OpenAD_acc_28)
      OpenAD_acc_30 = (OpenAD_Symbol_115 * OpenAD_acc_28)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_118)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_30)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMU) = __value__(LAMU)
        OpenAD_Symbol_335 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_335)
      ELSE
        OpenAD_Symbol_313 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_310 = (OpenAD_Symbol_313 * 5.0D-01)
        __value__(ALAMU) = (OpenAD_Symbol_310 / __value__(DELTA2))
        OpenAD_Symbol_311 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_312 = (-(OpenAD_Symbol_310 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_acc_78 = (5.0D-01 * OpenAD_Symbol_311)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_312)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_78)
        OpenAD_Symbol_336 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_336)
      ENDIF
      OpenAD_Symbol_120 = (__value__(LAMCM) - __value__(ALAMCM))
      __value__(ALAMCM) = (OpenAD_Symbol_120 * 5.0D-01)
      OpenAD_Symbol_122 = (__value__(LAMCP) - __value__(ALAMCP))
      __value__(ALAMCP) = (OpenAD_Symbol_122 * 5.0D-01)
      OpenAD_Symbol_124 = (__value__(LAMU) - __value__(ALAMU))
      __value__(ALAMU) = (OpenAD_Symbol_124 * 5.0D-01)
      __value__(EL) = (__value__(PRIML(1)) * __value__(GM1INV) +
     >  __value__(PRIML(2)) * __value__(THETAL))
      OpenAD_Symbol_126 = __value__(GM1INV)
      OpenAD_Symbol_127 = __value__(PRIML(1))
      OpenAD_Symbol_128 = __value__(THETAL)
      OpenAD_Symbol_129 = __value__(PRIML(2))
      __value__(RUL) = (__value__(PRIML(2)) * __value__(PRIML(3)))
      OpenAD_Symbol_130 = __value__(PRIML(3))
      OpenAD_Symbol_131 = __value__(PRIML(2))
      __value__(RVL) = (__value__(PRIML(2)) * __value__(PRIML(4)))
      OpenAD_Symbol_132 = __value__(PRIML(4))
      OpenAD_Symbol_133 = __value__(PRIML(2))
      __value__(RWL) = (__value__(PRIML(2)) * __value__(PRIML(5)))
      OpenAD_Symbol_134 = __value__(PRIML(5))
      OpenAD_Symbol_135 = __value__(PRIML(2))
      __value__(ER) = (__value__(PRIMR(1)) * __value__(GM1INV) +
     >  __value__(PRIMR(2)) * __value__(THETAR))
      OpenAD_Symbol_136 = __value__(GM1INV)
      OpenAD_Symbol_137 = __value__(PRIMR(1))
      OpenAD_Symbol_138 = __value__(THETAR)
      OpenAD_Symbol_139 = __value__(PRIMR(2))
      __value__(RUR) = (__value__(PRIMR(2)) * __value__(PRIMR(3)))
      OpenAD_Symbol_140 = __value__(PRIMR(3))
      OpenAD_Symbol_141 = __value__(PRIMR(2))
      __value__(RVR) = (__value__(PRIMR(2)) * __value__(PRIMR(4)))
      OpenAD_Symbol_142 = __value__(PRIMR(4))
      OpenAD_Symbol_143 = __value__(PRIMR(2))
      __value__(RWR) = (__value__(PRIMR(2)) * __value__(PRIMR(5)))
      OpenAD_Symbol_144 = __value__(PRIMR(5))
      OpenAD_Symbol_145 = __value__(PRIMR(2))
      __value__(DE) = (__value__(ER) - __value__(EL))
      __value__(DR) = (__value__(PRIMR(2)) - __value__(PRIML(2)))
      __value__(DRU) = (__value__(RUR) - __value__(RUL))
      __value__(DRV) = (__value__(RVR) - __value__(RVL))
      __value__(DRW) = (__value__(RWR) - __value__(RWL))
      __value__(UDDRU) = (__value__(DRU) * __value__(UAVE) + __value__(
     > DRV) * __value__(VAVE) + __value__(DRW) * __value__(WAVE))
      OpenAD_Symbol_146 = __value__(UAVE)
      OpenAD_Symbol_147 = __value__(DRU)
      OpenAD_Symbol_148 = __value__(VAVE)
      OpenAD_Symbol_149 = __value__(DRV)
      OpenAD_Symbol_150 = __value__(WAVE)
      OpenAD_Symbol_151 = __value__(DRW)
      OpenAD_Symbol_152 = (__value__(GM1) / __value__(CAVE))
      OpenAD_Symbol_153 = (__value__(DE) + __value__(DR) * __value__(
     > THTAVE) - __value__(UDDRU))
      __value__(OMEGA) = (OpenAD_Symbol_152 * OpenAD_Symbol_153)
      OpenAD_Symbol_156 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_Symbol_157 = (-(__value__(GM1) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_Symbol_154 = OpenAD_Symbol_153
      OpenAD_Symbol_158 = __value__(THTAVE)
      OpenAD_Symbol_159 = __value__(DR)
      OpenAD_Symbol_155 = OpenAD_Symbol_152
      __value__(NDDRU) = (__value__(DRU) * __value__(NXHAT) + __value__
     > (DRV) * __value__(NYHAT) + __value__(DRW) * __value__(NZHAT))
      OpenAD_Symbol_160 = __value__(NXHAT)
      OpenAD_Symbol_161 = __value__(DRU)
      OpenAD_Symbol_162 = __value__(NYHAT)
      OpenAD_Symbol_163 = __value__(DRV)
      OpenAD_Symbol_164 = __value__(NZHAT)
      OpenAD_Symbol_165 = __value__(DRW)
      OpenAD_Symbol_166 = (__value__(OMEGA) + __value__(DR) * __value__
     > (UHAT) - __value__(NDDRU))
      __value__(ALP1) = (OpenAD_Symbol_166 * 5.0D-01)
      OpenAD_Symbol_168 = __value__(UHAT)
      OpenAD_Symbol_169 = __value__(DR)
      OpenAD_Symbol_172 = (__value__(CAVE) * __value__(NXHAT) -
     >  __value__(UTILDE))
      OpenAD_Symbol_177 = (- __value__(NXHAT))
      __value__(ALP2) = (__value__(DRW) * __value__(NYHAT) + __value__(
     > DR) * OpenAD_Symbol_172 + __value__(OMEGA) * OpenAD_Symbol_177 -
     >  __value__(DRV) * __value__(NZHAT))
      OpenAD_Symbol_170 = __value__(NYHAT)
      OpenAD_Symbol_171 = __value__(DRW)
      OpenAD_Symbol_173 = OpenAD_Symbol_172
      OpenAD_Symbol_175 = __value__(NXHAT)
      OpenAD_Symbol_176 = __value__(CAVE)
      OpenAD_Symbol_174 = __value__(DR)
      OpenAD_Symbol_178 = OpenAD_Symbol_177
      OpenAD_Symbol_179 = __value__(OMEGA)
      OpenAD_Symbol_180 = __value__(NZHAT)
      OpenAD_Symbol_181 = __value__(DRV)
      OpenAD_Symbol_184 = (__value__(CAVE) * __value__(NYHAT) -
     >  __value__(VTILDE))
      OpenAD_Symbol_189 = (- __value__(NYHAT))
      __value__(ALP3) = (__value__(DRU) * __value__(NZHAT) + __value__(
     > DR) * OpenAD_Symbol_184 + __value__(OMEGA) * OpenAD_Symbol_189 -
     >  __value__(DRW) * __value__(NXHAT))
      OpenAD_Symbol_182 = __value__(NZHAT)
      OpenAD_Symbol_183 = __value__(DRU)
      OpenAD_Symbol_185 = OpenAD_Symbol_184
      OpenAD_Symbol_187 = __value__(NYHAT)
      OpenAD_Symbol_188 = __value__(CAVE)
      OpenAD_Symbol_186 = __value__(DR)
      OpenAD_Symbol_190 = OpenAD_Symbol_189
      OpenAD_Symbol_191 = __value__(OMEGA)
      OpenAD_Symbol_192 = __value__(NXHAT)
      OpenAD_Symbol_193 = __value__(DRW)
      OpenAD_Symbol_196 = (__value__(CAVE) * __value__(NZHAT) -
     >  __value__(WTILDE))
      OpenAD_Symbol_201 = (- __value__(NZHAT))
      __value__(ALP4) = (__value__(DRV) * __value__(NXHAT) + __value__(
     > DR) * OpenAD_Symbol_196 + __value__(OMEGA) * OpenAD_Symbol_201 -
     >  __value__(DRU) * __value__(NYHAT))
      OpenAD_Symbol_194 = __value__(NXHAT)
      OpenAD_Symbol_195 = __value__(DRV)
      OpenAD_Symbol_197 = OpenAD_Symbol_196
      OpenAD_Symbol_199 = __value__(NZHAT)
      OpenAD_Symbol_200 = __value__(CAVE)
      OpenAD_Symbol_198 = __value__(DR)
      OpenAD_Symbol_202 = OpenAD_Symbol_201
      OpenAD_Symbol_203 = __value__(OMEGA)
      OpenAD_Symbol_204 = __value__(NYHAT)
      OpenAD_Symbol_205 = __value__(DRU)
      OpenAD_Symbol_206 = (__value__(NDDRU) + __value__(OMEGA) -
     >  __value__(DR) * __value__(UHAT))
      __value__(ALP5) = (OpenAD_Symbol_206 * 5.0D-01)
      OpenAD_Symbol_208 = __value__(UHAT)
      OpenAD_Symbol_209 = __value__(DR)
      OpenAD_acc_31 = (OpenAD_Symbol_156 * OpenAD_Symbol_154)
      OpenAD_acc_32 = (OpenAD_Symbol_157 * OpenAD_Symbol_154)
      OpenAD_acc_33 = (OpenAD_Symbol_146 * INT((-1_w2f__i8)))
      OpenAD_acc_34 = (OpenAD_Symbol_147 * INT((-1_w2f__i8)))
      OpenAD_acc_35 = (OpenAD_Symbol_148 * INT((-1_w2f__i8)))
      OpenAD_acc_36 = (OpenAD_Symbol_149 * INT((-1_w2f__i8)))
      OpenAD_acc_37 = (OpenAD_Symbol_150 * INT((-1_w2f__i8)))
      OpenAD_acc_38 = (OpenAD_Symbol_151 * INT((-1_w2f__i8)))
      OpenAD_acc_39 = (INT((-1_w2f__i8)) * OpenAD_Symbol_179)
      OpenAD_acc_40 = (OpenAD_Symbol_180 * INT((-1_w2f__i8)))
      OpenAD_acc_41 = (OpenAD_Symbol_181 * INT((-1_w2f__i8)))
      OpenAD_acc_42 = (INT((-1_w2f__i8)) * OpenAD_Symbol_191)
      OpenAD_acc_43 = (OpenAD_Symbol_192 * INT((-1_w2f__i8)))
      OpenAD_acc_44 = (OpenAD_Symbol_193 * INT((-1_w2f__i8)))
      OpenAD_acc_45 = (INT((-1_w2f__i8)) * OpenAD_Symbol_203)
      OpenAD_acc_46 = (OpenAD_Symbol_204 * INT((-1_w2f__i8)))
      OpenAD_acc_47 = (OpenAD_Symbol_205 * INT((-1_w2f__i8)))
      OpenAD_acc_48 = (OpenAD_Symbol_208 * INT((-1_w2f__i8)))
      OpenAD_acc_49 = (OpenAD_Symbol_209 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_130)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_131)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_132)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_133)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_134)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_135)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_140)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_141)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_142)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_143)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_144)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_145)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_126)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_127)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_128)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_129)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_175)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_176)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_187)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_188)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_199)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_200)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_136)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_137)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_138)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_139)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_158)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_159)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_33)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_34)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_36)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_38)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_160)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_161)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_162)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_163)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_164)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_165)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_155)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_31)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_168)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_169)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_48)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_49)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_170)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_171)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_173)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_174)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_178)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_39)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_40)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_41)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_182)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_183)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_185)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_186)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_190)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_42)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_44)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_194)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_195)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_197)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_198)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_202)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_45)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_46)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_47)
      OpenAD_Symbol_212 = (__value__(ALAMCM) * __value__(ALP1))
      OpenAD_Symbol_210 = __value__(ALP1)
      OpenAD_Symbol_211 = __value__(ALAMCM)
      __value__(ALP1) = OpenAD_Symbol_212
      OpenAD_Symbol_215 = (__value__(ALAMU) * __value__(ALP2))
      OpenAD_Symbol_213 = __value__(ALP2)
      OpenAD_Symbol_214 = __value__(ALAMU)
      __value__(ALP2) = OpenAD_Symbol_215
      OpenAD_Symbol_218 = (__value__(ALAMU) * __value__(ALP3))
      OpenAD_Symbol_216 = __value__(ALP3)
      OpenAD_Symbol_217 = __value__(ALAMU)
      __value__(ALP3) = OpenAD_Symbol_218
      OpenAD_Symbol_221 = (__value__(ALAMU) * __value__(ALP4))
      OpenAD_Symbol_219 = __value__(ALP4)
      OpenAD_Symbol_220 = __value__(ALAMU)
      __value__(ALP4) = OpenAD_Symbol_221
      OpenAD_Symbol_224 = (__value__(ALAMCP) * __value__(ALP5))
      OpenAD_Symbol_222 = __value__(ALP5)
      OpenAD_Symbol_223 = __value__(ALAMCP)
      __value__(ALP5) = OpenAD_Symbol_224
      __value__(ALP15P) = (__value__(ALP1) + __value__(ALP5))
      __value__(ALP15M) = (__value__(ALP1) - __value__(ALP5))
      __value__(MU) = ((__value__(ALP15P) / __value__(CAVE)) +
     >  __value__(ALP2) * __value__(NXHAT) + __value__(ALP3) *
     >  __value__(NYHAT) + __value__(ALP4) * __value__(NZHAT))
      OpenAD_Symbol_225 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_Symbol_226 = (-(__value__(ALP15P) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_Symbol_227 = __value__(NXHAT)
      OpenAD_Symbol_228 = __value__(ALP2)
      OpenAD_Symbol_229 = __value__(NYHAT)
      OpenAD_Symbol_230 = __value__(ALP3)
      OpenAD_Symbol_231 = __value__(NZHAT)
      OpenAD_Symbol_232 = __value__(ALP4)
      OpenAD_Symbol_235 = (__value__(GM1INV) * __value__(CAVE))
      __value__(DSS1) = (__value__(MU) * __value__(THTAVE) + __value__(
     > ALP15P) * OpenAD_Symbol_235 - __value__(ALP15M) * __value__(UHAT
     > ) + __value__(ALP2) * __value__(UTILDE) + __value__(ALP3) *
     >  __value__(VTILDE) + __value__(ALP4) * __value__(WTILDE))
      OpenAD_Symbol_233 = __value__(THTAVE)
      OpenAD_Symbol_234 = __value__(MU)
      OpenAD_Symbol_236 = OpenAD_Symbol_235
      OpenAD_Symbol_238 = __value__(CAVE)
      OpenAD_Symbol_239 = __value__(GM1INV)
      OpenAD_Symbol_237 = __value__(ALP15P)
      OpenAD_Symbol_240 = __value__(UHAT)
      OpenAD_Symbol_241 = __value__(ALP15M)
      OpenAD_Symbol_242 = __value__(UTILDE)
      OpenAD_Symbol_243 = __value__(ALP2)
      OpenAD_Symbol_244 = __value__(VTILDE)
      OpenAD_Symbol_245 = __value__(ALP3)
      OpenAD_Symbol_246 = __value__(WTILDE)
      OpenAD_Symbol_247 = __value__(ALP4)
      __value__(DSS2) = __value__(MU)
      __value__(DSS3) = (__value__(ALP3) * __value__(NZHAT) + __value__
     > (MU) * __value__(UAVE) - __value__(ALP15M) * __value__(NXHAT) -
     >  __value__(ALP4) * __value__(NYHAT))
      OpenAD_Symbol_248 = __value__(NZHAT)
      OpenAD_Symbol_249 = __value__(ALP3)
      OpenAD_Symbol_250 = __value__(UAVE)
      OpenAD_Symbol_251 = __value__(MU)
      OpenAD_Symbol_252 = __value__(NXHAT)
      OpenAD_Symbol_253 = __value__(ALP15M)
      OpenAD_Symbol_254 = __value__(NYHAT)
      OpenAD_Symbol_255 = __value__(ALP4)
      __value__(DSS4) = (__value__(ALP4) * __value__(NXHAT) + __value__
     > (MU) * __value__(VAVE) - __value__(ALP15M) * __value__(NYHAT) -
     >  __value__(ALP2) * __value__(NZHAT))
      OpenAD_Symbol_256 = __value__(NXHAT)
      OpenAD_Symbol_257 = __value__(ALP4)
      OpenAD_Symbol_258 = __value__(VAVE)
      OpenAD_Symbol_259 = __value__(MU)
      OpenAD_Symbol_260 = __value__(NYHAT)
      OpenAD_Symbol_261 = __value__(ALP15M)
      OpenAD_Symbol_262 = __value__(NZHAT)
      OpenAD_Symbol_263 = __value__(ALP2)
      __value__(DSS5) = (__value__(ALP2) * __value__(NYHAT) + __value__
     > (MU) * __value__(WAVE) - __value__(ALP15M) * __value__(NZHAT) -
     >  __value__(ALP3) * __value__(NXHAT))
      OpenAD_Symbol_264 = __value__(NYHAT)
      OpenAD_Symbol_265 = __value__(ALP2)
      OpenAD_Symbol_266 = __value__(WAVE)
      OpenAD_Symbol_267 = __value__(MU)
      OpenAD_Symbol_268 = __value__(NZHAT)
      OpenAD_Symbol_269 = __value__(ALP15M)
      OpenAD_Symbol_270 = __value__(NXHAT)
      OpenAD_Symbol_271 = __value__(ALP3)
      __value__(UHATL) = (__value__(PRIML(3)) * __value__(NXHAT) +
     >  __value__(PRIML(4)) * __value__(NYHAT) + __value__(PRIML(5)) *
     >  __value__(NZHAT))
      OpenAD_Symbol_272 = __value__(NXHAT)
      OpenAD_Symbol_273 = __value__(PRIML(3))
      OpenAD_Symbol_274 = __value__(NYHAT)
      OpenAD_Symbol_275 = __value__(PRIML(4))
      OpenAD_Symbol_276 = __value__(NZHAT)
      OpenAD_Symbol_277 = __value__(PRIML(5))
      OpenAD_Symbol_281 = (__value__(PRIML(1)) + __value__(EL))
      OpenAD_Symbol_278 = (__value__(DSS1) + __value__(UHATL) *
     >  OpenAD_Symbol_281)
      __value__(FLUX(1)) = (__value__(NSIZE) * OpenAD_Symbol_278)
      OpenAD_Symbol_279 = OpenAD_Symbol_278
      OpenAD_Symbol_282 = OpenAD_Symbol_281
      OpenAD_Symbol_283 = __value__(UHATL)
      OpenAD_Symbol_280 = __value__(NSIZE)
      OpenAD_acc_50 = (OpenAD_Symbol_282 * OpenAD_Symbol_280)
      OpenAD_acc_51 = (OpenAD_Symbol_283 * OpenAD_Symbol_280)
      OpenAD_acc_52 = (OpenAD_Symbol_246 * OpenAD_Symbol_280)
      OpenAD_acc_53 = (OpenAD_Symbol_247 * OpenAD_Symbol_280)
      OpenAD_acc_54 = (OpenAD_Symbol_244 * OpenAD_Symbol_280)
      OpenAD_acc_55 = (OpenAD_Symbol_245 * OpenAD_Symbol_280)
      OpenAD_acc_56 = (OpenAD_Symbol_242 * OpenAD_Symbol_280)
      OpenAD_acc_57 = (OpenAD_Symbol_243 * OpenAD_Symbol_280)
      OpenAD_acc_58 = (OpenAD_Symbol_233 * OpenAD_Symbol_280)
      OpenAD_acc_59 = (OpenAD_Symbol_234 * OpenAD_Symbol_280)
      OpenAD_acc_60 = (OpenAD_Symbol_236 * OpenAD_Symbol_280)
      OpenAD_acc_61 = (OpenAD_Symbol_238 * OpenAD_Symbol_237 *
     >  OpenAD_Symbol_280)
      OpenAD_acc_62 = (OpenAD_Symbol_239 * OpenAD_Symbol_237 *
     >  OpenAD_Symbol_280)
      OpenAD_acc_63 = (INT((-1_w2f__i8)) * OpenAD_Symbol_280)
      OpenAD_acc_64 = (OpenAD_Symbol_240 * OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_Symbol_241 * OpenAD_acc_63)
      OpenAD_acc_66 = (OpenAD_Symbol_254 * INT((-1_w2f__i8)))
      OpenAD_acc_67 = (OpenAD_Symbol_255 * INT((-1_w2f__i8)))
      OpenAD_acc_68 = (OpenAD_Symbol_262 * INT((-1_w2f__i8)))
      OpenAD_acc_69 = (OpenAD_Symbol_263 * INT((-1_w2f__i8)))
      OpenAD_acc_70 = (OpenAD_Symbol_270 * INT((-1_w2f__i8)))
      OpenAD_acc_71 = (OpenAD_Symbol_271 * INT((-1_w2f__i8)))
      OpenAD_acc_72 = (OpenAD_Symbol_268 * INT((-1_w2f__i8)))
      OpenAD_acc_73 = (OpenAD_Symbol_269 * INT((-1_w2f__i8)))
      OpenAD_acc_74 = (OpenAD_Symbol_260 * INT((-1_w2f__i8)))
      OpenAD_acc_75 = (OpenAD_Symbol_261 * INT((-1_w2f__i8)))
      OpenAD_acc_76 = (OpenAD_Symbol_252 * INT((-1_w2f__i8)))
      OpenAD_acc_77 = (OpenAD_Symbol_253 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_210)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_211)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_213)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_214)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_216)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_217)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_219)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_220)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_222)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_223)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_272)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_273)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_274)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_275)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_276)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_277)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_225)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_226)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_227)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_228)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_229)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_230)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_231)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_232)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_250)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_251)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_66)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_248)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_249)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_76)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_258)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_259)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_68)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_69)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_256)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_257)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_74)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_266)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_267)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_70)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_71)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_264)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_265)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_72)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_73)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_279)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_50)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_51)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_52)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_53)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_54)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_55)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_56)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_57)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_58)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_59)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_60)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_61)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_62)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_64)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_65)
      OpenAD_Symbol_284 = (__value__(DSS2) + __value__(PRIML(2)) *
     >  __value__(UHATL))
      __value__(FLUX(2)) = (__value__(NSIZE) * OpenAD_Symbol_284)
      OpenAD_Symbol_285 = OpenAD_Symbol_284
      OpenAD_Symbol_287 = __value__(UHATL)
      OpenAD_Symbol_288 = __value__(PRIML(2))
      OpenAD_Symbol_286 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_287)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_288)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_285)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_286)
      OpenAD_Symbol_289 = (__value__(DSS3) + __value__(PRIML(1)) *
     >  __value__(NXHAT) + __value__(RUL) * __value__(UHATL))
      __value__(FLUX(3)) = (__value__(NSIZE) * OpenAD_Symbol_289)
      OpenAD_Symbol_290 = OpenAD_Symbol_289
      OpenAD_Symbol_292 = __value__(NXHAT)
      OpenAD_Symbol_293 = __value__(PRIML(1))
      OpenAD_Symbol_294 = __value__(UHATL)
      OpenAD_Symbol_295 = __value__(RUL)
      OpenAD_Symbol_291 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_292)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_293)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_294)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_295)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_290)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_291)
      OpenAD_Symbol_296 = (__value__(DSS4) + __value__(PRIML(1)) *
     >  __value__(NYHAT) + __value__(RVL) * __value__(UHATL))
      __value__(FLUX(4)) = (__value__(NSIZE) * OpenAD_Symbol_296)
      OpenAD_Symbol_297 = OpenAD_Symbol_296
      OpenAD_Symbol_299 = __value__(NYHAT)
      OpenAD_Symbol_300 = __value__(PRIML(1))
      OpenAD_Symbol_301 = __value__(UHATL)
      OpenAD_Symbol_302 = __value__(RVL)
      OpenAD_Symbol_298 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_299)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_300)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_301)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_302)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_297)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_298)
      OpenAD_Symbol_303 = (__value__(DSS5) + __value__(PRIML(1)) *
     >  __value__(NZHAT) + __value__(RWL) * __value__(UHATL))
      __value__(FLUX(5)) = (__value__(NSIZE) * OpenAD_Symbol_303)
      OpenAD_Symbol_304 = OpenAD_Symbol_303
      OpenAD_Symbol_306 = __value__(NZHAT)
      OpenAD_Symbol_307 = __value__(PRIML(1))
      OpenAD_Symbol_308 = __value__(UHATL)
      OpenAD_Symbol_309 = __value__(RWL)
      OpenAD_Symbol_305 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_306)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_307)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_308)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_309)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_304)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_305)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_418)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_419)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_420)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_421)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_422)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_423)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_418, __deriv__(FLUX(5)), __deriv__(
     > OpenAD_prop_28))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_419, __deriv__(FLUX(5)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(5)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_420, __deriv__(OpenAD_prop_28),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_421, __deriv__(OpenAD_prop_28),
     >  __deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_422, __deriv__(OpenAD_prop_28),
     >  __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_423, __deriv__(OpenAD_prop_28),
     >  __deriv__(PRIML(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_28), __deriv__(DSS5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_28))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_424)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_425)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_426)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_427)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_428)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_429)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_424, __deriv__(FLUX(4)), __deriv__(
     > OpenAD_prop_27))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_425, __deriv__(FLUX(4)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_426, __deriv__(OpenAD_prop_27),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_427, __deriv__(OpenAD_prop_27),
     >  __deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_428, __deriv__(OpenAD_prop_27),
     >  __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_429, __deriv__(OpenAD_prop_27),
     >  __deriv__(PRIML(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_27), __deriv__(DSS4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_27))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_430)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_431)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_432)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_433)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_434)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_435)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_430, __deriv__(FLUX(3)), __deriv__(
     > OpenAD_prop_26))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_431, __deriv__(FLUX(3)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_432, __deriv__(OpenAD_prop_26),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_433, __deriv__(OpenAD_prop_26),
     >  __deriv__(RUL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_434, __deriv__(OpenAD_prop_26),
     >  __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_435, __deriv__(OpenAD_prop_26),
     >  __deriv__(PRIML(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_26), __deriv__(DSS3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_26))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_436)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_437)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_438)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_439)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_436, __deriv__(FLUX(2)), __deriv__(
     > OpenAD_prop_25))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_437, __deriv__(FLUX(2)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_438, __deriv__(OpenAD_prop_25),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_439, __deriv__(OpenAD_prop_25),
     >  __deriv__(PRIML(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_25), __deriv__(DSS2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_25))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_440)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_441)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_442)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_443)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_444)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_445)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_446)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_447)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_448)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_449)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_450)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_451)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_452)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_453)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_454)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_455)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_456)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_457)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_458)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_459)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_460)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_461)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_462)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_463)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_464)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_465)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_466)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_467)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_468)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_469)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_470)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_471)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_472)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_473)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_474)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_475)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_476)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_477)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_478)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_479)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_480)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_481)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_482)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_483)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_484)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_485)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_486)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_487)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_488)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_489)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_490)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_491)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_492)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_493)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_494)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_495)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_496)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_497)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_498)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_499)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_500)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_501)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_502)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_503)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_440, __deriv__(FLUX(1)), __deriv__(UHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_441, __deriv__(FLUX(1)), __deriv__(
     > ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_442, __deriv__(FLUX(1)), __deriv__(CAVE)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_443, __deriv__(FLUX(1)), __deriv__(
     > GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_444, __deriv__(FLUX(1)), __deriv__(
     > ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_445, __deriv__(FLUX(1)), __deriv__(
     > THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_446, __deriv__(FLUX(1)), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_447, __deriv__(FLUX(1)), __deriv__(
     > UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_448, __deriv__(FLUX(1)), __deriv__(ALP2)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_449, __deriv__(FLUX(1)), __deriv__(
     > VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_450, __deriv__(FLUX(1)), __deriv__(ALP3)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_451, __deriv__(FLUX(1)), __deriv__(
     > WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_452, __deriv__(FLUX(1)), __deriv__(ALP4)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_453, __deriv__(FLUX(1)), __deriv__(
     > OpenAD_prop_24))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_454, __deriv__(FLUX(1)), __deriv__(UHATL
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_455, __deriv__(FLUX(1)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_456, __deriv__(DSS5), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_457, __deriv__(DSS5), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_458, __deriv__(DSS5), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_459, __deriv__(DSS5), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_460, __deriv__(DSS5), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_461, __deriv__(DSS5), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_462, __deriv__(DSS5), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_463, __deriv__(DSS5), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_464, __deriv__(DSS4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_465, __deriv__(DSS4), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_466, __deriv__(DSS4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_467, __deriv__(DSS4), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_468, __deriv__(DSS4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_469, __deriv__(DSS4), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_470, __deriv__(DSS4), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_471, __deriv__(DSS4), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_472, __deriv__(DSS3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_473, __deriv__(DSS3), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_474, __deriv__(DSS3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_475, __deriv__(DSS3), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_476, __deriv__(DSS3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_477, __deriv__(DSS3), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_478, __deriv__(DSS3), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_479, __deriv__(DSS3), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS3))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(DSS2), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_480, __deriv__(MU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_481, __deriv__(MU), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_482, __deriv__(MU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_483, __deriv__(MU), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_484, __deriv__(MU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_485, __deriv__(MU), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_486, __deriv__(MU), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_487, __deriv__(MU), __deriv__(ALP15P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_488, __deriv__(UHATL), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_489, __deriv__(UHATL), __deriv__(PRIML(5
     > )))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_490, __deriv__(UHATL), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_491, __deriv__(UHATL), __deriv__(PRIML(4
     > )))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_492, __deriv__(UHATL), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_493, __deriv__(UHATL), __deriv__(PRIML(3
     > )))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHATL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_24), __deriv__(EL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_24), __deriv__(PRIML(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_24))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(ALP15M), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15M), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15M))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_494, __deriv__(ALP5), __deriv__(
     > OpenAD_prop_23))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_495, __deriv__(ALP5), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_496, __deriv__(ALP4), __deriv__(
     > OpenAD_prop_22))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_497, __deriv__(ALP4), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_498, __deriv__(ALP3), __deriv__(
     > OpenAD_prop_21))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_499, __deriv__(ALP3), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_500, __deriv__(ALP2), __deriv__(
     > OpenAD_prop_20))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_501, __deriv__(ALP2), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_502, __deriv__(ALP1), __deriv__(
     > OpenAD_prop_19))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_503, __deriv__(ALP1), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_23), __deriv__(ALP5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_23))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_22), __deriv__(ALP4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_22))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_21), __deriv__(ALP3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_21))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_20), __deriv__(ALP2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_20))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_19), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_19))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_504)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_505)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_506)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_507)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_508)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_509)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_510)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_511)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_512)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_513)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_514)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_515)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_516)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_517)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_518)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_519)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_520)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_521)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_522)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_523)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_524)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_525)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_526)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_527)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_528)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_529)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_530)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_531)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_532)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_533)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_534)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_535)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_536)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_537)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_538)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_539)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_540)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_541)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_542)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_543)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_544)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_545)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_546)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_547)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_548)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_549)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_550)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_551)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_552)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_553)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_554)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_555)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_556)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_557)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_558)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_559)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_560)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_561)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_562)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_563)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_564)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_565)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_566)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_567)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_568)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_569)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_570)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_571)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_572)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_573)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_574)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_504, __deriv__(ALP4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_505, __deriv__(ALP4), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_506, __deriv__(ALP4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_507, __deriv__(ALP4), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_508, __deriv__(ALP4), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_509, __deriv__(ALP4), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_510, __deriv__(ALP4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_511, __deriv__(ALP4), __deriv__(DRV))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_512, __deriv__(ALP3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_513, __deriv__(ALP3), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_514, __deriv__(ALP3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_515, __deriv__(ALP3), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_516, __deriv__(ALP3), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_517, __deriv__(ALP3), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_518, __deriv__(ALP3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_519, __deriv__(ALP3), __deriv__(DRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_520, __deriv__(ALP2), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_521, __deriv__(ALP2), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_522, __deriv__(ALP2), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_523, __deriv__(ALP2), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_524, __deriv__(ALP2), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_525, __deriv__(ALP2), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_526, __deriv__(ALP2), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_527, __deriv__(ALP2), __deriv__(DRW))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP5), __deriv__(OpenAD_prop_18))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP1), __deriv__(OpenAD_prop_17))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_528, __deriv__(OpenAD_prop_18),
     >  __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_529, __deriv__(OpenAD_prop_18),
     >  __deriv__(DR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_18), __deriv__(OMEGA))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_18), __deriv__(NDDRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_18))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_530, __deriv__(OpenAD_prop_17),
     >  __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_531, __deriv__(OpenAD_prop_17),
     >  __deriv__(DR))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_17), __deriv__(NDDRU))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_17), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_17))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_532, __deriv__(OMEGA), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_533, __deriv__(OMEGA), __deriv__(GM1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_534, __deriv__(OMEGA), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_535, __deriv__(NDDRU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_536, __deriv__(NDDRU), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_537, __deriv__(NDDRU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_538, __deriv__(NDDRU), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_539, __deriv__(NDDRU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_540, __deriv__(NDDRU), __deriv__(DRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NDDRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_541, __deriv__(OpenAD_prop_16),
     >  __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_542, __deriv__(OpenAD_prop_16),
     >  __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_543, __deriv__(OpenAD_prop_16),
     >  __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_544, __deriv__(OpenAD_prop_16),
     >  __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_545, __deriv__(OpenAD_prop_16),
     >  __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_546, __deriv__(OpenAD_prop_16),
     >  __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_547, __deriv__(OpenAD_prop_16),
     >  __deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_548, __deriv__(OpenAD_prop_16),
     >  __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_549, __deriv__(OpenAD_prop_16),
     >  __deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_550, __deriv__(OpenAD_prop_16),
     >  __deriv__(PRIMR(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_551, __deriv__(OpenAD_prop_16),
     >  __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_552, __deriv__(OpenAD_prop_16),
     >  __deriv__(PRIMR(1)))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_16), __deriv__(EL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_553, __deriv__(OpenAD_prop_15),
     >  __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_554, __deriv__(OpenAD_prop_15),
     >  __deriv__(CAVE))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_15), __deriv__(WTILDE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_555, __deriv__(OpenAD_prop_14),
     >  __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_556, __deriv__(OpenAD_prop_14),
     >  __deriv__(CAVE))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_14), __deriv__(VTILDE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_557, __deriv__(OpenAD_prop_13),
     >  __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_558, __deriv__(OpenAD_prop_13),
     >  __deriv__(CAVE))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_13), __deriv__(UTILDE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_559, __deriv__(EL), __deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_560, __deriv__(EL), __deriv__(PRIML(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_561, __deriv__(EL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_562, __deriv__(EL), __deriv__(PRIML(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(EL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMU), __deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCP), __deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCM), __deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_563, __deriv__(DRW), __deriv__(PRIMR(5))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_564, __deriv__(DRW), __deriv__(PRIMR(2))
     > )
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRW), __deriv__(RWL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_565, __deriv__(DRV), __deriv__(PRIMR(4))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_566, __deriv__(DRV), __deriv__(PRIMR(2))
     > )
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRV), __deriv__(RVL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_567, __deriv__(DRU), __deriv__(PRIMR(3))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_568, __deriv__(DRU), __deriv__(PRIMR(2))
     > )
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRU), __deriv__(RUL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DR), __deriv__(PRIML(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(DR), __deriv__(PRIMR(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_569, __deriv__(RWL), __deriv__(PRIML(5))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_570, __deriv__(RWL), __deriv__(PRIML(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_571, __deriv__(RVL), __deriv__(PRIML(4))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_572, __deriv__(RVL), __deriv__(PRIML(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_573, __deriv__(RUL), __deriv__(PRIML(3))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_574, __deriv__(RUL), __deriv__(PRIML(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RUL))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_12), __deriv__(OpenAD_prop_9)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_11), __deriv__(OpenAD_prop_8)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_10), __deriv__(OpenAD_prop_7)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_8))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_7))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_325)
      IF(OpenAD_Symbol_325 .ne. 0) THEN
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(ALAMU), __deriv__(LAMU))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMU))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_575)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_576)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_575, __deriv__(ALAMU), __deriv__(
     > OpenAD_prop_29))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_576, __deriv__(ALAMU), __deriv__(
     > DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMU))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_29), __deriv__(LAM2))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_29), __deriv__(DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_29))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_415)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_416)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_417)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_415, __deriv__(DELTA2), __deriv__(
     > OpenAD_prop_6))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_416, __deriv__(DELTA2), __deriv__(LEFIX)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DELTA2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_417, __deriv__(LAM2), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAM2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_6))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_326)
      IF(OpenAD_Symbol_326 .ne. 0) THEN
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(ALAMCP), __deriv__(LAMCP))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCP))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_577)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_578)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_577, __deriv__(ALAMCP), __deriv__(
     > OpenAD_prop_30))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_578, __deriv__(ALAMCP), __deriv__(
     > DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCP))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_30), __deriv__(LAM2))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_30), __deriv__(DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_30))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_414)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_414, __deriv__(LAM2), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAM2))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_327)
      IF(OpenAD_Symbol_327 .ne. 0) THEN
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(ALAMCM), __deriv__(LAMCM))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCM))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_579)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_580)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_579, __deriv__(ALAMCM), __deriv__(
     > OpenAD_prop_31))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_580, __deriv__(ALAMCM), __deriv__(
     > DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCM))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_31), __deriv__(LAM2))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_31), __deriv__(DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_31))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_353)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_354)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_355)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_356)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_357)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_358)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_359)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_360)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_361)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_362)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_363)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_364)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_365)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_366)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_367)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_368)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_369)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_370)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_371)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_372)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_373)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_374)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_353, __deriv__(DELTA2), __deriv__(
     > OpenAD_prop_5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_354, __deriv__(DELTA2), __deriv__(NLEFIX
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DELTA2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_355, __deriv__(LAM2), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAM2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCP))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMU), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(LAMCM), __deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCM), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_356, __deriv__(UHAT), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_357, __deriv__(UHAT), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_358, __deriv__(UHAT), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_359, __deriv__(UHAT), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_360, __deriv__(UHAT), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_361, __deriv__(UHAT), __deriv__(NXHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_362, __deriv__(WTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_363, __deriv__(WTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_364, __deriv__(WTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_365, __deriv__(WTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_366, __deriv__(VTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_367, __deriv__(VTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_368, __deriv__(VTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_369, __deriv__(VTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_370, __deriv__(UTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_371, __deriv__(UTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_372, __deriv__(UTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_373, __deriv__(UTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_374, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_4), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_375)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_376)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_377)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_378)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_379)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_380)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_381)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_382)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_383)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_384)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_385)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_386)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_387)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_388)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_389)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_390)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_391)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_392)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_393)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_394)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_395)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_396)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_397)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_398)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_399)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_400)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_401)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_402)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_403)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_404)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_405)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_406)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_407)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_408)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_409)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_410)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_411)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_412)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_413)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_375, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_376, __deriv__(CAVE), __deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_377, __deriv__(CAVE), __deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_378, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_379, __deriv__(CAVE), __deriv__(GM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THTAVE), __deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_380, __deriv__(OpenAD_prop_3), __deriv__
     > (UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_381, __deriv__(OpenAD_prop_3), __deriv__
     > (VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_382, __deriv__(OpenAD_prop_3), __deriv__
     > (WAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_383, __deriv__(WAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_384, __deriv__(WAVE), __deriv__(PRIML(5)
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_385, __deriv__(WAVE), __deriv__(PRIMR(5)
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_386, __deriv__(VAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_387, __deriv__(VAVE), __deriv__(PRIML(4)
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_388, __deriv__(VAVE), __deriv__(PRIMR(4)
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_389, __deriv__(UAVE), __deriv__(PRIML(3)
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_390, __deriv__(UAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_391, __deriv__(UAVE), __deriv__(PRIMR(3)
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_392, __deriv__(HR), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_393, __deriv__(HR), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_394, __deriv__(HR), __deriv__(PRIMR(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_395, __deriv__(HR), __deriv__(PRIMR(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HR), __deriv__(THETAR))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_396, __deriv__(HL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_397, __deriv__(HL), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_398, __deriv__(HL), __deriv__(PRIML(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_399, __deriv__(HL), __deriv__(PRIML(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HL), __deriv__(THETAL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAR), __deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAL), __deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_400, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIMR(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_401, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIMR(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_402, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIMR(5)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_403, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_404, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_405, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML(5)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_406, __deriv__(OpenAD_prop_0), __deriv__
     > (PRIML(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_407, __deriv__(OpenAD_prop_0), __deriv__
     > (PRIMR(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_408, __deriv__(NZHAT), __deriv__(NSIZEI)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_409, __deriv__(NZHAT), __deriv__(NRM(3))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_410, __deriv__(NYHAT), __deriv__(NSIZEI)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_411, __deriv__(NYHAT), __deriv__(NRM(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_412, __deriv__(NXHAT), __deriv__(NSIZEI)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_413, __deriv__(NXHAT), __deriv__(NRM(1))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NXHAT))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_328)
      IF(OpenAD_Symbol_328 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_352)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_352, __deriv__(NSIZEI), __deriv__(
     > NSIZE))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(NSIZEI))
      ELSE
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(NSIZEI))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_349)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_350)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_351)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_349, __deriv__(NSIZE), __deriv__(NRM(1))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_350, __deriv__(NSIZE), __deriv__(NRM(2))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_351, __deriv__(NSIZE), __deriv__(NRM(3))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NSIZE))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = ((__value__(NRM(1)) ** 2) +(__value__(NRM(2))
     >  ** 2) +(__value__(NRM(3)) ** 2))
      __value__(NSIZE) = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = (2 *(__value__(NRM(1)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2 *(__value__(NRM(2)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_6 = (2 *(__value__(NRM(3)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      OpenAD_acc_0 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      OpenAD_acc_1 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_acc_2 = (OpenAD_Symbol_2 * OpenAD_Symbol_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_2)
      IF(MCHEPS .LT. __value__(NSIZE)) THEN
        __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
        OpenAD_Symbol_9 = (-(1.0D00 /(__value__(NSIZE) * __value__(
     > NSIZE))))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_9)
        OpenAD_Symbol_341 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_341)
      ELSE
        __value__(NSIZEI) = 0.0D00
        OpenAD_Symbol_342 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_342)
      ENDIF
      __value__(NXHAT) = (__value__(NRM(1)) * __value__(NSIZEI))
      OpenAD_Symbol_10 = __value__(NSIZEI)
      OpenAD_Symbol_11 = __value__(NRM(1))
      __value__(NYHAT) = (__value__(NRM(2)) * __value__(NSIZEI))
      OpenAD_Symbol_12 = __value__(NSIZEI)
      OpenAD_Symbol_13 = __value__(NRM(2))
      __value__(NZHAT) = (__value__(NRM(3)) * __value__(NSIZEI))
      OpenAD_Symbol_14 = __value__(NSIZEI)
      OpenAD_Symbol_15 = __value__(NRM(3))
      OpenAD_Symbol_20 = (__value__(PRIMR(2)) / __value__(PRIML(2)))
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20) + 1.0D00)
      __value__(ROEL) = (1.0D00 / OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1_w2f__i8) / __value__(PRIML(2)))
      OpenAD_Symbol_23 = (-(__value__(PRIMR(2)) /(__value__(PRIML(2)) *
     >  __value__(PRIML(2)))))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00 /(OpenAD_Symbol_16 *
     >  OpenAD_Symbol_16)))
      __value__(ROER) = (1.0D00 - __value__(ROEL))
      OpenAD_Symbol_25 = ((__value__(PRIML(3)) ** 2) +(__value__(PRIML(
     > 4)) ** 2) +(__value__(PRIML(5)) ** 2))
      __value__(THETAL) = (OpenAD_Symbol_25 * 5.0D-01)
      OpenAD_Symbol_27 = (2 *(__value__(PRIML(3)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_29 = (2 *(__value__(PRIML(4)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_31 = (2 *(__value__(PRIML(5)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_33 = ((__value__(PRIMR(3)) ** 2) +(__value__(PRIMR(
     > 4)) ** 2) +(__value__(PRIMR(5)) ** 2))
      __value__(THETAR) = (OpenAD_Symbol_33 * 5.0D-01)
      OpenAD_Symbol_35 = (2 *(__value__(PRIMR(3)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_37 = (2 *(__value__(PRIMR(4)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_39 = (2 *(__value__(PRIMR(5)) **(2 - INT(1_w2f__i8)
     > )))
      OpenAD_Symbol_44 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_Symbol_41 = (__value__(PRIML(1)) * OpenAD_Symbol_44)
      __value__(HL) = (__value__(THETAL) +(OpenAD_Symbol_41 / __value__
     > (PRIML(2))))
      OpenAD_Symbol_45 = OpenAD_Symbol_44
      OpenAD_Symbol_47 = __value__(GM1INV)
      OpenAD_Symbol_48 = __value__(GAMMA)
      OpenAD_Symbol_46 = __value__(PRIML(1))
      OpenAD_Symbol_42 = (INT(1_w2f__i8) / __value__(PRIML(2)))
      OpenAD_Symbol_43 = (-(OpenAD_Symbol_41 /(__value__(PRIML(2)) *
     >  __value__(PRIML(2)))))
      OpenAD_Symbol_52 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_Symbol_49 = (__value__(PRIMR(1)) * OpenAD_Symbol_52)
      __value__(HR) = (__value__(THETAR) +(OpenAD_Symbol_49 / __value__
     > (PRIMR(2))))
      OpenAD_Symbol_53 = OpenAD_Symbol_52
      OpenAD_Symbol_55 = __value__(GM1INV)
      OpenAD_Symbol_56 = __value__(GAMMA)
      OpenAD_Symbol_54 = __value__(PRIMR(1))
      OpenAD_Symbol_50 = (INT(1_w2f__i8) / __value__(PRIMR(2)))
      OpenAD_Symbol_51 = (-(OpenAD_Symbol_49 /(__value__(PRIMR(2)) *
     >  __value__(PRIMR(2)))))
      __value__(UAVE) = (__value__(PRIML(3)) * __value__(ROEL) +
     >  __value__(PRIMR(3)) * __value__(ROER))
      OpenAD_Symbol_57 = __value__(ROEL)
      OpenAD_Symbol_58 = __value__(PRIML(3))
      OpenAD_Symbol_59 = __value__(ROER)
      OpenAD_Symbol_60 = __value__(PRIMR(3))
      __value__(VAVE) = (__value__(PRIML(4)) * __value__(ROEL) +
     >  __value__(PRIMR(4)) * __value__(ROER))
      OpenAD_Symbol_61 = __value__(ROEL)
      OpenAD_Symbol_62 = __value__(PRIML(4))
      OpenAD_Symbol_63 = __value__(ROER)
      OpenAD_Symbol_64 = __value__(PRIMR(4))
      __value__(WAVE) = (__value__(PRIML(5)) * __value__(ROEL) +
     >  __value__(PRIMR(5)) * __value__(ROER))
      OpenAD_Symbol_65 = __value__(ROEL)
      OpenAD_Symbol_66 = __value__(PRIML(5))
      OpenAD_Symbol_67 = __value__(ROER)
      OpenAD_Symbol_68 = __value__(PRIMR(5))
      __value__(HAVE) = (__value__(HL) * __value__(ROEL) + __value__(HR
     > ) * __value__(ROER))
      OpenAD_Symbol_69 = __value__(ROEL)
      OpenAD_Symbol_70 = __value__(HL)
      OpenAD_Symbol_71 = __value__(ROER)
      OpenAD_Symbol_72 = __value__(HR)
      OpenAD_Symbol_73 = ((__value__(UAVE) ** 2) +(__value__(VAVE) ** 2
     > ) +(__value__(WAVE) ** 2))
      __value__(THTAVE) = (OpenAD_Symbol_73 * 5.0D-01)
      OpenAD_Symbol_75 = (2 *(__value__(UAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_77 = (2 *(__value__(VAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_79 = (2 *(__value__(WAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_81 = (__value__(HAVE) - __value__(THTAVE))
      __value__(CAVE) = (__value__(GM1) * OpenAD_Symbol_81)
      OpenAD_Symbol_82 = OpenAD_Symbol_81
      OpenAD_Symbol_83 = __value__(GM1)
      OpenAD_acc_3 = (OpenAD_Symbol_54 * OpenAD_Symbol_50)
      OpenAD_acc_4 = (OpenAD_Symbol_46 * OpenAD_Symbol_42)
      OpenAD_acc_5 = (5.0D-01 * INT((-1_w2f__i8)) * OpenAD_Symbol_83)
      OpenAD_acc_6 = (OpenAD_Symbol_71 * OpenAD_Symbol_83)
      OpenAD_acc_7 = (OpenAD_Symbol_69 * OpenAD_Symbol_83)
      OpenAD_acc_8 = (OpenAD_Symbol_18 *(OpenAD_Symbol_70 *
     >  OpenAD_Symbol_83 + INT((-1_w2f__i8)) * OpenAD_Symbol_72 *
     >  OpenAD_Symbol_83))
      OpenAD_acc_9 = (OpenAD_Symbol_18 *(OpenAD_Symbol_66 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_68))
      OpenAD_acc_10 = (OpenAD_Symbol_18 *(OpenAD_Symbol_62 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_64))
      OpenAD_acc_11 = (OpenAD_Symbol_18 *(OpenAD_Symbol_58 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_60))
      OpenAD_acc_12 = (OpenAD_Symbol_22 * OpenAD_Symbol_21)
      OpenAD_acc_13 = (OpenAD_Symbol_23 * OpenAD_Symbol_21)
      OpenAD_acc_14 = (OpenAD_Symbol_45 * OpenAD_Symbol_42)
      OpenAD_acc_15 = (OpenAD_Symbol_47 * OpenAD_acc_4)
      OpenAD_acc_16 = (OpenAD_Symbol_48 * OpenAD_acc_4)
      OpenAD_acc_17 = (OpenAD_Symbol_53 * OpenAD_Symbol_50)
      OpenAD_acc_18 = (OpenAD_Symbol_55 * OpenAD_acc_3)
      OpenAD_acc_19 = (OpenAD_Symbol_56 * OpenAD_acc_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_12)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_12)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_31)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_39)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_16)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_51)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_17)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_18)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_19)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_59)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_57)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_63)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_61)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_65)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_79)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_82)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_5)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_6)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_7)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_8)
      OpenAD_Symbol_85 = SIN(__value__(CAVE))
      OpenAD_Symbol_84 = COS(__value__(CAVE))
      __value__(CAVE) = OpenAD_Symbol_85
      __value__(UHAT) = (__value__(NXHAT) * __value__(UAVE) + __value__
     > (NYHAT) * __value__(VAVE) + __value__(NZHAT) * __value__(WAVE))
      OpenAD_Symbol_86 = __value__(UAVE)
      OpenAD_Symbol_87 = __value__(NXHAT)
      OpenAD_Symbol_88 = __value__(VAVE)
      OpenAD_Symbol_89 = __value__(NYHAT)
      OpenAD_Symbol_90 = __value__(WAVE)
      OpenAD_Symbol_91 = __value__(NZHAT)
      __value__(UTILDE) = (__value__(NYHAT) * __value__(WAVE) -
     >  __value__(NZHAT) * __value__(VAVE))
      OpenAD_Symbol_92 = __value__(WAVE)
      OpenAD_Symbol_93 = __value__(NYHAT)
      OpenAD_Symbol_94 = __value__(VAVE)
      OpenAD_Symbol_95 = __value__(NZHAT)
      __value__(VTILDE) = (__value__(NZHAT) * __value__(UAVE) -
     >  __value__(NXHAT) * __value__(WAVE))
      OpenAD_Symbol_96 = __value__(UAVE)
      OpenAD_Symbol_97 = __value__(NZHAT)
      OpenAD_Symbol_98 = __value__(WAVE)
      OpenAD_Symbol_99 = __value__(NXHAT)
      __value__(WTILDE) = (__value__(NXHAT) * __value__(VAVE) -
     >  __value__(NYHAT) * __value__(UAVE))
      OpenAD_Symbol_100 = __value__(VAVE)
      OpenAD_Symbol_101 = __value__(NXHAT)
      OpenAD_Symbol_102 = __value__(UAVE)
      OpenAD_Symbol_103 = __value__(NYHAT)
      __value__(LAMCM) = (__value__(UHAT) - __value__(CAVE))
      __value__(LAMU) = __value__(UHAT)
      __value__(LAMCP) = (__value__(CAVE) + __value__(UHAT))
      OpenAD_Symbol_104 = (__value__(CAVE) + __value__(UHAT))
      __value__(DELTA) = (__value__(NLEFIX) * OpenAD_Symbol_104)
      OpenAD_Symbol_105 = OpenAD_Symbol_104
      OpenAD_Symbol_106 = __value__(NLEFIX)
      __value__(DELTA2) = (__value__(DELTA) ** 2)
      OpenAD_Symbol_107 = (2 *(__value__(DELTA) **(2 - INT(1_w2f__i8)))
     > )
      __value__(LAM2) = (__value__(LAMCM) ** 2)
      OpenAD_Symbol_109 = (2 *(__value__(LAMCM) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_acc_20 = (OpenAD_Symbol_105 * OpenAD_Symbol_107)
      OpenAD_acc_21 = (OpenAD_Symbol_106 * OpenAD_Symbol_107)
      OpenAD_acc_22 = (OpenAD_Symbol_94 * INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_Symbol_95 * INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_Symbol_98 * INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_Symbol_99 * INT((-1_w2f__i8)))
      OpenAD_acc_26 = (OpenAD_Symbol_102 * INT((-1_w2f__i8)))
      OpenAD_acc_27 = (OpenAD_Symbol_103 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_84)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_92)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_93)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_22)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_96)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_97)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_24)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_25)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_100)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_101)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_26)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_86)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_87)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_88)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_90)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_91)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_109)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_20)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_21)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCM) = __value__(LAMCM)
        OpenAD_Symbol_343 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_343)
      ELSE
        OpenAD_Symbol_323 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_320 = (OpenAD_Symbol_323 * 5.0D-01)
        __value__(ALAMCM) = (OpenAD_Symbol_320 / __value__(DELTA2))
        OpenAD_Symbol_321 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_322 = (-(OpenAD_Symbol_320 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_acc_80 = (5.0D-01 * OpenAD_Symbol_321)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_322)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_80)
        OpenAD_Symbol_344 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_344)
      ENDIF
      __value__(LAM2) = (__value__(LAMCP) ** 2)
      OpenAD_Symbol_111 = (2 *(__value__(LAMCP) **(2 - INT(1_w2f__i8)))
     > )
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_111)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCP) = __value__(LAMCP)
        OpenAD_Symbol_345 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_345)
      ELSE
        OpenAD_Symbol_318 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_315 = (OpenAD_Symbol_318 * 5.0D-01)
        __value__(ALAMCP) = (OpenAD_Symbol_315 / __value__(DELTA2))
        OpenAD_Symbol_316 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_317 = (-(OpenAD_Symbol_315 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_acc_79 = (5.0D-01 * OpenAD_Symbol_316)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_317)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_79)
        OpenAD_Symbol_346 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_346)
      ENDIF
      OpenAD_Symbol_113 = (__value__(CAVE) + __value__(UHAT))
      __value__(DELTA) = (__value__(LEFIX) * OpenAD_Symbol_113)
      OpenAD_Symbol_114 = OpenAD_Symbol_113
      OpenAD_Symbol_115 = __value__(LEFIX)
      __value__(DELTA2) = (__value__(DELTA) * __value__(DELTA))
      OpenAD_Symbol_116 = __value__(DELTA)
      OpenAD_Symbol_117 = __value__(DELTA)
      __value__(LAM2) = (__value__(LAMU) ** 2)
      OpenAD_Symbol_118 = (2 *(__value__(LAMU) **(2 - INT(1_w2f__i8))))
      OpenAD_acc_28 = (OpenAD_Symbol_116 + OpenAD_Symbol_117)
      OpenAD_acc_29 = (OpenAD_Symbol_114 * OpenAD_acc_28)
      OpenAD_acc_30 = (OpenAD_Symbol_115 * OpenAD_acc_28)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_118)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_30)
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMU) = __value__(LAMU)
        OpenAD_Symbol_347 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_347)
      ELSE
        OpenAD_Symbol_313 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_310 = (OpenAD_Symbol_313 * 5.0D-01)
        __value__(ALAMU) = (OpenAD_Symbol_310 / __value__(DELTA2))
        OpenAD_Symbol_311 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_312 = (-(OpenAD_Symbol_310 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_acc_78 = (5.0D-01 * OpenAD_Symbol_311)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_312)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_78)
        OpenAD_Symbol_348 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_348)
      ENDIF
      OpenAD_Symbol_120 = (__value__(LAMCM) - __value__(ALAMCM))
      __value__(ALAMCM) = (OpenAD_Symbol_120 * 5.0D-01)
      OpenAD_Symbol_122 = (__value__(LAMCP) - __value__(ALAMCP))
      __value__(ALAMCP) = (OpenAD_Symbol_122 * 5.0D-01)
      OpenAD_Symbol_124 = (__value__(LAMU) - __value__(ALAMU))
      __value__(ALAMU) = (OpenAD_Symbol_124 * 5.0D-01)
      __value__(EL) = (__value__(PRIML(1)) * __value__(GM1INV) +
     >  __value__(PRIML(2)) * __value__(THETAL))
      OpenAD_Symbol_126 = __value__(GM1INV)
      OpenAD_Symbol_127 = __value__(PRIML(1))
      OpenAD_Symbol_128 = __value__(THETAL)
      OpenAD_Symbol_129 = __value__(PRIML(2))
      __value__(RUL) = (__value__(PRIML(2)) * __value__(PRIML(3)))
      OpenAD_Symbol_130 = __value__(PRIML(3))
      OpenAD_Symbol_131 = __value__(PRIML(2))
      __value__(RVL) = (__value__(PRIML(2)) * __value__(PRIML(4)))
      OpenAD_Symbol_132 = __value__(PRIML(4))
      OpenAD_Symbol_133 = __value__(PRIML(2))
      __value__(RWL) = (__value__(PRIML(2)) * __value__(PRIML(5)))
      OpenAD_Symbol_134 = __value__(PRIML(5))
      OpenAD_Symbol_135 = __value__(PRIML(2))
      __value__(ER) = (__value__(PRIMR(1)) * __value__(GM1INV) +
     >  __value__(PRIMR(2)) * __value__(THETAR))
      OpenAD_Symbol_136 = __value__(GM1INV)
      OpenAD_Symbol_137 = __value__(PRIMR(1))
      OpenAD_Symbol_138 = __value__(THETAR)
      OpenAD_Symbol_139 = __value__(PRIMR(2))
      __value__(RUR) = (__value__(PRIMR(2)) * __value__(PRIMR(3)))
      OpenAD_Symbol_140 = __value__(PRIMR(3))
      OpenAD_Symbol_141 = __value__(PRIMR(2))
      __value__(RVR) = (__value__(PRIMR(2)) * __value__(PRIMR(4)))
      OpenAD_Symbol_142 = __value__(PRIMR(4))
      OpenAD_Symbol_143 = __value__(PRIMR(2))
      __value__(RWR) = (__value__(PRIMR(2)) * __value__(PRIMR(5)))
      OpenAD_Symbol_144 = __value__(PRIMR(5))
      OpenAD_Symbol_145 = __value__(PRIMR(2))
      __value__(DE) = (__value__(ER) - __value__(EL))
      __value__(DR) = (__value__(PRIMR(2)) - __value__(PRIML(2)))
      __value__(DRU) = (__value__(RUR) - __value__(RUL))
      __value__(DRV) = (__value__(RVR) - __value__(RVL))
      __value__(DRW) = (__value__(RWR) - __value__(RWL))
      __value__(UDDRU) = (__value__(DRU) * __value__(UAVE) + __value__(
     > DRV) * __value__(VAVE) + __value__(DRW) * __value__(WAVE))
      OpenAD_Symbol_146 = __value__(UAVE)
      OpenAD_Symbol_147 = __value__(DRU)
      OpenAD_Symbol_148 = __value__(VAVE)
      OpenAD_Symbol_149 = __value__(DRV)
      OpenAD_Symbol_150 = __value__(WAVE)
      OpenAD_Symbol_151 = __value__(DRW)
      OpenAD_Symbol_152 = (__value__(GM1) / __value__(CAVE))
      OpenAD_Symbol_153 = (__value__(DE) + __value__(DR) * __value__(
     > THTAVE) - __value__(UDDRU))
      __value__(OMEGA) = (OpenAD_Symbol_152 * OpenAD_Symbol_153)
      OpenAD_Symbol_156 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_Symbol_157 = (-(__value__(GM1) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_Symbol_154 = OpenAD_Symbol_153
      OpenAD_Symbol_158 = __value__(THTAVE)
      OpenAD_Symbol_159 = __value__(DR)
      OpenAD_Symbol_155 = OpenAD_Symbol_152
      __value__(NDDRU) = (__value__(DRU) * __value__(NXHAT) + __value__
     > (DRV) * __value__(NYHAT) + __value__(DRW) * __value__(NZHAT))
      OpenAD_Symbol_160 = __value__(NXHAT)
      OpenAD_Symbol_161 = __value__(DRU)
      OpenAD_Symbol_162 = __value__(NYHAT)
      OpenAD_Symbol_163 = __value__(DRV)
      OpenAD_Symbol_164 = __value__(NZHAT)
      OpenAD_Symbol_165 = __value__(DRW)
      OpenAD_Symbol_166 = (__value__(OMEGA) + __value__(DR) * __value__
     > (UHAT) - __value__(NDDRU))
      __value__(ALP1) = (OpenAD_Symbol_166 * 5.0D-01)
      OpenAD_Symbol_168 = __value__(UHAT)
      OpenAD_Symbol_169 = __value__(DR)
      OpenAD_Symbol_172 = (__value__(CAVE) * __value__(NXHAT) -
     >  __value__(UTILDE))
      OpenAD_Symbol_177 = (- __value__(NXHAT))
      __value__(ALP2) = (__value__(DRW) * __value__(NYHAT) + __value__(
     > DR) * OpenAD_Symbol_172 + __value__(OMEGA) * OpenAD_Symbol_177 -
     >  __value__(DRV) * __value__(NZHAT))
      OpenAD_Symbol_170 = __value__(NYHAT)
      OpenAD_Symbol_171 = __value__(DRW)
      OpenAD_Symbol_173 = OpenAD_Symbol_172
      OpenAD_Symbol_175 = __value__(NXHAT)
      OpenAD_Symbol_176 = __value__(CAVE)
      OpenAD_Symbol_174 = __value__(DR)
      OpenAD_Symbol_178 = OpenAD_Symbol_177
      OpenAD_Symbol_179 = __value__(OMEGA)
      OpenAD_Symbol_180 = __value__(NZHAT)
      OpenAD_Symbol_181 = __value__(DRV)
      OpenAD_Symbol_184 = (__value__(CAVE) * __value__(NYHAT) -
     >  __value__(VTILDE))
      OpenAD_Symbol_189 = (- __value__(NYHAT))
      __value__(ALP3) = (__value__(DRU) * __value__(NZHAT) + __value__(
     > DR) * OpenAD_Symbol_184 + __value__(OMEGA) * OpenAD_Symbol_189 -
     >  __value__(DRW) * __value__(NXHAT))
      OpenAD_Symbol_182 = __value__(NZHAT)
      OpenAD_Symbol_183 = __value__(DRU)
      OpenAD_Symbol_185 = OpenAD_Symbol_184
      OpenAD_Symbol_187 = __value__(NYHAT)
      OpenAD_Symbol_188 = __value__(CAVE)
      OpenAD_Symbol_186 = __value__(DR)
      OpenAD_Symbol_190 = OpenAD_Symbol_189
      OpenAD_Symbol_191 = __value__(OMEGA)
      OpenAD_Symbol_192 = __value__(NXHAT)
      OpenAD_Symbol_193 = __value__(DRW)
      OpenAD_Symbol_196 = (__value__(CAVE) * __value__(NZHAT) -
     >  __value__(WTILDE))
      OpenAD_Symbol_201 = (- __value__(NZHAT))
      __value__(ALP4) = (__value__(DRV) * __value__(NXHAT) + __value__(
     > DR) * OpenAD_Symbol_196 + __value__(OMEGA) * OpenAD_Symbol_201 -
     >  __value__(DRU) * __value__(NYHAT))
      OpenAD_Symbol_194 = __value__(NXHAT)
      OpenAD_Symbol_195 = __value__(DRV)
      OpenAD_Symbol_197 = OpenAD_Symbol_196
      OpenAD_Symbol_199 = __value__(NZHAT)
      OpenAD_Symbol_200 = __value__(CAVE)
      OpenAD_Symbol_198 = __value__(DR)
      OpenAD_Symbol_202 = OpenAD_Symbol_201
      OpenAD_Symbol_203 = __value__(OMEGA)
      OpenAD_Symbol_204 = __value__(NYHAT)
      OpenAD_Symbol_205 = __value__(DRU)
      OpenAD_Symbol_206 = (__value__(NDDRU) + __value__(OMEGA) -
     >  __value__(DR) * __value__(UHAT))
      __value__(ALP5) = (OpenAD_Symbol_206 * 5.0D-01)
      OpenAD_Symbol_208 = __value__(UHAT)
      OpenAD_Symbol_209 = __value__(DR)
      OpenAD_acc_31 = (OpenAD_Symbol_156 * OpenAD_Symbol_154)
      OpenAD_acc_32 = (OpenAD_Symbol_157 * OpenAD_Symbol_154)
      OpenAD_acc_33 = (OpenAD_Symbol_146 * INT((-1_w2f__i8)))
      OpenAD_acc_34 = (OpenAD_Symbol_147 * INT((-1_w2f__i8)))
      OpenAD_acc_35 = (OpenAD_Symbol_148 * INT((-1_w2f__i8)))
      OpenAD_acc_36 = (OpenAD_Symbol_149 * INT((-1_w2f__i8)))
      OpenAD_acc_37 = (OpenAD_Symbol_150 * INT((-1_w2f__i8)))
      OpenAD_acc_38 = (OpenAD_Symbol_151 * INT((-1_w2f__i8)))
      OpenAD_acc_39 = (INT((-1_w2f__i8)) * OpenAD_Symbol_179)
      OpenAD_acc_40 = (OpenAD_Symbol_180 * INT((-1_w2f__i8)))
      OpenAD_acc_41 = (OpenAD_Symbol_181 * INT((-1_w2f__i8)))
      OpenAD_acc_42 = (INT((-1_w2f__i8)) * OpenAD_Symbol_191)
      OpenAD_acc_43 = (OpenAD_Symbol_192 * INT((-1_w2f__i8)))
      OpenAD_acc_44 = (OpenAD_Symbol_193 * INT((-1_w2f__i8)))
      OpenAD_acc_45 = (INT((-1_w2f__i8)) * OpenAD_Symbol_203)
      OpenAD_acc_46 = (OpenAD_Symbol_204 * INT((-1_w2f__i8)))
      OpenAD_acc_47 = (OpenAD_Symbol_205 * INT((-1_w2f__i8)))
      OpenAD_acc_48 = (OpenAD_Symbol_208 * INT((-1_w2f__i8)))
      OpenAD_acc_49 = (OpenAD_Symbol_209 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_130)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_131)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_132)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_133)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_134)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_135)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_140)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_141)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_142)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_143)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_144)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_145)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_126)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_127)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_128)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_129)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_175)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_176)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_187)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_188)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_199)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_200)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_136)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_137)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_138)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_139)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_158)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_159)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_33)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_34)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_36)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_38)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_160)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_161)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_162)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_163)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_164)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_165)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_155)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_31)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_168)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_169)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_48)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_49)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_170)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_171)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_173)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_174)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_178)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_39)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_40)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_41)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_182)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_183)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_185)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_186)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_190)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_42)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_44)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_194)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_195)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_197)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_198)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_202)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_45)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_46)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_47)
      OpenAD_Symbol_212 = (__value__(ALAMCM) * __value__(ALP1))
      OpenAD_Symbol_210 = __value__(ALP1)
      OpenAD_Symbol_211 = __value__(ALAMCM)
      __value__(ALP1) = OpenAD_Symbol_212
      OpenAD_Symbol_215 = (__value__(ALAMU) * __value__(ALP2))
      OpenAD_Symbol_213 = __value__(ALP2)
      OpenAD_Symbol_214 = __value__(ALAMU)
      __value__(ALP2) = OpenAD_Symbol_215
      OpenAD_Symbol_218 = (__value__(ALAMU) * __value__(ALP3))
      OpenAD_Symbol_216 = __value__(ALP3)
      OpenAD_Symbol_217 = __value__(ALAMU)
      __value__(ALP3) = OpenAD_Symbol_218
      OpenAD_Symbol_221 = (__value__(ALAMU) * __value__(ALP4))
      OpenAD_Symbol_219 = __value__(ALP4)
      OpenAD_Symbol_220 = __value__(ALAMU)
      __value__(ALP4) = OpenAD_Symbol_221
      OpenAD_Symbol_224 = (__value__(ALAMCP) * __value__(ALP5))
      OpenAD_Symbol_222 = __value__(ALP5)
      OpenAD_Symbol_223 = __value__(ALAMCP)
      __value__(ALP5) = OpenAD_Symbol_224
      __value__(ALP15P) = (__value__(ALP1) + __value__(ALP5))
      __value__(ALP15M) = (__value__(ALP1) - __value__(ALP5))
      __value__(MU) = ((__value__(ALP15P) / __value__(CAVE)) +
     >  __value__(ALP2) * __value__(NXHAT) + __value__(ALP3) *
     >  __value__(NYHAT) + __value__(ALP4) * __value__(NZHAT))
      OpenAD_Symbol_225 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_Symbol_226 = (-(__value__(ALP15P) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_Symbol_227 = __value__(NXHAT)
      OpenAD_Symbol_228 = __value__(ALP2)
      OpenAD_Symbol_229 = __value__(NYHAT)
      OpenAD_Symbol_230 = __value__(ALP3)
      OpenAD_Symbol_231 = __value__(NZHAT)
      OpenAD_Symbol_232 = __value__(ALP4)
      OpenAD_Symbol_235 = (__value__(GM1INV) * __value__(CAVE))
      __value__(DSS1) = (__value__(MU) * __value__(THTAVE) + __value__(
     > ALP15P) * OpenAD_Symbol_235 - __value__(ALP15M) * __value__(UHAT
     > ) + __value__(ALP2) * __value__(UTILDE) + __value__(ALP3) *
     >  __value__(VTILDE) + __value__(ALP4) * __value__(WTILDE))
      OpenAD_Symbol_233 = __value__(THTAVE)
      OpenAD_Symbol_234 = __value__(MU)
      OpenAD_Symbol_236 = OpenAD_Symbol_235
      OpenAD_Symbol_238 = __value__(CAVE)
      OpenAD_Symbol_239 = __value__(GM1INV)
      OpenAD_Symbol_237 = __value__(ALP15P)
      OpenAD_Symbol_240 = __value__(UHAT)
      OpenAD_Symbol_241 = __value__(ALP15M)
      OpenAD_Symbol_242 = __value__(UTILDE)
      OpenAD_Symbol_243 = __value__(ALP2)
      OpenAD_Symbol_244 = __value__(VTILDE)
      OpenAD_Symbol_245 = __value__(ALP3)
      OpenAD_Symbol_246 = __value__(WTILDE)
      OpenAD_Symbol_247 = __value__(ALP4)
      __value__(DSS2) = __value__(MU)
      __value__(DSS3) = (__value__(ALP3) * __value__(NZHAT) + __value__
     > (MU) * __value__(UAVE) - __value__(ALP15M) * __value__(NXHAT) -
     >  __value__(ALP4) * __value__(NYHAT))
      OpenAD_Symbol_248 = __value__(NZHAT)
      OpenAD_Symbol_249 = __value__(ALP3)
      OpenAD_Symbol_250 = __value__(UAVE)
      OpenAD_Symbol_251 = __value__(MU)
      OpenAD_Symbol_252 = __value__(NXHAT)
      OpenAD_Symbol_253 = __value__(ALP15M)
      OpenAD_Symbol_254 = __value__(NYHAT)
      OpenAD_Symbol_255 = __value__(ALP4)
      __value__(DSS4) = (__value__(ALP4) * __value__(NXHAT) + __value__
     > (MU) * __value__(VAVE) - __value__(ALP15M) * __value__(NYHAT) -
     >  __value__(ALP2) * __value__(NZHAT))
      OpenAD_Symbol_256 = __value__(NXHAT)
      OpenAD_Symbol_257 = __value__(ALP4)
      OpenAD_Symbol_258 = __value__(VAVE)
      OpenAD_Symbol_259 = __value__(MU)
      OpenAD_Symbol_260 = __value__(NYHAT)
      OpenAD_Symbol_261 = __value__(ALP15M)
      OpenAD_Symbol_262 = __value__(NZHAT)
      OpenAD_Symbol_263 = __value__(ALP2)
      __value__(DSS5) = (__value__(ALP2) * __value__(NYHAT) + __value__
     > (MU) * __value__(WAVE) - __value__(ALP15M) * __value__(NZHAT) -
     >  __value__(ALP3) * __value__(NXHAT))
      OpenAD_Symbol_264 = __value__(NYHAT)
      OpenAD_Symbol_265 = __value__(ALP2)
      OpenAD_Symbol_266 = __value__(WAVE)
      OpenAD_Symbol_267 = __value__(MU)
      OpenAD_Symbol_268 = __value__(NZHAT)
      OpenAD_Symbol_269 = __value__(ALP15M)
      OpenAD_Symbol_270 = __value__(NXHAT)
      OpenAD_Symbol_271 = __value__(ALP3)
      __value__(UHATL) = (__value__(PRIML(3)) * __value__(NXHAT) +
     >  __value__(PRIML(4)) * __value__(NYHAT) + __value__(PRIML(5)) *
     >  __value__(NZHAT))
      OpenAD_Symbol_272 = __value__(NXHAT)
      OpenAD_Symbol_273 = __value__(PRIML(3))
      OpenAD_Symbol_274 = __value__(NYHAT)
      OpenAD_Symbol_275 = __value__(PRIML(4))
      OpenAD_Symbol_276 = __value__(NZHAT)
      OpenAD_Symbol_277 = __value__(PRIML(5))
      OpenAD_Symbol_281 = (__value__(PRIML(1)) + __value__(EL))
      OpenAD_Symbol_278 = (__value__(DSS1) + __value__(UHATL) *
     >  OpenAD_Symbol_281)
      __value__(FLUX(1)) = (__value__(NSIZE) * OpenAD_Symbol_278)
      OpenAD_Symbol_279 = OpenAD_Symbol_278
      OpenAD_Symbol_282 = OpenAD_Symbol_281
      OpenAD_Symbol_283 = __value__(UHATL)
      OpenAD_Symbol_280 = __value__(NSIZE)
      OpenAD_acc_50 = (OpenAD_Symbol_282 * OpenAD_Symbol_280)
      OpenAD_acc_51 = (OpenAD_Symbol_283 * OpenAD_Symbol_280)
      OpenAD_acc_52 = (OpenAD_Symbol_246 * OpenAD_Symbol_280)
      OpenAD_acc_53 = (OpenAD_Symbol_247 * OpenAD_Symbol_280)
      OpenAD_acc_54 = (OpenAD_Symbol_244 * OpenAD_Symbol_280)
      OpenAD_acc_55 = (OpenAD_Symbol_245 * OpenAD_Symbol_280)
      OpenAD_acc_56 = (OpenAD_Symbol_242 * OpenAD_Symbol_280)
      OpenAD_acc_57 = (OpenAD_Symbol_243 * OpenAD_Symbol_280)
      OpenAD_acc_58 = (OpenAD_Symbol_233 * OpenAD_Symbol_280)
      OpenAD_acc_59 = (OpenAD_Symbol_234 * OpenAD_Symbol_280)
      OpenAD_acc_60 = (OpenAD_Symbol_236 * OpenAD_Symbol_280)
      OpenAD_acc_61 = (OpenAD_Symbol_238 * OpenAD_Symbol_237 *
     >  OpenAD_Symbol_280)
      OpenAD_acc_62 = (OpenAD_Symbol_239 * OpenAD_Symbol_237 *
     >  OpenAD_Symbol_280)
      OpenAD_acc_63 = (INT((-1_w2f__i8)) * OpenAD_Symbol_280)
      OpenAD_acc_64 = (OpenAD_Symbol_240 * OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_Symbol_241 * OpenAD_acc_63)
      OpenAD_acc_66 = (OpenAD_Symbol_254 * INT((-1_w2f__i8)))
      OpenAD_acc_67 = (OpenAD_Symbol_255 * INT((-1_w2f__i8)))
      OpenAD_acc_68 = (OpenAD_Symbol_262 * INT((-1_w2f__i8)))
      OpenAD_acc_69 = (OpenAD_Symbol_263 * INT((-1_w2f__i8)))
      OpenAD_acc_70 = (OpenAD_Symbol_270 * INT((-1_w2f__i8)))
      OpenAD_acc_71 = (OpenAD_Symbol_271 * INT((-1_w2f__i8)))
      OpenAD_acc_72 = (OpenAD_Symbol_268 * INT((-1_w2f__i8)))
      OpenAD_acc_73 = (OpenAD_Symbol_269 * INT((-1_w2f__i8)))
      OpenAD_acc_74 = (OpenAD_Symbol_260 * INT((-1_w2f__i8)))
      OpenAD_acc_75 = (OpenAD_Symbol_261 * INT((-1_w2f__i8)))
      OpenAD_acc_76 = (OpenAD_Symbol_252 * INT((-1_w2f__i8)))
      OpenAD_acc_77 = (OpenAD_Symbol_253 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_210)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_211)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_213)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_214)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_216)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_217)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_219)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_220)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_222)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_223)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_272)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_273)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_274)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_275)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_276)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_277)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_225)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_226)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_227)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_228)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_229)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_230)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_231)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_232)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_250)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_251)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_66)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_248)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_249)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_76)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_258)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_259)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_68)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_69)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_256)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_257)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_74)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_266)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_267)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_70)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_71)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_264)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_265)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_72)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_73)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_279)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_50)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_51)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_52)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_53)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_54)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_55)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_56)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_57)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_58)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_59)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_60)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_61)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_62)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_64)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_65)
      OpenAD_Symbol_284 = (__value__(DSS2) + __value__(PRIML(2)) *
     >  __value__(UHATL))
      __value__(FLUX(2)) = (__value__(NSIZE) * OpenAD_Symbol_284)
      OpenAD_Symbol_285 = OpenAD_Symbol_284
      OpenAD_Symbol_287 = __value__(UHATL)
      OpenAD_Symbol_288 = __value__(PRIML(2))
      OpenAD_Symbol_286 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_287)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_288)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_285)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_286)
      OpenAD_Symbol_289 = (__value__(DSS3) + __value__(PRIML(1)) *
     >  __value__(NXHAT) + __value__(RUL) * __value__(UHATL))
      __value__(FLUX(3)) = (__value__(NSIZE) * OpenAD_Symbol_289)
      OpenAD_Symbol_290 = OpenAD_Symbol_289
      OpenAD_Symbol_292 = __value__(NXHAT)
      OpenAD_Symbol_293 = __value__(PRIML(1))
      OpenAD_Symbol_294 = __value__(UHATL)
      OpenAD_Symbol_295 = __value__(RUL)
      OpenAD_Symbol_291 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_292)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_293)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_294)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_295)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_290)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_291)
      OpenAD_Symbol_296 = (__value__(DSS4) + __value__(PRIML(1)) *
     >  __value__(NYHAT) + __value__(RVL) * __value__(UHATL))
      __value__(FLUX(4)) = (__value__(NSIZE) * OpenAD_Symbol_296)
      OpenAD_Symbol_297 = OpenAD_Symbol_296
      OpenAD_Symbol_299 = __value__(NYHAT)
      OpenAD_Symbol_300 = __value__(PRIML(1))
      OpenAD_Symbol_301 = __value__(UHATL)
      OpenAD_Symbol_302 = __value__(RVL)
      OpenAD_Symbol_298 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_299)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_300)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_301)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_302)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_297)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_298)
      OpenAD_Symbol_303 = (__value__(DSS5) + __value__(PRIML(1)) *
     >  __value__(NZHAT) + __value__(RWL) * __value__(UHATL))
      __value__(FLUX(5)) = (__value__(NSIZE) * OpenAD_Symbol_303)
      OpenAD_Symbol_304 = OpenAD_Symbol_303
      OpenAD_Symbol_306 = __value__(NZHAT)
      OpenAD_Symbol_307 = __value__(PRIML(1))
      OpenAD_Symbol_308 = __value__(UHATL)
      OpenAD_Symbol_309 = __value__(RWL)
      OpenAD_Symbol_305 = __value__(NSIZE)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_306)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_307)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_308)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_309)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_304)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_305)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_418)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_419)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_420)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_421)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_422)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_423)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_418, __deriv__(FLUX(5)), __deriv__(
     > OpenAD_prop_28))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_419, __deriv__(FLUX(5)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(5)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_420, __deriv__(OpenAD_prop_28),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_421, __deriv__(OpenAD_prop_28),
     >  __deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_422, __deriv__(OpenAD_prop_28),
     >  __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_423, __deriv__(OpenAD_prop_28),
     >  __deriv__(PRIML(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_28), __deriv__(DSS5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_28))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_424)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_425)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_426)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_427)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_428)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_429)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_424, __deriv__(FLUX(4)), __deriv__(
     > OpenAD_prop_27))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_425, __deriv__(FLUX(4)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_426, __deriv__(OpenAD_prop_27),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_427, __deriv__(OpenAD_prop_27),
     >  __deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_428, __deriv__(OpenAD_prop_27),
     >  __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_429, __deriv__(OpenAD_prop_27),
     >  __deriv__(PRIML(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_27), __deriv__(DSS4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_27))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_430)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_431)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_432)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_433)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_434)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_435)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_430, __deriv__(FLUX(3)), __deriv__(
     > OpenAD_prop_26))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_431, __deriv__(FLUX(3)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_432, __deriv__(OpenAD_prop_26),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_433, __deriv__(OpenAD_prop_26),
     >  __deriv__(RUL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_434, __deriv__(OpenAD_prop_26),
     >  __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_435, __deriv__(OpenAD_prop_26),
     >  __deriv__(PRIML(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_26), __deriv__(DSS3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_26))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_436)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_437)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_438)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_439)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_436, __deriv__(FLUX(2)), __deriv__(
     > OpenAD_prop_25))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_437, __deriv__(FLUX(2)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_438, __deriv__(OpenAD_prop_25),
     >  __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_439, __deriv__(OpenAD_prop_25),
     >  __deriv__(PRIML(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_25), __deriv__(DSS2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_25))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_440)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_441)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_442)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_443)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_444)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_445)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_446)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_447)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_448)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_449)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_450)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_451)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_452)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_453)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_454)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_455)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_456)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_457)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_458)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_459)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_460)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_461)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_462)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_463)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_464)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_465)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_466)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_467)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_468)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_469)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_470)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_471)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_472)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_473)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_474)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_475)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_476)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_477)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_478)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_479)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_480)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_481)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_482)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_483)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_484)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_485)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_486)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_487)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_488)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_489)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_490)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_491)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_492)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_493)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_494)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_495)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_496)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_497)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_498)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_499)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_500)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_501)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_502)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_503)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_440, __deriv__(FLUX(1)), __deriv__(UHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_441, __deriv__(FLUX(1)), __deriv__(
     > ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_442, __deriv__(FLUX(1)), __deriv__(CAVE)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_443, __deriv__(FLUX(1)), __deriv__(
     > GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_444, __deriv__(FLUX(1)), __deriv__(
     > ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_445, __deriv__(FLUX(1)), __deriv__(
     > THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_446, __deriv__(FLUX(1)), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_447, __deriv__(FLUX(1)), __deriv__(
     > UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_448, __deriv__(FLUX(1)), __deriv__(ALP2)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_449, __deriv__(FLUX(1)), __deriv__(
     > VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_450, __deriv__(FLUX(1)), __deriv__(ALP3)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_451, __deriv__(FLUX(1)), __deriv__(
     > WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_452, __deriv__(FLUX(1)), __deriv__(ALP4)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_453, __deriv__(FLUX(1)), __deriv__(
     > OpenAD_prop_24))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_454, __deriv__(FLUX(1)), __deriv__(UHATL
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_455, __deriv__(FLUX(1)), __deriv__(NSIZE
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_456, __deriv__(DSS5), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_457, __deriv__(DSS5), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_458, __deriv__(DSS5), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_459, __deriv__(DSS5), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_460, __deriv__(DSS5), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_461, __deriv__(DSS5), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_462, __deriv__(DSS5), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_463, __deriv__(DSS5), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_464, __deriv__(DSS4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_465, __deriv__(DSS4), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_466, __deriv__(DSS4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_467, __deriv__(DSS4), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_468, __deriv__(DSS4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_469, __deriv__(DSS4), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_470, __deriv__(DSS4), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_471, __deriv__(DSS4), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_472, __deriv__(DSS3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_473, __deriv__(DSS3), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_474, __deriv__(DSS3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_475, __deriv__(DSS3), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_476, __deriv__(DSS3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_477, __deriv__(DSS3), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_478, __deriv__(DSS3), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_479, __deriv__(DSS3), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS3))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(DSS2), __deriv__(MU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DSS2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_480, __deriv__(MU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_481, __deriv__(MU), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_482, __deriv__(MU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_483, __deriv__(MU), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_484, __deriv__(MU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_485, __deriv__(MU), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_486, __deriv__(MU), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_487, __deriv__(MU), __deriv__(ALP15P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_488, __deriv__(UHATL), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_489, __deriv__(UHATL), __deriv__(PRIML(5
     > )))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_490, __deriv__(UHATL), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_491, __deriv__(UHATL), __deriv__(PRIML(4
     > )))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_492, __deriv__(UHATL), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_493, __deriv__(UHATL), __deriv__(PRIML(3
     > )))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHATL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_24), __deriv__(EL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_24), __deriv__(PRIML(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_24))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(ALP15M), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15M), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15M))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_494, __deriv__(ALP5), __deriv__(
     > OpenAD_prop_23))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_495, __deriv__(ALP5), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_496, __deriv__(ALP4), __deriv__(
     > OpenAD_prop_22))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_497, __deriv__(ALP4), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_498, __deriv__(ALP3), __deriv__(
     > OpenAD_prop_21))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_499, __deriv__(ALP3), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_500, __deriv__(ALP2), __deriv__(
     > OpenAD_prop_20))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_501, __deriv__(ALP2), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_502, __deriv__(ALP1), __deriv__(
     > OpenAD_prop_19))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_503, __deriv__(ALP1), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_23), __deriv__(ALP5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_23))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_22), __deriv__(ALP4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_22))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_21), __deriv__(ALP3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_21))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_20), __deriv__(ALP2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_20))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_19), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_19))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_504)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_505)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_506)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_507)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_508)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_509)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_510)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_511)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_512)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_513)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_514)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_515)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_516)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_517)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_518)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_519)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_520)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_521)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_522)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_523)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_524)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_525)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_526)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_527)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_528)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_529)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_530)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_531)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_532)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_533)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_534)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_535)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_536)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_537)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_538)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_539)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_540)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_541)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_542)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_543)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_544)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_545)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_546)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_547)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_548)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_549)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_550)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_551)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_552)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_553)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_554)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_555)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_556)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_557)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_558)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_559)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_560)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_561)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_562)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_563)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_564)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_565)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_566)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_567)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_568)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_569)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_570)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_571)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_572)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_573)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_574)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_504, __deriv__(ALP4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_505, __deriv__(ALP4), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_506, __deriv__(ALP4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_507, __deriv__(ALP4), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_508, __deriv__(ALP4), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_509, __deriv__(ALP4), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_510, __deriv__(ALP4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_511, __deriv__(ALP4), __deriv__(DRV))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_512, __deriv__(ALP3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_513, __deriv__(ALP3), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_514, __deriv__(ALP3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_515, __deriv__(ALP3), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_516, __deriv__(ALP3), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_517, __deriv__(ALP3), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_518, __deriv__(ALP3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_519, __deriv__(ALP3), __deriv__(DRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_520, __deriv__(ALP2), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_521, __deriv__(ALP2), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_522, __deriv__(ALP2), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_523, __deriv__(ALP2), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_524, __deriv__(ALP2), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_525, __deriv__(ALP2), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_526, __deriv__(ALP2), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_527, __deriv__(ALP2), __deriv__(DRW))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP5), __deriv__(OpenAD_prop_18))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP1), __deriv__(OpenAD_prop_17))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_528, __deriv__(OpenAD_prop_18),
     >  __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_529, __deriv__(OpenAD_prop_18),
     >  __deriv__(DR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_18), __deriv__(OMEGA))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_18), __deriv__(NDDRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_18))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_530, __deriv__(OpenAD_prop_17),
     >  __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_531, __deriv__(OpenAD_prop_17),
     >  __deriv__(DR))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_17), __deriv__(NDDRU))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_17), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_17))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_532, __deriv__(OMEGA), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_533, __deriv__(OMEGA), __deriv__(GM1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_534, __deriv__(OMEGA), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_535, __deriv__(NDDRU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_536, __deriv__(NDDRU), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_537, __deriv__(NDDRU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_538, __deriv__(NDDRU), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_539, __deriv__(NDDRU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_540, __deriv__(NDDRU), __deriv__(DRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NDDRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_541, __deriv__(OpenAD_prop_16),
     >  __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_542, __deriv__(OpenAD_prop_16),
     >  __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_543, __deriv__(OpenAD_prop_16),
     >  __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_544, __deriv__(OpenAD_prop_16),
     >  __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_545, __deriv__(OpenAD_prop_16),
     >  __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_546, __deriv__(OpenAD_prop_16),
     >  __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_547, __deriv__(OpenAD_prop_16),
     >  __deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_548, __deriv__(OpenAD_prop_16),
     >  __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_549, __deriv__(OpenAD_prop_16),
     >  __deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_550, __deriv__(OpenAD_prop_16),
     >  __deriv__(PRIMR(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_551, __deriv__(OpenAD_prop_16),
     >  __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_552, __deriv__(OpenAD_prop_16),
     >  __deriv__(PRIMR(1)))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_16), __deriv__(EL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_553, __deriv__(OpenAD_prop_15),
     >  __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_554, __deriv__(OpenAD_prop_15),
     >  __deriv__(CAVE))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_15), __deriv__(WTILDE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_555, __deriv__(OpenAD_prop_14),
     >  __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_556, __deriv__(OpenAD_prop_14),
     >  __deriv__(CAVE))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_14), __deriv__(VTILDE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_557, __deriv__(OpenAD_prop_13),
     >  __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_558, __deriv__(OpenAD_prop_13),
     >  __deriv__(CAVE))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_13), __deriv__(UTILDE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_559, __deriv__(EL), __deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_560, __deriv__(EL), __deriv__(PRIML(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_561, __deriv__(EL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_562, __deriv__(EL), __deriv__(PRIML(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(EL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMU), __deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCP), __deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCM), __deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_563, __deriv__(DRW), __deriv__(PRIMR(5))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_564, __deriv__(DRW), __deriv__(PRIMR(2))
     > )
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRW), __deriv__(RWL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_565, __deriv__(DRV), __deriv__(PRIMR(4))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_566, __deriv__(DRV), __deriv__(PRIMR(2))
     > )
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRV), __deriv__(RVL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_567, __deriv__(DRU), __deriv__(PRIMR(3))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_568, __deriv__(DRU), __deriv__(PRIMR(2))
     > )
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRU), __deriv__(RUL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DR), __deriv__(PRIML(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(DR), __deriv__(PRIMR(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_569, __deriv__(RWL), __deriv__(PRIML(5))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_570, __deriv__(RWL), __deriv__(PRIML(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_571, __deriv__(RVL), __deriv__(PRIML(4))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_572, __deriv__(RVL), __deriv__(PRIML(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_573, __deriv__(RUL), __deriv__(PRIML(3))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_574, __deriv__(RUL), __deriv__(PRIML(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RUL))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_12), __deriv__(OpenAD_prop_9)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_11), __deriv__(OpenAD_prop_8)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_10), __deriv__(OpenAD_prop_7)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_8))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_7))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_337)
      IF(OpenAD_Symbol_337 .ne. 0) THEN
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(ALAMU), __deriv__(LAMU))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMU))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_575)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_576)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_575, __deriv__(ALAMU), __deriv__(
     > OpenAD_prop_29))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_576, __deriv__(ALAMU), __deriv__(
     > DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMU))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_29), __deriv__(LAM2))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_29), __deriv__(DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_29))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_415)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_416)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_417)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_415, __deriv__(DELTA2), __deriv__(
     > OpenAD_prop_6))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_416, __deriv__(DELTA2), __deriv__(LEFIX)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DELTA2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_417, __deriv__(LAM2), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAM2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_6))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_338)
      IF(OpenAD_Symbol_338 .ne. 0) THEN
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(ALAMCP), __deriv__(LAMCP))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCP))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_577)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_578)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_577, __deriv__(ALAMCP), __deriv__(
     > OpenAD_prop_30))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_578, __deriv__(ALAMCP), __deriv__(
     > DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCP))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_30), __deriv__(LAM2))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_30), __deriv__(DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_30))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_414)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_414, __deriv__(LAM2), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAM2))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_339)
      IF(OpenAD_Symbol_339 .ne. 0) THEN
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(ALAMCM), __deriv__(LAMCM))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCM))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_579)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_580)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_579, __deriv__(ALAMCM), __deriv__(
     > OpenAD_prop_31))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_580, __deriv__(ALAMCM), __deriv__(
     > DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(ALAMCM))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_31), __deriv__(LAM2))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_31), __deriv__(DELTA2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_31))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_353)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_354)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_355)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_356)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_357)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_358)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_359)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_360)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_361)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_362)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_363)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_364)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_365)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_366)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_367)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_368)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_369)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_370)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_371)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_372)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_373)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_374)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_353, __deriv__(DELTA2), __deriv__(
     > OpenAD_prop_5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_354, __deriv__(DELTA2), __deriv__(NLEFIX
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DELTA2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_355, __deriv__(LAM2), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAM2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCP))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMU), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(LAMCM), __deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCM), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_356, __deriv__(UHAT), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_357, __deriv__(UHAT), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_358, __deriv__(UHAT), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_359, __deriv__(UHAT), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_360, __deriv__(UHAT), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_361, __deriv__(UHAT), __deriv__(NXHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_362, __deriv__(WTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_363, __deriv__(WTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_364, __deriv__(WTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_365, __deriv__(WTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_366, __deriv__(VTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_367, __deriv__(VTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_368, __deriv__(VTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_369, __deriv__(VTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_370, __deriv__(UTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_371, __deriv__(UTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_372, __deriv__(UTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_373, __deriv__(UTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_374, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_4), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_375)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_376)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_377)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_378)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_379)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_380)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_381)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_382)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_383)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_384)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_385)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_386)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_387)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_388)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_389)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_390)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_391)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_392)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_393)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_394)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_395)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_396)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_397)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_398)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_399)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_400)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_401)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_402)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_403)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_404)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_405)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_406)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_407)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_408)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_409)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_410)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_411)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_412)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_413)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_375, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_376, __deriv__(CAVE), __deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_377, __deriv__(CAVE), __deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_378, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_379, __deriv__(CAVE), __deriv__(GM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THTAVE), __deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_380, __deriv__(OpenAD_prop_3), __deriv__
     > (UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_381, __deriv__(OpenAD_prop_3), __deriv__
     > (VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_382, __deriv__(OpenAD_prop_3), __deriv__
     > (WAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_383, __deriv__(WAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_384, __deriv__(WAVE), __deriv__(PRIML(5)
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_385, __deriv__(WAVE), __deriv__(PRIMR(5)
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_386, __deriv__(VAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_387, __deriv__(VAVE), __deriv__(PRIML(4)
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_388, __deriv__(VAVE), __deriv__(PRIMR(4)
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_389, __deriv__(UAVE), __deriv__(PRIML(3)
     > ))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_390, __deriv__(UAVE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_391, __deriv__(UAVE), __deriv__(PRIMR(3)
     > ))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_392, __deriv__(HR), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_393, __deriv__(HR), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_394, __deriv__(HR), __deriv__(PRIMR(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_395, __deriv__(HR), __deriv__(PRIMR(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HR), __deriv__(THETAR))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_396, __deriv__(HL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_397, __deriv__(HL), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_398, __deriv__(HL), __deriv__(PRIML(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_399, __deriv__(HL), __deriv__(PRIML(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HL), __deriv__(THETAL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAR), __deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAL), __deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_400, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIMR(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_401, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIMR(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_402, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIMR(5)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_403, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_404, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_405, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML(5)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_406, __deriv__(OpenAD_prop_0), __deriv__
     > (PRIML(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_407, __deriv__(OpenAD_prop_0), __deriv__
     > (PRIMR(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_408, __deriv__(NZHAT), __deriv__(NSIZEI)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_409, __deriv__(NZHAT), __deriv__(NRM(3))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_410, __deriv__(NYHAT), __deriv__(NSIZEI)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_411, __deriv__(NYHAT), __deriv__(NRM(2))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_412, __deriv__(NXHAT), __deriv__(NSIZEI)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_413, __deriv__(NXHAT), __deriv__(NRM(1))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NXHAT))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_340)
      IF(OpenAD_Symbol_340 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_352)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_352, __deriv__(NSIZEI), __deriv__(
     > NSIZE))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(NSIZEI))
      ELSE
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(NSIZEI))
      ENDIF
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_349)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_350)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_351)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_349, __deriv__(NSIZE), __deriv__(NRM(1))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_350, __deriv__(NSIZE), __deriv__(NRM(2))
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_351, __deriv__(NSIZE), __deriv__(NRM(3))
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NSIZE))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
