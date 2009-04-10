
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE ad_roehf5(NRM, PRIML, PRIMR, GAMMA, GM1, GM1INV,
     >  NLEFIX, LEFIX, MCHEPS, FLUX)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
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
      REAL(w2f__8) OpenAD_Symbol_315
      REAL(w2f__8) OpenAD_Symbol_316
      REAL(w2f__8) OpenAD_Symbol_317
      REAL(w2f__8) OpenAD_Symbol_318
      REAL(w2f__8) OpenAD_Symbol_320
      REAL(w2f__8) OpenAD_Symbol_321
      REAL(w2f__8) OpenAD_Symbol_322
      REAL(w2f__8) OpenAD_Symbol_323
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
      TYPE (OpenADTy_active) OpenAD_Symbol_345
      TYPE (OpenADTy_active) OpenAD_Symbol_346
      TYPE (OpenADTy_active) OpenAD_Symbol_347
      TYPE (OpenADTy_active) OpenAD_Symbol_348
      REAL(w2f__8) OpenAD_Symbol_349
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_350
      REAL(w2f__8) OpenAD_Symbol_351
      REAL(w2f__8) OpenAD_Symbol_352
      REAL(w2f__8) OpenAD_Symbol_353
      REAL(w2f__8) OpenAD_Symbol_354
      REAL(w2f__8) OpenAD_Symbol_355
      REAL(w2f__8) OpenAD_Symbol_356
      TYPE (OpenADTy_active) OpenAD_Symbol_357
      TYPE (OpenADTy_active) OpenAD_Symbol_358
      REAL(w2f__8) OpenAD_Symbol_359
      REAL(w2f__8) OpenAD_Symbol_360
      REAL(w2f__8) OpenAD_Symbol_361
      TYPE (OpenADTy_active) OpenAD_Symbol_362
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
      TYPE (OpenADTy_active) OpenAD_Symbol_382
      TYPE (OpenADTy_active) OpenAD_Symbol_383
      TYPE (OpenADTy_active) OpenAD_Symbol_384
      TYPE (OpenADTy_active) OpenAD_Symbol_385
      TYPE (OpenADTy_active) OpenAD_Symbol_386
      TYPE (OpenADTy_active) OpenAD_Symbol_387
      TYPE (OpenADTy_active) OpenAD_Symbol_388
      TYPE (OpenADTy_active) OpenAD_Symbol_389
      REAL(w2f__8) OpenAD_Symbol_39
      TYPE (OpenADTy_active) OpenAD_Symbol_390
      TYPE (OpenADTy_active) OpenAD_Symbol_391
      TYPE (OpenADTy_active) OpenAD_Symbol_392
      TYPE (OpenADTy_active) OpenAD_Symbol_393
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
      TYPE (OpenADTy_active) OpenAD_Symbol_422
      TYPE (OpenADTy_active) OpenAD_Symbol_423
      TYPE (OpenADTy_active) OpenAD_Symbol_424
      TYPE (OpenADTy_active) OpenAD_Symbol_425
      TYPE (OpenADTy_active) OpenAD_Symbol_426
      TYPE (OpenADTy_active) OpenAD_Symbol_427
      TYPE (OpenADTy_active) OpenAD_Symbol_428
      TYPE (OpenADTy_active) OpenAD_Symbol_429
      REAL(w2f__8) OpenAD_Symbol_43
      TYPE (OpenADTy_active) OpenAD_Symbol_430
      TYPE (OpenADTy_active) OpenAD_Symbol_431
      REAL(w2f__8) OpenAD_Symbol_432
      TYPE (OpenADTy_active) OpenAD_Symbol_433
      REAL(w2f__8) OpenAD_Symbol_434
      TYPE (OpenADTy_active) OpenAD_Symbol_435
      REAL(w2f__8) OpenAD_Symbol_436
      TYPE (OpenADTy_active) OpenAD_Symbol_437
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
      TYPE (OpenADTy_active) NRM(1 : 3)
      INTENT(IN)  NRM
      TYPE (OpenADTy_active) PRIML(1 : 5)
      INTENT(IN)  PRIML
      TYPE (OpenADTy_active) PRIMR(1 : 5)
      INTENT(IN)  PRIMR
      TYPE (OpenADTy_active) GAMMA
      INTENT(IN)  GAMMA
      TYPE (OpenADTy_active) GM1
      INTENT(IN)  GM1
      TYPE (OpenADTy_active) GM1INV
      INTENT(IN)  GM1INV
      TYPE (OpenADTy_active) NLEFIX
      INTENT(IN)  NLEFIX
      TYPE (OpenADTy_active) LEFIX
      INTENT(IN)  LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN)  MCHEPS
      TYPE (OpenADTy_active) FLUX(1 : 5)
      INTENT(OUT)  FLUX
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
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = ((__value__(NRM(1)) ** 2) +(__value__(NRM(2))
     >  ** 2) +(__value__(NRM(3)) ** 2))
      __value__(NSIZE) = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = (2 *(__value__(NRM(1)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2 *(__value__(NRM(2)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_6 = (2 *(__value__(NRM(3)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      OpenAD_Symbol_325 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      OpenAD_Symbol_326 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_Symbol_327 = (OpenAD_Symbol_2 * OpenAD_Symbol_1)
      CALL sax(OpenAD_Symbol_325, __deriv__(NRM(3)), __deriv__(NSIZE))
      CALL saxpy(OpenAD_Symbol_326, __deriv__(NRM(2)), __deriv__(NSIZE)
     > )
      CALL saxpy(OpenAD_Symbol_327, __deriv__(NRM(1)), __deriv__(NSIZE)
     > )
      IF(MCHEPS .LT. __value__(NSIZE)) THEN
        __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
        OpenAD_Symbol_9 = (-(1.0D00 /(__value__(NSIZE) * __value__(
     > NSIZE))))
        CALL sax(OpenAD_Symbol_9, __deriv__(NSIZE), __deriv__(NSIZEI))
      ELSE
        __value__(NSIZEI) = 0.0D00
        CALL zero_deriv(__deriv__(NSIZEI))
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
      OpenAD_Symbol_328 = (OpenAD_Symbol_54 * OpenAD_Symbol_50)
      OpenAD_Symbol_329 = (OpenAD_Symbol_46 * OpenAD_Symbol_42)
      OpenAD_Symbol_330 = (5.0D-01 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_83)
      OpenAD_Symbol_331 = (OpenAD_Symbol_71 * OpenAD_Symbol_83)
      OpenAD_Symbol_332 = (OpenAD_Symbol_69 * OpenAD_Symbol_83)
      OpenAD_Symbol_333 = (OpenAD_Symbol_18 *(OpenAD_Symbol_70 *
     >  OpenAD_Symbol_83 + INT((-1_w2f__i8)) * OpenAD_Symbol_72 *
     >  OpenAD_Symbol_83))
      OpenAD_Symbol_334 = (OpenAD_Symbol_18 *(OpenAD_Symbol_66 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_68))
      OpenAD_Symbol_335 = (OpenAD_Symbol_18 *(OpenAD_Symbol_62 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_64))
      OpenAD_Symbol_336 = (OpenAD_Symbol_18 *(OpenAD_Symbol_58 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_60))
      OpenAD_Symbol_337 = (OpenAD_Symbol_22 * OpenAD_Symbol_21)
      OpenAD_Symbol_338 = (OpenAD_Symbol_23 * OpenAD_Symbol_21)
      OpenAD_Symbol_339 = (OpenAD_Symbol_45 * OpenAD_Symbol_42)
      OpenAD_Symbol_340 = (OpenAD_Symbol_47 * OpenAD_Symbol_329)
      OpenAD_Symbol_341 = (OpenAD_Symbol_48 * OpenAD_Symbol_329)
      OpenAD_Symbol_342 = (OpenAD_Symbol_53 * OpenAD_Symbol_50)
      OpenAD_Symbol_343 = (OpenAD_Symbol_55 * OpenAD_Symbol_328)
      OpenAD_Symbol_344 = (OpenAD_Symbol_56 * OpenAD_Symbol_328)
      CALL sax(OpenAD_Symbol_10, __deriv__(NRM(1)), __deriv__(NXHAT))
      CALL saxpy(OpenAD_Symbol_11, __deriv__(NSIZEI), __deriv__(NXHAT))
      CALL sax(OpenAD_Symbol_12, __deriv__(NRM(2)), __deriv__(NYHAT))
      CALL saxpy(OpenAD_Symbol_13, __deriv__(NSIZEI), __deriv__(NYHAT))
      CALL sax(OpenAD_Symbol_14, __deriv__(NRM(3)), __deriv__(NZHAT))
      CALL saxpy(OpenAD_Symbol_15, __deriv__(NSIZEI), __deriv__(NZHAT))
      CALL sax(OpenAD_Symbol_337, __deriv__(PRIMR(2)), __deriv__(
     > OpenAD_Symbol_345))
      CALL saxpy(OpenAD_Symbol_338, __deriv__(PRIML(2)), __deriv__(
     > OpenAD_Symbol_345))
      CALL sax(OpenAD_Symbol_31, __deriv__(PRIML(5)), __deriv__(
     > OpenAD_Symbol_346))
      CALL saxpy(OpenAD_Symbol_27, __deriv__(PRIML(3)), __deriv__(
     > OpenAD_Symbol_346))
      CALL saxpy(OpenAD_Symbol_29, __deriv__(PRIML(4)), __deriv__(
     > OpenAD_Symbol_346))
      CALL sax(OpenAD_Symbol_39, __deriv__(PRIMR(5)), __deriv__(
     > OpenAD_Symbol_347))
      CALL saxpy(OpenAD_Symbol_35, __deriv__(PRIMR(3)), __deriv__(
     > OpenAD_Symbol_347))
      CALL saxpy(OpenAD_Symbol_37, __deriv__(PRIMR(4)), __deriv__(
     > OpenAD_Symbol_347))
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_346), __deriv__(THETAL)
     > )
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_347), __deriv__(THETAR)
     > )
      CALL setderiv(__deriv__(HL), __deriv__(THETAL))
      CALL saxpy(OpenAD_Symbol_43, __deriv__(PRIML(2)), __deriv__(HL))
      CALL saxpy(OpenAD_Symbol_339, __deriv__(PRIML(1)), __deriv__(HL))
      CALL saxpy(OpenAD_Symbol_340, __deriv__(GAMMA), __deriv__(HL))
      CALL saxpy(OpenAD_Symbol_341, __deriv__(GM1INV), __deriv__(HL))
      CALL setderiv(__deriv__(HR), __deriv__(THETAR))
      CALL saxpy(OpenAD_Symbol_51, __deriv__(PRIMR(2)), __deriv__(HR))
      CALL saxpy(OpenAD_Symbol_342, __deriv__(PRIMR(1)), __deriv__(HR))
      CALL saxpy(OpenAD_Symbol_343, __deriv__(GAMMA), __deriv__(HR))
      CALL saxpy(OpenAD_Symbol_344, __deriv__(GM1INV), __deriv__(HR))
      CALL sax(OpenAD_Symbol_59, __deriv__(PRIMR(3)), __deriv__(UAVE))
      CALL saxpy(OpenAD_Symbol_336, __deriv__(OpenAD_Symbol_345),
     >  __deriv__(UAVE))
      CALL saxpy(OpenAD_Symbol_57, __deriv__(PRIML(3)), __deriv__(UAVE)
     > )
      CALL sax(OpenAD_Symbol_63, __deriv__(PRIMR(4)), __deriv__(VAVE))
      CALL saxpy(OpenAD_Symbol_61, __deriv__(PRIML(4)), __deriv__(VAVE)
     > )
      CALL saxpy(OpenAD_Symbol_335, __deriv__(OpenAD_Symbol_345),
     >  __deriv__(VAVE))
      CALL sax(OpenAD_Symbol_67, __deriv__(PRIMR(5)), __deriv__(WAVE))
      CALL saxpy(OpenAD_Symbol_65, __deriv__(PRIML(5)), __deriv__(WAVE)
     > )
      CALL saxpy(OpenAD_Symbol_334, __deriv__(OpenAD_Symbol_345),
     >  __deriv__(WAVE))
      CALL sax(OpenAD_Symbol_79, __deriv__(WAVE), __deriv__(
     > OpenAD_Symbol_348))
      CALL saxpy(OpenAD_Symbol_77, __deriv__(VAVE), __deriv__(
     > OpenAD_Symbol_348))
      CALL saxpy(OpenAD_Symbol_75, __deriv__(UAVE), __deriv__(
     > OpenAD_Symbol_348))
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_348), __deriv__(THTAVE)
     > )
      CALL sax(OpenAD_Symbol_82, __deriv__(GM1), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_330, __deriv__(OpenAD_Symbol_348),
     >  __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_331, __deriv__(HR), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_332, __deriv__(HL), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_333, __deriv__(OpenAD_Symbol_345),
     >  __deriv__(CAVE))
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
      OpenAD_Symbol_349 = (OpenAD_Symbol_105 * OpenAD_Symbol_107)
      OpenAD_Symbol_350 = (OpenAD_Symbol_106 * OpenAD_Symbol_107)
      OpenAD_Symbol_351 = (OpenAD_Symbol_94 * INT((-1_w2f__i8)))
      OpenAD_Symbol_352 = (OpenAD_Symbol_95 * INT((-1_w2f__i8)))
      OpenAD_Symbol_353 = (OpenAD_Symbol_98 * INT((-1_w2f__i8)))
      OpenAD_Symbol_354 = (OpenAD_Symbol_99 * INT((-1_w2f__i8)))
      OpenAD_Symbol_355 = (OpenAD_Symbol_102 * INT((-1_w2f__i8)))
      OpenAD_Symbol_356 = (OpenAD_Symbol_103 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_Symbol_357), __deriv__(CAVE))
      CALL sax(OpenAD_Symbol_84, __deriv__(OpenAD_Symbol_357),
     >  __deriv__(CAVE))
      CALL sax(OpenAD_Symbol_92, __deriv__(NYHAT), __deriv__(UTILDE))
      CALL saxpy(OpenAD_Symbol_93, __deriv__(WAVE), __deriv__(UTILDE))
      CALL saxpy(OpenAD_Symbol_351, __deriv__(NZHAT), __deriv__(UTILDE)
     > )
      CALL saxpy(OpenAD_Symbol_352, __deriv__(VAVE), __deriv__(UTILDE))
      CALL sax(OpenAD_Symbol_96, __deriv__(NZHAT), __deriv__(VTILDE))
      CALL saxpy(OpenAD_Symbol_97, __deriv__(UAVE), __deriv__(VTILDE))
      CALL saxpy(OpenAD_Symbol_353, __deriv__(NXHAT), __deriv__(VTILDE)
     > )
      CALL saxpy(OpenAD_Symbol_354, __deriv__(WAVE), __deriv__(VTILDE))
      CALL sax(OpenAD_Symbol_100, __deriv__(NXHAT), __deriv__(WTILDE))
      CALL saxpy(OpenAD_Symbol_101, __deriv__(VAVE), __deriv__(WTILDE))
      CALL saxpy(OpenAD_Symbol_355, __deriv__(NYHAT), __deriv__(WTILDE)
     > )
      CALL saxpy(OpenAD_Symbol_356, __deriv__(UAVE), __deriv__(WTILDE))
      CALL sax(OpenAD_Symbol_86, __deriv__(NXHAT), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_87, __deriv__(UAVE), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_88, __deriv__(NYHAT), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_89, __deriv__(VAVE), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_90, __deriv__(NZHAT), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_91, __deriv__(WAVE), __deriv__(UHAT))
      CALL setderiv(__deriv__(LAMCM), __deriv__(UHAT))
      CALL dec_deriv(__deriv__(LAMCM), __deriv__(CAVE))
      CALL setderiv(__deriv__(LAMU), __deriv__(UHAT))
      CALL setderiv(__deriv__(LAMCP), __deriv__(CAVE))
      CALL inc_deriv(__deriv__(LAMCP), __deriv__(UHAT))
      CALL setderiv(__deriv__(OpenAD_Symbol_358), __deriv__(CAVE))
      CALL inc_deriv(__deriv__(OpenAD_Symbol_358), __deriv__(UHAT))
      CALL sax(OpenAD_Symbol_109, __deriv__(LAMCM), __deriv__(LAM2))
      CALL sax(OpenAD_Symbol_349, __deriv__(NLEFIX), __deriv__(DELTA2))
      CALL saxpy(OpenAD_Symbol_350, __deriv__(OpenAD_Symbol_358),
     >  __deriv__(DELTA2))
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCM) = __value__(LAMCM)
        CALL setderiv(__deriv__(ALAMCM), __deriv__(LAMCM))
      ELSE
        OpenAD_Symbol_323 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_320 = (OpenAD_Symbol_323 * 5.0D-01)
        __value__(ALAMCM) = (OpenAD_Symbol_320 / __value__(DELTA2))
        OpenAD_Symbol_321 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_322 = (-(OpenAD_Symbol_320 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_Symbol_436 = (5.0D-01 * OpenAD_Symbol_321)
        CALL setderiv(__deriv__(OpenAD_Symbol_437), __deriv__(DELTA2))
        CALL inc_deriv(__deriv__(OpenAD_Symbol_437), __deriv__(LAM2))
        CALL sax(OpenAD_Symbol_322, __deriv__(DELTA2), __deriv__(ALAMCM
     > ))
        CALL saxpy(OpenAD_Symbol_436, __deriv__(OpenAD_Symbol_437),
     >  __deriv__(ALAMCM))
      ENDIF
      __value__(LAM2) = (__value__(LAMCP) ** 2)
      OpenAD_Symbol_111 = (2 *(__value__(LAMCP) **(2 - INT(1_w2f__i8)))
     > )
      CALL sax(OpenAD_Symbol_111, __deriv__(LAMCP), __deriv__(LAM2))
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMCP) = __value__(LAMCP)
        CALL setderiv(__deriv__(ALAMCP), __deriv__(LAMCP))
      ELSE
        OpenAD_Symbol_318 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_315 = (OpenAD_Symbol_318 * 5.0D-01)
        __value__(ALAMCP) = (OpenAD_Symbol_315 / __value__(DELTA2))
        OpenAD_Symbol_316 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_317 = (-(OpenAD_Symbol_315 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_Symbol_434 = (5.0D-01 * OpenAD_Symbol_316)
        CALL setderiv(__deriv__(OpenAD_Symbol_435), __deriv__(DELTA2))
        CALL inc_deriv(__deriv__(OpenAD_Symbol_435), __deriv__(LAM2))
        CALL sax(OpenAD_Symbol_317, __deriv__(DELTA2), __deriv__(ALAMCP
     > ))
        CALL saxpy(OpenAD_Symbol_434, __deriv__(OpenAD_Symbol_435),
     >  __deriv__(ALAMCP))
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
      OpenAD_Symbol_359 = (OpenAD_Symbol_116 + OpenAD_Symbol_117)
      OpenAD_Symbol_360 = (OpenAD_Symbol_114 * OpenAD_Symbol_359)
      OpenAD_Symbol_361 = (OpenAD_Symbol_115 * OpenAD_Symbol_359)
      CALL setderiv(__deriv__(OpenAD_Symbol_362), __deriv__(CAVE))
      CALL inc_deriv(__deriv__(OpenAD_Symbol_362), __deriv__(UHAT))
      CALL sax(OpenAD_Symbol_118, __deriv__(LAMU), __deriv__(LAM2))
      CALL sax(OpenAD_Symbol_360, __deriv__(LEFIX), __deriv__(DELTA2))
      CALL saxpy(OpenAD_Symbol_361, __deriv__(OpenAD_Symbol_362),
     >  __deriv__(DELTA2))
      IF(__value__(DELTA2) .LT. __value__(LAM2)) THEN
        __value__(ALAMU) = __value__(LAMU)
        CALL setderiv(__deriv__(ALAMU), __deriv__(LAMU))
      ELSE
        OpenAD_Symbol_313 = (__value__(DELTA2) + __value__(LAM2))
        OpenAD_Symbol_310 = (OpenAD_Symbol_313 * 5.0D-01)
        __value__(ALAMU) = (OpenAD_Symbol_310 / __value__(DELTA2))
        OpenAD_Symbol_311 = (INT(1_w2f__i8) / __value__(DELTA2))
        OpenAD_Symbol_312 = (-(OpenAD_Symbol_310 /(__value__(DELTA2) *
     >  __value__(DELTA2))))
        OpenAD_Symbol_432 = (5.0D-01 * OpenAD_Symbol_311)
        CALL setderiv(__deriv__(OpenAD_Symbol_433), __deriv__(DELTA2))
        CALL inc_deriv(__deriv__(OpenAD_Symbol_433), __deriv__(LAM2))
        CALL sax(OpenAD_Symbol_312, __deriv__(DELTA2), __deriv__(ALAMU)
     > )
        CALL saxpy(OpenAD_Symbol_432, __deriv__(OpenAD_Symbol_433),
     >  __deriv__(ALAMU))
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
      OpenAD_Symbol_363 = (OpenAD_Symbol_156 * OpenAD_Symbol_154)
      OpenAD_Symbol_364 = (OpenAD_Symbol_157 * OpenAD_Symbol_154)
      OpenAD_Symbol_365 = (OpenAD_Symbol_146 * INT((-1_w2f__i8)))
      OpenAD_Symbol_366 = (OpenAD_Symbol_147 * INT((-1_w2f__i8)))
      OpenAD_Symbol_367 = (OpenAD_Symbol_148 * INT((-1_w2f__i8)))
      OpenAD_Symbol_368 = (OpenAD_Symbol_149 * INT((-1_w2f__i8)))
      OpenAD_Symbol_369 = (OpenAD_Symbol_150 * INT((-1_w2f__i8)))
      OpenAD_Symbol_370 = (OpenAD_Symbol_151 * INT((-1_w2f__i8)))
      OpenAD_Symbol_371 = (INT((-1_w2f__i8)) * OpenAD_Symbol_179)
      OpenAD_Symbol_372 = (OpenAD_Symbol_180 * INT((-1_w2f__i8)))
      OpenAD_Symbol_373 = (OpenAD_Symbol_181 * INT((-1_w2f__i8)))
      OpenAD_Symbol_374 = (INT((-1_w2f__i8)) * OpenAD_Symbol_191)
      OpenAD_Symbol_375 = (OpenAD_Symbol_192 * INT((-1_w2f__i8)))
      OpenAD_Symbol_376 = (OpenAD_Symbol_193 * INT((-1_w2f__i8)))
      OpenAD_Symbol_377 = (INT((-1_w2f__i8)) * OpenAD_Symbol_203)
      OpenAD_Symbol_378 = (OpenAD_Symbol_204 * INT((-1_w2f__i8)))
      OpenAD_Symbol_379 = (OpenAD_Symbol_205 * INT((-1_w2f__i8)))
      OpenAD_Symbol_380 = (OpenAD_Symbol_208 * INT((-1_w2f__i8)))
      OpenAD_Symbol_381 = (OpenAD_Symbol_209 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_Symbol_382), __deriv__(ALAMCM))
      CALL setderiv(__deriv__(OpenAD_Symbol_383), __deriv__(ALAMCP))
      CALL setderiv(__deriv__(OpenAD_Symbol_384), __deriv__(ALAMU))
      CALL setderiv(__deriv__(OpenAD_Symbol_385), __deriv__(LAMCM))
      CALL dec_deriv(__deriv__(OpenAD_Symbol_385), __deriv__(
     > OpenAD_Symbol_382))
      CALL setderiv(__deriv__(OpenAD_Symbol_386), __deriv__(LAMCP))
      CALL dec_deriv(__deriv__(OpenAD_Symbol_386), __deriv__(
     > OpenAD_Symbol_383))
      CALL setderiv(__deriv__(OpenAD_Symbol_387), __deriv__(LAMU))
      CALL dec_deriv(__deriv__(OpenAD_Symbol_387), __deriv__(
     > OpenAD_Symbol_384))
      CALL sax(OpenAD_Symbol_130, __deriv__(PRIML(2)), __deriv__(RUL))
      CALL saxpy(OpenAD_Symbol_131, __deriv__(PRIML(3)), __deriv__(RUL)
     > )
      CALL sax(OpenAD_Symbol_132, __deriv__(PRIML(2)), __deriv__(RVL))
      CALL saxpy(OpenAD_Symbol_133, __deriv__(PRIML(4)), __deriv__(RVL)
     > )
      CALL sax(OpenAD_Symbol_134, __deriv__(PRIML(2)), __deriv__(RWL))
      CALL saxpy(OpenAD_Symbol_135, __deriv__(PRIML(5)), __deriv__(RWL)
     > )
      CALL setderiv(__deriv__(DR), __deriv__(PRIMR(2)))
      CALL dec_deriv(__deriv__(DR), __deriv__(PRIML(2)))
      CALL set_neg_deriv(__deriv__(DRU), __deriv__(RUL))
      CALL saxpy(OpenAD_Symbol_140, __deriv__(PRIMR(2)), __deriv__(DRU)
     > )
      CALL saxpy(OpenAD_Symbol_141, __deriv__(PRIMR(3)), __deriv__(DRU)
     > )
      CALL set_neg_deriv(__deriv__(DRV), __deriv__(RVL))
      CALL saxpy(OpenAD_Symbol_142, __deriv__(PRIMR(2)), __deriv__(DRV)
     > )
      CALL saxpy(OpenAD_Symbol_143, __deriv__(PRIMR(4)), __deriv__(DRV)
     > )
      CALL set_neg_deriv(__deriv__(DRW), __deriv__(RWL))
      CALL saxpy(OpenAD_Symbol_144, __deriv__(PRIMR(2)), __deriv__(DRW)
     > )
      CALL saxpy(OpenAD_Symbol_145, __deriv__(PRIMR(5)), __deriv__(DRW)
     > )
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_385), __deriv__(ALAMCM)
     > )
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_386), __deriv__(ALAMCP)
     > )
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_387), __deriv__(ALAMU))
      CALL sax(OpenAD_Symbol_126, __deriv__(PRIML(1)), __deriv__(EL))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(GM1INV), __deriv__(EL))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(PRIML(2)), __deriv__(EL))
      CALL saxpy(OpenAD_Symbol_129, __deriv__(THETAL), __deriv__(EL))
      CALL set_neg_deriv(__deriv__(OpenAD_Symbol_388), __deriv__(UTILDE
     > ))
      CALL saxpy(OpenAD_Symbol_175, __deriv__(CAVE), __deriv__(
     > OpenAD_Symbol_388))
      CALL saxpy(OpenAD_Symbol_176, __deriv__(NXHAT), __deriv__(
     > OpenAD_Symbol_388))
      CALL set_neg_deriv(__deriv__(OpenAD_Symbol_389), __deriv__(VTILDE
     > ))
      CALL saxpy(OpenAD_Symbol_187, __deriv__(CAVE), __deriv__(
     > OpenAD_Symbol_389))
      CALL saxpy(OpenAD_Symbol_188, __deriv__(NYHAT), __deriv__(
     > OpenAD_Symbol_389))
      CALL set_neg_deriv(__deriv__(OpenAD_Symbol_390), __deriv__(WTILDE
     > ))
      CALL saxpy(OpenAD_Symbol_199, __deriv__(CAVE), __deriv__(
     > OpenAD_Symbol_390))
      CALL saxpy(OpenAD_Symbol_200, __deriv__(NZHAT), __deriv__(
     > OpenAD_Symbol_390))
      CALL set_neg_deriv(__deriv__(OpenAD_Symbol_391), __deriv__(EL))
      CALL saxpy(OpenAD_Symbol_136, __deriv__(PRIMR(1)), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_137, __deriv__(GM1INV), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_138, __deriv__(PRIMR(2)), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_139, __deriv__(THETAR), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_158, __deriv__(DR), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_159, __deriv__(THTAVE), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_365, __deriv__(DRU), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_366, __deriv__(UAVE), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_367, __deriv__(DRV), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_368, __deriv__(VAVE), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_369, __deriv__(DRW), __deriv__(
     > OpenAD_Symbol_391))
      CALL saxpy(OpenAD_Symbol_370, __deriv__(WAVE), __deriv__(
     > OpenAD_Symbol_391))
      CALL sax(OpenAD_Symbol_160, __deriv__(DRU), __deriv__(NDDRU))
      CALL saxpy(OpenAD_Symbol_161, __deriv__(NXHAT), __deriv__(NDDRU))
      CALL saxpy(OpenAD_Symbol_162, __deriv__(DRV), __deriv__(NDDRU))
      CALL saxpy(OpenAD_Symbol_163, __deriv__(NYHAT), __deriv__(NDDRU))
      CALL saxpy(OpenAD_Symbol_164, __deriv__(DRW), __deriv__(NDDRU))
      CALL saxpy(OpenAD_Symbol_165, __deriv__(NZHAT), __deriv__(NDDRU))
      CALL sax(OpenAD_Symbol_155, __deriv__(OpenAD_Symbol_391),
     >  __deriv__(OMEGA))
      CALL saxpy(OpenAD_Symbol_363, __deriv__(GM1), __deriv__(OMEGA))
      CALL saxpy(OpenAD_Symbol_364, __deriv__(CAVE), __deriv__(OMEGA))
      CALL setderiv(__deriv__(OpenAD_Symbol_392), __deriv__(OMEGA))
      CALL dec_deriv(__deriv__(OpenAD_Symbol_392), __deriv__(NDDRU))
      CALL saxpy(OpenAD_Symbol_168, __deriv__(DR), __deriv__(
     > OpenAD_Symbol_392))
      CALL saxpy(OpenAD_Symbol_169, __deriv__(UHAT), __deriv__(
     > OpenAD_Symbol_392))
      CALL setderiv(__deriv__(OpenAD_Symbol_393), __deriv__(NDDRU))
      CALL inc_deriv(__deriv__(OpenAD_Symbol_393), __deriv__(OMEGA))
      CALL saxpy(OpenAD_Symbol_380, __deriv__(DR), __deriv__(
     > OpenAD_Symbol_393))
      CALL saxpy(OpenAD_Symbol_381, __deriv__(UHAT), __deriv__(
     > OpenAD_Symbol_393))
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_392), __deriv__(ALP1))
      CALL sax(5.0D-01, __deriv__(OpenAD_Symbol_393), __deriv__(ALP5))
      CALL sax(OpenAD_Symbol_170, __deriv__(DRW), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_171, __deriv__(NYHAT), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_173, __deriv__(DR), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_174, __deriv__(OpenAD_Symbol_388),
     >  __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_178, __deriv__(OMEGA), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_371, __deriv__(NXHAT), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_372, __deriv__(DRV), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_373, __deriv__(NZHAT), __deriv__(ALP2))
      CALL sax(OpenAD_Symbol_182, __deriv__(DRU), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_183, __deriv__(NZHAT), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_185, __deriv__(DR), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_186, __deriv__(OpenAD_Symbol_389),
     >  __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_190, __deriv__(OMEGA), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_374, __deriv__(NYHAT), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_375, __deriv__(DRW), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_376, __deriv__(NXHAT), __deriv__(ALP3))
      CALL sax(OpenAD_Symbol_194, __deriv__(DRV), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_195, __deriv__(NXHAT), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_197, __deriv__(DR), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_198, __deriv__(OpenAD_Symbol_390),
     >  __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_202, __deriv__(OMEGA), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_377, __deriv__(NZHAT), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_378, __deriv__(DRU), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_379, __deriv__(NYHAT), __deriv__(ALP4))
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
      OpenAD_Symbol_394 = (OpenAD_Symbol_282 * OpenAD_Symbol_280)
      OpenAD_Symbol_395 = (OpenAD_Symbol_283 * OpenAD_Symbol_280)
      OpenAD_Symbol_396 = (OpenAD_Symbol_246 * OpenAD_Symbol_280)
      OpenAD_Symbol_397 = (OpenAD_Symbol_247 * OpenAD_Symbol_280)
      OpenAD_Symbol_398 = (OpenAD_Symbol_244 * OpenAD_Symbol_280)
      OpenAD_Symbol_399 = (OpenAD_Symbol_245 * OpenAD_Symbol_280)
      OpenAD_Symbol_400 = (OpenAD_Symbol_242 * OpenAD_Symbol_280)
      OpenAD_Symbol_401 = (OpenAD_Symbol_243 * OpenAD_Symbol_280)
      OpenAD_Symbol_402 = (OpenAD_Symbol_233 * OpenAD_Symbol_280)
      OpenAD_Symbol_403 = (OpenAD_Symbol_234 * OpenAD_Symbol_280)
      OpenAD_Symbol_404 = (OpenAD_Symbol_236 * OpenAD_Symbol_280)
      OpenAD_Symbol_405 = (OpenAD_Symbol_238 * OpenAD_Symbol_237 *
     >  OpenAD_Symbol_280)
      OpenAD_Symbol_406 = (OpenAD_Symbol_239 * OpenAD_Symbol_237 *
     >  OpenAD_Symbol_280)
      OpenAD_Symbol_407 = (INT((-1_w2f__i8)) * OpenAD_Symbol_280)
      OpenAD_Symbol_408 = (OpenAD_Symbol_240 * OpenAD_Symbol_407)
      OpenAD_Symbol_409 = (OpenAD_Symbol_241 * OpenAD_Symbol_407)
      OpenAD_Symbol_410 = (OpenAD_Symbol_254 * INT((-1_w2f__i8)))
      OpenAD_Symbol_411 = (OpenAD_Symbol_255 * INT((-1_w2f__i8)))
      OpenAD_Symbol_412 = (OpenAD_Symbol_262 * INT((-1_w2f__i8)))
      OpenAD_Symbol_413 = (OpenAD_Symbol_263 * INT((-1_w2f__i8)))
      OpenAD_Symbol_414 = (OpenAD_Symbol_270 * INT((-1_w2f__i8)))
      OpenAD_Symbol_415 = (OpenAD_Symbol_271 * INT((-1_w2f__i8)))
      OpenAD_Symbol_416 = (OpenAD_Symbol_268 * INT((-1_w2f__i8)))
      OpenAD_Symbol_417 = (OpenAD_Symbol_269 * INT((-1_w2f__i8)))
      OpenAD_Symbol_418 = (OpenAD_Symbol_260 * INT((-1_w2f__i8)))
      OpenAD_Symbol_419 = (OpenAD_Symbol_261 * INT((-1_w2f__i8)))
      OpenAD_Symbol_420 = (OpenAD_Symbol_252 * INT((-1_w2f__i8)))
      OpenAD_Symbol_421 = (OpenAD_Symbol_253 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_Symbol_422), __deriv__(ALP1))
      CALL setderiv(__deriv__(OpenAD_Symbol_423), __deriv__(ALP2))
      CALL setderiv(__deriv__(OpenAD_Symbol_424), __deriv__(ALP3))
      CALL setderiv(__deriv__(OpenAD_Symbol_425), __deriv__(ALP4))
      CALL setderiv(__deriv__(OpenAD_Symbol_426), __deriv__(ALP5))
      CALL sax(OpenAD_Symbol_210, __deriv__(ALAMCM), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_211, __deriv__(OpenAD_Symbol_422),
     >  __deriv__(ALP1))
      CALL sax(OpenAD_Symbol_213, __deriv__(ALAMU), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_214, __deriv__(OpenAD_Symbol_423),
     >  __deriv__(ALP2))
      CALL sax(OpenAD_Symbol_216, __deriv__(ALAMU), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_217, __deriv__(OpenAD_Symbol_424),
     >  __deriv__(ALP3))
      CALL sax(OpenAD_Symbol_219, __deriv__(ALAMU), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_220, __deriv__(OpenAD_Symbol_425),
     >  __deriv__(ALP4))
      CALL sax(OpenAD_Symbol_222, __deriv__(ALAMCP), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_223, __deriv__(OpenAD_Symbol_426),
     >  __deriv__(ALP5))
      CALL setderiv(__deriv__(ALP15P), __deriv__(ALP1))
      CALL inc_deriv(__deriv__(ALP15P), __deriv__(ALP5))
      CALL setderiv(__deriv__(ALP15M), __deriv__(ALP1))
      CALL dec_deriv(__deriv__(ALP15M), __deriv__(ALP5))
      CALL setderiv(__deriv__(OpenAD_Symbol_427), __deriv__(PRIML(1)))
      CALL inc_deriv(__deriv__(OpenAD_Symbol_427), __deriv__(EL))
      CALL sax(OpenAD_Symbol_272, __deriv__(PRIML(3)), __deriv__(UHATL)
     > )
      CALL saxpy(OpenAD_Symbol_273, __deriv__(NXHAT), __deriv__(UHATL))
      CALL saxpy(OpenAD_Symbol_274, __deriv__(PRIML(4)), __deriv__(
     > UHATL))
      CALL saxpy(OpenAD_Symbol_275, __deriv__(NYHAT), __deriv__(UHATL))
      CALL saxpy(OpenAD_Symbol_276, __deriv__(PRIML(5)), __deriv__(
     > UHATL))
      CALL saxpy(OpenAD_Symbol_277, __deriv__(NZHAT), __deriv__(UHATL))
      CALL sax(OpenAD_Symbol_225, __deriv__(ALP15P), __deriv__(MU))
      CALL saxpy(OpenAD_Symbol_226, __deriv__(CAVE), __deriv__(MU))
      CALL saxpy(OpenAD_Symbol_227, __deriv__(ALP2), __deriv__(MU))
      CALL saxpy(OpenAD_Symbol_228, __deriv__(NXHAT), __deriv__(MU))
      CALL saxpy(OpenAD_Symbol_229, __deriv__(ALP3), __deriv__(MU))
      CALL saxpy(OpenAD_Symbol_230, __deriv__(NYHAT), __deriv__(MU))
      CALL saxpy(OpenAD_Symbol_231, __deriv__(ALP4), __deriv__(MU))
      CALL saxpy(OpenAD_Symbol_232, __deriv__(NZHAT), __deriv__(MU))
      CALL setderiv(__deriv__(DSS2), __deriv__(MU))
      CALL sax(OpenAD_Symbol_250, __deriv__(MU), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_251, __deriv__(UAVE), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_410, __deriv__(ALP4), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_411, __deriv__(NYHAT), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_248, __deriv__(ALP3), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_249, __deriv__(NZHAT), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_420, __deriv__(ALP15M), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_421, __deriv__(NXHAT), __deriv__(DSS3))
      CALL sax(OpenAD_Symbol_258, __deriv__(MU), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_259, __deriv__(VAVE), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_412, __deriv__(ALP2), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_413, __deriv__(NZHAT), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_256, __deriv__(ALP4), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_257, __deriv__(NXHAT), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_418, __deriv__(ALP15M), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_419, __deriv__(NYHAT), __deriv__(DSS4))
      CALL sax(OpenAD_Symbol_266, __deriv__(MU), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_267, __deriv__(WAVE), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_414, __deriv__(ALP3), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_415, __deriv__(NXHAT), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_264, __deriv__(ALP2), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_265, __deriv__(NYHAT), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_416, __deriv__(ALP15M), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_417, __deriv__(NZHAT), __deriv__(DSS5))
      CALL sax(OpenAD_Symbol_279, __deriv__(NSIZE), __deriv__(FLUX(1)))
      CALL saxpy(OpenAD_Symbol_394, __deriv__(UHATL), __deriv__(FLUX(1)
     > ))
      CALL saxpy(OpenAD_Symbol_395, __deriv__(OpenAD_Symbol_427),
     >  __deriv__(FLUX(1)))
      CALL saxpy(OpenAD_Symbol_396, __deriv__(ALP4), __deriv__(FLUX(1))
     > )
      CALL saxpy(OpenAD_Symbol_397, __deriv__(WTILDE), __deriv__(FLUX(1
     > )))
      CALL saxpy(OpenAD_Symbol_398, __deriv__(ALP3), __deriv__(FLUX(1))
     > )
      CALL saxpy(OpenAD_Symbol_399, __deriv__(VTILDE), __deriv__(FLUX(1
     > )))
      CALL saxpy(OpenAD_Symbol_400, __deriv__(ALP2), __deriv__(FLUX(1))
     > )
      CALL saxpy(OpenAD_Symbol_401, __deriv__(UTILDE), __deriv__(FLUX(1
     > )))
      CALL saxpy(OpenAD_Symbol_402, __deriv__(MU), __deriv__(FLUX(1)))
      CALL saxpy(OpenAD_Symbol_403, __deriv__(THTAVE), __deriv__(FLUX(1
     > )))
      CALL saxpy(OpenAD_Symbol_404, __deriv__(ALP15P), __deriv__(FLUX(1
     > )))
      CALL saxpy(OpenAD_Symbol_405, __deriv__(GM1INV), __deriv__(FLUX(1
     > )))
      CALL saxpy(OpenAD_Symbol_406, __deriv__(CAVE), __deriv__(FLUX(1))
     > )
      CALL saxpy(OpenAD_Symbol_408, __deriv__(ALP15M), __deriv__(FLUX(1
     > )))
      CALL saxpy(OpenAD_Symbol_409, __deriv__(UHAT), __deriv__(FLUX(1))
     > )
      OpenAD_Symbol_284 = (__value__(DSS2) + __value__(PRIML(2)) *
     >  __value__(UHATL))
      __value__(FLUX(2)) = (__value__(NSIZE) * OpenAD_Symbol_284)
      OpenAD_Symbol_285 = OpenAD_Symbol_284
      OpenAD_Symbol_287 = __value__(UHATL)
      OpenAD_Symbol_288 = __value__(PRIML(2))
      OpenAD_Symbol_286 = __value__(NSIZE)
      CALL setderiv(__deriv__(OpenAD_Symbol_428), __deriv__(DSS2))
      CALL saxpy(OpenAD_Symbol_287, __deriv__(PRIML(2)), __deriv__(
     > OpenAD_Symbol_428))
      CALL saxpy(OpenAD_Symbol_288, __deriv__(UHATL), __deriv__(
     > OpenAD_Symbol_428))
      CALL sax(OpenAD_Symbol_285, __deriv__(NSIZE), __deriv__(FLUX(2)))
      CALL saxpy(OpenAD_Symbol_286, __deriv__(OpenAD_Symbol_428),
     >  __deriv__(FLUX(2)))
      OpenAD_Symbol_289 = (__value__(DSS3) + __value__(PRIML(1)) *
     >  __value__(NXHAT) + __value__(RUL) * __value__(UHATL))
      __value__(FLUX(3)) = (__value__(NSIZE) * OpenAD_Symbol_289)
      OpenAD_Symbol_290 = OpenAD_Symbol_289
      OpenAD_Symbol_292 = __value__(NXHAT)
      OpenAD_Symbol_293 = __value__(PRIML(1))
      OpenAD_Symbol_294 = __value__(UHATL)
      OpenAD_Symbol_295 = __value__(RUL)
      OpenAD_Symbol_291 = __value__(NSIZE)
      CALL setderiv(__deriv__(OpenAD_Symbol_429), __deriv__(DSS3))
      CALL saxpy(OpenAD_Symbol_292, __deriv__(PRIML(1)), __deriv__(
     > OpenAD_Symbol_429))
      CALL saxpy(OpenAD_Symbol_293, __deriv__(NXHAT), __deriv__(
     > OpenAD_Symbol_429))
      CALL saxpy(OpenAD_Symbol_294, __deriv__(RUL), __deriv__(
     > OpenAD_Symbol_429))
      CALL saxpy(OpenAD_Symbol_295, __deriv__(UHATL), __deriv__(
     > OpenAD_Symbol_429))
      CALL sax(OpenAD_Symbol_290, __deriv__(NSIZE), __deriv__(FLUX(3)))
      CALL saxpy(OpenAD_Symbol_291, __deriv__(OpenAD_Symbol_429),
     >  __deriv__(FLUX(3)))
      OpenAD_Symbol_296 = (__value__(DSS4) + __value__(PRIML(1)) *
     >  __value__(NYHAT) + __value__(RVL) * __value__(UHATL))
      __value__(FLUX(4)) = (__value__(NSIZE) * OpenAD_Symbol_296)
      OpenAD_Symbol_297 = OpenAD_Symbol_296
      OpenAD_Symbol_299 = __value__(NYHAT)
      OpenAD_Symbol_300 = __value__(PRIML(1))
      OpenAD_Symbol_301 = __value__(UHATL)
      OpenAD_Symbol_302 = __value__(RVL)
      OpenAD_Symbol_298 = __value__(NSIZE)
      CALL setderiv(__deriv__(OpenAD_Symbol_430), __deriv__(DSS4))
      CALL saxpy(OpenAD_Symbol_299, __deriv__(PRIML(1)), __deriv__(
     > OpenAD_Symbol_430))
      CALL saxpy(OpenAD_Symbol_300, __deriv__(NYHAT), __deriv__(
     > OpenAD_Symbol_430))
      CALL saxpy(OpenAD_Symbol_301, __deriv__(RVL), __deriv__(
     > OpenAD_Symbol_430))
      CALL saxpy(OpenAD_Symbol_302, __deriv__(UHATL), __deriv__(
     > OpenAD_Symbol_430))
      CALL sax(OpenAD_Symbol_297, __deriv__(NSIZE), __deriv__(FLUX(4)))
      CALL saxpy(OpenAD_Symbol_298, __deriv__(OpenAD_Symbol_430),
     >  __deriv__(FLUX(4)))
      OpenAD_Symbol_303 = (__value__(DSS5) + __value__(PRIML(1)) *
     >  __value__(NZHAT) + __value__(RWL) * __value__(UHATL))
      __value__(FLUX(5)) = (__value__(NSIZE) * OpenAD_Symbol_303)
      OpenAD_Symbol_304 = OpenAD_Symbol_303
      OpenAD_Symbol_306 = __value__(NZHAT)
      OpenAD_Symbol_307 = __value__(PRIML(1))
      OpenAD_Symbol_308 = __value__(UHATL)
      OpenAD_Symbol_309 = __value__(RWL)
      OpenAD_Symbol_305 = __value__(NSIZE)
      CALL setderiv(__deriv__(OpenAD_Symbol_431), __deriv__(DSS5))
      CALL saxpy(OpenAD_Symbol_306, __deriv__(PRIML(1)), __deriv__(
     > OpenAD_Symbol_431))
      CALL saxpy(OpenAD_Symbol_307, __deriv__(NZHAT), __deriv__(
     > OpenAD_Symbol_431))
      CALL saxpy(OpenAD_Symbol_308, __deriv__(RWL), __deriv__(
     > OpenAD_Symbol_431))
      CALL saxpy(OpenAD_Symbol_309, __deriv__(UHATL), __deriv__(
     > OpenAD_Symbol_431))
      CALL sax(OpenAD_Symbol_304, __deriv__(NSIZE), __deriv__(FLUX(5)))
      CALL saxpy(OpenAD_Symbol_305, __deriv__(OpenAD_Symbol_431),
     >  __deriv__(FLUX(5)))
      END SUBROUTINE
