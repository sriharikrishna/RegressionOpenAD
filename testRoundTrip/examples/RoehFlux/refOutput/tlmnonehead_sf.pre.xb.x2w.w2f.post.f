
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE ad_roehf5(NRM, PRIML, PRIMR, GAMMA, GM1, GM1INV,
     >  NLEFIX, LEFIX, MCHEPS, FLUX)
      use w2f__types
      use OAD_active
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
      type(active) :: OpenAD_Symbol_345
      type(active) :: OpenAD_Symbol_346
      type(active) :: OpenAD_Symbol_347
      type(active) :: OpenAD_Symbol_348
      REAL(w2f__8) OpenAD_Symbol_349
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_350
      REAL(w2f__8) OpenAD_Symbol_351
      REAL(w2f__8) OpenAD_Symbol_352
      REAL(w2f__8) OpenAD_Symbol_353
      REAL(w2f__8) OpenAD_Symbol_354
      REAL(w2f__8) OpenAD_Symbol_355
      REAL(w2f__8) OpenAD_Symbol_356
      type(active) :: OpenAD_Symbol_357
      type(active) :: OpenAD_Symbol_358
      REAL(w2f__8) OpenAD_Symbol_359
      REAL(w2f__8) OpenAD_Symbol_360
      REAL(w2f__8) OpenAD_Symbol_361
      type(active) :: OpenAD_Symbol_362
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
      type(active) :: OpenAD_Symbol_382
      type(active) :: OpenAD_Symbol_383
      type(active) :: OpenAD_Symbol_384
      type(active) :: OpenAD_Symbol_385
      type(active) :: OpenAD_Symbol_386
      type(active) :: OpenAD_Symbol_387
      type(active) :: OpenAD_Symbol_388
      type(active) :: OpenAD_Symbol_389
      REAL(w2f__8) OpenAD_Symbol_39
      type(active) :: OpenAD_Symbol_390
      type(active) :: OpenAD_Symbol_391
      type(active) :: OpenAD_Symbol_392
      type(active) :: OpenAD_Symbol_393
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
      type(active) :: OpenAD_Symbol_422
      type(active) :: OpenAD_Symbol_423
      type(active) :: OpenAD_Symbol_424
      type(active) :: OpenAD_Symbol_425
      type(active) :: OpenAD_Symbol_426
      type(active) :: OpenAD_Symbol_427
      type(active) :: OpenAD_Symbol_428
      type(active) :: OpenAD_Symbol_429
      REAL(w2f__8) OpenAD_Symbol_43
      type(active) :: OpenAD_Symbol_430
      type(active) :: OpenAD_Symbol_431
      REAL(w2f__8) OpenAD_Symbol_432
      type(active) :: OpenAD_Symbol_433
      REAL(w2f__8) OpenAD_Symbol_434
      type(active) :: OpenAD_Symbol_435
      REAL(w2f__8) OpenAD_Symbol_436
      type(active) :: OpenAD_Symbol_437
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
      type(active) :: NRM(1:3)
      INTENT(IN)  NRM
      type(active) :: PRIML(1:5)
      INTENT(IN)  PRIML
      type(active) :: PRIMR(1:5)
      INTENT(IN)  PRIMR
      type(active) :: GAMMA
      INTENT(IN)  GAMMA
      type(active) :: GM1
      INTENT(IN)  GM1
      type(active) :: GM1INV
      INTENT(IN)  GM1INV
      type(active) :: NLEFIX
      INTENT(IN)  NLEFIX
      type(active) :: LEFIX
      INTENT(IN)  LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN)  MCHEPS
      type(active) :: FLUX(1:5)
      INTENT(OUT)  FLUX
C
C     **** Local Variables and Functions ****
C
      type(active) :: ALAMCM
      type(active) :: ALAMCP
      type(active) :: ALAMU
      type(active) :: ALP1
      type(active) :: ALP15M
      type(active) :: ALP15P
      type(active) :: ALP2
      type(active) :: ALP3
      type(active) :: ALP4
      type(active) :: ALP5
      type(active) :: CAVE
      type(active) :: DE
      type(active) :: DELTA
      type(active) :: DELTA2
      type(active) :: DR
      type(active) :: DRU
      type(active) :: DRV
      type(active) :: DRW
      type(active) :: DSS1
      type(active) :: DSS2
      type(active) :: DSS3
      type(active) :: DSS4
      type(active) :: DSS5
      type(active) :: EL
      type(active) :: ER
      REAL(w2f__4) HALF
      PARAMETER ( HALF = 5.0E-01)
      type(active) :: HAVE
      type(active) :: HL
      type(active) :: HR
      type(active) :: LAM2
      type(active) :: LAMCM
      type(active) :: LAMCP
      type(active) :: LAMU
      type(active) :: MU
      type(active) :: NDDRU
      type(active) :: NSIZE
      type(active) :: NSIZEI
      type(active) :: NXHAT
      type(active) :: NYHAT
      type(active) :: NZHAT
      type(active) :: OMEGA
      REAL(w2f__4) ONE
      PARAMETER ( ONE = 1.0)
      type(active) :: ROEL
      type(active) :: ROER
      type(active) :: RUL
      type(active) :: RUR
      type(active) :: RVL
      type(active) :: RVR
      type(active) :: RWL
      type(active) :: RWR
      type(active) :: THETAL
      type(active) :: THETAR
      type(active) :: THTAVE
      type(active) :: UAVE
      type(active) :: UDDRU
      type(active) :: UHAT
      type(active) :: UHATL
      type(active) :: UTILDE
      type(active) :: VAVE
      type(active) :: VTILDE
      type(active) :: WAVE
      type(active) :: WTILDE
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
      OpenAD_Symbol_0 = ((NRM(1)%v**2)+(NRM(2)%v**2)+(NRM(3)%v**2))
      NSIZE%v = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = (2*(NRM(1)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2*(NRM(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_6 = (2*(NRM(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      OpenAD_Symbol_325 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      OpenAD_Symbol_326 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_Symbol_327 = (OpenAD_Symbol_2 * OpenAD_Symbol_1)
      CALL sax(OpenAD_Symbol_325,NRM(3),NSIZE)
      CALL saxpy(OpenAD_Symbol_326,NRM(2),NSIZE)
      CALL saxpy(OpenAD_Symbol_327,NRM(1),NSIZE)
      IF (MCHEPS.LT.NSIZE%v) THEN
        NSIZEI%v = (1.0D00/NSIZE%v)
        OpenAD_Symbol_9 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
        CALL sax(OpenAD_Symbol_9,NSIZE,NSIZEI)
      ELSE
        NSIZEI%v = 0.0D00
        CALL zero_deriv(NSIZEI)
      ENDIF
      NXHAT%v = (NRM(1)%v*NSIZEI%v)
      OpenAD_Symbol_10 = NSIZEI%v
      OpenAD_Symbol_11 = NRM(1)%v
      NYHAT%v = (NRM(2)%v*NSIZEI%v)
      OpenAD_Symbol_12 = NSIZEI%v
      OpenAD_Symbol_13 = NRM(2)%v
      NZHAT%v = (NRM(3)%v*NSIZEI%v)
      OpenAD_Symbol_14 = NSIZEI%v
      OpenAD_Symbol_15 = NRM(3)%v
      OpenAD_Symbol_20 = (PRIMR(2)%v/PRIML(2)%v)
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20) + 1.0D00)
      ROEL%v = (1.0D00/OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_Symbol_23 = (-(PRIMR(2)%v/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00 /(OpenAD_Symbol_16 *
     >  OpenAD_Symbol_16)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_Symbol_25 = ((PRIML(3)%v**2)+(PRIML(4)%v**2)+(PRIML(5)%v**2
     +))
      THETAL%v = (OpenAD_Symbol_25*5.0D-01)
      OpenAD_Symbol_27 = (2*(PRIML(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_29 = (2*(PRIML(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_31 = (2*(PRIML(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_33 = ((PRIMR(3)%v**2)+(PRIMR(4)%v**2)+(PRIMR(5)%v**2
     +))
      THETAR%v = (OpenAD_Symbol_33*5.0D-01)
      OpenAD_Symbol_35 = (2*(PRIMR(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_37 = (2*(PRIMR(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_39 = (2*(PRIMR(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_44 = (GAMMA%v*GM1INV%v)
      OpenAD_Symbol_41 = (PRIML(1)%v*OpenAD_Symbol_44)
      HL%v = (THETAL%v+(OpenAD_Symbol_41/PRIML(2)%v))
      OpenAD_Symbol_45 = OpenAD_Symbol_44
      OpenAD_Symbol_47 = GM1INV%v
      OpenAD_Symbol_48 = GAMMA%v
      OpenAD_Symbol_46 = PRIML(1)%v
      OpenAD_Symbol_42 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_Symbol_43 = (-(OpenAD_Symbol_41/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_Symbol_52 = (GAMMA%v*GM1INV%v)
      OpenAD_Symbol_49 = (PRIMR(1)%v*OpenAD_Symbol_52)
      HR%v = (THETAR%v+(OpenAD_Symbol_49/PRIMR(2)%v))
      OpenAD_Symbol_53 = OpenAD_Symbol_52
      OpenAD_Symbol_55 = GM1INV%v
      OpenAD_Symbol_56 = GAMMA%v
      OpenAD_Symbol_54 = PRIMR(1)%v
      OpenAD_Symbol_50 = (INT(1_w2f__i8)/PRIMR(2)%v)
      OpenAD_Symbol_51 = (-(OpenAD_Symbol_49/(PRIMR(2)%v*PRIMR(2)%v)))
      UAVE%v = (PRIML(3)%v*ROEL%v+PRIMR(3)%v*ROER%v)
      OpenAD_Symbol_57 = ROEL%v
      OpenAD_Symbol_58 = PRIML(3)%v
      OpenAD_Symbol_59 = ROER%v
      OpenAD_Symbol_60 = PRIMR(3)%v
      VAVE%v = (PRIML(4)%v*ROEL%v+PRIMR(4)%v*ROER%v)
      OpenAD_Symbol_61 = ROEL%v
      OpenAD_Symbol_62 = PRIML(4)%v
      OpenAD_Symbol_63 = ROER%v
      OpenAD_Symbol_64 = PRIMR(4)%v
      WAVE%v = (PRIML(5)%v*ROEL%v+PRIMR(5)%v*ROER%v)
      OpenAD_Symbol_65 = ROEL%v
      OpenAD_Symbol_66 = PRIML(5)%v
      OpenAD_Symbol_67 = ROER%v
      OpenAD_Symbol_68 = PRIMR(5)%v
      HAVE%v = (HL%v*ROEL%v+HR%v*ROER%v)
      OpenAD_Symbol_69 = ROEL%v
      OpenAD_Symbol_70 = HL%v
      OpenAD_Symbol_71 = ROER%v
      OpenAD_Symbol_72 = HR%v
      OpenAD_Symbol_73 = ((UAVE%v**2)+(VAVE%v**2)+(WAVE%v**2))
      THTAVE%v = (OpenAD_Symbol_73*5.0D-01)
      OpenAD_Symbol_75 = (2*(UAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_77 = (2*(VAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_79 = (2*(WAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_81 = (HAVE%v-THTAVE%v)
      CAVE%v = (GM1%v*OpenAD_Symbol_81)
      OpenAD_Symbol_82 = OpenAD_Symbol_81
      OpenAD_Symbol_83 = GM1%v
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
      CALL sax(OpenAD_Symbol_10,NRM(1),NXHAT)
      CALL saxpy(OpenAD_Symbol_11,NSIZEI,NXHAT)
      CALL sax(OpenAD_Symbol_12,NRM(2),NYHAT)
      CALL saxpy(OpenAD_Symbol_13,NSIZEI,NYHAT)
      CALL sax(OpenAD_Symbol_14,NRM(3),NZHAT)
      CALL saxpy(OpenAD_Symbol_15,NSIZEI,NZHAT)
      CALL sax(OpenAD_Symbol_337,PRIMR(2),OpenAD_Symbol_345)
      CALL saxpy(OpenAD_Symbol_338,PRIML(2),OpenAD_Symbol_345)
      CALL sax(OpenAD_Symbol_31,PRIML(5),OpenAD_Symbol_346)
      CALL saxpy(OpenAD_Symbol_27,PRIML(3),OpenAD_Symbol_346)
      CALL saxpy(OpenAD_Symbol_29,PRIML(4),OpenAD_Symbol_346)
      CALL sax(OpenAD_Symbol_39,PRIMR(5),OpenAD_Symbol_347)
      CALL saxpy(OpenAD_Symbol_35,PRIMR(3),OpenAD_Symbol_347)
      CALL saxpy(OpenAD_Symbol_37,PRIMR(4),OpenAD_Symbol_347)
      CALL sax(5.0D-01,OpenAD_Symbol_346,THETAL)
      CALL sax(5.0D-01,OpenAD_Symbol_347,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_Symbol_43,PRIML(2),HL)
      CALL saxpy(OpenAD_Symbol_339,PRIML(1),HL)
      CALL saxpy(OpenAD_Symbol_340,GAMMA,HL)
      CALL saxpy(OpenAD_Symbol_341,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_Symbol_51,PRIMR(2),HR)
      CALL saxpy(OpenAD_Symbol_342,PRIMR(1),HR)
      CALL saxpy(OpenAD_Symbol_343,GAMMA,HR)
      CALL saxpy(OpenAD_Symbol_344,GM1INV,HR)
      CALL sax(OpenAD_Symbol_59,PRIMR(3),UAVE)
      CALL saxpy(OpenAD_Symbol_336,OpenAD_Symbol_345,UAVE)
      CALL saxpy(OpenAD_Symbol_57,PRIML(3),UAVE)
      CALL sax(OpenAD_Symbol_63,PRIMR(4),VAVE)
      CALL saxpy(OpenAD_Symbol_61,PRIML(4),VAVE)
      CALL saxpy(OpenAD_Symbol_335,OpenAD_Symbol_345,VAVE)
      CALL sax(OpenAD_Symbol_67,PRIMR(5),WAVE)
      CALL saxpy(OpenAD_Symbol_65,PRIML(5),WAVE)
      CALL saxpy(OpenAD_Symbol_334,OpenAD_Symbol_345,WAVE)
      CALL sax(OpenAD_Symbol_79,WAVE,OpenAD_Symbol_348)
      CALL saxpy(OpenAD_Symbol_77,VAVE,OpenAD_Symbol_348)
      CALL saxpy(OpenAD_Symbol_75,UAVE,OpenAD_Symbol_348)
      CALL sax(5.0D-01,OpenAD_Symbol_348,THTAVE)
      CALL sax(OpenAD_Symbol_82,GM1,CAVE)
      CALL saxpy(OpenAD_Symbol_330,OpenAD_Symbol_348,CAVE)
      CALL saxpy(OpenAD_Symbol_331,HR,CAVE)
      CALL saxpy(OpenAD_Symbol_332,HL,CAVE)
      CALL saxpy(OpenAD_Symbol_333,OpenAD_Symbol_345,CAVE)
      OpenAD_Symbol_85 = SIN(CAVE%v)
      OpenAD_Symbol_84 = COS(CAVE%v)
      CAVE%v = OpenAD_Symbol_85
      UHAT%v = (NXHAT%v*UAVE%v+NYHAT%v*VAVE%v+NZHAT%v*WAVE%v)
      OpenAD_Symbol_86 = UAVE%v
      OpenAD_Symbol_87 = NXHAT%v
      OpenAD_Symbol_88 = VAVE%v
      OpenAD_Symbol_89 = NYHAT%v
      OpenAD_Symbol_90 = WAVE%v
      OpenAD_Symbol_91 = NZHAT%v
      UTILDE%v = (NYHAT%v*WAVE%v-NZHAT%v*VAVE%v)
      OpenAD_Symbol_92 = WAVE%v
      OpenAD_Symbol_93 = NYHAT%v
      OpenAD_Symbol_94 = VAVE%v
      OpenAD_Symbol_95 = NZHAT%v
      VTILDE%v = (NZHAT%v*UAVE%v-NXHAT%v*WAVE%v)
      OpenAD_Symbol_96 = UAVE%v
      OpenAD_Symbol_97 = NZHAT%v
      OpenAD_Symbol_98 = WAVE%v
      OpenAD_Symbol_99 = NXHAT%v
      WTILDE%v = (NXHAT%v*VAVE%v-NYHAT%v*UAVE%v)
      OpenAD_Symbol_100 = VAVE%v
      OpenAD_Symbol_101 = NXHAT%v
      OpenAD_Symbol_102 = UAVE%v
      OpenAD_Symbol_103 = NYHAT%v
      LAMCM%v = (UHAT%v-CAVE%v)
      LAMU%v = UHAT%v
      LAMCP%v = (CAVE%v+UHAT%v)
      OpenAD_Symbol_104 = (CAVE%v+UHAT%v)
      DELTA%v = (NLEFIX%v*OpenAD_Symbol_104)
      OpenAD_Symbol_105 = OpenAD_Symbol_104
      OpenAD_Symbol_106 = NLEFIX%v
      DELTA2%v = (DELTA%v**2)
      OpenAD_Symbol_107 = (2*(DELTA%v**(2-INT(1_w2f__i8))))
      LAM2%v = (LAMCM%v**2)
      OpenAD_Symbol_109 = (2*(LAMCM%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_349 = (OpenAD_Symbol_105 * OpenAD_Symbol_107)
      OpenAD_Symbol_350 = (OpenAD_Symbol_106 * OpenAD_Symbol_107)
      OpenAD_Symbol_351 = (OpenAD_Symbol_94 * INT((-1_w2f__i8)))
      OpenAD_Symbol_352 = (OpenAD_Symbol_95 * INT((-1_w2f__i8)))
      OpenAD_Symbol_353 = (OpenAD_Symbol_98 * INT((-1_w2f__i8)))
      OpenAD_Symbol_354 = (OpenAD_Symbol_99 * INT((-1_w2f__i8)))
      OpenAD_Symbol_355 = (OpenAD_Symbol_102 * INT((-1_w2f__i8)))
      OpenAD_Symbol_356 = (OpenAD_Symbol_103 * INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_Symbol_357,CAVE)
      CALL sax(OpenAD_Symbol_84,OpenAD_Symbol_357,CAVE)
      CALL sax(OpenAD_Symbol_92,NYHAT,UTILDE)
      CALL saxpy(OpenAD_Symbol_93,WAVE,UTILDE)
      CALL saxpy(OpenAD_Symbol_351,NZHAT,UTILDE)
      CALL saxpy(OpenAD_Symbol_352,VAVE,UTILDE)
      CALL sax(OpenAD_Symbol_96,NZHAT,VTILDE)
      CALL saxpy(OpenAD_Symbol_97,UAVE,VTILDE)
      CALL saxpy(OpenAD_Symbol_353,NXHAT,VTILDE)
      CALL saxpy(OpenAD_Symbol_354,WAVE,VTILDE)
      CALL sax(OpenAD_Symbol_100,NXHAT,WTILDE)
      CALL saxpy(OpenAD_Symbol_101,VAVE,WTILDE)
      CALL saxpy(OpenAD_Symbol_355,NYHAT,WTILDE)
      CALL saxpy(OpenAD_Symbol_356,UAVE,WTILDE)
      CALL sax(OpenAD_Symbol_86,NXHAT,UHAT)
      CALL saxpy(OpenAD_Symbol_87,UAVE,UHAT)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,UHAT)
      CALL saxpy(OpenAD_Symbol_89,VAVE,UHAT)
      CALL saxpy(OpenAD_Symbol_90,NZHAT,UHAT)
      CALL saxpy(OpenAD_Symbol_91,WAVE,UHAT)
      CALL setderiv(LAMCM,UHAT)
      CALL dec_deriv(LAMCM,CAVE)
      CALL setderiv(LAMU,UHAT)
      CALL setderiv(LAMCP,CAVE)
      CALL inc_deriv(LAMCP,UHAT)
      CALL setderiv(OpenAD_Symbol_358,CAVE)
      CALL inc_deriv(OpenAD_Symbol_358,UHAT)
      CALL sax(OpenAD_Symbol_109,LAMCM,LAM2)
      CALL sax(OpenAD_Symbol_349,NLEFIX,DELTA2)
      CALL saxpy(OpenAD_Symbol_350,OpenAD_Symbol_358,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCM%v = LAMCM%v
        CALL setderiv(ALAMCM,LAMCM)
      ELSE
        OpenAD_Symbol_323 = (DELTA2%v+LAM2%v)
        OpenAD_Symbol_320 = (OpenAD_Symbol_323 * 5.0D-01)
        ALAMCM%v = (OpenAD_Symbol_320/DELTA2%v)
        OpenAD_Symbol_321 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_Symbol_322 = (-(OpenAD_Symbol_320/(DELTA2%v*DELTA2%v)))
        OpenAD_Symbol_436 = (5.0D-01 * OpenAD_Symbol_321)
        CALL setderiv(OpenAD_Symbol_437,DELTA2)
        CALL inc_deriv(OpenAD_Symbol_437,LAM2)
        CALL sax(OpenAD_Symbol_322,DELTA2,ALAMCM)
        CALL saxpy(OpenAD_Symbol_436,OpenAD_Symbol_437,ALAMCM)
      ENDIF
      LAM2%v = (LAMCP%v**2)
      OpenAD_Symbol_111 = (2*(LAMCP%v**(2-INT(1_w2f__i8))))
      CALL sax(OpenAD_Symbol_111,LAMCP,LAM2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCP%v = LAMCP%v
        CALL setderiv(ALAMCP,LAMCP)
      ELSE
        OpenAD_Symbol_318 = (DELTA2%v+LAM2%v)
        OpenAD_Symbol_315 = (OpenAD_Symbol_318 * 5.0D-01)
        ALAMCP%v = (OpenAD_Symbol_315/DELTA2%v)
        OpenAD_Symbol_316 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_Symbol_317 = (-(OpenAD_Symbol_315/(DELTA2%v*DELTA2%v)))
        OpenAD_Symbol_434 = (5.0D-01 * OpenAD_Symbol_316)
        CALL setderiv(OpenAD_Symbol_435,DELTA2)
        CALL inc_deriv(OpenAD_Symbol_435,LAM2)
        CALL sax(OpenAD_Symbol_317,DELTA2,ALAMCP)
        CALL saxpy(OpenAD_Symbol_434,OpenAD_Symbol_435,ALAMCP)
      ENDIF
      OpenAD_Symbol_113 = (CAVE%v+UHAT%v)
      DELTA%v = (LEFIX%v*OpenAD_Symbol_113)
      OpenAD_Symbol_114 = OpenAD_Symbol_113
      OpenAD_Symbol_115 = LEFIX%v
      DELTA2%v = (DELTA%v*DELTA%v)
      OpenAD_Symbol_116 = DELTA%v
      OpenAD_Symbol_117 = DELTA%v
      LAM2%v = (LAMU%v**2)
      OpenAD_Symbol_118 = (2*(LAMU%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_359 = (OpenAD_Symbol_116 + OpenAD_Symbol_117)
      OpenAD_Symbol_360 = (OpenAD_Symbol_114 * OpenAD_Symbol_359)
      OpenAD_Symbol_361 = (OpenAD_Symbol_115 * OpenAD_Symbol_359)
      CALL setderiv(OpenAD_Symbol_362,CAVE)
      CALL inc_deriv(OpenAD_Symbol_362,UHAT)
      CALL sax(OpenAD_Symbol_118,LAMU,LAM2)
      CALL sax(OpenAD_Symbol_360,LEFIX,DELTA2)
      CALL saxpy(OpenAD_Symbol_361,OpenAD_Symbol_362,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMU%v = LAMU%v
        CALL setderiv(ALAMU,LAMU)
      ELSE
        OpenAD_Symbol_313 = (DELTA2%v+LAM2%v)
        OpenAD_Symbol_310 = (OpenAD_Symbol_313 * 5.0D-01)
        ALAMU%v = (OpenAD_Symbol_310/DELTA2%v)
        OpenAD_Symbol_311 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_Symbol_312 = (-(OpenAD_Symbol_310/(DELTA2%v*DELTA2%v)))
        OpenAD_Symbol_432 = (5.0D-01 * OpenAD_Symbol_311)
        CALL setderiv(OpenAD_Symbol_433,DELTA2)
        CALL inc_deriv(OpenAD_Symbol_433,LAM2)
        CALL sax(OpenAD_Symbol_312,DELTA2,ALAMU)
        CALL saxpy(OpenAD_Symbol_432,OpenAD_Symbol_433,ALAMU)
      ENDIF
      OpenAD_Symbol_120 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_Symbol_120*5.0D-01)
      OpenAD_Symbol_122 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_Symbol_122*5.0D-01)
      OpenAD_Symbol_124 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_Symbol_124*5.0D-01)
      EL%v = (PRIML(1)%v*GM1INV%v+PRIML(2)%v*THETAL%v)
      OpenAD_Symbol_126 = GM1INV%v
      OpenAD_Symbol_127 = PRIML(1)%v
      OpenAD_Symbol_128 = THETAL%v
      OpenAD_Symbol_129 = PRIML(2)%v
      RUL%v = (PRIML(2)%v*PRIML(3)%v)
      OpenAD_Symbol_130 = PRIML(3)%v
      OpenAD_Symbol_131 = PRIML(2)%v
      RVL%v = (PRIML(2)%v*PRIML(4)%v)
      OpenAD_Symbol_132 = PRIML(4)%v
      OpenAD_Symbol_133 = PRIML(2)%v
      RWL%v = (PRIML(2)%v*PRIML(5)%v)
      OpenAD_Symbol_134 = PRIML(5)%v
      OpenAD_Symbol_135 = PRIML(2)%v
      ER%v = (PRIMR(1)%v*GM1INV%v+PRIMR(2)%v*THETAR%v)
      OpenAD_Symbol_136 = GM1INV%v
      OpenAD_Symbol_137 = PRIMR(1)%v
      OpenAD_Symbol_138 = THETAR%v
      OpenAD_Symbol_139 = PRIMR(2)%v
      RUR%v = (PRIMR(2)%v*PRIMR(3)%v)
      OpenAD_Symbol_140 = PRIMR(3)%v
      OpenAD_Symbol_141 = PRIMR(2)%v
      RVR%v = (PRIMR(2)%v*PRIMR(4)%v)
      OpenAD_Symbol_142 = PRIMR(4)%v
      OpenAD_Symbol_143 = PRIMR(2)%v
      RWR%v = (PRIMR(2)%v*PRIMR(5)%v)
      OpenAD_Symbol_144 = PRIMR(5)%v
      OpenAD_Symbol_145 = PRIMR(2)%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR(2)%v-PRIML(2)%v)
      DRU%v = (RUR%v-RUL%v)
      DRV%v = (RVR%v-RVL%v)
      DRW%v = (RWR%v-RWL%v)
      UDDRU%v = (DRU%v*UAVE%v+DRV%v*VAVE%v+DRW%v*WAVE%v)
      OpenAD_Symbol_146 = UAVE%v
      OpenAD_Symbol_147 = DRU%v
      OpenAD_Symbol_148 = VAVE%v
      OpenAD_Symbol_149 = DRV%v
      OpenAD_Symbol_150 = WAVE%v
      OpenAD_Symbol_151 = DRW%v
      OpenAD_Symbol_152 = (GM1%v/CAVE%v)
      OpenAD_Symbol_153 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_Symbol_152*OpenAD_Symbol_153)
      OpenAD_Symbol_156 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_Symbol_157 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_Symbol_154 = OpenAD_Symbol_153
      OpenAD_Symbol_158 = THTAVE%v
      OpenAD_Symbol_159 = DR%v
      OpenAD_Symbol_155 = OpenAD_Symbol_152
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_Symbol_160 = NXHAT%v
      OpenAD_Symbol_161 = DRU%v
      OpenAD_Symbol_162 = NYHAT%v
      OpenAD_Symbol_163 = DRV%v
      OpenAD_Symbol_164 = NZHAT%v
      OpenAD_Symbol_165 = DRW%v
      OpenAD_Symbol_166 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_Symbol_166*5.0D-01)
      OpenAD_Symbol_168 = UHAT%v
      OpenAD_Symbol_169 = DR%v
      OpenAD_Symbol_172 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_Symbol_177 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_Symbol_172+OMEGA%v*OpenAD_Symb
     +ol_177-DRV%v*NZHAT%v)
      OpenAD_Symbol_170 = NYHAT%v
      OpenAD_Symbol_171 = DRW%v
      OpenAD_Symbol_173 = OpenAD_Symbol_172
      OpenAD_Symbol_175 = NXHAT%v
      OpenAD_Symbol_176 = CAVE%v
      OpenAD_Symbol_174 = DR%v
      OpenAD_Symbol_178 = OpenAD_Symbol_177
      OpenAD_Symbol_179 = OMEGA%v
      OpenAD_Symbol_180 = NZHAT%v
      OpenAD_Symbol_181 = DRV%v
      OpenAD_Symbol_184 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_Symbol_189 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_Symbol_184+OMEGA%v*OpenAD_Symb
     +ol_189-DRW%v*NXHAT%v)
      OpenAD_Symbol_182 = NZHAT%v
      OpenAD_Symbol_183 = DRU%v
      OpenAD_Symbol_185 = OpenAD_Symbol_184
      OpenAD_Symbol_187 = NYHAT%v
      OpenAD_Symbol_188 = CAVE%v
      OpenAD_Symbol_186 = DR%v
      OpenAD_Symbol_190 = OpenAD_Symbol_189
      OpenAD_Symbol_191 = OMEGA%v
      OpenAD_Symbol_192 = NXHAT%v
      OpenAD_Symbol_193 = DRW%v
      OpenAD_Symbol_196 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_Symbol_201 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_Symbol_196+OMEGA%v*OpenAD_Symb
     +ol_201-DRU%v*NYHAT%v)
      OpenAD_Symbol_194 = NXHAT%v
      OpenAD_Symbol_195 = DRV%v
      OpenAD_Symbol_197 = OpenAD_Symbol_196
      OpenAD_Symbol_199 = NZHAT%v
      OpenAD_Symbol_200 = CAVE%v
      OpenAD_Symbol_198 = DR%v
      OpenAD_Symbol_202 = OpenAD_Symbol_201
      OpenAD_Symbol_203 = OMEGA%v
      OpenAD_Symbol_204 = NYHAT%v
      OpenAD_Symbol_205 = DRU%v
      OpenAD_Symbol_206 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_Symbol_206*5.0D-01)
      OpenAD_Symbol_208 = UHAT%v
      OpenAD_Symbol_209 = DR%v
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
      CALL setderiv(OpenAD_Symbol_382,ALAMCM)
      CALL setderiv(OpenAD_Symbol_383,ALAMCP)
      CALL setderiv(OpenAD_Symbol_384,ALAMU)
      CALL setderiv(OpenAD_Symbol_385,LAMCM)
      CALL dec_deriv(OpenAD_Symbol_385,OpenAD_Symbol_382)
      CALL setderiv(OpenAD_Symbol_386,LAMCP)
      CALL dec_deriv(OpenAD_Symbol_386,OpenAD_Symbol_383)
      CALL setderiv(OpenAD_Symbol_387,LAMU)
      CALL dec_deriv(OpenAD_Symbol_387,OpenAD_Symbol_384)
      CALL sax(OpenAD_Symbol_130,PRIML(2),RUL)
      CALL saxpy(OpenAD_Symbol_131,PRIML(3),RUL)
      CALL sax(OpenAD_Symbol_132,PRIML(2),RVL)
      CALL saxpy(OpenAD_Symbol_133,PRIML(4),RVL)
      CALL sax(OpenAD_Symbol_134,PRIML(2),RWL)
      CALL saxpy(OpenAD_Symbol_135,PRIML(5),RWL)
      CALL setderiv(DR,PRIMR(2))
      CALL dec_deriv(DR,PRIML(2))
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_Symbol_140,PRIMR(2),DRU)
      CALL saxpy(OpenAD_Symbol_141,PRIMR(3),DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_Symbol_142,PRIMR(2),DRV)
      CALL saxpy(OpenAD_Symbol_143,PRIMR(4),DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_Symbol_144,PRIMR(2),DRW)
      CALL saxpy(OpenAD_Symbol_145,PRIMR(5),DRW)
      CALL sax(5.0D-01,OpenAD_Symbol_385,ALAMCM)
      CALL sax(5.0D-01,OpenAD_Symbol_386,ALAMCP)
      CALL sax(5.0D-01,OpenAD_Symbol_387,ALAMU)
      CALL sax(OpenAD_Symbol_126,PRIML(1),EL)
      CALL saxpy(OpenAD_Symbol_127,GM1INV,EL)
      CALL saxpy(OpenAD_Symbol_128,PRIML(2),EL)
      CALL saxpy(OpenAD_Symbol_129,THETAL,EL)
      CALL set_neg_deriv(OpenAD_Symbol_388,UTILDE)
      CALL saxpy(OpenAD_Symbol_175,CAVE,OpenAD_Symbol_388)
      CALL saxpy(OpenAD_Symbol_176,NXHAT,OpenAD_Symbol_388)
      CALL set_neg_deriv(OpenAD_Symbol_389,VTILDE)
      CALL saxpy(OpenAD_Symbol_187,CAVE,OpenAD_Symbol_389)
      CALL saxpy(OpenAD_Symbol_188,NYHAT,OpenAD_Symbol_389)
      CALL set_neg_deriv(OpenAD_Symbol_390,WTILDE)
      CALL saxpy(OpenAD_Symbol_199,CAVE,OpenAD_Symbol_390)
      CALL saxpy(OpenAD_Symbol_200,NZHAT,OpenAD_Symbol_390)
      CALL set_neg_deriv(OpenAD_Symbol_391,EL)
      CALL saxpy(OpenAD_Symbol_136,PRIMR(1),OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_137,GM1INV,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_138,PRIMR(2),OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_139,THETAR,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_158,DR,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_159,THTAVE,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_365,DRU,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_366,UAVE,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_367,DRV,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_368,VAVE,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_369,DRW,OpenAD_Symbol_391)
      CALL saxpy(OpenAD_Symbol_370,WAVE,OpenAD_Symbol_391)
      CALL sax(OpenAD_Symbol_160,DRU,NDDRU)
      CALL saxpy(OpenAD_Symbol_161,NXHAT,NDDRU)
      CALL saxpy(OpenAD_Symbol_162,DRV,NDDRU)
      CALL saxpy(OpenAD_Symbol_163,NYHAT,NDDRU)
      CALL saxpy(OpenAD_Symbol_164,DRW,NDDRU)
      CALL saxpy(OpenAD_Symbol_165,NZHAT,NDDRU)
      CALL sax(OpenAD_Symbol_155,OpenAD_Symbol_391,OMEGA)
      CALL saxpy(OpenAD_Symbol_363,GM1,OMEGA)
      CALL saxpy(OpenAD_Symbol_364,CAVE,OMEGA)
      CALL setderiv(OpenAD_Symbol_392,OMEGA)
      CALL dec_deriv(OpenAD_Symbol_392,NDDRU)
      CALL saxpy(OpenAD_Symbol_168,DR,OpenAD_Symbol_392)
      CALL saxpy(OpenAD_Symbol_169,UHAT,OpenAD_Symbol_392)
      CALL setderiv(OpenAD_Symbol_393,NDDRU)
      CALL inc_deriv(OpenAD_Symbol_393,OMEGA)
      CALL saxpy(OpenAD_Symbol_380,DR,OpenAD_Symbol_393)
      CALL saxpy(OpenAD_Symbol_381,UHAT,OpenAD_Symbol_393)
      CALL sax(5.0D-01,OpenAD_Symbol_392,ALP1)
      CALL sax(5.0D-01,OpenAD_Symbol_393,ALP5)
      CALL sax(OpenAD_Symbol_170,DRW,ALP2)
      CALL saxpy(OpenAD_Symbol_171,NYHAT,ALP2)
      CALL saxpy(OpenAD_Symbol_173,DR,ALP2)
      CALL saxpy(OpenAD_Symbol_174,OpenAD_Symbol_388,ALP2)
      CALL saxpy(OpenAD_Symbol_178,OMEGA,ALP2)
      CALL saxpy(OpenAD_Symbol_371,NXHAT,ALP2)
      CALL saxpy(OpenAD_Symbol_372,DRV,ALP2)
      CALL saxpy(OpenAD_Symbol_373,NZHAT,ALP2)
      CALL sax(OpenAD_Symbol_182,DRU,ALP3)
      CALL saxpy(OpenAD_Symbol_183,NZHAT,ALP3)
      CALL saxpy(OpenAD_Symbol_185,DR,ALP3)
      CALL saxpy(OpenAD_Symbol_186,OpenAD_Symbol_389,ALP3)
      CALL saxpy(OpenAD_Symbol_190,OMEGA,ALP3)
      CALL saxpy(OpenAD_Symbol_374,NYHAT,ALP3)
      CALL saxpy(OpenAD_Symbol_375,DRW,ALP3)
      CALL saxpy(OpenAD_Symbol_376,NXHAT,ALP3)
      CALL sax(OpenAD_Symbol_194,DRV,ALP4)
      CALL saxpy(OpenAD_Symbol_195,NXHAT,ALP4)
      CALL saxpy(OpenAD_Symbol_197,DR,ALP4)
      CALL saxpy(OpenAD_Symbol_198,OpenAD_Symbol_390,ALP4)
      CALL saxpy(OpenAD_Symbol_202,OMEGA,ALP4)
      CALL saxpy(OpenAD_Symbol_377,NZHAT,ALP4)
      CALL saxpy(OpenAD_Symbol_378,DRU,ALP4)
      CALL saxpy(OpenAD_Symbol_379,NYHAT,ALP4)
      OpenAD_Symbol_212 = (ALAMCM%v*ALP1%v)
      OpenAD_Symbol_210 = ALP1%v
      OpenAD_Symbol_211 = ALAMCM%v
      ALP1%v = OpenAD_Symbol_212
      OpenAD_Symbol_215 = (ALAMU%v*ALP2%v)
      OpenAD_Symbol_213 = ALP2%v
      OpenAD_Symbol_214 = ALAMU%v
      ALP2%v = OpenAD_Symbol_215
      OpenAD_Symbol_218 = (ALAMU%v*ALP3%v)
      OpenAD_Symbol_216 = ALP3%v
      OpenAD_Symbol_217 = ALAMU%v
      ALP3%v = OpenAD_Symbol_218
      OpenAD_Symbol_221 = (ALAMU%v*ALP4%v)
      OpenAD_Symbol_219 = ALP4%v
      OpenAD_Symbol_220 = ALAMU%v
      ALP4%v = OpenAD_Symbol_221
      OpenAD_Symbol_224 = (ALAMCP%v*ALP5%v)
      OpenAD_Symbol_222 = ALP5%v
      OpenAD_Symbol_223 = ALAMCP%v
      ALP5%v = OpenAD_Symbol_224
      ALP15P%v = (ALP1%v+ALP5%v)
      ALP15M%v = (ALP1%v-ALP5%v)
      MU%v = ((ALP15P%v/CAVE%v)+ALP2%v*NXHAT%v+ALP3%v*NYHAT%v+ALP4%v*NZH
     +AT%v)
      OpenAD_Symbol_225 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_Symbol_226 = (-(ALP15P%v/(CAVE%v*CAVE%v)))
      OpenAD_Symbol_227 = NXHAT%v
      OpenAD_Symbol_228 = ALP2%v
      OpenAD_Symbol_229 = NYHAT%v
      OpenAD_Symbol_230 = ALP3%v
      OpenAD_Symbol_231 = NZHAT%v
      OpenAD_Symbol_232 = ALP4%v
      OpenAD_Symbol_235 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_Symbol_235-ALP15M%v*UHAT%v
     ++ALP2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_Symbol_233 = THTAVE%v
      OpenAD_Symbol_234 = MU%v
      OpenAD_Symbol_236 = OpenAD_Symbol_235
      OpenAD_Symbol_238 = CAVE%v
      OpenAD_Symbol_239 = GM1INV%v
      OpenAD_Symbol_237 = ALP15P%v
      OpenAD_Symbol_240 = UHAT%v
      OpenAD_Symbol_241 = ALP15M%v
      OpenAD_Symbol_242 = UTILDE%v
      OpenAD_Symbol_243 = ALP2%v
      OpenAD_Symbol_244 = VTILDE%v
      OpenAD_Symbol_245 = ALP3%v
      OpenAD_Symbol_246 = WTILDE%v
      OpenAD_Symbol_247 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_Symbol_248 = NZHAT%v
      OpenAD_Symbol_249 = ALP3%v
      OpenAD_Symbol_250 = UAVE%v
      OpenAD_Symbol_251 = MU%v
      OpenAD_Symbol_252 = NXHAT%v
      OpenAD_Symbol_253 = ALP15M%v
      OpenAD_Symbol_254 = NYHAT%v
      OpenAD_Symbol_255 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_Symbol_256 = NXHAT%v
      OpenAD_Symbol_257 = ALP4%v
      OpenAD_Symbol_258 = VAVE%v
      OpenAD_Symbol_259 = MU%v
      OpenAD_Symbol_260 = NYHAT%v
      OpenAD_Symbol_261 = ALP15M%v
      OpenAD_Symbol_262 = NZHAT%v
      OpenAD_Symbol_263 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_Symbol_264 = NYHAT%v
      OpenAD_Symbol_265 = ALP2%v
      OpenAD_Symbol_266 = WAVE%v
      OpenAD_Symbol_267 = MU%v
      OpenAD_Symbol_268 = NZHAT%v
      OpenAD_Symbol_269 = ALP15M%v
      OpenAD_Symbol_270 = NXHAT%v
      OpenAD_Symbol_271 = ALP3%v
      UHATL%v = (PRIML(3)%v*NXHAT%v+PRIML(4)%v*NYHAT%v+PRIML(5)%v*NZHAT%
     +v)
      OpenAD_Symbol_272 = NXHAT%v
      OpenAD_Symbol_273 = PRIML(3)%v
      OpenAD_Symbol_274 = NYHAT%v
      OpenAD_Symbol_275 = PRIML(4)%v
      OpenAD_Symbol_276 = NZHAT%v
      OpenAD_Symbol_277 = PRIML(5)%v
      OpenAD_Symbol_281 = (PRIML(1)%v+EL%v)
      OpenAD_Symbol_278 = (DSS1%v+UHATL%v*OpenAD_Symbol_281)
      FLUX(1)%v = (NSIZE%v*OpenAD_Symbol_278)
      OpenAD_Symbol_279 = OpenAD_Symbol_278
      OpenAD_Symbol_282 = OpenAD_Symbol_281
      OpenAD_Symbol_283 = UHATL%v
      OpenAD_Symbol_280 = NSIZE%v
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
      CALL setderiv(OpenAD_Symbol_422,ALP1)
      CALL setderiv(OpenAD_Symbol_423,ALP2)
      CALL setderiv(OpenAD_Symbol_424,ALP3)
      CALL setderiv(OpenAD_Symbol_425,ALP4)
      CALL setderiv(OpenAD_Symbol_426,ALP5)
      CALL sax(OpenAD_Symbol_210,ALAMCM,ALP1)
      CALL saxpy(OpenAD_Symbol_211,OpenAD_Symbol_422,ALP1)
      CALL sax(OpenAD_Symbol_213,ALAMU,ALP2)
      CALL saxpy(OpenAD_Symbol_214,OpenAD_Symbol_423,ALP2)
      CALL sax(OpenAD_Symbol_216,ALAMU,ALP3)
      CALL saxpy(OpenAD_Symbol_217,OpenAD_Symbol_424,ALP3)
      CALL sax(OpenAD_Symbol_219,ALAMU,ALP4)
      CALL saxpy(OpenAD_Symbol_220,OpenAD_Symbol_425,ALP4)
      CALL sax(OpenAD_Symbol_222,ALAMCP,ALP5)
      CALL saxpy(OpenAD_Symbol_223,OpenAD_Symbol_426,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_Symbol_427,PRIML(1))
      CALL inc_deriv(OpenAD_Symbol_427,EL)
      CALL sax(OpenAD_Symbol_272,PRIML(3),UHATL)
      CALL saxpy(OpenAD_Symbol_273,NXHAT,UHATL)
      CALL saxpy(OpenAD_Symbol_274,PRIML(4),UHATL)
      CALL saxpy(OpenAD_Symbol_275,NYHAT,UHATL)
      CALL saxpy(OpenAD_Symbol_276,PRIML(5),UHATL)
      CALL saxpy(OpenAD_Symbol_277,NZHAT,UHATL)
      CALL sax(OpenAD_Symbol_225,ALP15P,MU)
      CALL saxpy(OpenAD_Symbol_226,CAVE,MU)
      CALL saxpy(OpenAD_Symbol_227,ALP2,MU)
      CALL saxpy(OpenAD_Symbol_228,NXHAT,MU)
      CALL saxpy(OpenAD_Symbol_229,ALP3,MU)
      CALL saxpy(OpenAD_Symbol_230,NYHAT,MU)
      CALL saxpy(OpenAD_Symbol_231,ALP4,MU)
      CALL saxpy(OpenAD_Symbol_232,NZHAT,MU)
      CALL setderiv(DSS2,MU)
      CALL sax(OpenAD_Symbol_250,MU,DSS3)
      CALL saxpy(OpenAD_Symbol_251,UAVE,DSS3)
      CALL saxpy(OpenAD_Symbol_410,ALP4,DSS3)
      CALL saxpy(OpenAD_Symbol_411,NYHAT,DSS3)
      CALL saxpy(OpenAD_Symbol_248,ALP3,DSS3)
      CALL saxpy(OpenAD_Symbol_249,NZHAT,DSS3)
      CALL saxpy(OpenAD_Symbol_420,ALP15M,DSS3)
      CALL saxpy(OpenAD_Symbol_421,NXHAT,DSS3)
      CALL sax(OpenAD_Symbol_258,MU,DSS4)
      CALL saxpy(OpenAD_Symbol_259,VAVE,DSS4)
      CALL saxpy(OpenAD_Symbol_412,ALP2,DSS4)
      CALL saxpy(OpenAD_Symbol_413,NZHAT,DSS4)
      CALL saxpy(OpenAD_Symbol_256,ALP4,DSS4)
      CALL saxpy(OpenAD_Symbol_257,NXHAT,DSS4)
      CALL saxpy(OpenAD_Symbol_418,ALP15M,DSS4)
      CALL saxpy(OpenAD_Symbol_419,NYHAT,DSS4)
      CALL sax(OpenAD_Symbol_266,MU,DSS5)
      CALL saxpy(OpenAD_Symbol_267,WAVE,DSS5)
      CALL saxpy(OpenAD_Symbol_414,ALP3,DSS5)
      CALL saxpy(OpenAD_Symbol_415,NXHAT,DSS5)
      CALL saxpy(OpenAD_Symbol_264,ALP2,DSS5)
      CALL saxpy(OpenAD_Symbol_265,NYHAT,DSS5)
      CALL saxpy(OpenAD_Symbol_416,ALP15M,DSS5)
      CALL saxpy(OpenAD_Symbol_417,NZHAT,DSS5)
      CALL sax(OpenAD_Symbol_279,NSIZE,FLUX(1))
      CALL saxpy(OpenAD_Symbol_394,UHATL,FLUX(1))
      CALL saxpy(OpenAD_Symbol_395,OpenAD_Symbol_427,FLUX(1))
      CALL saxpy(OpenAD_Symbol_396,ALP4,FLUX(1))
      CALL saxpy(OpenAD_Symbol_397,WTILDE,FLUX(1))
      CALL saxpy(OpenAD_Symbol_398,ALP3,FLUX(1))
      CALL saxpy(OpenAD_Symbol_399,VTILDE,FLUX(1))
      CALL saxpy(OpenAD_Symbol_400,ALP2,FLUX(1))
      CALL saxpy(OpenAD_Symbol_401,UTILDE,FLUX(1))
      CALL saxpy(OpenAD_Symbol_402,MU,FLUX(1))
      CALL saxpy(OpenAD_Symbol_403,THTAVE,FLUX(1))
      CALL saxpy(OpenAD_Symbol_404,ALP15P,FLUX(1))
      CALL saxpy(OpenAD_Symbol_405,GM1INV,FLUX(1))
      CALL saxpy(OpenAD_Symbol_406,CAVE,FLUX(1))
      CALL saxpy(OpenAD_Symbol_408,ALP15M,FLUX(1))
      CALL saxpy(OpenAD_Symbol_409,UHAT,FLUX(1))
      OpenAD_Symbol_284 = (DSS2%v+PRIML(2)%v*UHATL%v)
      FLUX(2)%v = (NSIZE%v*OpenAD_Symbol_284)
      OpenAD_Symbol_285 = OpenAD_Symbol_284
      OpenAD_Symbol_287 = UHATL%v
      OpenAD_Symbol_288 = PRIML(2)%v
      OpenAD_Symbol_286 = NSIZE%v
      CALL setderiv(OpenAD_Symbol_428,DSS2)
      CALL saxpy(OpenAD_Symbol_287,PRIML(2),OpenAD_Symbol_428)
      CALL saxpy(OpenAD_Symbol_288,UHATL,OpenAD_Symbol_428)
      CALL sax(OpenAD_Symbol_285,NSIZE,FLUX(2))
      CALL saxpy(OpenAD_Symbol_286,OpenAD_Symbol_428,FLUX(2))
      OpenAD_Symbol_289 = (DSS3%v+PRIML(1)%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX(3)%v = (NSIZE%v*OpenAD_Symbol_289)
      OpenAD_Symbol_290 = OpenAD_Symbol_289
      OpenAD_Symbol_292 = NXHAT%v
      OpenAD_Symbol_293 = PRIML(1)%v
      OpenAD_Symbol_294 = UHATL%v
      OpenAD_Symbol_295 = RUL%v
      OpenAD_Symbol_291 = NSIZE%v
      CALL setderiv(OpenAD_Symbol_429,DSS3)
      CALL saxpy(OpenAD_Symbol_292,PRIML(1),OpenAD_Symbol_429)
      CALL saxpy(OpenAD_Symbol_293,NXHAT,OpenAD_Symbol_429)
      CALL saxpy(OpenAD_Symbol_294,RUL,OpenAD_Symbol_429)
      CALL saxpy(OpenAD_Symbol_295,UHATL,OpenAD_Symbol_429)
      CALL sax(OpenAD_Symbol_290,NSIZE,FLUX(3))
      CALL saxpy(OpenAD_Symbol_291,OpenAD_Symbol_429,FLUX(3))
      OpenAD_Symbol_296 = (DSS4%v+PRIML(1)%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX(4)%v = (NSIZE%v*OpenAD_Symbol_296)
      OpenAD_Symbol_297 = OpenAD_Symbol_296
      OpenAD_Symbol_299 = NYHAT%v
      OpenAD_Symbol_300 = PRIML(1)%v
      OpenAD_Symbol_301 = UHATL%v
      OpenAD_Symbol_302 = RVL%v
      OpenAD_Symbol_298 = NSIZE%v
      CALL setderiv(OpenAD_Symbol_430,DSS4)
      CALL saxpy(OpenAD_Symbol_299,PRIML(1),OpenAD_Symbol_430)
      CALL saxpy(OpenAD_Symbol_300,NYHAT,OpenAD_Symbol_430)
      CALL saxpy(OpenAD_Symbol_301,RVL,OpenAD_Symbol_430)
      CALL saxpy(OpenAD_Symbol_302,UHATL,OpenAD_Symbol_430)
      CALL sax(OpenAD_Symbol_297,NSIZE,FLUX(4))
      CALL saxpy(OpenAD_Symbol_298,OpenAD_Symbol_430,FLUX(4))
      OpenAD_Symbol_303 = (DSS5%v+PRIML(1)%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX(5)%v = (NSIZE%v*OpenAD_Symbol_303)
      OpenAD_Symbol_304 = OpenAD_Symbol_303
      OpenAD_Symbol_306 = NZHAT%v
      OpenAD_Symbol_307 = PRIML(1)%v
      OpenAD_Symbol_308 = UHATL%v
      OpenAD_Symbol_309 = RWL%v
      OpenAD_Symbol_305 = NSIZE%v
      CALL setderiv(OpenAD_Symbol_431,DSS5)
      CALL saxpy(OpenAD_Symbol_306,PRIML(1),OpenAD_Symbol_431)
      CALL saxpy(OpenAD_Symbol_307,NZHAT,OpenAD_Symbol_431)
      CALL saxpy(OpenAD_Symbol_308,RWL,OpenAD_Symbol_431)
      CALL saxpy(OpenAD_Symbol_309,UHATL,OpenAD_Symbol_431)
      CALL sax(OpenAD_Symbol_304,NSIZE,FLUX(5))
      CALL saxpy(OpenAD_Symbol_305,OpenAD_Symbol_431,FLUX(5))
      END SUBROUTINE
