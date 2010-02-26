
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
      SUBROUTINE head(X01, X02, X03, X04, X05, X06, X07, X08, X09, X10,
     >  X11, X12, X13, X14, X15, X16, X17, X18, X19, Y1, Y2, Y3, Y4, Y5
     > )
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_196
      REAL(w2f__8) OpenAD_Symbol_199
      REAL(w2f__8) OpenAD_Symbol_202
      REAL(w2f__8) OpenAD_Symbol_205
      REAL(w2f__8) OpenAD_Symbol_208
      REAL(w2f__8) OpenAD_Symbol_85
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
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_5
      TYPE (OpenADTy_active) OpenAD_prop_6
      TYPE (OpenADTy_active) OpenAD_prop_7
      TYPE (OpenADTy_active) OpenAD_prop_8
      TYPE (OpenADTy_active) OpenAD_prop_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X01
      INTENT(IN)  X01
      TYPE (OpenADTy_active) X02
      INTENT(IN)  X02
      TYPE (OpenADTy_active) X03
      INTENT(IN)  X03
      TYPE (OpenADTy_active) X04
      INTENT(IN)  X04
      TYPE (OpenADTy_active) X05
      INTENT(IN)  X05
      TYPE (OpenADTy_active) X06
      INTENT(IN)  X06
      TYPE (OpenADTy_active) X07
      INTENT(IN)  X07
      TYPE (OpenADTy_active) X08
      INTENT(IN)  X08
      TYPE (OpenADTy_active) X09
      INTENT(IN)  X09
      TYPE (OpenADTy_active) X10
      INTENT(IN)  X10
      TYPE (OpenADTy_active) X11
      INTENT(IN)  X11
      TYPE (OpenADTy_active) X12
      INTENT(IN)  X12
      TYPE (OpenADTy_active) X13
      INTENT(IN)  X13
      TYPE (OpenADTy_active) X14
      INTENT(IN)  X14
      TYPE (OpenADTy_active) X15
      INTENT(IN)  X15
      TYPE (OpenADTy_active) X16
      INTENT(IN)  X16
      REAL(w2f__8) X17
      INTENT(IN)  X17
      REAL(w2f__8) X18
      INTENT(IN)  X18
      REAL(w2f__8) X19
      INTENT(IN)  X19
      TYPE (OpenADTy_active) Y1
      INTENT(OUT)  Y1
      TYPE (OpenADTy_active) Y2
      INTENT(OUT)  Y2
      TYPE (OpenADTy_active) Y3
      INTENT(OUT)  Y3
      TYPE (OpenADTy_active) Y4
      INTENT(OUT)  Y4
      TYPE (OpenADTy_active) Y5
      INTENT(OUT)  Y5
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__4) HALF
      PARAMETER ( HALF = 5.0E-01)
      REAL(w2f__4) ONE
      PARAMETER ( ONE = 1.0)
      TYPE (OpenADTy_active) T01
      TYPE (OpenADTy_active) T02
      TYPE (OpenADTy_active) T03
      TYPE (OpenADTy_active) T04
      TYPE (OpenADTy_active) T05
      TYPE (OpenADTy_active) T06
      TYPE (OpenADTy_active) T07
      TYPE (OpenADTy_active) T08
      TYPE (OpenADTy_active) T09
      TYPE (OpenADTy_active) T10
      TYPE (OpenADTy_active) T11
      TYPE (OpenADTy_active) T12
      TYPE (OpenADTy_active) T13
      TYPE (OpenADTy_active) T14
      TYPE (OpenADTy_active) T15
      TYPE (OpenADTy_active) T16
      TYPE (OpenADTy_active) T17
      TYPE (OpenADTy_active) T18
      TYPE (OpenADTy_active) T19
      TYPE (OpenADTy_active) T20
      TYPE (OpenADTy_active) T21
      TYPE (OpenADTy_active) T22
      TYPE (OpenADTy_active) T23
      TYPE (OpenADTy_active) T24
      TYPE (OpenADTy_active) T25
      TYPE (OpenADTy_active) T26
      TYPE (OpenADTy_active) T27
      TYPE (OpenADTy_active) T28
      TYPE (OpenADTy_active) T29
      TYPE (OpenADTy_active) T30
      TYPE (OpenADTy_active) T31
      TYPE (OpenADTy_active) T32
      TYPE (OpenADTy_active) T33
      TYPE (OpenADTy_active) T34
      TYPE (OpenADTy_active) T35
      TYPE (OpenADTy_active) T36
      TYPE (OpenADTy_active) T37
      TYPE (OpenADTy_active) T38
      TYPE (OpenADTy_active) T39
      TYPE (OpenADTy_active) T40
      TYPE (OpenADTy_active) T41
      TYPE (OpenADTy_active) T42
      TYPE (OpenADTy_active) T43
      TYPE (OpenADTy_active) T44
      TYPE (OpenADTy_active) T45
      TYPE (OpenADTy_active) T46
      TYPE (OpenADTy_active) T47
      TYPE (OpenADTy_active) T48
      TYPE (OpenADTy_active) T49
      TYPE (OpenADTy_active) T50
      TYPE (OpenADTy_active) T51
      TYPE (OpenADTy_active) T52
      TYPE (OpenADTy_active) T53
      TYPE (OpenADTy_active) T54
      TYPE (OpenADTy_active) T55
      TYPE (OpenADTy_active) T56
      TYPE (OpenADTy_active) T57
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_112
      REAL(w2f__8) OpenAD_Symbol_113
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_120
      REAL(w2f__8) OpenAD_Symbol_121
      REAL(w2f__8) OpenAD_Symbol_122
      REAL(w2f__8) OpenAD_Symbol_123
      REAL(w2f__8) OpenAD_Symbol_124
      REAL(w2f__8) OpenAD_Symbol_125
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
      REAL(w2f__8) OpenAD_Symbol_167
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
      REAL(w2f__8) OpenAD_Symbol_192
      REAL(w2f__8) OpenAD_Symbol_193
      REAL(w2f__8) OpenAD_Symbol_194
      REAL(w2f__8) OpenAD_Symbol_195
      REAL(w2f__8) OpenAD_Symbol_197
      REAL(w2f__8) OpenAD_Symbol_198
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_200
      REAL(w2f__8) OpenAD_Symbol_201
      REAL(w2f__8) OpenAD_Symbol_203
      REAL(w2f__8) OpenAD_Symbol_204
      REAL(w2f__8) OpenAD_Symbol_206
      REAL(w2f__8) OpenAD_Symbol_207
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
      REAL(w2f__8) OpenAD_Symbol_314
      REAL(w2f__8) OpenAD_Symbol_315
      REAL(w2f__8) OpenAD_Symbol_316
      REAL(w2f__8) OpenAD_Symbol_317
      REAL(w2f__8) OpenAD_Symbol_318
      REAL(w2f__8) OpenAD_Symbol_319
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
      REAL(w2f__8) OpenAD_Symbol_333
      REAL(w2f__8) OpenAD_Symbol_334
      REAL(w2f__8) OpenAD_Symbol_335
      REAL(w2f__8) OpenAD_Symbol_336
      REAL(w2f__8) OpenAD_Symbol_337
      REAL(w2f__8) OpenAD_Symbol_338
      REAL(w2f__8) OpenAD_Symbol_339
      REAL(w2f__8) OpenAD_Symbol_340
      REAL(w2f__8) OpenAD_Symbol_341
      REAL(w2f__8) OpenAD_Symbol_342
      REAL(w2f__8) OpenAD_Symbol_343
      REAL(w2f__8) OpenAD_Symbol_344
      REAL(w2f__8) OpenAD_Symbol_345
      REAL(w2f__8) OpenAD_Symbol_346
      REAL(w2f__8) OpenAD_Symbol_347
      REAL(w2f__8) OpenAD_Symbol_348
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
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_55
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
C$OPENAD INDEPENDENT(X01)
C$OPENAD INDEPENDENT(X02)
C$OPENAD INDEPENDENT(X03)
C$OPENAD INDEPENDENT(X04)
C$OPENAD INDEPENDENT(X05)
C$OPENAD INDEPENDENT(X06)
C$OPENAD INDEPENDENT(X07)
C$OPENAD INDEPENDENT(X08)
C$OPENAD INDEPENDENT(X09)
C$OPENAD INDEPENDENT(X10)
C$OPENAD INDEPENDENT(X11)
C$OPENAD INDEPENDENT(X12)
C$OPENAD INDEPENDENT(X13)
C$OPENAD INDEPENDENT(X14)
C$OPENAD INDEPENDENT(X15)
C$OPENAD INDEPENDENT(X16)
C$OPENAD INDEPENDENT(X17)
C$OPENAD INDEPENDENT(X18)
C$OPENAD INDEPENDENT(X19)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C$OPENAD DEPENDENT(Y3)
C$OPENAD DEPENDENT(Y4)
C$OPENAD DEPENDENT(Y5)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = ((__value__(X01) ** 2) +(__value__(X02) ** 2) +
     > (__value__(X03) ** 2))
      __value__(T01) = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = (2 *(__value__(X01) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2 *(__value__(X02) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_6 = (2 *(__value__(X03) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      __value__(T02) = (1.0D00 / __value__(T01))
      OpenAD_Symbol_9 = (-(1.0D00 /(__value__(T01) * __value__(T01))))
      __value__(T03) = (__value__(X01) * __value__(T02))
      OpenAD_Symbol_10 = __value__(T02)
      OpenAD_Symbol_11 = __value__(X01)
      __value__(T04) = (__value__(X02) * __value__(T02))
      OpenAD_Symbol_12 = __value__(T02)
      OpenAD_Symbol_13 = __value__(X02)
      __value__(T05) = (__value__(X03) * __value__(T02))
      OpenAD_Symbol_14 = __value__(T02)
      OpenAD_Symbol_15 = __value__(X03)
      OpenAD_Symbol_20 = (__value__(X10) / __value__(X05))
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20) + 1.0D00)
      __value__(T06) = (1.0D00 / OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1_w2f__i8) / __value__(X05))
      OpenAD_Symbol_23 = (-(__value__(X10) /(__value__(X05) * __value__
     > (X05))))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00 /(OpenAD_Symbol_16 *
     >  OpenAD_Symbol_16)))
      __value__(T07) = (1.0D00 - __value__(T06))
      OpenAD_Symbol_25 = ((__value__(X06) ** 2) +(__value__(X07) ** 2)
     >  +(__value__(X08) ** 2))
      __value__(T08) = (OpenAD_Symbol_25 * 5.0D-01)
      OpenAD_Symbol_27 = (2 *(__value__(X06) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_29 = (2 *(__value__(X07) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_31 = (2 *(__value__(X08) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_33 = ((__value__(X11) ** 2) +(__value__(X12) ** 2)
     >  +(__value__(X13) ** 2))
      __value__(T09) = (OpenAD_Symbol_33 * 5.0D-01)
      OpenAD_Symbol_35 = (2 *(__value__(X11) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_37 = (2 *(__value__(X12) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_39 = (2 *(__value__(X13) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_44 = (__value__(X14) * __value__(X16))
      OpenAD_Symbol_41 = (__value__(X04) * OpenAD_Symbol_44)
      __value__(T10) = (__value__(T08) +(OpenAD_Symbol_41 / __value__(
     > X05)))
      OpenAD_Symbol_45 = OpenAD_Symbol_44
      OpenAD_Symbol_47 = __value__(X16)
      OpenAD_Symbol_48 = __value__(X14)
      OpenAD_Symbol_46 = __value__(X04)
      OpenAD_Symbol_42 = (INT(1_w2f__i8) / __value__(X05))
      OpenAD_Symbol_43 = (-(OpenAD_Symbol_41 /(__value__(X05) *
     >  __value__(X05))))
      OpenAD_Symbol_52 = (__value__(X14) * __value__(X16))
      OpenAD_Symbol_49 = (__value__(X09) * OpenAD_Symbol_52)
      __value__(T11) = (__value__(T09) +(OpenAD_Symbol_49 / __value__(
     > X10)))
      OpenAD_Symbol_53 = OpenAD_Symbol_52
      OpenAD_Symbol_55 = __value__(X16)
      OpenAD_Symbol_56 = __value__(X14)
      OpenAD_Symbol_54 = __value__(X09)
      OpenAD_Symbol_50 = (INT(1_w2f__i8) / __value__(X10))
      OpenAD_Symbol_51 = (-(OpenAD_Symbol_49 /(__value__(X10) *
     >  __value__(X10))))
      __value__(T12) = (__value__(X06) * __value__(T06) + __value__(X11
     > ) * __value__(T07))
      OpenAD_Symbol_57 = __value__(T06)
      OpenAD_Symbol_58 = __value__(X06)
      OpenAD_Symbol_59 = __value__(T07)
      OpenAD_Symbol_60 = __value__(X11)
      __value__(T13) = (__value__(X07) * __value__(T06) + __value__(X12
     > ) * __value__(T07))
      OpenAD_Symbol_61 = __value__(T06)
      OpenAD_Symbol_62 = __value__(X07)
      OpenAD_Symbol_63 = __value__(T07)
      OpenAD_Symbol_64 = __value__(X12)
      __value__(T14) = (__value__(X08) * __value__(T06) + __value__(X13
     > ) * __value__(T07))
      OpenAD_Symbol_65 = __value__(T06)
      OpenAD_Symbol_66 = __value__(X08)
      OpenAD_Symbol_67 = __value__(T07)
      OpenAD_Symbol_68 = __value__(X13)
      __value__(T15) = (__value__(T06) * __value__(T10) + __value__(T07
     > ) * __value__(T11))
      OpenAD_Symbol_69 = __value__(T10)
      OpenAD_Symbol_70 = __value__(T06)
      OpenAD_Symbol_71 = __value__(T11)
      OpenAD_Symbol_72 = __value__(T07)
      OpenAD_Symbol_73 = ((__value__(T12) ** 2) +(__value__(T13) ** 2)
     >  +(__value__(T14) ** 2))
      __value__(T18) = (OpenAD_Symbol_73 * 5.0D-01)
      OpenAD_Symbol_75 = (2 *(__value__(T12) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_77 = (2 *(__value__(T13) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_79 = (2 *(__value__(T14) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_81 = (__value__(T15) - __value__(T18))
      __value__(T16) = (__value__(X15) * OpenAD_Symbol_81)
      OpenAD_Symbol_82 = OpenAD_Symbol_81
      OpenAD_Symbol_83 = __value__(X15)
      OpenAD_Symbol_294 = (OpenAD_Symbol_54 * OpenAD_Symbol_50)
      OpenAD_Symbol_295 = (OpenAD_Symbol_46 * OpenAD_Symbol_42)
      OpenAD_Symbol_296 = (OpenAD_Symbol_9 * OpenAD_Symbol_11)
      OpenAD_Symbol_297 = (OpenAD_Symbol_9 * OpenAD_Symbol_13)
      OpenAD_Symbol_298 = (OpenAD_Symbol_9 * OpenAD_Symbol_15)
      OpenAD_Symbol_299 = (5.0D-01 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_83)
      OpenAD_Symbol_300 = (OpenAD_Symbol_72 * OpenAD_Symbol_83)
      OpenAD_Symbol_301 = (OpenAD_Symbol_70 * OpenAD_Symbol_83)
      OpenAD_Symbol_302 = (OpenAD_Symbol_18 *(OpenAD_Symbol_69 *
     >  OpenAD_Symbol_83 + INT((-1_w2f__i8)) * OpenAD_Symbol_71 *
     >  OpenAD_Symbol_83))
      OpenAD_Symbol_303 = (OpenAD_Symbol_18 *(OpenAD_Symbol_66 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_68))
      OpenAD_Symbol_304 = (OpenAD_Symbol_18 *(OpenAD_Symbol_62 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_64))
      OpenAD_Symbol_305 = (OpenAD_Symbol_18 *(OpenAD_Symbol_58 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_60))
      OpenAD_Symbol_306 = (OpenAD_Symbol_22 * OpenAD_Symbol_21)
      OpenAD_Symbol_307 = (OpenAD_Symbol_23 * OpenAD_Symbol_21)
      OpenAD_Symbol_308 = (OpenAD_Symbol_45 * OpenAD_Symbol_42)
      OpenAD_Symbol_309 = (OpenAD_Symbol_47 * OpenAD_Symbol_295)
      OpenAD_Symbol_310 = (OpenAD_Symbol_48 * OpenAD_Symbol_295)
      OpenAD_Symbol_311 = (OpenAD_Symbol_53 * OpenAD_Symbol_50)
      OpenAD_Symbol_312 = (OpenAD_Symbol_55 * OpenAD_Symbol_294)
      OpenAD_Symbol_313 = (OpenAD_Symbol_56 * OpenAD_Symbol_294)
      CALL sax(OpenAD_Symbol_6, __deriv__(X03), __deriv__(OpenAD_prop_0
     > ))
      CALL saxpy(OpenAD_Symbol_2, __deriv__(X01), __deriv__(
     > OpenAD_prop_0))
      CALL saxpy(OpenAD_Symbol_4, __deriv__(X02), __deriv__(
     > OpenAD_prop_0))
      CALL sax(OpenAD_Symbol_306, __deriv__(X10), __deriv__(
     > OpenAD_prop_1))
      CALL saxpy(OpenAD_Symbol_307, __deriv__(X05), __deriv__(
     > OpenAD_prop_1))
      CALL sax(OpenAD_Symbol_31, __deriv__(X08), __deriv__(
     > OpenAD_prop_2))
      CALL saxpy(OpenAD_Symbol_27, __deriv__(X06), __deriv__(
     > OpenAD_prop_2))
      CALL saxpy(OpenAD_Symbol_29, __deriv__(X07), __deriv__(
     > OpenAD_prop_2))
      CALL sax(OpenAD_Symbol_39, __deriv__(X13), __deriv__(
     > OpenAD_prop_3))
      CALL saxpy(OpenAD_Symbol_35, __deriv__(X11), __deriv__(
     > OpenAD_prop_3))
      CALL saxpy(OpenAD_Symbol_37, __deriv__(X12), __deriv__(
     > OpenAD_prop_3))
      CALL sax(OpenAD_Symbol_1, __deriv__(OpenAD_prop_0), __deriv__(T01
     > ))
      CALL sax(OpenAD_Symbol_10, __deriv__(X01), __deriv__(T03))
      CALL saxpy(OpenAD_Symbol_296, __deriv__(T01), __deriv__(T03))
      CALL sax(OpenAD_Symbol_12, __deriv__(X02), __deriv__(T04))
      CALL saxpy(OpenAD_Symbol_297, __deriv__(T01), __deriv__(T04))
      CALL sax(OpenAD_Symbol_14, __deriv__(X03), __deriv__(T05))
      CALL saxpy(OpenAD_Symbol_298, __deriv__(T01), __deriv__(T05))
      CALL sax(5.0D-01, __deriv__(OpenAD_prop_2), __deriv__(T08))
      CALL sax(5.0D-01, __deriv__(OpenAD_prop_3), __deriv__(T09))
      CALL setderiv(__deriv__(T10), __deriv__(T08))
      CALL saxpy(OpenAD_Symbol_43, __deriv__(X05), __deriv__(T10))
      CALL saxpy(OpenAD_Symbol_308, __deriv__(X04), __deriv__(T10))
      CALL saxpy(OpenAD_Symbol_309, __deriv__(X14), __deriv__(T10))
      CALL saxpy(OpenAD_Symbol_310, __deriv__(X16), __deriv__(T10))
      CALL setderiv(__deriv__(T11), __deriv__(T09))
      CALL saxpy(OpenAD_Symbol_51, __deriv__(X10), __deriv__(T11))
      CALL saxpy(OpenAD_Symbol_311, __deriv__(X09), __deriv__(T11))
      CALL saxpy(OpenAD_Symbol_312, __deriv__(X14), __deriv__(T11))
      CALL saxpy(OpenAD_Symbol_313, __deriv__(X16), __deriv__(T11))
      CALL sax(OpenAD_Symbol_59, __deriv__(X11), __deriv__(T12))
      CALL saxpy(OpenAD_Symbol_305, __deriv__(OpenAD_prop_1), __deriv__
     > (T12))
      CALL saxpy(OpenAD_Symbol_57, __deriv__(X06), __deriv__(T12))
      CALL sax(OpenAD_Symbol_63, __deriv__(X12), __deriv__(T13))
      CALL saxpy(OpenAD_Symbol_61, __deriv__(X07), __deriv__(T13))
      CALL saxpy(OpenAD_Symbol_304, __deriv__(OpenAD_prop_1), __deriv__
     > (T13))
      CALL sax(OpenAD_Symbol_67, __deriv__(X13), __deriv__(T14))
      CALL saxpy(OpenAD_Symbol_65, __deriv__(X08), __deriv__(T14))
      CALL saxpy(OpenAD_Symbol_303, __deriv__(OpenAD_prop_1), __deriv__
     > (T14))
      CALL sax(OpenAD_Symbol_79, __deriv__(T14), __deriv__(
     > OpenAD_prop_4))
      CALL saxpy(OpenAD_Symbol_77, __deriv__(T13), __deriv__(
     > OpenAD_prop_4))
      CALL saxpy(OpenAD_Symbol_75, __deriv__(T12), __deriv__(
     > OpenAD_prop_4))
      CALL sax(5.0D-01, __deriv__(OpenAD_prop_4), __deriv__(T18))
      CALL sax(OpenAD_Symbol_82, __deriv__(X15), __deriv__(T16))
      CALL saxpy(OpenAD_Symbol_299, __deriv__(OpenAD_prop_4), __deriv__
     > (T16))
      CALL saxpy(OpenAD_Symbol_300, __deriv__(T11), __deriv__(T16))
      CALL saxpy(OpenAD_Symbol_301, __deriv__(T10), __deriv__(T16))
      CALL saxpy(OpenAD_Symbol_302, __deriv__(OpenAD_prop_1), __deriv__
     > (T16))
      OpenAD_Symbol_85 = SIN(__value__(T16))
      OpenAD_Symbol_84 = COS(__value__(T16))
      __value__(T16) = OpenAD_Symbol_85
      __value__(T17) = (__value__(T03) * __value__(T12) + __value__(T04
     > ) * __value__(T13) + __value__(T05) * __value__(T14))
      OpenAD_Symbol_86 = __value__(T12)
      OpenAD_Symbol_87 = __value__(T03)
      OpenAD_Symbol_88 = __value__(T13)
      OpenAD_Symbol_89 = __value__(T04)
      OpenAD_Symbol_90 = __value__(T14)
      OpenAD_Symbol_91 = __value__(T05)
      __value__(T19) = (__value__(T04) * __value__(T14) - __value__(T05
     > ) * __value__(T13))
      OpenAD_Symbol_92 = __value__(T14)
      OpenAD_Symbol_93 = __value__(T04)
      OpenAD_Symbol_94 = __value__(T13)
      OpenAD_Symbol_95 = __value__(T05)
      __value__(T20) = (__value__(T05) * __value__(T12) - __value__(T03
     > ) * __value__(T14))
      OpenAD_Symbol_96 = __value__(T12)
      OpenAD_Symbol_97 = __value__(T05)
      OpenAD_Symbol_98 = __value__(T14)
      OpenAD_Symbol_99 = __value__(T03)
      __value__(T21) = (__value__(T03) * __value__(T13) - __value__(T04
     > ) * __value__(T12))
      OpenAD_Symbol_100 = __value__(T13)
      OpenAD_Symbol_101 = __value__(T03)
      OpenAD_Symbol_102 = __value__(T12)
      OpenAD_Symbol_103 = __value__(T04)
      __value__(T22) = (__value__(T17) - __value__(T16))
      __value__(T24) = __value__(T17)
      __value__(T23) = (__value__(T16) + __value__(T17))
      __value__(T25) = __value__(T22)
      __value__(T26) = __value__(T23)
      __value__(T27) = __value__(T24)
      OpenAD_Symbol_314 = (OpenAD_Symbol_94 * INT((-1_w2f__i8)))
      OpenAD_Symbol_315 = (OpenAD_Symbol_95 * INT((-1_w2f__i8)))
      OpenAD_Symbol_316 = (OpenAD_Symbol_98 * INT((-1_w2f__i8)))
      OpenAD_Symbol_317 = (OpenAD_Symbol_99 * INT((-1_w2f__i8)))
      OpenAD_Symbol_318 = (OpenAD_Symbol_102 * INT((-1_w2f__i8)))
      OpenAD_Symbol_319 = (OpenAD_Symbol_103 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_prop_5), __deriv__(T16))
      CALL sax(OpenAD_Symbol_84, __deriv__(OpenAD_prop_5), __deriv__(
     > T16))
      CALL sax(OpenAD_Symbol_92, __deriv__(T04), __deriv__(T19))
      CALL saxpy(OpenAD_Symbol_93, __deriv__(T14), __deriv__(T19))
      CALL saxpy(OpenAD_Symbol_314, __deriv__(T05), __deriv__(T19))
      CALL saxpy(OpenAD_Symbol_315, __deriv__(T13), __deriv__(T19))
      CALL sax(OpenAD_Symbol_96, __deriv__(T05), __deriv__(T20))
      CALL saxpy(OpenAD_Symbol_97, __deriv__(T12), __deriv__(T20))
      CALL saxpy(OpenAD_Symbol_316, __deriv__(T03), __deriv__(T20))
      CALL saxpy(OpenAD_Symbol_317, __deriv__(T14), __deriv__(T20))
      CALL sax(OpenAD_Symbol_100, __deriv__(T03), __deriv__(T21))
      CALL saxpy(OpenAD_Symbol_101, __deriv__(T13), __deriv__(T21))
      CALL saxpy(OpenAD_Symbol_318, __deriv__(T04), __deriv__(T21))
      CALL saxpy(OpenAD_Symbol_319, __deriv__(T12), __deriv__(T21))
      CALL sax(OpenAD_Symbol_86, __deriv__(T03), __deriv__(T17))
      CALL saxpy(OpenAD_Symbol_87, __deriv__(T12), __deriv__(T17))
      CALL saxpy(OpenAD_Symbol_88, __deriv__(T04), __deriv__(T17))
      CALL saxpy(OpenAD_Symbol_89, __deriv__(T13), __deriv__(T17))
      CALL saxpy(OpenAD_Symbol_90, __deriv__(T05), __deriv__(T17))
      CALL saxpy(OpenAD_Symbol_91, __deriv__(T14), __deriv__(T17))
      CALL setderiv(__deriv__(T22), __deriv__(T17))
      CALL dec_deriv(__deriv__(T22), __deriv__(T16))
      CALL setderiv(__deriv__(T24), __deriv__(T17))
      CALL setderiv(__deriv__(T23), __deriv__(T16))
      CALL inc_deriv(__deriv__(T23), __deriv__(T17))
      CALL setderiv(__deriv__(T25), __deriv__(T22))
      CALL setderiv(__deriv__(T26), __deriv__(T23))
      CALL setderiv(__deriv__(T27), __deriv__(T24))
      OpenAD_Symbol_104 = (__value__(T22) - __value__(T25))
      __value__(T25) = (OpenAD_Symbol_104 * 5.0D-01)
      OpenAD_Symbol_106 = (__value__(T23) - __value__(T26))
      __value__(T26) = (OpenAD_Symbol_106 * 5.0D-01)
      OpenAD_Symbol_108 = (__value__(T24) - __value__(T27))
      __value__(T27) = (OpenAD_Symbol_108 * 5.0D-01)
      __value__(T28) = (__value__(X04) * __value__(X16) + __value__(X05
     > ) * __value__(T08))
      OpenAD_Symbol_110 = __value__(X16)
      OpenAD_Symbol_111 = __value__(X04)
      OpenAD_Symbol_112 = __value__(T08)
      OpenAD_Symbol_113 = __value__(X05)
      __value__(T29) = (__value__(X05) * __value__(X06))
      OpenAD_Symbol_114 = __value__(X06)
      OpenAD_Symbol_115 = __value__(X05)
      __value__(T30) = (__value__(X05) * __value__(X07))
      OpenAD_Symbol_116 = __value__(X07)
      OpenAD_Symbol_117 = __value__(X05)
      __value__(T31) = (__value__(X05) * __value__(X08))
      OpenAD_Symbol_118 = __value__(X08)
      OpenAD_Symbol_119 = __value__(X05)
      __value__(T32) = (__value__(X09) * __value__(X16) + __value__(X10
     > ) * __value__(T09))
      OpenAD_Symbol_120 = __value__(X16)
      OpenAD_Symbol_121 = __value__(X09)
      OpenAD_Symbol_122 = __value__(T09)
      OpenAD_Symbol_123 = __value__(X10)
      __value__(T33) = (__value__(X10) * __value__(X11))
      OpenAD_Symbol_124 = __value__(X11)
      OpenAD_Symbol_125 = __value__(X10)
      __value__(T34) = (__value__(X10) * __value__(X12))
      OpenAD_Symbol_126 = __value__(X12)
      OpenAD_Symbol_127 = __value__(X10)
      __value__(T35) = (__value__(X10) * __value__(X13))
      OpenAD_Symbol_128 = __value__(X13)
      OpenAD_Symbol_129 = __value__(X10)
      __value__(T36) = (__value__(T32) - __value__(T28))
      __value__(T37) = (__value__(X10) - __value__(X05))
      __value__(T38) = (__value__(T33) - __value__(T29))
      __value__(T39) = (__value__(T34) - __value__(T30))
      __value__(T40) = (__value__(T35) - __value__(T31))
      __value__(T46) = (__value__(T12) * __value__(T38) + __value__(T13
     > ) * __value__(T39) + __value__(T14) * __value__(T40))
      OpenAD_Symbol_130 = __value__(T38)
      OpenAD_Symbol_131 = __value__(T12)
      OpenAD_Symbol_132 = __value__(T39)
      OpenAD_Symbol_133 = __value__(T13)
      OpenAD_Symbol_134 = __value__(T40)
      OpenAD_Symbol_135 = __value__(T14)
      OpenAD_Symbol_136 = (__value__(X15) / __value__(T16))
      OpenAD_Symbol_137 = (__value__(T36) + __value__(T18) * __value__(
     > T37) - __value__(T46))
      __value__(T47) = (OpenAD_Symbol_136 * OpenAD_Symbol_137)
      OpenAD_Symbol_140 = (INT(1_w2f__i8) / __value__(T16))
      OpenAD_Symbol_141 = (-(__value__(X15) /(__value__(T16) *
     >  __value__(T16))))
      OpenAD_Symbol_138 = OpenAD_Symbol_137
      OpenAD_Symbol_142 = __value__(T37)
      OpenAD_Symbol_143 = __value__(T18)
      OpenAD_Symbol_139 = OpenAD_Symbol_136
      __value__(T48) = (__value__(T03) * __value__(T38) + __value__(T04
     > ) * __value__(T39) + __value__(T05) * __value__(T40))
      OpenAD_Symbol_144 = __value__(T38)
      OpenAD_Symbol_145 = __value__(T03)
      OpenAD_Symbol_146 = __value__(T39)
      OpenAD_Symbol_147 = __value__(T04)
      OpenAD_Symbol_148 = __value__(T40)
      OpenAD_Symbol_149 = __value__(T05)
      OpenAD_Symbol_150 = (__value__(T47) + __value__(T17) * __value__(
     > T37) - __value__(T48))
      __value__(T41) = (OpenAD_Symbol_150 * 5.0D-01)
      OpenAD_Symbol_152 = __value__(T37)
      OpenAD_Symbol_153 = __value__(T17)
      OpenAD_Symbol_156 = (__value__(T03) * __value__(T16) - __value__(
     > T19))
      OpenAD_Symbol_161 = (- __value__(T03))
      __value__(T42) = (__value__(T04) * __value__(T40) + __value__(T37
     > ) * OpenAD_Symbol_156 + __value__(T47) * OpenAD_Symbol_161 -
     >  __value__(T05) * __value__(T39))
      OpenAD_Symbol_154 = __value__(T40)
      OpenAD_Symbol_155 = __value__(T04)
      OpenAD_Symbol_157 = OpenAD_Symbol_156
      OpenAD_Symbol_159 = __value__(T16)
      OpenAD_Symbol_160 = __value__(T03)
      OpenAD_Symbol_158 = __value__(T37)
      OpenAD_Symbol_162 = OpenAD_Symbol_161
      OpenAD_Symbol_163 = __value__(T47)
      OpenAD_Symbol_164 = __value__(T39)
      OpenAD_Symbol_165 = __value__(T05)
      OpenAD_Symbol_168 = (__value__(T04) * __value__(T16) - __value__(
     > T20))
      OpenAD_Symbol_173 = (- __value__(T04))
      __value__(T43) = (__value__(T05) * __value__(T38) + __value__(T37
     > ) * OpenAD_Symbol_168 + __value__(T47) * OpenAD_Symbol_173 -
     >  __value__(T03) * __value__(T40))
      OpenAD_Symbol_166 = __value__(T38)
      OpenAD_Symbol_167 = __value__(T05)
      OpenAD_Symbol_169 = OpenAD_Symbol_168
      OpenAD_Symbol_171 = __value__(T16)
      OpenAD_Symbol_172 = __value__(T04)
      OpenAD_Symbol_170 = __value__(T37)
      OpenAD_Symbol_174 = OpenAD_Symbol_173
      OpenAD_Symbol_175 = __value__(T47)
      OpenAD_Symbol_176 = __value__(T40)
      OpenAD_Symbol_177 = __value__(T03)
      OpenAD_Symbol_180 = (__value__(T05) * __value__(T16) - __value__(
     > T21))
      OpenAD_Symbol_185 = (- __value__(T05))
      __value__(T44) = (__value__(T03) * __value__(T39) + __value__(T37
     > ) * OpenAD_Symbol_180 + __value__(T47) * OpenAD_Symbol_185 -
     >  __value__(T04) * __value__(T38))
      OpenAD_Symbol_178 = __value__(T39)
      OpenAD_Symbol_179 = __value__(T03)
      OpenAD_Symbol_181 = OpenAD_Symbol_180
      OpenAD_Symbol_183 = __value__(T16)
      OpenAD_Symbol_184 = __value__(T05)
      OpenAD_Symbol_182 = __value__(T37)
      OpenAD_Symbol_186 = OpenAD_Symbol_185
      OpenAD_Symbol_187 = __value__(T47)
      OpenAD_Symbol_188 = __value__(T38)
      OpenAD_Symbol_189 = __value__(T04)
      OpenAD_Symbol_190 = (__value__(T48) + __value__(T47) - __value__(
     > T17) * __value__(T37))
      __value__(T45) = (OpenAD_Symbol_190 * 5.0D-01)
      OpenAD_Symbol_192 = __value__(T37)
      OpenAD_Symbol_193 = __value__(T17)
      OpenAD_Symbol_320 = (OpenAD_Symbol_140 * OpenAD_Symbol_138)
      OpenAD_Symbol_321 = (OpenAD_Symbol_141 * OpenAD_Symbol_138)
      OpenAD_Symbol_322 = (OpenAD_Symbol_192 *(-5.0D-01))
      OpenAD_Symbol_323 = (OpenAD_Symbol_152 * 5.0D-01)
      OpenAD_Symbol_324 = (INT((-1_w2f__i8)) * OpenAD_Symbol_139)
      OpenAD_Symbol_325 = (OpenAD_Symbol_134 * OpenAD_Symbol_324)
      OpenAD_Symbol_326 = (OpenAD_Symbol_135 * OpenAD_Symbol_324)
      OpenAD_Symbol_327 = (OpenAD_Symbol_184 * OpenAD_Symbol_182)
      OpenAD_Symbol_328 = (OpenAD_Symbol_183 * OpenAD_Symbol_182 + INT(
     > (-1_w2f__i8)) * OpenAD_Symbol_187)
      OpenAD_Symbol_329 = (INT((-1_w2f__i8)) * OpenAD_Symbol_182)
      OpenAD_Symbol_330 = (OpenAD_Symbol_172 * OpenAD_Symbol_170)
      OpenAD_Symbol_331 = (OpenAD_Symbol_171 * OpenAD_Symbol_170 + INT(
     > (-1_w2f__i8)) * OpenAD_Symbol_175)
      OpenAD_Symbol_332 = (INT((-1_w2f__i8)) * OpenAD_Symbol_170)
      OpenAD_Symbol_333 = (OpenAD_Symbol_160 * OpenAD_Symbol_158)
      OpenAD_Symbol_334 = (OpenAD_Symbol_159 * OpenAD_Symbol_158 + INT(
     > (-1_w2f__i8)) * OpenAD_Symbol_163)
      OpenAD_Symbol_335 = (INT((-1_w2f__i8)) * OpenAD_Symbol_158)
      OpenAD_Symbol_336 = (OpenAD_Symbol_142 * OpenAD_Symbol_139)
      OpenAD_Symbol_337 = (OpenAD_Symbol_143 * OpenAD_Symbol_139)
      OpenAD_Symbol_338 = (OpenAD_Symbol_193 *(-5.0D-01) +
     >  OpenAD_Symbol_337 * 5.0D-01)
      OpenAD_Symbol_339 = (OpenAD_Symbol_181 + OpenAD_Symbol_337 *
     >  OpenAD_Symbol_186)
      OpenAD_Symbol_340 = (OpenAD_Symbol_169 + OpenAD_Symbol_337 *
     >  OpenAD_Symbol_174)
      OpenAD_Symbol_341 = (OpenAD_Symbol_157 + OpenAD_Symbol_337 *
     >  OpenAD_Symbol_162)
      OpenAD_Symbol_342 = (OpenAD_Symbol_153 * 5.0D-01 +
     >  OpenAD_Symbol_337 * 5.0D-01)
      OpenAD_Symbol_343 = (OpenAD_Symbol_132 * OpenAD_Symbol_324)
      OpenAD_Symbol_344 = (OpenAD_Symbol_133 * OpenAD_Symbol_324)
      OpenAD_Symbol_345 = (OpenAD_Symbol_130 * OpenAD_Symbol_324)
      OpenAD_Symbol_346 = (OpenAD_Symbol_131 * OpenAD_Symbol_324)
      OpenAD_Symbol_347 = (OpenAD_Symbol_188 * INT((-1_w2f__i8)))
      OpenAD_Symbol_348 = (OpenAD_Symbol_189 * INT((-1_w2f__i8)))
      OpenAD_Symbol_349 = (OpenAD_Symbol_176 * INT((-1_w2f__i8)))
      OpenAD_Symbol_350 = (OpenAD_Symbol_177 * INT((-1_w2f__i8)))
      OpenAD_Symbol_351 = (OpenAD_Symbol_164 * INT((-1_w2f__i8)))
      OpenAD_Symbol_352 = (OpenAD_Symbol_165 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_prop_6), __deriv__(T25))
      CALL setderiv(__deriv__(OpenAD_prop_7), __deriv__(T26))
      CALL setderiv(__deriv__(OpenAD_prop_8), __deriv__(T27))
      CALL setderiv(__deriv__(OpenAD_prop_9), __deriv__(T22))
      CALL dec_deriv(__deriv__(OpenAD_prop_9), __deriv__(OpenAD_prop_6)
     > )
      CALL setderiv(__deriv__(OpenAD_prop_10), __deriv__(T23))
      CALL dec_deriv(__deriv__(OpenAD_prop_10), __deriv__(OpenAD_prop_7
     > ))
      CALL setderiv(__deriv__(OpenAD_prop_11), __deriv__(T24))
      CALL dec_deriv(__deriv__(OpenAD_prop_11), __deriv__(OpenAD_prop_8
     > ))
      CALL sax(OpenAD_Symbol_114, __deriv__(X05), __deriv__(T29))
      CALL saxpy(OpenAD_Symbol_115, __deriv__(X06), __deriv__(T29))
      CALL sax(OpenAD_Symbol_116, __deriv__(X05), __deriv__(T30))
      CALL saxpy(OpenAD_Symbol_117, __deriv__(X07), __deriv__(T30))
      CALL sax(OpenAD_Symbol_118, __deriv__(X05), __deriv__(T31))
      CALL saxpy(OpenAD_Symbol_119, __deriv__(X08), __deriv__(T31))
      CALL setderiv(__deriv__(T37), __deriv__(X10))
      CALL dec_deriv(__deriv__(T37), __deriv__(X05))
      CALL set_neg_deriv(__deriv__(T38), __deriv__(T29))
      CALL saxpy(OpenAD_Symbol_124, __deriv__(X10), __deriv__(T38))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(X11), __deriv__(T38))
      CALL set_neg_deriv(__deriv__(T39), __deriv__(T30))
      CALL saxpy(OpenAD_Symbol_126, __deriv__(X10), __deriv__(T39))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(X12), __deriv__(T39))
      CALL set_neg_deriv(__deriv__(T40), __deriv__(T31))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(X10), __deriv__(T40))
      CALL saxpy(OpenAD_Symbol_129, __deriv__(X13), __deriv__(T40))
      CALL sax(5.0D-01, __deriv__(OpenAD_prop_9), __deriv__(T25))
      CALL sax(5.0D-01, __deriv__(OpenAD_prop_10), __deriv__(T26))
      CALL sax(5.0D-01, __deriv__(OpenAD_prop_11), __deriv__(T27))
      CALL sax(OpenAD_Symbol_110, __deriv__(X04), __deriv__(T28))
      CALL saxpy(OpenAD_Symbol_111, __deriv__(X16), __deriv__(T28))
      CALL saxpy(OpenAD_Symbol_112, __deriv__(X05), __deriv__(T28))
      CALL saxpy(OpenAD_Symbol_113, __deriv__(T08), __deriv__(T28))
      CALL set_neg_deriv(__deriv__(T36), __deriv__(T28))
      CALL saxpy(OpenAD_Symbol_120, __deriv__(X09), __deriv__(T36))
      CALL saxpy(OpenAD_Symbol_121, __deriv__(X16), __deriv__(T36))
      CALL saxpy(OpenAD_Symbol_122, __deriv__(X10), __deriv__(T36))
      CALL saxpy(OpenAD_Symbol_123, __deriv__(T09), __deriv__(T36))
      CALL sax(OpenAD_Symbol_148, __deriv__(T05), __deriv__(T48))
      CALL saxpy(OpenAD_Symbol_149, __deriv__(T40), __deriv__(T48))
      CALL saxpy(OpenAD_Symbol_146, __deriv__(T04), __deriv__(T48))
      CALL saxpy(OpenAD_Symbol_147, __deriv__(T39), __deriv__(T48))
      CALL saxpy(OpenAD_Symbol_144, __deriv__(T03), __deriv__(T48))
      CALL saxpy(OpenAD_Symbol_145, __deriv__(T38), __deriv__(T48))
      CALL sax(OpenAD_Symbol_320, __deriv__(X15), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_321, __deriv__(T16), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_325, __deriv__(T14), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_326, __deriv__(T40), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_139, __deriv__(T36), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_336, __deriv__(T18), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_343, __deriv__(T13), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_344, __deriv__(T39), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_345, __deriv__(T12), __deriv__(T47))
      CALL saxpy(OpenAD_Symbol_346, __deriv__(T38), __deriv__(T47))
      CALL sax(-5.0D-01, __deriv__(T48), __deriv__(T41))
      CALL saxpy(5.0D-01, __deriv__(T47), __deriv__(T41))
      CALL saxpy(OpenAD_Symbol_323, __deriv__(T17), __deriv__(T41))
      CALL saxpy(OpenAD_Symbol_342, __deriv__(T37), __deriv__(T41))
      CALL sax(5.0D-01, __deriv__(T48), __deriv__(T45))
      CALL saxpy(5.0D-01, __deriv__(T47), __deriv__(T45))
      CALL saxpy(OpenAD_Symbol_322, __deriv__(T17), __deriv__(T45))
      CALL saxpy(OpenAD_Symbol_338, __deriv__(T37), __deriv__(T45))
      CALL sax(OpenAD_Symbol_162, __deriv__(T47), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_341, __deriv__(T37), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_334, __deriv__(T03), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_333, __deriv__(T16), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_335, __deriv__(T19), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_154, __deriv__(T04), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_155, __deriv__(T40), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_351, __deriv__(T05), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_352, __deriv__(T39), __deriv__(T42))
      CALL sax(OpenAD_Symbol_174, __deriv__(T47), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_340, __deriv__(T37), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_331, __deriv__(T04), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_330, __deriv__(T16), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_332, __deriv__(T20), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_166, __deriv__(T05), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_167, __deriv__(T38), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_349, __deriv__(T03), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_350, __deriv__(T40), __deriv__(T43))
      CALL sax(OpenAD_Symbol_186, __deriv__(T47), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_339, __deriv__(T37), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_328, __deriv__(T05), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_327, __deriv__(T16), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_329, __deriv__(T21), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_178, __deriv__(T03), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_179, __deriv__(T39), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_347, __deriv__(T04), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_348, __deriv__(T38), __deriv__(T44))
      OpenAD_Symbol_196 = (__value__(T25) * __value__(T41))
      OpenAD_Symbol_194 = __value__(T41)
      OpenAD_Symbol_195 = __value__(T25)
      __value__(T41) = OpenAD_Symbol_196
      OpenAD_Symbol_199 = (__value__(T27) * __value__(T42))
      OpenAD_Symbol_197 = __value__(T42)
      OpenAD_Symbol_198 = __value__(T27)
      __value__(T42) = OpenAD_Symbol_199
      OpenAD_Symbol_202 = (__value__(T27) * __value__(T43))
      OpenAD_Symbol_200 = __value__(T43)
      OpenAD_Symbol_201 = __value__(T27)
      __value__(T43) = OpenAD_Symbol_202
      OpenAD_Symbol_205 = (__value__(T27) * __value__(T44))
      OpenAD_Symbol_203 = __value__(T44)
      OpenAD_Symbol_204 = __value__(T27)
      __value__(T44) = OpenAD_Symbol_205
      OpenAD_Symbol_208 = (__value__(T26) * __value__(T45))
      OpenAD_Symbol_206 = __value__(T45)
      OpenAD_Symbol_207 = __value__(T26)
      __value__(T45) = OpenAD_Symbol_208
      __value__(T49) = (__value__(T41) + __value__(T45))
      __value__(T50) = (__value__(T41) - __value__(T45))
      __value__(T56) = ((__value__(T49) / __value__(T16)) + __value__(
     > T03) * __value__(T42) + __value__(T04) * __value__(T43) +
     >  __value__(T05) * __value__(T44))
      OpenAD_Symbol_209 = (INT(1_w2f__i8) / __value__(T16))
      OpenAD_Symbol_210 = (-(__value__(T49) /(__value__(T16) *
     >  __value__(T16))))
      OpenAD_Symbol_211 = __value__(T42)
      OpenAD_Symbol_212 = __value__(T03)
      OpenAD_Symbol_213 = __value__(T43)
      OpenAD_Symbol_214 = __value__(T04)
      OpenAD_Symbol_215 = __value__(T44)
      OpenAD_Symbol_216 = __value__(T05)
      OpenAD_Symbol_219 = (__value__(X16) * __value__(T16))
      __value__(T51) = (__value__(T18) * __value__(T56) + __value__(T49
     > ) * OpenAD_Symbol_219 - __value__(T17) * __value__(T50) +
     >  __value__(T19) * __value__(T42) + __value__(T20) * __value__(
     > T43) + __value__(T21) * __value__(T44))
      OpenAD_Symbol_217 = __value__(T56)
      OpenAD_Symbol_218 = __value__(T18)
      OpenAD_Symbol_220 = OpenAD_Symbol_219
      OpenAD_Symbol_222 = __value__(T16)
      OpenAD_Symbol_223 = __value__(X16)
      OpenAD_Symbol_221 = __value__(T49)
      OpenAD_Symbol_224 = __value__(T50)
      OpenAD_Symbol_225 = __value__(T17)
      OpenAD_Symbol_226 = __value__(T42)
      OpenAD_Symbol_227 = __value__(T19)
      OpenAD_Symbol_228 = __value__(T43)
      OpenAD_Symbol_229 = __value__(T20)
      OpenAD_Symbol_230 = __value__(T44)
      OpenAD_Symbol_231 = __value__(T21)
      __value__(T52) = __value__(T56)
      __value__(T53) = (__value__(T05) * __value__(T43) + __value__(T12
     > ) * __value__(T56) - __value__(T03) * __value__(T50) - __value__
     > (T04) * __value__(T44))
      OpenAD_Symbol_232 = __value__(T43)
      OpenAD_Symbol_233 = __value__(T05)
      OpenAD_Symbol_234 = __value__(T56)
      OpenAD_Symbol_235 = __value__(T12)
      OpenAD_Symbol_236 = __value__(T50)
      OpenAD_Symbol_237 = __value__(T03)
      OpenAD_Symbol_238 = __value__(T44)
      OpenAD_Symbol_239 = __value__(T04)
      __value__(T54) = (__value__(T03) * __value__(T44) + __value__(T13
     > ) * __value__(T56) - __value__(T04) * __value__(T50) - __value__
     > (T05) * __value__(T42))
      OpenAD_Symbol_240 = __value__(T44)
      OpenAD_Symbol_241 = __value__(T03)
      OpenAD_Symbol_242 = __value__(T56)
      OpenAD_Symbol_243 = __value__(T13)
      OpenAD_Symbol_244 = __value__(T50)
      OpenAD_Symbol_245 = __value__(T04)
      OpenAD_Symbol_246 = __value__(T42)
      OpenAD_Symbol_247 = __value__(T05)
      __value__(T55) = (__value__(T04) * __value__(T42) + __value__(T14
     > ) * __value__(T56) - __value__(T05) * __value__(T50) - __value__
     > (T03) * __value__(T43))
      OpenAD_Symbol_248 = __value__(T42)
      OpenAD_Symbol_249 = __value__(T04)
      OpenAD_Symbol_250 = __value__(T56)
      OpenAD_Symbol_251 = __value__(T14)
      OpenAD_Symbol_252 = __value__(T50)
      OpenAD_Symbol_253 = __value__(T05)
      OpenAD_Symbol_254 = __value__(T43)
      OpenAD_Symbol_255 = __value__(T03)
      __value__(T57) = (__value__(X06) * __value__(T03) + __value__(X07
     > ) * __value__(T04) + __value__(X08) * __value__(T05))
      OpenAD_Symbol_256 = __value__(T03)
      OpenAD_Symbol_257 = __value__(X06)
      OpenAD_Symbol_258 = __value__(T04)
      OpenAD_Symbol_259 = __value__(X07)
      OpenAD_Symbol_260 = __value__(T05)
      OpenAD_Symbol_261 = __value__(X08)
      OpenAD_Symbol_265 = (__value__(X04) + __value__(T28))
      OpenAD_Symbol_262 = (__value__(T51) + __value__(T57) *
     >  OpenAD_Symbol_265)
      __value__(Y1) = (__value__(T01) * OpenAD_Symbol_262)
      OpenAD_Symbol_263 = OpenAD_Symbol_262
      OpenAD_Symbol_266 = OpenAD_Symbol_265
      OpenAD_Symbol_267 = __value__(T57)
      OpenAD_Symbol_264 = __value__(T01)
      OpenAD_Symbol_268 = (__value__(T52) + __value__(X05) * __value__(
     > T57))
      __value__(Y2) = (__value__(T01) * OpenAD_Symbol_268)
      OpenAD_Symbol_269 = OpenAD_Symbol_268
      OpenAD_Symbol_271 = __value__(T57)
      OpenAD_Symbol_272 = __value__(X05)
      OpenAD_Symbol_270 = __value__(T01)
      OpenAD_Symbol_273 = (__value__(T53) + __value__(X04) * __value__(
     > T03) + __value__(T29) * __value__(T57))
      __value__(Y3) = (__value__(T01) * OpenAD_Symbol_273)
      OpenAD_Symbol_274 = OpenAD_Symbol_273
      OpenAD_Symbol_276 = __value__(T03)
      OpenAD_Symbol_277 = __value__(X04)
      OpenAD_Symbol_278 = __value__(T57)
      OpenAD_Symbol_279 = __value__(T29)
      OpenAD_Symbol_275 = __value__(T01)
      OpenAD_Symbol_280 = (__value__(T54) + __value__(X04) * __value__(
     > T04) + __value__(T30) * __value__(T57))
      __value__(Y4) = (__value__(T01) * OpenAD_Symbol_280)
      OpenAD_Symbol_281 = OpenAD_Symbol_280
      OpenAD_Symbol_283 = __value__(T04)
      OpenAD_Symbol_284 = __value__(X04)
      OpenAD_Symbol_285 = __value__(T57)
      OpenAD_Symbol_286 = __value__(T30)
      OpenAD_Symbol_282 = __value__(T01)
      OpenAD_Symbol_287 = (__value__(T55) + __value__(X04) * __value__(
     > T05) + __value__(T31) * __value__(T57))
      __value__(Y5) = (__value__(T01) * OpenAD_Symbol_287)
      OpenAD_Symbol_288 = OpenAD_Symbol_287
      OpenAD_Symbol_290 = __value__(T05)
      OpenAD_Symbol_291 = __value__(X04)
      OpenAD_Symbol_292 = __value__(T57)
      OpenAD_Symbol_293 = __value__(T31)
      OpenAD_Symbol_289 = __value__(T01)
      OpenAD_Symbol_353 = (OpenAD_Symbol_266 * OpenAD_Symbol_264)
      OpenAD_Symbol_354 = (OpenAD_Symbol_267 * OpenAD_Symbol_264)
      OpenAD_Symbol_355 = (OpenAD_Symbol_230 * OpenAD_Symbol_264)
      OpenAD_Symbol_356 = (OpenAD_Symbol_231 * OpenAD_Symbol_264)
      OpenAD_Symbol_357 = (INT((-1_w2f__i8)) * OpenAD_Symbol_289)
      OpenAD_Symbol_358 = (OpenAD_Symbol_254 * OpenAD_Symbol_357)
      OpenAD_Symbol_359 = (OpenAD_Symbol_255 * OpenAD_Symbol_357)
      OpenAD_Symbol_360 = (INT((-1_w2f__i8)) * OpenAD_Symbol_282)
      OpenAD_Symbol_361 = (OpenAD_Symbol_246 * OpenAD_Symbol_360)
      OpenAD_Symbol_362 = (OpenAD_Symbol_247 * OpenAD_Symbol_360)
      OpenAD_Symbol_363 = (INT((-1_w2f__i8)) * OpenAD_Symbol_275)
      OpenAD_Symbol_364 = (OpenAD_Symbol_238 * OpenAD_Symbol_363)
      OpenAD_Symbol_365 = (OpenAD_Symbol_239 * OpenAD_Symbol_363)
      OpenAD_Symbol_366 = (OpenAD_Symbol_228 * OpenAD_Symbol_264)
      OpenAD_Symbol_367 = (OpenAD_Symbol_229 * OpenAD_Symbol_264)
      OpenAD_Symbol_368 = (OpenAD_Symbol_248 * OpenAD_Symbol_289)
      OpenAD_Symbol_369 = (OpenAD_Symbol_249 * OpenAD_Symbol_289)
      OpenAD_Symbol_370 = (OpenAD_Symbol_240 * OpenAD_Symbol_282)
      OpenAD_Symbol_371 = (OpenAD_Symbol_241 * OpenAD_Symbol_282)
      OpenAD_Symbol_372 = (OpenAD_Symbol_232 * OpenAD_Symbol_275)
      OpenAD_Symbol_373 = (OpenAD_Symbol_233 * OpenAD_Symbol_275)
      OpenAD_Symbol_374 = (OpenAD_Symbol_226 * OpenAD_Symbol_264)
      OpenAD_Symbol_375 = (OpenAD_Symbol_227 * OpenAD_Symbol_264)
      OpenAD_Symbol_376 = (OpenAD_Symbol_250 * OpenAD_Symbol_289)
      OpenAD_Symbol_377 = (OpenAD_Symbol_251 * OpenAD_Symbol_289)
      OpenAD_Symbol_378 = (INT((-1_w2f__i8)) * OpenAD_Symbol_289)
      OpenAD_Symbol_379 = (OpenAD_Symbol_253 * OpenAD_Symbol_378)
      OpenAD_Symbol_380 = (OpenAD_Symbol_242 * OpenAD_Symbol_282)
      OpenAD_Symbol_381 = (OpenAD_Symbol_243 * OpenAD_Symbol_282)
      OpenAD_Symbol_382 = (INT((-1_w2f__i8)) * OpenAD_Symbol_282)
      OpenAD_Symbol_383 = (OpenAD_Symbol_245 * OpenAD_Symbol_382)
      OpenAD_Symbol_384 = (OpenAD_Symbol_234 * OpenAD_Symbol_275)
      OpenAD_Symbol_385 = (OpenAD_Symbol_235 * OpenAD_Symbol_275)
      OpenAD_Symbol_386 = (INT((-1_w2f__i8)) * OpenAD_Symbol_275)
      OpenAD_Symbol_387 = (OpenAD_Symbol_237 * OpenAD_Symbol_386)
      OpenAD_Symbol_388 = (OpenAD_Symbol_217 * OpenAD_Symbol_264)
      OpenAD_Symbol_389 = (OpenAD_Symbol_218 * OpenAD_Symbol_264)
      OpenAD_Symbol_390 = (OpenAD_Symbol_292 * OpenAD_Symbol_289)
      OpenAD_Symbol_391 = (OpenAD_Symbol_293 * OpenAD_Symbol_289)
      OpenAD_Symbol_392 = (OpenAD_Symbol_252 * OpenAD_Symbol_378 +
     >  OpenAD_Symbol_291 * OpenAD_Symbol_289)
      OpenAD_Symbol_393 = (OpenAD_Symbol_290 * OpenAD_Symbol_289)
      OpenAD_Symbol_394 = (OpenAD_Symbol_285 * OpenAD_Symbol_282)
      OpenAD_Symbol_395 = (OpenAD_Symbol_286 * OpenAD_Symbol_282)
      OpenAD_Symbol_396 = (OpenAD_Symbol_244 * OpenAD_Symbol_382 +
     >  OpenAD_Symbol_284 * OpenAD_Symbol_282)
      OpenAD_Symbol_397 = (OpenAD_Symbol_283 * OpenAD_Symbol_282)
      OpenAD_Symbol_398 = (OpenAD_Symbol_278 * OpenAD_Symbol_275)
      OpenAD_Symbol_399 = (OpenAD_Symbol_279 * OpenAD_Symbol_275)
      OpenAD_Symbol_400 = (OpenAD_Symbol_236 * OpenAD_Symbol_386 +
     >  OpenAD_Symbol_277 * OpenAD_Symbol_275)
      OpenAD_Symbol_401 = (OpenAD_Symbol_276 * OpenAD_Symbol_275)
      OpenAD_Symbol_402 = (OpenAD_Symbol_271 * OpenAD_Symbol_270)
      OpenAD_Symbol_403 = (OpenAD_Symbol_272 * OpenAD_Symbol_270)
      OpenAD_Symbol_404 = (OpenAD_Symbol_220 * OpenAD_Symbol_264)
      OpenAD_Symbol_405 = (OpenAD_Symbol_222 * OpenAD_Symbol_221 *
     >  OpenAD_Symbol_264)
      OpenAD_Symbol_406 = (OpenAD_Symbol_223 * OpenAD_Symbol_221 *
     >  OpenAD_Symbol_264)
      OpenAD_Symbol_407 = (INT((-1_w2f__i8)) * OpenAD_Symbol_264)
      OpenAD_Symbol_408 = (OpenAD_Symbol_224 * OpenAD_Symbol_407)
      OpenAD_Symbol_409 = (OpenAD_Symbol_225 * OpenAD_Symbol_407)
      CALL setderiv(__deriv__(OpenAD_prop_12), __deriv__(T41))
      CALL setderiv(__deriv__(OpenAD_prop_13), __deriv__(T42))
      CALL setderiv(__deriv__(OpenAD_prop_14), __deriv__(T43))
      CALL setderiv(__deriv__(OpenAD_prop_15), __deriv__(T44))
      CALL setderiv(__deriv__(OpenAD_prop_16), __deriv__(T45))
      CALL sax(OpenAD_Symbol_194, __deriv__(T25), __deriv__(T41))
      CALL saxpy(OpenAD_Symbol_195, __deriv__(OpenAD_prop_12),
     >  __deriv__(T41))
      CALL sax(OpenAD_Symbol_197, __deriv__(T27), __deriv__(T42))
      CALL saxpy(OpenAD_Symbol_198, __deriv__(OpenAD_prop_13),
     >  __deriv__(T42))
      CALL sax(OpenAD_Symbol_200, __deriv__(T27), __deriv__(T43))
      CALL saxpy(OpenAD_Symbol_201, __deriv__(OpenAD_prop_14),
     >  __deriv__(T43))
      CALL sax(OpenAD_Symbol_203, __deriv__(T27), __deriv__(T44))
      CALL saxpy(OpenAD_Symbol_204, __deriv__(OpenAD_prop_15),
     >  __deriv__(T44))
      CALL sax(OpenAD_Symbol_206, __deriv__(T26), __deriv__(T45))
      CALL saxpy(OpenAD_Symbol_207, __deriv__(OpenAD_prop_16),
     >  __deriv__(T45))
      CALL setderiv(__deriv__(T49), __deriv__(T41))
      CALL inc_deriv(__deriv__(T49), __deriv__(T45))
      CALL setderiv(__deriv__(T50), __deriv__(T41))
      CALL dec_deriv(__deriv__(T50), __deriv__(T45))
      CALL setderiv(__deriv__(OpenAD_prop_17), __deriv__(X04))
      CALL inc_deriv(__deriv__(OpenAD_prop_17), __deriv__(T28))
      CALL sax(OpenAD_Symbol_256, __deriv__(X06), __deriv__(T57))
      CALL saxpy(OpenAD_Symbol_257, __deriv__(T03), __deriv__(T57))
      CALL saxpy(OpenAD_Symbol_258, __deriv__(X07), __deriv__(T57))
      CALL saxpy(OpenAD_Symbol_259, __deriv__(T04), __deriv__(T57))
      CALL saxpy(OpenAD_Symbol_260, __deriv__(X08), __deriv__(T57))
      CALL saxpy(OpenAD_Symbol_261, __deriv__(T05), __deriv__(T57))
      CALL sax(OpenAD_Symbol_209, __deriv__(T49), __deriv__(T56))
      CALL saxpy(OpenAD_Symbol_210, __deriv__(T16), __deriv__(T56))
      CALL saxpy(OpenAD_Symbol_211, __deriv__(T03), __deriv__(T56))
      CALL saxpy(OpenAD_Symbol_212, __deriv__(T42), __deriv__(T56))
      CALL saxpy(OpenAD_Symbol_213, __deriv__(T04), __deriv__(T56))
      CALL saxpy(OpenAD_Symbol_214, __deriv__(T43), __deriv__(T56))
      CALL saxpy(OpenAD_Symbol_215, __deriv__(T05), __deriv__(T56))
      CALL saxpy(OpenAD_Symbol_216, __deriv__(T44), __deriv__(T56))
      CALL sax(OpenAD_Symbol_269, __deriv__(T01), __deriv__(Y2))
      CALL saxpy(OpenAD_Symbol_402, __deriv__(X05), __deriv__(Y2))
      CALL saxpy(OpenAD_Symbol_403, __deriv__(T57), __deriv__(Y2))
      CALL saxpy(OpenAD_Symbol_270, __deriv__(T56), __deriv__(Y2))
      CALL sax(OpenAD_Symbol_274, __deriv__(T01), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_364, __deriv__(T04), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_365, __deriv__(T44), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_372, __deriv__(T05), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_373, __deriv__(T43), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_384, __deriv__(T12), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_385, __deriv__(T56), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_400, __deriv__(T03), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_387, __deriv__(T50), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_398, __deriv__(T29), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_399, __deriv__(T57), __deriv__(Y3))
      CALL saxpy(OpenAD_Symbol_401, __deriv__(X04), __deriv__(Y3))
      CALL sax(OpenAD_Symbol_281, __deriv__(T01), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_361, __deriv__(T05), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_362, __deriv__(T42), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_370, __deriv__(T03), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_371, __deriv__(T44), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_380, __deriv__(T13), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_381, __deriv__(T56), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_396, __deriv__(T04), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_383, __deriv__(T50), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_394, __deriv__(T30), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_395, __deriv__(T57), __deriv__(Y4))
      CALL saxpy(OpenAD_Symbol_397, __deriv__(X04), __deriv__(Y4))
      CALL sax(OpenAD_Symbol_288, __deriv__(T01), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_358, __deriv__(T03), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_359, __deriv__(T43), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_368, __deriv__(T04), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_369, __deriv__(T42), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_376, __deriv__(T14), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_377, __deriv__(T56), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_392, __deriv__(T05), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_379, __deriv__(T50), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_390, __deriv__(T31), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_391, __deriv__(T57), __deriv__(Y5))
      CALL saxpy(OpenAD_Symbol_393, __deriv__(X04), __deriv__(Y5))
      CALL sax(OpenAD_Symbol_263, __deriv__(T01), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_353, __deriv__(T57), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_354, __deriv__(OpenAD_prop_17),
     >  __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_355, __deriv__(T21), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_356, __deriv__(T44), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_366, __deriv__(T20), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_367, __deriv__(T43), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_374, __deriv__(T19), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_375, __deriv__(T42), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_388, __deriv__(T18), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_389, __deriv__(T56), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_404, __deriv__(T49), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_405, __deriv__(X16), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_406, __deriv__(T16), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_408, __deriv__(T17), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_409, __deriv__(T50), __deriv__(Y1))
      END SUBROUTINE
