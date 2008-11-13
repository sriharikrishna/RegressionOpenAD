
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE ad_roehf5(NRM1, NRM2, NRM3, PRIML1, PRIML2, PRIML3,
     >  PRIML4, PRIML5, PRIMR1, PRIMR2, PRIMR3, PRIMR4, PRIMR5, GAMMA,
     >  GM1, GM1INV, NLEFIX, LEFIX, MCHEPS, FLUX1, FLUX2, FLUX3, FLUX4,
     >  FLUX5)
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
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_112
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
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
      REAL(w2f__8) OpenAD_Symbol_151
      REAL(w2f__8) OpenAD_Symbol_152
      REAL(w2f__8) OpenAD_Symbol_153
      REAL(w2f__8) OpenAD_Symbol_154
      REAL(w2f__8) OpenAD_Symbol_156
      REAL(w2f__8) OpenAD_Symbol_157
      REAL(w2f__8) OpenAD_Symbol_158
      REAL(w2f__8) OpenAD_Symbol_159
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_161
      REAL(w2f__8) OpenAD_Symbol_162
      REAL(w2f__8) OpenAD_Symbol_163
      REAL(w2f__8) OpenAD_Symbol_164
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
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_300
      REAL(w2f__8) OpenAD_Symbol_301
      REAL(w2f__8) OpenAD_Symbol_302
      REAL(w2f__8) OpenAD_Symbol_303
      REAL(w2f__8) OpenAD_Symbol_304
      REAL(w2f__8) OpenAD_Symbol_305
      REAL(w2f__8) OpenAD_Symbol_306
      REAL(w2f__8) OpenAD_Symbol_307
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
      REAL(w2f__8) OpenAD_Symbol_34
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
      REAL(w2f__8) OpenAD_Symbol_36
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
      REAL(w2f__8) OpenAD_Symbol_38
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
      REAL(w2f__8) OpenAD_Symbol_40
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
      REAL(w2f__8) OpenAD_Symbol_5
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
      TYPE (OpenADTy_active) OpenAD_Symbol_558
      REAL(w2f__8) OpenAD_Symbol_559
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
      REAL(w2f__8) OpenAD_Symbol_581
      REAL(w2f__8) OpenAD_Symbol_582
      REAL(w2f__8) OpenAD_Symbol_583
      REAL(w2f__8) OpenAD_Symbol_584
      REAL(w2f__8) OpenAD_Symbol_585
      REAL(w2f__8) OpenAD_Symbol_586
      REAL(w2f__8) OpenAD_Symbol_587
      REAL(w2f__8) OpenAD_Symbol_588
      REAL(w2f__8) OpenAD_Symbol_589
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_590
      REAL(w2f__8) OpenAD_Symbol_591
      REAL(w2f__8) OpenAD_Symbol_592
      REAL(w2f__8) OpenAD_Symbol_593
      REAL(w2f__8) OpenAD_Symbol_594
      REAL(w2f__8) OpenAD_Symbol_595
      REAL(w2f__8) OpenAD_Symbol_596
      REAL(w2f__8) OpenAD_Symbol_597
      REAL(w2f__8) OpenAD_Symbol_598
      REAL(w2f__8) OpenAD_Symbol_599
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_60
      REAL(w2f__8) OpenAD_Symbol_600
      REAL(w2f__8) OpenAD_Symbol_601
      REAL(w2f__8) OpenAD_Symbol_602
      REAL(w2f__8) OpenAD_Symbol_603
      REAL(w2f__8) OpenAD_Symbol_604
      REAL(w2f__8) OpenAD_Symbol_605
      REAL(w2f__8) OpenAD_Symbol_606
      REAL(w2f__8) OpenAD_Symbol_607
      REAL(w2f__8) OpenAD_Symbol_608
      REAL(w2f__8) OpenAD_Symbol_609
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_610
      REAL(w2f__8) OpenAD_Symbol_611
      REAL(w2f__8) OpenAD_Symbol_612
      REAL(w2f__8) OpenAD_Symbol_613
      REAL(w2f__8) OpenAD_Symbol_614
      REAL(w2f__8) OpenAD_Symbol_615
      REAL(w2f__8) OpenAD_Symbol_616
      REAL(w2f__8) OpenAD_Symbol_617
      REAL(w2f__8) OpenAD_Symbol_618
      REAL(w2f__8) OpenAD_Symbol_619
      REAL(w2f__8) OpenAD_Symbol_62
      REAL(w2f__8) OpenAD_Symbol_620
      REAL(w2f__8) OpenAD_Symbol_621
      REAL(w2f__8) OpenAD_Symbol_622
      REAL(w2f__8) OpenAD_Symbol_623
      REAL(w2f__8) OpenAD_Symbol_624
      REAL(w2f__8) OpenAD_Symbol_625
      REAL(w2f__8) OpenAD_Symbol_626
      REAL(w2f__8) OpenAD_Symbol_627
      REAL(w2f__8) OpenAD_Symbol_628
      REAL(w2f__8) OpenAD_Symbol_629
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_630
      REAL(w2f__8) OpenAD_Symbol_631
      REAL(w2f__8) OpenAD_Symbol_632
      REAL(w2f__8) OpenAD_Symbol_633
      REAL(w2f__8) OpenAD_Symbol_634
      REAL(w2f__8) OpenAD_Symbol_635
      REAL(w2f__8) OpenAD_Symbol_636
      REAL(w2f__8) OpenAD_Symbol_637
      REAL(w2f__8) OpenAD_Symbol_638
      REAL(w2f__8) OpenAD_Symbol_639
      REAL(w2f__8) OpenAD_Symbol_64
      REAL(w2f__8) OpenAD_Symbol_640
      REAL(w2f__8) OpenAD_Symbol_641
      REAL(w2f__8) OpenAD_Symbol_642
      REAL(w2f__8) OpenAD_Symbol_643
      REAL(w2f__8) OpenAD_Symbol_644
      REAL(w2f__8) OpenAD_Symbol_645
      REAL(w2f__8) OpenAD_Symbol_646
      REAL(w2f__8) OpenAD_Symbol_647
      REAL(w2f__8) OpenAD_Symbol_648
      REAL(w2f__8) OpenAD_Symbol_649
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_650
      REAL(w2f__8) OpenAD_Symbol_651
      REAL(w2f__8) OpenAD_Symbol_652
      REAL(w2f__8) OpenAD_Symbol_653
      REAL(w2f__8) OpenAD_Symbol_654
      REAL(w2f__8) OpenAD_Symbol_655
      REAL(w2f__8) OpenAD_Symbol_656
      REAL(w2f__8) OpenAD_Symbol_657
      REAL(w2f__8) OpenAD_Symbol_658
      REAL(w2f__8) OpenAD_Symbol_659
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_660
      REAL(w2f__8) OpenAD_Symbol_661
      REAL(w2f__8) OpenAD_Symbol_662
      REAL(w2f__8) OpenAD_Symbol_663
      REAL(w2f__8) OpenAD_Symbol_664
      REAL(w2f__8) OpenAD_Symbol_665
      REAL(w2f__8) OpenAD_Symbol_666
      REAL(w2f__8) OpenAD_Symbol_667
      REAL(w2f__8) OpenAD_Symbol_668
      REAL(w2f__8) OpenAD_Symbol_669
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_670
      REAL(w2f__8) OpenAD_Symbol_671
      REAL(w2f__8) OpenAD_Symbol_672
      REAL(w2f__8) OpenAD_Symbol_673
      REAL(w2f__8) OpenAD_Symbol_674
      REAL(w2f__8) OpenAD_Symbol_675
      REAL(w2f__8) OpenAD_Symbol_676
      REAL(w2f__8) OpenAD_Symbol_677
      REAL(w2f__8) OpenAD_Symbol_678
      REAL(w2f__8) OpenAD_Symbol_679
      REAL(w2f__8) OpenAD_Symbol_68
      REAL(w2f__8) OpenAD_Symbol_680
      REAL(w2f__8) OpenAD_Symbol_681
      REAL(w2f__8) OpenAD_Symbol_682
      REAL(w2f__8) OpenAD_Symbol_683
      REAL(w2f__8) OpenAD_Symbol_684
      REAL(w2f__8) OpenAD_Symbol_685
      REAL(w2f__8) OpenAD_Symbol_686
      REAL(w2f__8) OpenAD_Symbol_687
      REAL(w2f__8) OpenAD_Symbol_688
      REAL(w2f__8) OpenAD_Symbol_689
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_690
      REAL(w2f__8) OpenAD_Symbol_691
      REAL(w2f__8) OpenAD_Symbol_692
      REAL(w2f__8) OpenAD_Symbol_693
      REAL(w2f__8) OpenAD_Symbol_694
      REAL(w2f__8) OpenAD_Symbol_695
      REAL(w2f__8) OpenAD_Symbol_696
      REAL(w2f__8) OpenAD_Symbol_697
      REAL(w2f__8) OpenAD_Symbol_698
      REAL(w2f__8) OpenAD_Symbol_699
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_700
      REAL(w2f__8) OpenAD_Symbol_701
      REAL(w2f__8) OpenAD_Symbol_702
      REAL(w2f__8) OpenAD_Symbol_703
      REAL(w2f__8) OpenAD_Symbol_704
      REAL(w2f__8) OpenAD_Symbol_705
      REAL(w2f__8) OpenAD_Symbol_706
      REAL(w2f__8) OpenAD_Symbol_707
      REAL(w2f__8) OpenAD_Symbol_708
      REAL(w2f__8) OpenAD_Symbol_709
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_710
      REAL(w2f__8) OpenAD_Symbol_711
      REAL(w2f__8) OpenAD_Symbol_712
      REAL(w2f__8) OpenAD_Symbol_713
      REAL(w2f__8) OpenAD_Symbol_714
      REAL(w2f__8) OpenAD_Symbol_715
      REAL(w2f__8) OpenAD_Symbol_716
      REAL(w2f__8) OpenAD_Symbol_717
      REAL(w2f__8) OpenAD_Symbol_718
      REAL(w2f__8) OpenAD_Symbol_719
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_720
      REAL(w2f__8) OpenAD_Symbol_721
      REAL(w2f__8) OpenAD_Symbol_722
      REAL(w2f__8) OpenAD_Symbol_723
      REAL(w2f__8) OpenAD_Symbol_724
      REAL(w2f__8) OpenAD_Symbol_725
      REAL(w2f__8) OpenAD_Symbol_726
      REAL(w2f__8) OpenAD_Symbol_727
      REAL(w2f__8) OpenAD_Symbol_728
      REAL(w2f__8) OpenAD_Symbol_729
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_730
      REAL(w2f__8) OpenAD_Symbol_731
      REAL(w2f__8) OpenAD_Symbol_732
      REAL(w2f__8) OpenAD_Symbol_733
      REAL(w2f__8) OpenAD_Symbol_734
      REAL(w2f__8) OpenAD_Symbol_735
      REAL(w2f__8) OpenAD_Symbol_736
      REAL(w2f__8) OpenAD_Symbol_737
      REAL(w2f__8) OpenAD_Symbol_738
      REAL(w2f__8) OpenAD_Symbol_739
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_740
      REAL(w2f__8) OpenAD_Symbol_741
      REAL(w2f__8) OpenAD_Symbol_742
      REAL(w2f__8) OpenAD_Symbol_743
      REAL(w2f__8) OpenAD_Symbol_744
      REAL(w2f__8) OpenAD_Symbol_745
      REAL(w2f__8) OpenAD_Symbol_746
      REAL(w2f__8) OpenAD_Symbol_747
      REAL(w2f__8) OpenAD_Symbol_748
      REAL(w2f__8) OpenAD_Symbol_749
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_750
      REAL(w2f__8) OpenAD_Symbol_751
      REAL(w2f__8) OpenAD_Symbol_752
      REAL(w2f__8) OpenAD_Symbol_753
      REAL(w2f__8) OpenAD_Symbol_754
      REAL(w2f__8) OpenAD_Symbol_755
      REAL(w2f__8) OpenAD_Symbol_756
      REAL(w2f__8) OpenAD_Symbol_757
      REAL(w2f__8) OpenAD_Symbol_758
      REAL(w2f__8) OpenAD_Symbol_759
      REAL(w2f__8) OpenAD_Symbol_76
      REAL(w2f__8) OpenAD_Symbol_760
      REAL(w2f__8) OpenAD_Symbol_761
      REAL(w2f__8) OpenAD_Symbol_762
      REAL(w2f__8) OpenAD_Symbol_763
      REAL(w2f__8) OpenAD_Symbol_764
      REAL(w2f__8) OpenAD_Symbol_765
      TYPE (OpenADTy_active) OpenAD_Symbol_766
      TYPE (OpenADTy_active) OpenAD_Symbol_767
      TYPE (OpenADTy_active) OpenAD_Symbol_768
      REAL(w2f__8) OpenAD_Symbol_769
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_770
      REAL(w2f__8) OpenAD_Symbol_771
      REAL(w2f__8) OpenAD_Symbol_772
      REAL(w2f__8) OpenAD_Symbol_773
      REAL(w2f__8) OpenAD_Symbol_774
      REAL(w2f__8) OpenAD_Symbol_775
      REAL(w2f__8) OpenAD_Symbol_776
      REAL(w2f__8) OpenAD_Symbol_777
      REAL(w2f__8) OpenAD_Symbol_778
      REAL(w2f__8) OpenAD_Symbol_779
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_780
      REAL(w2f__8) OpenAD_Symbol_781
      REAL(w2f__8) OpenAD_Symbol_782
      REAL(w2f__8) OpenAD_Symbol_783
      REAL(w2f__8) OpenAD_Symbol_784
      REAL(w2f__8) OpenAD_Symbol_785
      REAL(w2f__8) OpenAD_Symbol_786
      REAL(w2f__8) OpenAD_Symbol_787
      REAL(w2f__8) OpenAD_Symbol_788
      REAL(w2f__8) OpenAD_Symbol_789
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_790
      REAL(w2f__8) OpenAD_Symbol_791
      REAL(w2f__8) OpenAD_Symbol_792
      REAL(w2f__8) OpenAD_Symbol_793
      REAL(w2f__8) OpenAD_Symbol_794
      REAL(w2f__8) OpenAD_Symbol_795
      REAL(w2f__8) OpenAD_Symbol_796
      REAL(w2f__8) OpenAD_Symbol_797
      REAL(w2f__8) OpenAD_Symbol_798
      REAL(w2f__8) OpenAD_Symbol_799
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_800
      REAL(w2f__8) OpenAD_Symbol_801
      REAL(w2f__8) OpenAD_Symbol_802
      REAL(w2f__8) OpenAD_Symbol_803
      REAL(w2f__8) OpenAD_Symbol_804
      REAL(w2f__8) OpenAD_Symbol_805
      REAL(w2f__8) OpenAD_Symbol_806
      REAL(w2f__8) OpenAD_Symbol_807
      REAL(w2f__8) OpenAD_Symbol_808
      REAL(w2f__8) OpenAD_Symbol_809
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_810
      REAL(w2f__8) OpenAD_Symbol_811
      REAL(w2f__8) OpenAD_Symbol_812
      REAL(w2f__8) OpenAD_Symbol_813
      REAL(w2f__8) OpenAD_Symbol_814
      REAL(w2f__8) OpenAD_Symbol_815
      REAL(w2f__8) OpenAD_Symbol_816
      REAL(w2f__8) OpenAD_Symbol_817
      REAL(w2f__8) OpenAD_Symbol_818
      REAL(w2f__8) OpenAD_Symbol_819
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_820
      REAL(w2f__8) OpenAD_Symbol_821
      REAL(w2f__8) OpenAD_Symbol_822
      REAL(w2f__8) OpenAD_Symbol_823
      REAL(w2f__8) OpenAD_Symbol_824
      REAL(w2f__8) OpenAD_Symbol_825
      REAL(w2f__8) OpenAD_Symbol_826
      REAL(w2f__8) OpenAD_Symbol_827
      REAL(w2f__8) OpenAD_Symbol_828
      REAL(w2f__8) OpenAD_Symbol_829
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_830
      REAL(w2f__8) OpenAD_Symbol_831
      REAL(w2f__8) OpenAD_Symbol_832
      REAL(w2f__8) OpenAD_Symbol_833
      REAL(w2f__8) OpenAD_Symbol_834
      REAL(w2f__8) OpenAD_Symbol_835
      REAL(w2f__8) OpenAD_Symbol_836
      REAL(w2f__8) OpenAD_Symbol_837
      REAL(w2f__8) OpenAD_Symbol_838
      REAL(w2f__8) OpenAD_Symbol_839
      REAL(w2f__8) OpenAD_Symbol_84
      REAL(w2f__8) OpenAD_Symbol_840
      REAL(w2f__8) OpenAD_Symbol_841
      REAL(w2f__8) OpenAD_Symbol_842
      REAL(w2f__8) OpenAD_Symbol_843
      REAL(w2f__8) OpenAD_Symbol_844
      REAL(w2f__8) OpenAD_Symbol_845
      REAL(w2f__8) OpenAD_Symbol_846
      REAL(w2f__8) OpenAD_Symbol_847
      REAL(w2f__8) OpenAD_Symbol_848
      REAL(w2f__8) OpenAD_Symbol_849
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_850
      REAL(w2f__8) OpenAD_Symbol_851
      REAL(w2f__8) OpenAD_Symbol_852
      REAL(w2f__8) OpenAD_Symbol_853
      REAL(w2f__8) OpenAD_Symbol_854
      REAL(w2f__8) OpenAD_Symbol_855
      REAL(w2f__8) OpenAD_Symbol_856
      REAL(w2f__8) OpenAD_Symbol_857
      REAL(w2f__8) OpenAD_Symbol_858
      REAL(w2f__8) OpenAD_Symbol_859
      REAL(w2f__8) OpenAD_Symbol_86
      REAL(w2f__8) OpenAD_Symbol_860
      REAL(w2f__8) OpenAD_Symbol_861
      REAL(w2f__8) OpenAD_Symbol_862
      REAL(w2f__8) OpenAD_Symbol_863
      REAL(w2f__8) OpenAD_Symbol_864
      REAL(w2f__8) OpenAD_Symbol_865
      REAL(w2f__8) OpenAD_Symbol_866
      REAL(w2f__8) OpenAD_Symbol_867
      REAL(w2f__8) OpenAD_Symbol_868
      REAL(w2f__8) OpenAD_Symbol_869
      REAL(w2f__8) OpenAD_Symbol_87
      REAL(w2f__8) OpenAD_Symbol_870
      REAL(w2f__8) OpenAD_Symbol_871
      REAL(w2f__8) OpenAD_Symbol_872
      REAL(w2f__8) OpenAD_Symbol_873
      REAL(w2f__8) OpenAD_Symbol_874
      REAL(w2f__8) OpenAD_Symbol_875
      REAL(w2f__8) OpenAD_Symbol_876
      REAL(w2f__8) OpenAD_Symbol_877
      REAL(w2f__8) OpenAD_Symbol_878
      REAL(w2f__8) OpenAD_Symbol_879
      REAL(w2f__8) OpenAD_Symbol_88
      REAL(w2f__8) OpenAD_Symbol_880
      REAL(w2f__8) OpenAD_Symbol_881
      REAL(w2f__8) OpenAD_Symbol_882
      REAL(w2f__8) OpenAD_Symbol_883
      REAL(w2f__8) OpenAD_Symbol_884
      REAL(w2f__8) OpenAD_Symbol_885
      REAL(w2f__8) OpenAD_Symbol_886
      REAL(w2f__8) OpenAD_Symbol_887
      REAL(w2f__8) OpenAD_Symbol_888
      REAL(w2f__8) OpenAD_Symbol_889
      REAL(w2f__8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_890
      REAL(w2f__8) OpenAD_Symbol_891
      REAL(w2f__8) OpenAD_Symbol_892
      REAL(w2f__8) OpenAD_Symbol_893
      REAL(w2f__8) OpenAD_Symbol_894
      REAL(w2f__8) OpenAD_Symbol_895
      REAL(w2f__8) OpenAD_Symbol_896
      REAL(w2f__8) OpenAD_Symbol_897
      REAL(w2f__8) OpenAD_Symbol_898
      REAL(w2f__8) OpenAD_Symbol_899
      REAL(w2f__8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_Symbol_900
      REAL(w2f__8) OpenAD_Symbol_901
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
      TYPE (OpenADTy_active) NRM1
      INTENT(IN)  NRM1
      TYPE (OpenADTy_active) NRM2
      INTENT(IN)  NRM2
      TYPE (OpenADTy_active) NRM3
      INTENT(IN)  NRM3
      TYPE (OpenADTy_active) PRIML1
      INTENT(IN)  PRIML1
      TYPE (OpenADTy_active) PRIML2
      INTENT(IN)  PRIML2
      TYPE (OpenADTy_active) PRIML3
      INTENT(IN)  PRIML3
      TYPE (OpenADTy_active) PRIML4
      INTENT(IN)  PRIML4
      TYPE (OpenADTy_active) PRIML5
      INTENT(IN)  PRIML5
      TYPE (OpenADTy_active) PRIMR1
      INTENT(IN)  PRIMR1
      TYPE (OpenADTy_active) PRIMR2
      INTENT(IN)  PRIMR2
      TYPE (OpenADTy_active) PRIMR3
      INTENT(IN)  PRIMR3
      TYPE (OpenADTy_active) PRIMR4
      INTENT(IN)  PRIMR4
      TYPE (OpenADTy_active) PRIMR5
      INTENT(IN)  PRIMR5
      TYPE (OpenADTy_active) GAMMA
      INTENT(IN)  GAMMA
      TYPE (OpenADTy_active) GM1
      INTENT(IN)  GM1
      TYPE (OpenADTy_active) GM1INV
      INTENT(IN)  GM1INV
      REAL(w2f__8) NLEFIX
      INTENT(IN)  NLEFIX
      REAL(w2f__8) LEFIX
      INTENT(IN)  LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN)  MCHEPS
      TYPE (OpenADTy_active) FLUX1
      INTENT(OUT)  FLUX1
      TYPE (OpenADTy_active) FLUX2
      INTENT(OUT)  FLUX2
      TYPE (OpenADTy_active) FLUX3
      INTENT(OUT)  FLUX3
      TYPE (OpenADTy_active) FLUX4
      INTENT(OUT)  FLUX4
      TYPE (OpenADTy_active) FLUX5
      INTENT(OUT)  FLUX5
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
C$OPENAD INDEPENDENT(NRM1)
C$OPENAD INDEPENDENT(NRM2)
C$OPENAD INDEPENDENT(NRM3)
C$OPENAD INDEPENDENT(PRIML1)
C$OPENAD INDEPENDENT(PRIML2)
C$OPENAD INDEPENDENT(PRIML3)
C$OPENAD INDEPENDENT(PRIML4)
C$OPENAD INDEPENDENT(PRIML5)
C$OPENAD INDEPENDENT(PRIMR1)
C$OPENAD INDEPENDENT(PRIMR2)
C$OPENAD INDEPENDENT(PRIMR3)
C$OPENAD INDEPENDENT(PRIMR4)
C$OPENAD INDEPENDENT(PRIMR5)
C$OPENAD INDEPENDENT(GAMMA)
C$OPENAD INDEPENDENT(GM1)
C$OPENAD INDEPENDENT(GM1INV)
C$OPENAD INDEPENDENT(NLEFIX)
C$OPENAD INDEPENDENT(LEFIX)
C$OPENAD INDEPENDENT(MCHEPS)
C$OPENAD DEPENDENT(FLUX1)
C$OPENAD DEPENDENT(FLUX2)
C$OPENAD DEPENDENT(FLUX3)
C$OPENAD DEPENDENT(FLUX4)
C$OPENAD DEPENDENT(FLUX5)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = ((__value__(NRM1) ** 2) +(__value__(NRM2) ** 2)
     >  +(__value__(NRM3) ** 2))
      __value__(NSIZE) = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_6 = (2 *(__value__(NRM1) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_4 = 1_w2f__i8
      OpenAD_Symbol_8 = (2 *(__value__(NRM2) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_5 = 1_w2f__i8
      OpenAD_Symbol_2 = 1_w2f__i8
      OpenAD_Symbol_10 = (2 *(__value__(NRM3) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_3 = 1_w2f__i8
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
      OpenAD_Symbol_13 = (-(1.0D00 /(__value__(NSIZE) * __value__(NSIZE
     > ))))
      __value__(NXHAT) = (__value__(NRM1) * __value__(NSIZEI))
      OpenAD_Symbol_14 = __value__(NSIZEI)
      OpenAD_Symbol_15 = __value__(NRM1)
      __value__(NYHAT) = (__value__(NRM2) * __value__(NSIZEI))
      OpenAD_Symbol_16 = __value__(NSIZEI)
      OpenAD_Symbol_17 = __value__(NRM2)
      __value__(NZHAT) = (__value__(NRM3) * __value__(NSIZEI))
      OpenAD_Symbol_18 = __value__(NSIZEI)
      OpenAD_Symbol_19 = __value__(NRM3)
      OpenAD_Symbol_25 = (__value__(PRIMR2) / __value__(PRIML2))
      OpenAD_Symbol_20 = (SIN(OpenAD_Symbol_25) + 1.0D00)
      __value__(ROEL) = (1.0D00 / OpenAD_Symbol_20)
      OpenAD_Symbol_27 = (INT(1_w2f__i8) / __value__(PRIML2))
      OpenAD_Symbol_28 = (-(__value__(PRIMR2) /(__value__(PRIML2) *
     >  __value__(PRIML2))))
      OpenAD_Symbol_26 = COS(OpenAD_Symbol_25)
      OpenAD_Symbol_23 = 1_w2f__i8
      OpenAD_Symbol_22 = (-(1.0D00 /(OpenAD_Symbol_20 *
     >  OpenAD_Symbol_20)))
      __value__(ROER) = (1.0D00 - __value__(ROEL))
      OpenAD_Symbol_30 = (-1_w2f__i8)
      OpenAD_Symbol_31 = ((__value__(PRIML3) ** 2) +(__value__(PRIML4)
     >  ** 2) +(__value__(PRIML5) ** 2))
      __value__(THETAL) = (OpenAD_Symbol_31 * 5.0D-01)
      OpenAD_Symbol_38 = (2 *(__value__(PRIML3) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_Symbol_36 = 1_w2f__i8
      OpenAD_Symbol_40 = (2 *(__value__(PRIML4) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_Symbol_37 = 1_w2f__i8
      OpenAD_Symbol_34 = 1_w2f__i8
      OpenAD_Symbol_42 = (2 *(__value__(PRIML5) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_Symbol_35 = 1_w2f__i8
      OpenAD_Symbol_32 = 5.0D-01
      OpenAD_Symbol_44 = ((__value__(PRIMR3) ** 2) +(__value__(PRIMR4)
     >  ** 2) +(__value__(PRIMR5) ** 2))
      __value__(THETAR) = (OpenAD_Symbol_44 * 5.0D-01)
      OpenAD_Symbol_51 = (2 *(__value__(PRIMR3) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_Symbol_49 = 1_w2f__i8
      OpenAD_Symbol_53 = (2 *(__value__(PRIMR4) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_Symbol_50 = 1_w2f__i8
      OpenAD_Symbol_47 = 1_w2f__i8
      OpenAD_Symbol_55 = (2 *(__value__(PRIMR5) **(2 - INT(1_w2f__i8)))
     > )
      OpenAD_Symbol_48 = 1_w2f__i8
      OpenAD_Symbol_45 = 5.0D-01
      OpenAD_Symbol_62 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_Symbol_59 = (__value__(PRIML1) * OpenAD_Symbol_62)
      __value__(HL) = (__value__(THETAL) +(OpenAD_Symbol_59 / __value__
     > (PRIML2)))
      OpenAD_Symbol_57 = 1_w2f__i8
      OpenAD_Symbol_63 = OpenAD_Symbol_62
      OpenAD_Symbol_65 = __value__(GM1INV)
      OpenAD_Symbol_66 = __value__(GAMMA)
      OpenAD_Symbol_64 = __value__(PRIML1)
      OpenAD_Symbol_60 = (INT(1_w2f__i8) / __value__(PRIML2))
      OpenAD_Symbol_61 = (-(OpenAD_Symbol_59 /(__value__(PRIML2) *
     >  __value__(PRIML2))))
      OpenAD_Symbol_58 = 1_w2f__i8
      OpenAD_Symbol_72 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_Symbol_69 = (__value__(PRIMR1) * OpenAD_Symbol_72)
      __value__(HR) = (__value__(THETAR) +(OpenAD_Symbol_69 / __value__
     > (PRIMR2)))
      OpenAD_Symbol_67 = 1_w2f__i8
      OpenAD_Symbol_73 = OpenAD_Symbol_72
      OpenAD_Symbol_75 = __value__(GM1INV)
      OpenAD_Symbol_76 = __value__(GAMMA)
      OpenAD_Symbol_74 = __value__(PRIMR1)
      OpenAD_Symbol_70 = (INT(1_w2f__i8) / __value__(PRIMR2))
      OpenAD_Symbol_71 = (-(OpenAD_Symbol_69 /(__value__(PRIMR2) *
     >  __value__(PRIMR2))))
      OpenAD_Symbol_68 = 1_w2f__i8
      __value__(UAVE) = (__value__(PRIML3) * __value__(ROEL) +
     >  __value__(PRIMR3) * __value__(ROER))
      OpenAD_Symbol_79 = __value__(ROEL)
      OpenAD_Symbol_80 = __value__(PRIML3)
      OpenAD_Symbol_77 = 1_w2f__i8
      OpenAD_Symbol_81 = __value__(ROER)
      OpenAD_Symbol_82 = __value__(PRIMR3)
      OpenAD_Symbol_78 = 1_w2f__i8
      __value__(VAVE) = (__value__(PRIML4) * __value__(ROEL) +
     >  __value__(PRIMR4) * __value__(ROER))
      OpenAD_Symbol_85 = __value__(ROEL)
      OpenAD_Symbol_86 = __value__(PRIML4)
      OpenAD_Symbol_83 = 1_w2f__i8
      OpenAD_Symbol_87 = __value__(ROER)
      OpenAD_Symbol_88 = __value__(PRIMR4)
      OpenAD_Symbol_84 = 1_w2f__i8
      __value__(WAVE) = (__value__(PRIML5) * __value__(ROEL) +
     >  __value__(PRIMR5) * __value__(ROER))
      OpenAD_Symbol_91 = __value__(ROEL)
      OpenAD_Symbol_92 = __value__(PRIML5)
      OpenAD_Symbol_89 = 1_w2f__i8
      OpenAD_Symbol_93 = __value__(ROER)
      OpenAD_Symbol_94 = __value__(PRIMR5)
      OpenAD_Symbol_90 = 1_w2f__i8
      __value__(HAVE) = (__value__(HL) * __value__(ROEL) + __value__(HR
     > ) * __value__(ROER))
      OpenAD_Symbol_97 = __value__(ROEL)
      OpenAD_Symbol_98 = __value__(HL)
      OpenAD_Symbol_95 = 1_w2f__i8
      OpenAD_Symbol_99 = __value__(ROER)
      OpenAD_Symbol_100 = __value__(HR)
      OpenAD_Symbol_96 = 1_w2f__i8
      OpenAD_Symbol_101 = ((__value__(UAVE) ** 2) +(__value__(VAVE) **
     >  2) +(__value__(WAVE) ** 2))
      __value__(THTAVE) = (OpenAD_Symbol_101 * 5.0D-01)
      OpenAD_Symbol_108 = (2 *(__value__(UAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_106 = 1_w2f__i8
      OpenAD_Symbol_110 = (2 *(__value__(VAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_107 = 1_w2f__i8
      OpenAD_Symbol_104 = 1_w2f__i8
      OpenAD_Symbol_112 = (2 *(__value__(WAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_105 = 1_w2f__i8
      OpenAD_Symbol_102 = 5.0D-01
      OpenAD_Symbol_114 = (__value__(HAVE) - __value__(THTAVE))
      __value__(CAVE) = (__value__(GM1) * OpenAD_Symbol_114)
      OpenAD_Symbol_115 = OpenAD_Symbol_114
      OpenAD_Symbol_117 = 1_w2f__i8
      OpenAD_Symbol_118 = (-1_w2f__i8)
      OpenAD_Symbol_116 = __value__(GM1)
      OpenAD_Symbol_475 = (OpenAD_Symbol_97 * OpenAD_Symbol_116)
      OpenAD_Symbol_476 = (INT((-1_w2f__i8)) * OpenAD_Symbol_116)
      OpenAD_Symbol_477 = (OpenAD_Symbol_99 * OpenAD_Symbol_116)
      OpenAD_Symbol_478 = (OpenAD_Symbol_70 * OpenAD_Symbol_477)
      OpenAD_Symbol_479 = (OpenAD_Symbol_73 * OpenAD_Symbol_478)
      OpenAD_Symbol_480 = (OpenAD_Symbol_60 * OpenAD_Symbol_475)
      OpenAD_Symbol_481 = (OpenAD_Symbol_63 * OpenAD_Symbol_480)
      OpenAD_Symbol_482 = (OpenAD_Symbol_71 * OpenAD_Symbol_477)
      OpenAD_Symbol_483 = (OpenAD_Symbol_61 * OpenAD_Symbol_475)
      OpenAD_Symbol_484 = (OpenAD_Symbol_74 * OpenAD_Symbol_478)
      OpenAD_Symbol_485 = (OpenAD_Symbol_75 * OpenAD_Symbol_484)
      OpenAD_Symbol_486 = (OpenAD_Symbol_64 * OpenAD_Symbol_480)
      OpenAD_Symbol_487 = (OpenAD_Symbol_65 * OpenAD_Symbol_486)
      OpenAD_Symbol_488 = (OpenAD_Symbol_26 * OpenAD_Symbol_22)
      OpenAD_Symbol_489 = (OpenAD_Symbol_76 * OpenAD_Symbol_484)
      OpenAD_Symbol_490 = (OpenAD_Symbol_66 * OpenAD_Symbol_486)
      OpenAD_Symbol_491 = (OpenAD_Symbol_112 * 5.0D-01)
      OpenAD_Symbol_492 = (OpenAD_Symbol_110 * 5.0D-01)
      OpenAD_Symbol_493 = (OpenAD_Symbol_108 * 5.0D-01)
      OpenAD_Symbol_494 = (INT((-1_w2f__i8)) * OpenAD_Symbol_94 +
     >  OpenAD_Symbol_92)
      OpenAD_Symbol_495 = (INT((-1_w2f__i8)) * OpenAD_Symbol_88 +
     >  OpenAD_Symbol_86)
      OpenAD_Symbol_496 = (INT((-1_w2f__i8)) * OpenAD_Symbol_82 +
     >  OpenAD_Symbol_80)
      OpenAD_Symbol_497 = (OpenAD_Symbol_55 * 5.0D-01)
      OpenAD_Symbol_498 = (OpenAD_Symbol_42 * 5.0D-01)
      OpenAD_Symbol_499 = (OpenAD_Symbol_10 * OpenAD_Symbol_1)
      OpenAD_Symbol_500 = (OpenAD_Symbol_53 * 5.0D-01)
      OpenAD_Symbol_501 = (OpenAD_Symbol_497 * OpenAD_Symbol_477)
      OpenAD_Symbol_502 = (OpenAD_Symbol_500 * OpenAD_Symbol_477)
      OpenAD_Symbol_503 = (OpenAD_Symbol_51 * 5.0D-01)
      OpenAD_Symbol_504 = (OpenAD_Symbol_51 * 5.0D-01 *
     >  OpenAD_Symbol_477)
      OpenAD_Symbol_505 = (OpenAD_Symbol_40 * 5.0D-01)
      OpenAD_Symbol_506 = (OpenAD_Symbol_498 * OpenAD_Symbol_475)
      OpenAD_Symbol_507 = (OpenAD_Symbol_505 * OpenAD_Symbol_475)
      OpenAD_Symbol_508 = (OpenAD_Symbol_38 * 5.0D-01)
      OpenAD_Symbol_509 = (OpenAD_Symbol_38 * 5.0D-01 *
     >  OpenAD_Symbol_475)
      OpenAD_Symbol_510 = (OpenAD_Symbol_8 * OpenAD_Symbol_1)
      OpenAD_Symbol_511 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      OpenAD_Symbol_512 = (OpenAD_Symbol_93 * OpenAD_Symbol_491)
      OpenAD_Symbol_513 = (OpenAD_Symbol_91 * OpenAD_Symbol_491)
      OpenAD_Symbol_514 = (OpenAD_Symbol_87 * OpenAD_Symbol_492)
      OpenAD_Symbol_515 = (OpenAD_Symbol_494 * OpenAD_Symbol_491 +
     >  OpenAD_Symbol_495 * OpenAD_Symbol_492)
      OpenAD_Symbol_516 = (OpenAD_Symbol_85 * OpenAD_Symbol_492)
      OpenAD_Symbol_517 = (OpenAD_Symbol_493 * OpenAD_Symbol_476)
      OpenAD_Symbol_518 = (OpenAD_Symbol_512 * OpenAD_Symbol_476)
      OpenAD_Symbol_519 = (OpenAD_Symbol_513 * OpenAD_Symbol_476)
      OpenAD_Symbol_520 = (OpenAD_Symbol_514 * OpenAD_Symbol_476)
      OpenAD_Symbol_521 = (OpenAD_Symbol_516 * OpenAD_Symbol_476)
      OpenAD_Symbol_522 = (OpenAD_Symbol_81 * OpenAD_Symbol_493)
      OpenAD_Symbol_523 = (OpenAD_Symbol_515 + OpenAD_Symbol_496 *
     >  OpenAD_Symbol_493)
      OpenAD_Symbol_524 = (OpenAD_Symbol_79 * OpenAD_Symbol_493)
      OpenAD_Symbol_525 = (OpenAD_Symbol_81 * OpenAD_Symbol_517)
      OpenAD_Symbol_526 = (OpenAD_Symbol_98 * OpenAD_Symbol_116 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_100 * OpenAD_Symbol_116 +
     >  OpenAD_Symbol_515 * OpenAD_Symbol_476 + OpenAD_Symbol_496 *
     >  OpenAD_Symbol_517)
      OpenAD_Symbol_527 = (OpenAD_Symbol_79 * OpenAD_Symbol_517)
      OpenAD_Symbol_528 = (OpenAD_Symbol_27 * OpenAD_Symbol_488)
      OpenAD_Symbol_529 = (OpenAD_Symbol_528 * OpenAD_Symbol_526)
      OpenAD_Symbol_530 = (OpenAD_Symbol_28 * OpenAD_Symbol_488 *
     >  OpenAD_Symbol_526)
      OpenAD_Symbol_531 = (OpenAD_Symbol_28 * OpenAD_Symbol_488 *
     >  OpenAD_Symbol_494)
      OpenAD_Symbol_532 = (OpenAD_Symbol_28 * OpenAD_Symbol_488 *
     >  OpenAD_Symbol_495)
      OpenAD_Symbol_533 = (OpenAD_Symbol_28 * OpenAD_Symbol_488 *
     >  OpenAD_Symbol_496)
      OpenAD_Symbol_534 = (OpenAD_Symbol_28 * OpenAD_Symbol_488 *
     >  OpenAD_Symbol_523)
      OpenAD_Symbol_535 = (OpenAD_Symbol_528 * OpenAD_Symbol_494)
      OpenAD_Symbol_536 = (OpenAD_Symbol_528 * OpenAD_Symbol_495)
      OpenAD_Symbol_537 = (OpenAD_Symbol_528 * OpenAD_Symbol_496)
      OpenAD_Symbol_538 = (OpenAD_Symbol_528 * OpenAD_Symbol_523)
      OpenAD_Symbol_539 = (OpenAD_Symbol_13 * OpenAD_Symbol_15)
      OpenAD_Symbol_540 = (OpenAD_Symbol_13 * OpenAD_Symbol_17)
      OpenAD_Symbol_541 = (OpenAD_Symbol_13 * OpenAD_Symbol_19)
      OpenAD_Symbol_542 = (OpenAD_Symbol_499 * OpenAD_Symbol_539)
      OpenAD_Symbol_543 = (OpenAD_Symbol_510 * OpenAD_Symbol_539)
      OpenAD_Symbol_544 = (OpenAD_Symbol_511 * OpenAD_Symbol_539)
      OpenAD_Symbol_545 = (OpenAD_Symbol_499 * OpenAD_Symbol_540)
      OpenAD_Symbol_546 = (OpenAD_Symbol_510 * OpenAD_Symbol_540)
      OpenAD_Symbol_547 = (OpenAD_Symbol_511 * OpenAD_Symbol_540)
      OpenAD_Symbol_548 = (OpenAD_Symbol_499 * OpenAD_Symbol_541)
      OpenAD_Symbol_549 = (OpenAD_Symbol_510 * OpenAD_Symbol_541)
      OpenAD_Symbol_550 = (OpenAD_Symbol_511 * OpenAD_Symbol_541)
      CALL sax(OpenAD_Symbol_499, __deriv__(NRM3), __deriv__(NSIZE))
      CALL saxpy(OpenAD_Symbol_510, __deriv__(NRM2), __deriv__(NSIZE))
      CALL saxpy(OpenAD_Symbol_511, __deriv__(NRM1), __deriv__(NSIZE))
      CALL sax(OpenAD_Symbol_542, __deriv__(NRM3), __deriv__(NXHAT))
      CALL saxpy(OpenAD_Symbol_543, __deriv__(NRM2), __deriv__(NXHAT))
      CALL saxpy(OpenAD_Symbol_544, __deriv__(NRM1), __deriv__(NXHAT))
      CALL saxpy(OpenAD_Symbol_14, __deriv__(NRM1), __deriv__(NXHAT))
      CALL sax(OpenAD_Symbol_545, __deriv__(NRM3), __deriv__(NYHAT))
      CALL saxpy(OpenAD_Symbol_546, __deriv__(NRM2), __deriv__(NYHAT))
      CALL saxpy(OpenAD_Symbol_547, __deriv__(NRM1), __deriv__(NYHAT))
      CALL saxpy(OpenAD_Symbol_16, __deriv__(NRM2), __deriv__(NYHAT))
      CALL sax(OpenAD_Symbol_548, __deriv__(NRM3), __deriv__(NZHAT))
      CALL saxpy(OpenAD_Symbol_549, __deriv__(NRM2), __deriv__(NZHAT))
      CALL saxpy(OpenAD_Symbol_550, __deriv__(NRM1), __deriv__(NZHAT))
      CALL saxpy(OpenAD_Symbol_18, __deriv__(NRM3), __deriv__(NZHAT))
      CALL sax(OpenAD_Symbol_498, __deriv__(PRIML5), __deriv__(THETAL))
      CALL saxpy(OpenAD_Symbol_505, __deriv__(PRIML4), __deriv__(THETAL
     > ))
      CALL saxpy(OpenAD_Symbol_508, __deriv__(PRIML3), __deriv__(THETAL
     > ))
      CALL sax(OpenAD_Symbol_497, __deriv__(PRIMR5), __deriv__(THETAR))
      CALL saxpy(OpenAD_Symbol_500, __deriv__(PRIMR4), __deriv__(THETAR
     > ))
      CALL saxpy(OpenAD_Symbol_503, __deriv__(PRIMR3), __deriv__(THETAR
     > ))
      CALL sax(OpenAD_Symbol_81, __deriv__(PRIMR3), __deriv__(UAVE))
      CALL saxpy(OpenAD_Symbol_79, __deriv__(PRIML3), __deriv__(UAVE))
      CALL saxpy(OpenAD_Symbol_533, __deriv__(PRIML2), __deriv__(UAVE))
      CALL saxpy(OpenAD_Symbol_537, __deriv__(PRIMR2), __deriv__(UAVE))
      CALL sax(OpenAD_Symbol_87, __deriv__(PRIMR4), __deriv__(VAVE))
      CALL saxpy(OpenAD_Symbol_85, __deriv__(PRIML4), __deriv__(VAVE))
      CALL saxpy(OpenAD_Symbol_532, __deriv__(PRIML2), __deriv__(VAVE))
      CALL saxpy(OpenAD_Symbol_536, __deriv__(PRIMR2), __deriv__(VAVE))
      CALL sax(OpenAD_Symbol_93, __deriv__(PRIMR5), __deriv__(WAVE))
      CALL saxpy(OpenAD_Symbol_91, __deriv__(PRIML5), __deriv__(WAVE))
      CALL saxpy(OpenAD_Symbol_531, __deriv__(PRIML2), __deriv__(WAVE))
      CALL saxpy(OpenAD_Symbol_535, __deriv__(PRIMR2), __deriv__(WAVE))
      CALL sax(OpenAD_Symbol_512, __deriv__(PRIMR5), __deriv__(THTAVE))
      CALL saxpy(OpenAD_Symbol_513, __deriv__(PRIML5), __deriv__(THTAVE
     > ))
      CALL saxpy(OpenAD_Symbol_514, __deriv__(PRIMR4), __deriv__(THTAVE
     > ))
      CALL saxpy(OpenAD_Symbol_516, __deriv__(PRIML4), __deriv__(THTAVE
     > ))
      CALL saxpy(OpenAD_Symbol_522, __deriv__(PRIMR3), __deriv__(THTAVE
     > ))
      CALL saxpy(OpenAD_Symbol_524, __deriv__(PRIML3), __deriv__(THTAVE
     > ))
      CALL saxpy(OpenAD_Symbol_534, __deriv__(PRIML2), __deriv__(THTAVE
     > ))
      CALL saxpy(OpenAD_Symbol_538, __deriv__(PRIMR2), __deriv__(THTAVE
     > ))
      CALL sax(OpenAD_Symbol_479, __deriv__(PRIMR1), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_481, __deriv__(PRIML1), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_482, __deriv__(PRIMR2), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_483, __deriv__(PRIML2), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_485, __deriv__(GAMMA), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_487, __deriv__(GAMMA), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_489, __deriv__(GM1INV), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_490, __deriv__(GM1INV), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_501, __deriv__(PRIMR5), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_502, __deriv__(PRIMR4), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_504, __deriv__(PRIMR3), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_506, __deriv__(PRIML5), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_507, __deriv__(PRIML4), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_509, __deriv__(PRIML3), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_518, __deriv__(PRIMR5), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_519, __deriv__(PRIML5), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_520, __deriv__(PRIMR4), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_521, __deriv__(PRIML4), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_525, __deriv__(PRIMR3), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_527, __deriv__(PRIML3), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_529, __deriv__(PRIMR2), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_530, __deriv__(PRIML2), __deriv__(CAVE))
      CALL saxpy(OpenAD_Symbol_115, __deriv__(GM1), __deriv__(CAVE))
      OpenAD_Symbol_120 = SIN(__value__(CAVE))
      OpenAD_Symbol_119 = COS(__value__(CAVE))
      __value__(CAVE) = OpenAD_Symbol_120
      __value__(UHAT) = (__value__(NXHAT) * __value__(UAVE) + __value__
     > (NYHAT) * __value__(VAVE) + __value__(NZHAT) * __value__(WAVE))
      OpenAD_Symbol_125 = __value__(UAVE)
      OpenAD_Symbol_126 = __value__(NXHAT)
      OpenAD_Symbol_123 = 1_w2f__i8
      OpenAD_Symbol_127 = __value__(VAVE)
      OpenAD_Symbol_128 = __value__(NYHAT)
      OpenAD_Symbol_124 = 1_w2f__i8
      OpenAD_Symbol_121 = 1_w2f__i8
      OpenAD_Symbol_129 = __value__(WAVE)
      OpenAD_Symbol_130 = __value__(NZHAT)
      OpenAD_Symbol_122 = 1_w2f__i8
      __value__(UTILDE) = (__value__(NYHAT) * __value__(WAVE) -
     >  __value__(NZHAT) * __value__(VAVE))
      OpenAD_Symbol_133 = __value__(WAVE)
      OpenAD_Symbol_134 = __value__(NYHAT)
      OpenAD_Symbol_131 = 1_w2f__i8
      OpenAD_Symbol_135 = __value__(VAVE)
      OpenAD_Symbol_136 = __value__(NZHAT)
      OpenAD_Symbol_132 = (-1_w2f__i8)
      __value__(VTILDE) = (__value__(NZHAT) * __value__(UAVE) -
     >  __value__(NXHAT) * __value__(WAVE))
      OpenAD_Symbol_139 = __value__(UAVE)
      OpenAD_Symbol_140 = __value__(NZHAT)
      OpenAD_Symbol_137 = 1_w2f__i8
      OpenAD_Symbol_141 = __value__(WAVE)
      OpenAD_Symbol_142 = __value__(NXHAT)
      OpenAD_Symbol_138 = (-1_w2f__i8)
      __value__(WTILDE) = (__value__(NXHAT) * __value__(VAVE) -
     >  __value__(NYHAT) * __value__(UAVE))
      OpenAD_Symbol_145 = __value__(VAVE)
      OpenAD_Symbol_146 = __value__(NXHAT)
      OpenAD_Symbol_143 = 1_w2f__i8
      OpenAD_Symbol_147 = __value__(UAVE)
      OpenAD_Symbol_148 = __value__(NYHAT)
      OpenAD_Symbol_144 = (-1_w2f__i8)
      __value__(LAMCM) = (__value__(UHAT) - __value__(CAVE))
      OpenAD_Symbol_149 = 1_w2f__i8
      OpenAD_Symbol_150 = (-1_w2f__i8)
      __value__(LAMU) = __value__(UHAT)
      __value__(LAMCP) = (__value__(CAVE) + __value__(UHAT))
      OpenAD_Symbol_151 = 1_w2f__i8
      OpenAD_Symbol_152 = 1_w2f__i8
      __value__(ALAMCM) = __value__(LAMCM)
      __value__(ALAMCP) = __value__(LAMCP)
      __value__(ALAMU) = __value__(LAMU)
      OpenAD_Symbol_551 = (OpenAD_Symbol_119 * INT((-1_w2f__i8)))
      OpenAD_Symbol_552 = (OpenAD_Symbol_136 * INT((-1_w2f__i8)))
      OpenAD_Symbol_553 = (OpenAD_Symbol_135 * INT((-1_w2f__i8)))
      OpenAD_Symbol_554 = (OpenAD_Symbol_141 * INT((-1_w2f__i8)))
      OpenAD_Symbol_555 = (OpenAD_Symbol_142 * INT((-1_w2f__i8)))
      OpenAD_Symbol_556 = (OpenAD_Symbol_148 * INT((-1_w2f__i8)))
      OpenAD_Symbol_557 = (OpenAD_Symbol_147 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_Symbol_558), __deriv__(CAVE))
      CALL sax(OpenAD_Symbol_119, __deriv__(OpenAD_Symbol_558),
     >  __deriv__(CAVE))
      CALL sax(OpenAD_Symbol_133, __deriv__(NYHAT), __deriv__(UTILDE))
      CALL saxpy(OpenAD_Symbol_134, __deriv__(WAVE), __deriv__(UTILDE))
      CALL saxpy(OpenAD_Symbol_552, __deriv__(VAVE), __deriv__(UTILDE))
      CALL saxpy(OpenAD_Symbol_553, __deriv__(NZHAT), __deriv__(UTILDE)
     > )
      CALL sax(OpenAD_Symbol_140, __deriv__(UAVE), __deriv__(VTILDE))
      CALL saxpy(OpenAD_Symbol_139, __deriv__(NZHAT), __deriv__(VTILDE)
     > )
      CALL saxpy(OpenAD_Symbol_554, __deriv__(NXHAT), __deriv__(VTILDE)
     > )
      CALL saxpy(OpenAD_Symbol_555, __deriv__(WAVE), __deriv__(VTILDE))
      CALL sax(OpenAD_Symbol_145, __deriv__(NXHAT), __deriv__(WTILDE))
      CALL saxpy(OpenAD_Symbol_146, __deriv__(VAVE), __deriv__(WTILDE))
      CALL saxpy(OpenAD_Symbol_556, __deriv__(UAVE), __deriv__(WTILDE))
      CALL saxpy(OpenAD_Symbol_557, __deriv__(NYHAT), __deriv__(WTILDE)
     > )
      CALL sax(OpenAD_Symbol_129, __deriv__(NZHAT), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_130, __deriv__(WAVE), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(NXHAT), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_126, __deriv__(UAVE), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(NYHAT), __deriv__(UHAT))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(VAVE), __deriv__(UHAT))
      CALL sax(OpenAD_Symbol_551, __deriv__(OpenAD_Symbol_558),
     >  __deriv__(LAMCM))
      CALL saxpy(OpenAD_Symbol_129, __deriv__(NZHAT), __deriv__(LAMCM))
      CALL saxpy(OpenAD_Symbol_130, __deriv__(WAVE), __deriv__(LAMCM))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(NXHAT), __deriv__(LAMCM))
      CALL saxpy(OpenAD_Symbol_126, __deriv__(UAVE), __deriv__(LAMCM))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(NYHAT), __deriv__(LAMCM))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(VAVE), __deriv__(LAMCM))
      CALL sax(OpenAD_Symbol_129, __deriv__(NZHAT), __deriv__(LAMU))
      CALL saxpy(OpenAD_Symbol_130, __deriv__(WAVE), __deriv__(LAMU))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(NXHAT), __deriv__(LAMU))
      CALL saxpy(OpenAD_Symbol_126, __deriv__(UAVE), __deriv__(LAMU))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(NYHAT), __deriv__(LAMU))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(VAVE), __deriv__(LAMU))
      CALL sax(OpenAD_Symbol_119, __deriv__(OpenAD_Symbol_558),
     >  __deriv__(LAMCP))
      CALL saxpy(OpenAD_Symbol_129, __deriv__(NZHAT), __deriv__(LAMCP))
      CALL saxpy(OpenAD_Symbol_130, __deriv__(WAVE), __deriv__(LAMCP))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(NXHAT), __deriv__(LAMCP))
      CALL saxpy(OpenAD_Symbol_126, __deriv__(UAVE), __deriv__(LAMCP))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(NYHAT), __deriv__(LAMCP))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(VAVE), __deriv__(LAMCP))
      CALL sax(OpenAD_Symbol_551, __deriv__(OpenAD_Symbol_558),
     >  __deriv__(ALAMCM))
      CALL saxpy(OpenAD_Symbol_129, __deriv__(NZHAT), __deriv__(ALAMCM)
     > )
      CALL saxpy(OpenAD_Symbol_130, __deriv__(WAVE), __deriv__(ALAMCM))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(NXHAT), __deriv__(ALAMCM)
     > )
      CALL saxpy(OpenAD_Symbol_126, __deriv__(UAVE), __deriv__(ALAMCM))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(NYHAT), __deriv__(ALAMCM)
     > )
      CALL saxpy(OpenAD_Symbol_128, __deriv__(VAVE), __deriv__(ALAMCM))
      CALL sax(OpenAD_Symbol_119, __deriv__(OpenAD_Symbol_558),
     >  __deriv__(ALAMCP))
      CALL saxpy(OpenAD_Symbol_129, __deriv__(NZHAT), __deriv__(ALAMCP)
     > )
      CALL saxpy(OpenAD_Symbol_130, __deriv__(WAVE), __deriv__(ALAMCP))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(NXHAT), __deriv__(ALAMCP)
     > )
      CALL saxpy(OpenAD_Symbol_126, __deriv__(UAVE), __deriv__(ALAMCP))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(NYHAT), __deriv__(ALAMCP)
     > )
      CALL saxpy(OpenAD_Symbol_128, __deriv__(VAVE), __deriv__(ALAMCP))
      CALL sax(OpenAD_Symbol_129, __deriv__(NZHAT), __deriv__(ALAMU))
      CALL saxpy(OpenAD_Symbol_130, __deriv__(WAVE), __deriv__(ALAMU))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(NXHAT), __deriv__(ALAMU))
      CALL saxpy(OpenAD_Symbol_126, __deriv__(UAVE), __deriv__(ALAMU))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(NYHAT), __deriv__(ALAMU))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(VAVE), __deriv__(ALAMU))
      OpenAD_Symbol_153 = (__value__(LAMCM) - __value__(ALAMCM))
      __value__(ALAMCM) = (OpenAD_Symbol_153 * 5.0D-01)
      OpenAD_Symbol_156 = 1_w2f__i8
      OpenAD_Symbol_157 = (-1_w2f__i8)
      OpenAD_Symbol_154 = 5.0D-01
      OpenAD_Symbol_158 = (__value__(LAMCP) - __value__(ALAMCP))
      __value__(ALAMCP) = (OpenAD_Symbol_158 * 5.0D-01)
      OpenAD_Symbol_161 = 1_w2f__i8
      OpenAD_Symbol_162 = (-1_w2f__i8)
      OpenAD_Symbol_159 = 5.0D-01
      OpenAD_Symbol_163 = (__value__(LAMU) - __value__(ALAMU))
      __value__(ALAMU) = (OpenAD_Symbol_163 * 5.0D-01)
      OpenAD_Symbol_166 = 1_w2f__i8
      OpenAD_Symbol_167 = (-1_w2f__i8)
      OpenAD_Symbol_164 = 5.0D-01
      __value__(EL) = (__value__(PRIML1) * __value__(GM1INV) +
     >  __value__(PRIML2) * __value__(THETAL))
      OpenAD_Symbol_170 = __value__(GM1INV)
      OpenAD_Symbol_171 = __value__(PRIML1)
      OpenAD_Symbol_168 = 1_w2f__i8
      OpenAD_Symbol_172 = __value__(THETAL)
      OpenAD_Symbol_173 = __value__(PRIML2)
      OpenAD_Symbol_169 = 1_w2f__i8
      __value__(RUL) = (__value__(PRIML2) * __value__(PRIML3))
      OpenAD_Symbol_174 = __value__(PRIML3)
      OpenAD_Symbol_175 = __value__(PRIML2)
      __value__(RVL) = (__value__(PRIML2) * __value__(PRIML4))
      OpenAD_Symbol_176 = __value__(PRIML4)
      OpenAD_Symbol_177 = __value__(PRIML2)
      __value__(RWL) = (__value__(PRIML2) * __value__(PRIML5))
      OpenAD_Symbol_178 = __value__(PRIML5)
      OpenAD_Symbol_179 = __value__(PRIML2)
      __value__(ER) = (__value__(PRIMR1) * __value__(GM1INV) +
     >  __value__(PRIMR2) * __value__(THETAR))
      OpenAD_Symbol_182 = __value__(GM1INV)
      OpenAD_Symbol_183 = __value__(PRIMR1)
      OpenAD_Symbol_180 = 1_w2f__i8
      OpenAD_Symbol_184 = __value__(THETAR)
      OpenAD_Symbol_185 = __value__(PRIMR2)
      OpenAD_Symbol_181 = 1_w2f__i8
      __value__(RUR) = (__value__(PRIMR2) * __value__(PRIMR3))
      OpenAD_Symbol_186 = __value__(PRIMR3)
      OpenAD_Symbol_187 = __value__(PRIMR2)
      __value__(RVR) = (__value__(PRIMR2) * __value__(PRIMR4))
      OpenAD_Symbol_188 = __value__(PRIMR4)
      OpenAD_Symbol_189 = __value__(PRIMR2)
      __value__(RWR) = (__value__(PRIMR2) * __value__(PRIMR5))
      OpenAD_Symbol_190 = __value__(PRIMR5)
      OpenAD_Symbol_191 = __value__(PRIMR2)
      __value__(DE) = (__value__(ER) - __value__(EL))
      OpenAD_Symbol_192 = 1_w2f__i8
      OpenAD_Symbol_193 = (-1_w2f__i8)
      __value__(DR) = (__value__(PRIMR2) - __value__(PRIML2))
      OpenAD_Symbol_194 = 1_w2f__i8
      OpenAD_Symbol_195 = (-1_w2f__i8)
      __value__(DRU) = (__value__(RUR) - __value__(RUL))
      OpenAD_Symbol_196 = 1_w2f__i8
      OpenAD_Symbol_197 = (-1_w2f__i8)
      __value__(DRV) = (__value__(RVR) - __value__(RVL))
      OpenAD_Symbol_198 = 1_w2f__i8
      OpenAD_Symbol_199 = (-1_w2f__i8)
      __value__(DRW) = (__value__(RWR) - __value__(RWL))
      OpenAD_Symbol_200 = 1_w2f__i8
      OpenAD_Symbol_201 = (-1_w2f__i8)
      __value__(UDDRU) = (__value__(DRU) * __value__(UAVE) + __value__(
     > DRV) * __value__(VAVE) + __value__(DRW) * __value__(WAVE))
      OpenAD_Symbol_206 = __value__(UAVE)
      OpenAD_Symbol_207 = __value__(DRU)
      OpenAD_Symbol_204 = 1_w2f__i8
      OpenAD_Symbol_208 = __value__(VAVE)
      OpenAD_Symbol_209 = __value__(DRV)
      OpenAD_Symbol_205 = 1_w2f__i8
      OpenAD_Symbol_202 = 1_w2f__i8
      OpenAD_Symbol_210 = __value__(WAVE)
      OpenAD_Symbol_211 = __value__(DRW)
      OpenAD_Symbol_203 = 1_w2f__i8
      OpenAD_Symbol_212 = (__value__(GM1) / __value__(CAVE))
      OpenAD_Symbol_213 = (__value__(DE) + __value__(DR) * __value__(
     > THTAVE) - __value__(UDDRU))
      __value__(OMEGA) = (OpenAD_Symbol_212 * OpenAD_Symbol_213)
      OpenAD_Symbol_216 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_Symbol_217 = (-(__value__(GM1) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_Symbol_214 = OpenAD_Symbol_213
      OpenAD_Symbol_220 = 1_w2f__i8
      OpenAD_Symbol_222 = __value__(THTAVE)
      OpenAD_Symbol_223 = __value__(DR)
      OpenAD_Symbol_221 = 1_w2f__i8
      OpenAD_Symbol_218 = 1_w2f__i8
      OpenAD_Symbol_219 = (-1_w2f__i8)
      OpenAD_Symbol_215 = OpenAD_Symbol_212
      __value__(NDDRU) = (__value__(DRU) * __value__(NXHAT) + __value__
     > (DRV) * __value__(NYHAT) + __value__(DRW) * __value__(NZHAT))
      OpenAD_Symbol_228 = __value__(NXHAT)
      OpenAD_Symbol_229 = __value__(DRU)
      OpenAD_Symbol_226 = 1_w2f__i8
      OpenAD_Symbol_230 = __value__(NYHAT)
      OpenAD_Symbol_231 = __value__(DRV)
      OpenAD_Symbol_227 = 1_w2f__i8
      OpenAD_Symbol_224 = 1_w2f__i8
      OpenAD_Symbol_232 = __value__(NZHAT)
      OpenAD_Symbol_233 = __value__(DRW)
      OpenAD_Symbol_225 = 1_w2f__i8
      OpenAD_Symbol_234 = (__value__(OMEGA) + __value__(DR) * __value__
     > (UHAT) - __value__(NDDRU))
      __value__(ALP1) = (OpenAD_Symbol_234 * 5.0D-01)
      OpenAD_Symbol_239 = 1_w2f__i8
      OpenAD_Symbol_241 = __value__(UHAT)
      OpenAD_Symbol_242 = __value__(DR)
      OpenAD_Symbol_240 = 1_w2f__i8
      OpenAD_Symbol_237 = 1_w2f__i8
      OpenAD_Symbol_238 = (-1_w2f__i8)
      OpenAD_Symbol_235 = 5.0D-01
      OpenAD_Symbol_251 = (__value__(CAVE) * __value__(NXHAT) -
     >  __value__(UTILDE))
      OpenAD_Symbol_258 = (- __value__(NXHAT))
      __value__(ALP2) = (__value__(DRW) * __value__(NYHAT) + __value__(
     > DR) * OpenAD_Symbol_251 + __value__(OMEGA) * OpenAD_Symbol_258 -
     >  __value__(DRV) * __value__(NZHAT))
      OpenAD_Symbol_245 = __value__(NYHAT)
      OpenAD_Symbol_246 = __value__(DRW)
      OpenAD_Symbol_243 = 1_w2f__i8
      OpenAD_Symbol_252 = OpenAD_Symbol_251
      OpenAD_Symbol_256 = __value__(NXHAT)
      OpenAD_Symbol_257 = __value__(CAVE)
      OpenAD_Symbol_254 = 1_w2f__i8
      OpenAD_Symbol_255 = (-1_w2f__i8)
      OpenAD_Symbol_253 = __value__(DR)
      OpenAD_Symbol_249 = 1_w2f__i8
      OpenAD_Symbol_259 = OpenAD_Symbol_258
      OpenAD_Symbol_261 = (-1_w2f__i8)
      OpenAD_Symbol_260 = __value__(OMEGA)
      OpenAD_Symbol_250 = 1_w2f__i8
      OpenAD_Symbol_247 = 1_w2f__i8
      OpenAD_Symbol_262 = __value__(NZHAT)
      OpenAD_Symbol_263 = __value__(DRV)
      OpenAD_Symbol_248 = (-1_w2f__i8)
      OpenAD_Symbol_244 = 1_w2f__i8
      OpenAD_Symbol_272 = (__value__(CAVE) * __value__(NYHAT) -
     >  __value__(VTILDE))
      OpenAD_Symbol_279 = (- __value__(NYHAT))
      __value__(ALP3) = (__value__(DRU) * __value__(NZHAT) + __value__(
     > DR) * OpenAD_Symbol_272 + __value__(OMEGA) * OpenAD_Symbol_279 -
     >  __value__(DRW) * __value__(NXHAT))
      OpenAD_Symbol_266 = __value__(NZHAT)
      OpenAD_Symbol_267 = __value__(DRU)
      OpenAD_Symbol_264 = 1_w2f__i8
      OpenAD_Symbol_273 = OpenAD_Symbol_272
      OpenAD_Symbol_277 = __value__(NYHAT)
      OpenAD_Symbol_278 = __value__(CAVE)
      OpenAD_Symbol_275 = 1_w2f__i8
      OpenAD_Symbol_276 = (-1_w2f__i8)
      OpenAD_Symbol_274 = __value__(DR)
      OpenAD_Symbol_270 = 1_w2f__i8
      OpenAD_Symbol_280 = OpenAD_Symbol_279
      OpenAD_Symbol_282 = (-1_w2f__i8)
      OpenAD_Symbol_281 = __value__(OMEGA)
      OpenAD_Symbol_271 = 1_w2f__i8
      OpenAD_Symbol_268 = 1_w2f__i8
      OpenAD_Symbol_283 = __value__(NXHAT)
      OpenAD_Symbol_284 = __value__(DRW)
      OpenAD_Symbol_269 = (-1_w2f__i8)
      OpenAD_Symbol_265 = 1_w2f__i8
      OpenAD_Symbol_293 = (__value__(CAVE) * __value__(NZHAT) -
     >  __value__(WTILDE))
      OpenAD_Symbol_300 = (- __value__(NZHAT))
      __value__(ALP4) = (__value__(DRV) * __value__(NXHAT) + __value__(
     > DR) * OpenAD_Symbol_293 + __value__(OMEGA) * OpenAD_Symbol_300 -
     >  __value__(DRU) * __value__(NYHAT))
      OpenAD_Symbol_287 = __value__(NXHAT)
      OpenAD_Symbol_288 = __value__(DRV)
      OpenAD_Symbol_285 = 1_w2f__i8
      OpenAD_Symbol_294 = OpenAD_Symbol_293
      OpenAD_Symbol_298 = __value__(NZHAT)
      OpenAD_Symbol_299 = __value__(CAVE)
      OpenAD_Symbol_296 = 1_w2f__i8
      OpenAD_Symbol_297 = (-1_w2f__i8)
      OpenAD_Symbol_295 = __value__(DR)
      OpenAD_Symbol_291 = 1_w2f__i8
      OpenAD_Symbol_301 = OpenAD_Symbol_300
      OpenAD_Symbol_303 = (-1_w2f__i8)
      OpenAD_Symbol_302 = __value__(OMEGA)
      OpenAD_Symbol_292 = 1_w2f__i8
      OpenAD_Symbol_289 = 1_w2f__i8
      OpenAD_Symbol_304 = __value__(NYHAT)
      OpenAD_Symbol_305 = __value__(DRU)
      OpenAD_Symbol_290 = (-1_w2f__i8)
      OpenAD_Symbol_286 = 1_w2f__i8
      OpenAD_Symbol_306 = (__value__(NDDRU) + __value__(OMEGA) -
     >  __value__(DR) * __value__(UHAT))
      __value__(ALP5) = (OpenAD_Symbol_306 * 5.0D-01)
      OpenAD_Symbol_309 = 1_w2f__i8
      OpenAD_Symbol_311 = 1_w2f__i8
      OpenAD_Symbol_313 = __value__(UHAT)
      OpenAD_Symbol_314 = __value__(DR)
      OpenAD_Symbol_312 = (-1_w2f__i8)
      OpenAD_Symbol_310 = 1_w2f__i8
      OpenAD_Symbol_307 = 5.0D-01
      OpenAD_Symbol_559 = (INT((-1_w2f__i8)) * OpenAD_Symbol_215)
      OpenAD_Symbol_560 = (INT((-1_w2f__i8)) * OpenAD_Symbol_295)
      OpenAD_Symbol_561 = (INT((-1_w2f__i8)) * OpenAD_Symbol_274)
      OpenAD_Symbol_562 = (INT((-1_w2f__i8)) * OpenAD_Symbol_253)
      OpenAD_Symbol_563 = (INT((-1_w2f__i8)) * OpenAD_Symbol_215)
      OpenAD_Symbol_564 = (OpenAD_Symbol_313 *(-5.0D-01))
      OpenAD_Symbol_565 = (OpenAD_Symbol_314 *(-5.0D-01))
      OpenAD_Symbol_566 = (OpenAD_Symbol_304 * INT((-1_w2f__i8)))
      OpenAD_Symbol_567 = (OpenAD_Symbol_305 * INT((-1_w2f__i8)))
      OpenAD_Symbol_568 = (INT((-1_w2f__i8)) * OpenAD_Symbol_302 +
     >  OpenAD_Symbol_299 * OpenAD_Symbol_295)
      OpenAD_Symbol_569 = (OpenAD_Symbol_283 * INT((-1_w2f__i8)))
      OpenAD_Symbol_570 = (OpenAD_Symbol_284 * INT((-1_w2f__i8)))
      OpenAD_Symbol_571 = (INT((-1_w2f__i8)) * OpenAD_Symbol_281 +
     >  OpenAD_Symbol_278 * OpenAD_Symbol_274)
      OpenAD_Symbol_572 = (OpenAD_Symbol_262 * INT((-1_w2f__i8)))
      OpenAD_Symbol_573 = (OpenAD_Symbol_263 * INT((-1_w2f__i8)))
      OpenAD_Symbol_574 = (INT((-1_w2f__i8)) * OpenAD_Symbol_260 +
     >  OpenAD_Symbol_257 * OpenAD_Symbol_253)
      OpenAD_Symbol_575 = (OpenAD_Symbol_241 * 5.0D-01)
      OpenAD_Symbol_576 = (OpenAD_Symbol_242 * 5.0D-01)
      OpenAD_Symbol_577 = (OpenAD_Symbol_222 * OpenAD_Symbol_215)
      OpenAD_Symbol_578 = (OpenAD_Symbol_223 * OpenAD_Symbol_215)
      OpenAD_Symbol_579 = (OpenAD_Symbol_216 * OpenAD_Symbol_214)
      OpenAD_Symbol_580 = (OpenAD_Symbol_217 * OpenAD_Symbol_214)
      OpenAD_Symbol_581 = (OpenAD_Symbol_210 * OpenAD_Symbol_559)
      OpenAD_Symbol_582 = (OpenAD_Symbol_211 * OpenAD_Symbol_559)
      OpenAD_Symbol_583 = (OpenAD_Symbol_208 * OpenAD_Symbol_559)
      OpenAD_Symbol_584 = (OpenAD_Symbol_209 * OpenAD_Symbol_559)
      OpenAD_Symbol_585 = (OpenAD_Symbol_206 * OpenAD_Symbol_559)
      OpenAD_Symbol_586 = (OpenAD_Symbol_207 * OpenAD_Symbol_559)
      OpenAD_Symbol_587 = (OpenAD_Symbol_184 * OpenAD_Symbol_215)
      OpenAD_Symbol_588 = (OpenAD_Symbol_185 * OpenAD_Symbol_215)
      OpenAD_Symbol_589 = (OpenAD_Symbol_182 * OpenAD_Symbol_215)
      OpenAD_Symbol_590 = (OpenAD_Symbol_183 * OpenAD_Symbol_215)
      OpenAD_Symbol_591 = (OpenAD_Symbol_178 * INT((-1_w2f__i8)))
      OpenAD_Symbol_592 = (OpenAD_Symbol_179 * INT((-1_w2f__i8)))
      OpenAD_Symbol_593 = (OpenAD_Symbol_176 * INT((-1_w2f__i8)))
      OpenAD_Symbol_594 = (OpenAD_Symbol_177 * INT((-1_w2f__i8)))
      OpenAD_Symbol_595 = (OpenAD_Symbol_174 * INT((-1_w2f__i8)))
      OpenAD_Symbol_596 = (OpenAD_Symbol_175 * INT((-1_w2f__i8)))
      OpenAD_Symbol_597 = (OpenAD_Symbol_172 * OpenAD_Symbol_563)
      OpenAD_Symbol_598 = (OpenAD_Symbol_173 * OpenAD_Symbol_563)
      OpenAD_Symbol_599 = (OpenAD_Symbol_170 * OpenAD_Symbol_563)
      OpenAD_Symbol_600 = (OpenAD_Symbol_171 * OpenAD_Symbol_563)
      OpenAD_Symbol_601 = (OpenAD_Symbol_232 * 5.0D-01)
      OpenAD_Symbol_602 = (OpenAD_Symbol_233 * 5.0D-01)
      OpenAD_Symbol_603 = (OpenAD_Symbol_230 * 5.0D-01)
      OpenAD_Symbol_604 = (OpenAD_Symbol_231 * 5.0D-01)
      OpenAD_Symbol_605 = (OpenAD_Symbol_228 * 5.0D-01)
      OpenAD_Symbol_606 = (OpenAD_Symbol_229 * 5.0D-01)
      OpenAD_Symbol_607 = (OpenAD_Symbol_232 *(-5.0D-01))
      OpenAD_Symbol_608 = (OpenAD_Symbol_233 *(-5.0D-01))
      OpenAD_Symbol_609 = (OpenAD_Symbol_230 *(-5.0D-01))
      OpenAD_Symbol_610 = (OpenAD_Symbol_231 *(-5.0D-01))
      OpenAD_Symbol_611 = (OpenAD_Symbol_228 *(-5.0D-01))
      OpenAD_Symbol_612 = (OpenAD_Symbol_229 *(-5.0D-01))
      OpenAD_Symbol_613 = (INT((-1_w2f__i8)) * OpenAD_Symbol_577)
      OpenAD_Symbol_614 = (OpenAD_Symbol_190 * OpenAD_Symbol_581)
      OpenAD_Symbol_615 = (OpenAD_Symbol_191 * OpenAD_Symbol_581)
      OpenAD_Symbol_616 = (OpenAD_Symbol_591 * OpenAD_Symbol_581)
      OpenAD_Symbol_617 = (OpenAD_Symbol_592 * OpenAD_Symbol_581)
      OpenAD_Symbol_618 = (OpenAD_Symbol_188 * OpenAD_Symbol_583)
      OpenAD_Symbol_619 = (OpenAD_Symbol_189 * OpenAD_Symbol_583)
      OpenAD_Symbol_620 = (OpenAD_Symbol_593 * OpenAD_Symbol_583)
      OpenAD_Symbol_621 = (OpenAD_Symbol_594 * OpenAD_Symbol_583)
      OpenAD_Symbol_622 = (OpenAD_Symbol_186 * OpenAD_Symbol_585)
      OpenAD_Symbol_623 = (OpenAD_Symbol_187 * OpenAD_Symbol_585)
      OpenAD_Symbol_624 = (OpenAD_Symbol_595 * OpenAD_Symbol_585)
      OpenAD_Symbol_625 = (OpenAD_Symbol_596 * OpenAD_Symbol_585)
      OpenAD_Symbol_626 = (OpenAD_Symbol_578 * 5.0D-01)
      OpenAD_Symbol_627 = (OpenAD_Symbol_579 * 5.0D-01)
      OpenAD_Symbol_628 = (OpenAD_Symbol_580 * 5.0D-01)
      OpenAD_Symbol_629 = (OpenAD_Symbol_582 * 5.0D-01)
      OpenAD_Symbol_630 = (OpenAD_Symbol_584 * 5.0D-01)
      OpenAD_Symbol_631 = (OpenAD_Symbol_586 * 5.0D-01)
      OpenAD_Symbol_632 = (OpenAD_Symbol_587 * 5.0D-01)
      OpenAD_Symbol_633 = (OpenAD_Symbol_588 * 5.0D-01)
      OpenAD_Symbol_634 = (OpenAD_Symbol_589 * 5.0D-01)
      OpenAD_Symbol_635 = (OpenAD_Symbol_590 * 5.0D-01)
      OpenAD_Symbol_636 = (OpenAD_Symbol_597 * 5.0D-01)
      OpenAD_Symbol_637 = (OpenAD_Symbol_598 * 5.0D-01)
      OpenAD_Symbol_638 = (OpenAD_Symbol_599 * 5.0D-01)
      OpenAD_Symbol_639 = (OpenAD_Symbol_600 * 5.0D-01)
      OpenAD_Symbol_640 = (OpenAD_Symbol_564 + OpenAD_Symbol_577 *
     >  5.0D-01)
      OpenAD_Symbol_641 = (INT((-1_w2f__i8)) * OpenAD_Symbol_564 +
     >  OpenAD_Symbol_613 * 5.0D-01)
      OpenAD_Symbol_642 = (OpenAD_Symbol_190 * OpenAD_Symbol_601 +
     >  OpenAD_Symbol_614 * 5.0D-01)
      OpenAD_Symbol_643 = (OpenAD_Symbol_191 * OpenAD_Symbol_601 +
     >  OpenAD_Symbol_615 * 5.0D-01)
      OpenAD_Symbol_644 = (OpenAD_Symbol_591 * OpenAD_Symbol_601 +
     >  OpenAD_Symbol_616 * 5.0D-01)
      OpenAD_Symbol_645 = (OpenAD_Symbol_592 * OpenAD_Symbol_601 +
     >  OpenAD_Symbol_617 * 5.0D-01)
      OpenAD_Symbol_646 = (OpenAD_Symbol_188 * OpenAD_Symbol_603 +
     >  OpenAD_Symbol_618 * 5.0D-01)
      OpenAD_Symbol_647 = (OpenAD_Symbol_189 * OpenAD_Symbol_603 +
     >  OpenAD_Symbol_619 * 5.0D-01)
      OpenAD_Symbol_648 = (OpenAD_Symbol_593 * OpenAD_Symbol_603 +
     >  OpenAD_Symbol_620 * 5.0D-01)
      OpenAD_Symbol_649 = (OpenAD_Symbol_594 * OpenAD_Symbol_603 +
     >  OpenAD_Symbol_621 * 5.0D-01)
      OpenAD_Symbol_650 = (OpenAD_Symbol_186 * OpenAD_Symbol_605 +
     >  OpenAD_Symbol_622 * 5.0D-01)
      OpenAD_Symbol_651 = (OpenAD_Symbol_187 * OpenAD_Symbol_605 +
     >  OpenAD_Symbol_623 * 5.0D-01)
      OpenAD_Symbol_652 = (OpenAD_Symbol_595 * OpenAD_Symbol_605 +
     >  OpenAD_Symbol_624 * 5.0D-01)
      OpenAD_Symbol_653 = (OpenAD_Symbol_596 * OpenAD_Symbol_605 +
     >  OpenAD_Symbol_625 * 5.0D-01)
      OpenAD_Symbol_654 = (OpenAD_Symbol_578 * OpenAD_Symbol_301)
      OpenAD_Symbol_655 = (OpenAD_Symbol_579 * OpenAD_Symbol_301)
      OpenAD_Symbol_656 = (OpenAD_Symbol_298 * OpenAD_Symbol_295 +
     >  OpenAD_Symbol_580 * OpenAD_Symbol_301)
      OpenAD_Symbol_657 = (OpenAD_Symbol_582 * OpenAD_Symbol_301)
      OpenAD_Symbol_658 = (OpenAD_Symbol_584 * OpenAD_Symbol_301)
      OpenAD_Symbol_659 = (OpenAD_Symbol_586 * OpenAD_Symbol_301)
      OpenAD_Symbol_660 = (OpenAD_Symbol_587 * OpenAD_Symbol_301)
      OpenAD_Symbol_661 = (OpenAD_Symbol_588 * OpenAD_Symbol_301)
      OpenAD_Symbol_662 = (OpenAD_Symbol_589 * OpenAD_Symbol_301)
      OpenAD_Symbol_663 = (OpenAD_Symbol_590 * OpenAD_Symbol_301)
      OpenAD_Symbol_664 = (OpenAD_Symbol_597 * OpenAD_Symbol_301)
      OpenAD_Symbol_665 = (OpenAD_Symbol_598 * OpenAD_Symbol_301)
      OpenAD_Symbol_666 = (OpenAD_Symbol_599 * OpenAD_Symbol_301)
      OpenAD_Symbol_667 = (OpenAD_Symbol_600 * OpenAD_Symbol_301)
      OpenAD_Symbol_668 = (OpenAD_Symbol_294 + OpenAD_Symbol_577 *
     >  OpenAD_Symbol_301)
      OpenAD_Symbol_669 = (INT((-1_w2f__i8)) * OpenAD_Symbol_294 +
     >  OpenAD_Symbol_613 * OpenAD_Symbol_301)
      OpenAD_Symbol_670 = (OpenAD_Symbol_614 * OpenAD_Symbol_301)
      OpenAD_Symbol_671 = (OpenAD_Symbol_615 * OpenAD_Symbol_301)
      OpenAD_Symbol_672 = (OpenAD_Symbol_616 * OpenAD_Symbol_301)
      OpenAD_Symbol_673 = (OpenAD_Symbol_617 * OpenAD_Symbol_301)
      OpenAD_Symbol_674 = (OpenAD_Symbol_188 * OpenAD_Symbol_287 +
     >  OpenAD_Symbol_618 * OpenAD_Symbol_301)
      OpenAD_Symbol_675 = (OpenAD_Symbol_189 * OpenAD_Symbol_287 +
     >  OpenAD_Symbol_619 * OpenAD_Symbol_301)
      OpenAD_Symbol_676 = (OpenAD_Symbol_593 * OpenAD_Symbol_287 +
     >  OpenAD_Symbol_620 * OpenAD_Symbol_301)
      OpenAD_Symbol_677 = (OpenAD_Symbol_594 * OpenAD_Symbol_287 +
     >  OpenAD_Symbol_621 * OpenAD_Symbol_301)
      OpenAD_Symbol_678 = (OpenAD_Symbol_186 * OpenAD_Symbol_566 +
     >  OpenAD_Symbol_622 * OpenAD_Symbol_301)
      OpenAD_Symbol_679 = (OpenAD_Symbol_187 * OpenAD_Symbol_566 +
     >  OpenAD_Symbol_623 * OpenAD_Symbol_301)
      OpenAD_Symbol_680 = (OpenAD_Symbol_595 * OpenAD_Symbol_566 +
     >  OpenAD_Symbol_624 * OpenAD_Symbol_301)
      OpenAD_Symbol_681 = (OpenAD_Symbol_596 * OpenAD_Symbol_566 +
     >  OpenAD_Symbol_625 * OpenAD_Symbol_301)
      OpenAD_Symbol_682 = (OpenAD_Symbol_578 * OpenAD_Symbol_280)
      OpenAD_Symbol_683 = (OpenAD_Symbol_579 * OpenAD_Symbol_280)
      OpenAD_Symbol_684 = (OpenAD_Symbol_277 * OpenAD_Symbol_274 +
     >  OpenAD_Symbol_580 * OpenAD_Symbol_280)
      OpenAD_Symbol_685 = (OpenAD_Symbol_582 * OpenAD_Symbol_280)
      OpenAD_Symbol_686 = (OpenAD_Symbol_584 * OpenAD_Symbol_280)
      OpenAD_Symbol_687 = (OpenAD_Symbol_586 * OpenAD_Symbol_280)
      OpenAD_Symbol_688 = (OpenAD_Symbol_587 * OpenAD_Symbol_280)
      OpenAD_Symbol_689 = (OpenAD_Symbol_588 * OpenAD_Symbol_280)
      OpenAD_Symbol_690 = (OpenAD_Symbol_589 * OpenAD_Symbol_280)
      OpenAD_Symbol_691 = (OpenAD_Symbol_590 * OpenAD_Symbol_280)
      OpenAD_Symbol_692 = (OpenAD_Symbol_597 * OpenAD_Symbol_280)
      OpenAD_Symbol_693 = (OpenAD_Symbol_598 * OpenAD_Symbol_280)
      OpenAD_Symbol_694 = (OpenAD_Symbol_599 * OpenAD_Symbol_280)
      OpenAD_Symbol_695 = (OpenAD_Symbol_600 * OpenAD_Symbol_280)
      OpenAD_Symbol_696 = (OpenAD_Symbol_273 + OpenAD_Symbol_577 *
     >  OpenAD_Symbol_280)
      OpenAD_Symbol_697 = (INT((-1_w2f__i8)) * OpenAD_Symbol_273 +
     >  OpenAD_Symbol_613 * OpenAD_Symbol_280)
      OpenAD_Symbol_698 = (OpenAD_Symbol_190 * OpenAD_Symbol_569 +
     >  OpenAD_Symbol_614 * OpenAD_Symbol_280)
      OpenAD_Symbol_699 = (OpenAD_Symbol_191 * OpenAD_Symbol_569 +
     >  OpenAD_Symbol_615 * OpenAD_Symbol_280)
      OpenAD_Symbol_700 = (OpenAD_Symbol_591 * OpenAD_Symbol_569 +
     >  OpenAD_Symbol_616 * OpenAD_Symbol_280)
      OpenAD_Symbol_701 = (OpenAD_Symbol_592 * OpenAD_Symbol_569 +
     >  OpenAD_Symbol_617 * OpenAD_Symbol_280)
      OpenAD_Symbol_702 = (OpenAD_Symbol_618 * OpenAD_Symbol_280)
      OpenAD_Symbol_703 = (OpenAD_Symbol_619 * OpenAD_Symbol_280)
      OpenAD_Symbol_704 = (OpenAD_Symbol_620 * OpenAD_Symbol_280)
      OpenAD_Symbol_705 = (OpenAD_Symbol_621 * OpenAD_Symbol_280)
      OpenAD_Symbol_706 = (OpenAD_Symbol_186 * OpenAD_Symbol_266 +
     >  OpenAD_Symbol_622 * OpenAD_Symbol_280)
      OpenAD_Symbol_707 = (OpenAD_Symbol_187 * OpenAD_Symbol_266 +
     >  OpenAD_Symbol_623 * OpenAD_Symbol_280)
      OpenAD_Symbol_708 = (OpenAD_Symbol_595 * OpenAD_Symbol_266 +
     >  OpenAD_Symbol_624 * OpenAD_Symbol_280)
      OpenAD_Symbol_709 = (OpenAD_Symbol_596 * OpenAD_Symbol_266 +
     >  OpenAD_Symbol_625 * OpenAD_Symbol_280)
      OpenAD_Symbol_710 = (OpenAD_Symbol_578 * OpenAD_Symbol_259)
      OpenAD_Symbol_711 = (OpenAD_Symbol_579 * OpenAD_Symbol_259)
      OpenAD_Symbol_712 = (OpenAD_Symbol_256 * OpenAD_Symbol_253 +
     >  OpenAD_Symbol_580 * OpenAD_Symbol_259)
      OpenAD_Symbol_713 = (OpenAD_Symbol_582 * OpenAD_Symbol_259)
      OpenAD_Symbol_714 = (OpenAD_Symbol_584 * OpenAD_Symbol_259)
      OpenAD_Symbol_715 = (OpenAD_Symbol_586 * OpenAD_Symbol_259)
      OpenAD_Symbol_716 = (OpenAD_Symbol_587 * OpenAD_Symbol_259)
      OpenAD_Symbol_717 = (OpenAD_Symbol_588 * OpenAD_Symbol_259)
      OpenAD_Symbol_718 = (OpenAD_Symbol_589 * OpenAD_Symbol_259)
      OpenAD_Symbol_719 = (OpenAD_Symbol_590 * OpenAD_Symbol_259)
      OpenAD_Symbol_720 = (OpenAD_Symbol_597 * OpenAD_Symbol_259)
      OpenAD_Symbol_721 = (OpenAD_Symbol_598 * OpenAD_Symbol_259)
      OpenAD_Symbol_722 = (OpenAD_Symbol_599 * OpenAD_Symbol_259)
      OpenAD_Symbol_723 = (OpenAD_Symbol_600 * OpenAD_Symbol_259)
      OpenAD_Symbol_724 = (OpenAD_Symbol_252 + OpenAD_Symbol_577 *
     >  OpenAD_Symbol_259)
      OpenAD_Symbol_725 = (INT((-1_w2f__i8)) * OpenAD_Symbol_252 +
     >  OpenAD_Symbol_613 * OpenAD_Symbol_259)
      OpenAD_Symbol_726 = (OpenAD_Symbol_190 * OpenAD_Symbol_245 +
     >  OpenAD_Symbol_614 * OpenAD_Symbol_259)
      OpenAD_Symbol_727 = (OpenAD_Symbol_191 * OpenAD_Symbol_245 +
     >  OpenAD_Symbol_615 * OpenAD_Symbol_259)
      OpenAD_Symbol_728 = (OpenAD_Symbol_591 * OpenAD_Symbol_245 +
     >  OpenAD_Symbol_616 * OpenAD_Symbol_259)
      OpenAD_Symbol_729 = (OpenAD_Symbol_592 * OpenAD_Symbol_245 +
     >  OpenAD_Symbol_617 * OpenAD_Symbol_259)
      OpenAD_Symbol_730 = (OpenAD_Symbol_188 * OpenAD_Symbol_572 +
     >  OpenAD_Symbol_618 * OpenAD_Symbol_259)
      OpenAD_Symbol_731 = (OpenAD_Symbol_189 * OpenAD_Symbol_572 +
     >  OpenAD_Symbol_619 * OpenAD_Symbol_259)
      OpenAD_Symbol_732 = (OpenAD_Symbol_593 * OpenAD_Symbol_572 +
     >  OpenAD_Symbol_620 * OpenAD_Symbol_259)
      OpenAD_Symbol_733 = (OpenAD_Symbol_594 * OpenAD_Symbol_572 +
     >  OpenAD_Symbol_621 * OpenAD_Symbol_259)
      OpenAD_Symbol_734 = (OpenAD_Symbol_622 * OpenAD_Symbol_259)
      OpenAD_Symbol_735 = (OpenAD_Symbol_623 * OpenAD_Symbol_259)
      OpenAD_Symbol_736 = (OpenAD_Symbol_624 * OpenAD_Symbol_259)
      OpenAD_Symbol_737 = (OpenAD_Symbol_625 * OpenAD_Symbol_259)
      OpenAD_Symbol_738 = (OpenAD_Symbol_578 * 5.0D-01)
      OpenAD_Symbol_739 = (OpenAD_Symbol_579 * 5.0D-01)
      OpenAD_Symbol_740 = (OpenAD_Symbol_580 * 5.0D-01)
      OpenAD_Symbol_741 = (OpenAD_Symbol_582 * 5.0D-01)
      OpenAD_Symbol_742 = (OpenAD_Symbol_584 * 5.0D-01)
      OpenAD_Symbol_743 = (OpenAD_Symbol_586 * 5.0D-01)
      OpenAD_Symbol_744 = (OpenAD_Symbol_587 * 5.0D-01)
      OpenAD_Symbol_745 = (OpenAD_Symbol_588 * 5.0D-01)
      OpenAD_Symbol_746 = (OpenAD_Symbol_589 * 5.0D-01)
      OpenAD_Symbol_747 = (OpenAD_Symbol_590 * 5.0D-01)
      OpenAD_Symbol_748 = (OpenAD_Symbol_597 * 5.0D-01)
      OpenAD_Symbol_749 = (OpenAD_Symbol_598 * 5.0D-01)
      OpenAD_Symbol_750 = (OpenAD_Symbol_599 * 5.0D-01)
      OpenAD_Symbol_751 = (OpenAD_Symbol_600 * 5.0D-01)
      OpenAD_Symbol_752 = (OpenAD_Symbol_575 + OpenAD_Symbol_577 *
     >  5.0D-01)
      OpenAD_Symbol_753 = (INT((-1_w2f__i8)) * OpenAD_Symbol_575 +
     >  OpenAD_Symbol_613 * 5.0D-01)
      OpenAD_Symbol_754 = (OpenAD_Symbol_190 * OpenAD_Symbol_607 +
     >  OpenAD_Symbol_614 * 5.0D-01)
      OpenAD_Symbol_755 = (OpenAD_Symbol_191 * OpenAD_Symbol_607 +
     >  OpenAD_Symbol_615 * 5.0D-01)
      OpenAD_Symbol_756 = (OpenAD_Symbol_591 * OpenAD_Symbol_607 +
     >  OpenAD_Symbol_616 * 5.0D-01)
      OpenAD_Symbol_757 = (OpenAD_Symbol_592 * OpenAD_Symbol_607 +
     >  OpenAD_Symbol_617 * 5.0D-01)
      OpenAD_Symbol_758 = (OpenAD_Symbol_188 * OpenAD_Symbol_609 +
     >  OpenAD_Symbol_618 * 5.0D-01)
      OpenAD_Symbol_759 = (OpenAD_Symbol_189 * OpenAD_Symbol_609 +
     >  OpenAD_Symbol_619 * 5.0D-01)
      OpenAD_Symbol_760 = (OpenAD_Symbol_593 * OpenAD_Symbol_609 +
     >  OpenAD_Symbol_620 * 5.0D-01)
      OpenAD_Symbol_761 = (OpenAD_Symbol_594 * OpenAD_Symbol_609 +
     >  OpenAD_Symbol_621 * 5.0D-01)
      OpenAD_Symbol_762 = (OpenAD_Symbol_186 * OpenAD_Symbol_611 +
     >  OpenAD_Symbol_622 * 5.0D-01)
      OpenAD_Symbol_763 = (OpenAD_Symbol_187 * OpenAD_Symbol_611 +
     >  OpenAD_Symbol_623 * 5.0D-01)
      OpenAD_Symbol_764 = (OpenAD_Symbol_595 * OpenAD_Symbol_611 +
     >  OpenAD_Symbol_624 * 5.0D-01)
      OpenAD_Symbol_765 = (OpenAD_Symbol_596 * OpenAD_Symbol_611 +
     >  OpenAD_Symbol_625 * 5.0D-01)
      CALL setderiv(__deriv__(OpenAD_Symbol_766), __deriv__(ALAMCM))
      CALL setderiv(__deriv__(OpenAD_Symbol_767), __deriv__(ALAMCP))
      CALL setderiv(__deriv__(OpenAD_Symbol_768), __deriv__(ALAMU))
      CALL sax(OpenAD_Symbol_174, __deriv__(PRIML2), __deriv__(RUL))
      CALL saxpy(OpenAD_Symbol_175, __deriv__(PRIML3), __deriv__(RUL))
      CALL sax(OpenAD_Symbol_176, __deriv__(PRIML2), __deriv__(RVL))
      CALL saxpy(OpenAD_Symbol_177, __deriv__(PRIML4), __deriv__(RVL))
      CALL sax(OpenAD_Symbol_178, __deriv__(PRIML2), __deriv__(RWL))
      CALL saxpy(OpenAD_Symbol_179, __deriv__(PRIML5), __deriv__(RWL))
      CALL sax(5.0D-01, __deriv__(LAMCM), __deriv__(ALAMCM))
      CALL saxpy(-5.0D-01, __deriv__(OpenAD_Symbol_766), __deriv__(
     > ALAMCM))
      CALL sax(5.0D-01, __deriv__(LAMCP), __deriv__(ALAMCP))
      CALL saxpy(-5.0D-01, __deriv__(OpenAD_Symbol_767), __deriv__(
     > ALAMCP))
      CALL sax(5.0D-01, __deriv__(LAMU), __deriv__(ALAMU))
      CALL saxpy(-5.0D-01, __deriv__(OpenAD_Symbol_768), __deriv__(
     > ALAMU))
      CALL sax(OpenAD_Symbol_172, __deriv__(PRIML2), __deriv__(EL))
      CALL saxpy(OpenAD_Symbol_173, __deriv__(THETAL), __deriv__(EL))
      CALL saxpy(OpenAD_Symbol_170, __deriv__(PRIML1), __deriv__(EL))
      CALL saxpy(OpenAD_Symbol_171, __deriv__(GM1INV), __deriv__(EL))
      CALL sax(OpenAD_Symbol_576, __deriv__(UHAT), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_608, __deriv__(NZHAT), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_610, __deriv__(NYHAT), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_612, __deriv__(NXHAT), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_738, __deriv__(THTAVE), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_739, __deriv__(GM1), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_740, __deriv__(CAVE), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_741, __deriv__(WAVE), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_742, __deriv__(VAVE), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_743, __deriv__(UAVE), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_744, __deriv__(PRIMR2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_745, __deriv__(THETAR), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_746, __deriv__(PRIMR1), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_747, __deriv__(GM1INV), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_748, __deriv__(PRIML2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_749, __deriv__(THETAL), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_750, __deriv__(PRIML1), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_751, __deriv__(GM1INV), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_752, __deriv__(PRIMR2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_753, __deriv__(PRIML2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_754, __deriv__(PRIMR2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_755, __deriv__(PRIMR5), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_756, __deriv__(PRIML2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_757, __deriv__(PRIML5), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_758, __deriv__(PRIMR2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_759, __deriv__(PRIMR4), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_760, __deriv__(PRIML2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_761, __deriv__(PRIML4), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_762, __deriv__(PRIMR2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_763, __deriv__(PRIMR3), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_764, __deriv__(PRIML2), __deriv__(ALP1))
      CALL saxpy(OpenAD_Symbol_765, __deriv__(PRIML3), __deriv__(ALP1))
      CALL sax(OpenAD_Symbol_565, __deriv__(UHAT), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_602, __deriv__(NZHAT), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_604, __deriv__(NYHAT), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_606, __deriv__(NXHAT), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_626, __deriv__(THTAVE), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_627, __deriv__(GM1), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_628, __deriv__(CAVE), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_629, __deriv__(WAVE), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_630, __deriv__(VAVE), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_631, __deriv__(UAVE), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_632, __deriv__(PRIMR2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_633, __deriv__(THETAR), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_634, __deriv__(PRIMR1), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_635, __deriv__(GM1INV), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_636, __deriv__(PRIML2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_637, __deriv__(THETAL), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_638, __deriv__(PRIML1), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_639, __deriv__(GM1INV), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_640, __deriv__(PRIMR2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_641, __deriv__(PRIML2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_642, __deriv__(PRIMR2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_643, __deriv__(PRIMR5), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_644, __deriv__(PRIML2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_645, __deriv__(PRIML5), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_646, __deriv__(PRIMR2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_647, __deriv__(PRIMR4), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_648, __deriv__(PRIML2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_649, __deriv__(PRIML4), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_650, __deriv__(PRIMR2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_651, __deriv__(PRIMR3), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_652, __deriv__(PRIML2), __deriv__(ALP5))
      CALL saxpy(OpenAD_Symbol_653, __deriv__(PRIML3), __deriv__(ALP5))
      CALL sax(OpenAD_Symbol_562, __deriv__(UTILDE), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_573, __deriv__(NZHAT), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_574, __deriv__(NXHAT), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_246, __deriv__(NYHAT), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_710, __deriv__(THTAVE), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_711, __deriv__(GM1), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_712, __deriv__(CAVE), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_713, __deriv__(WAVE), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_714, __deriv__(VAVE), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_715, __deriv__(UAVE), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_716, __deriv__(PRIMR2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_717, __deriv__(THETAR), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_718, __deriv__(PRIMR1), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_719, __deriv__(GM1INV), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_720, __deriv__(PRIML2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_721, __deriv__(THETAL), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_722, __deriv__(PRIML1), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_723, __deriv__(GM1INV), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_724, __deriv__(PRIMR2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_725, __deriv__(PRIML2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_726, __deriv__(PRIMR2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_727, __deriv__(PRIMR5), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_728, __deriv__(PRIML2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_729, __deriv__(PRIML5), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_730, __deriv__(PRIMR2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_731, __deriv__(PRIMR4), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_732, __deriv__(PRIML2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_733, __deriv__(PRIML4), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_734, __deriv__(PRIMR2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_735, __deriv__(PRIMR3), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_736, __deriv__(PRIML2), __deriv__(ALP2))
      CALL saxpy(OpenAD_Symbol_737, __deriv__(PRIML3), __deriv__(ALP2))
      CALL sax(OpenAD_Symbol_561, __deriv__(VTILDE), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_570, __deriv__(NXHAT), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_571, __deriv__(NYHAT), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_267, __deriv__(NZHAT), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_682, __deriv__(THTAVE), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_683, __deriv__(GM1), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_684, __deriv__(CAVE), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_685, __deriv__(WAVE), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_686, __deriv__(VAVE), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_687, __deriv__(UAVE), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_688, __deriv__(PRIMR2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_689, __deriv__(THETAR), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_690, __deriv__(PRIMR1), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_691, __deriv__(GM1INV), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_692, __deriv__(PRIML2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_693, __deriv__(THETAL), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_694, __deriv__(PRIML1), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_695, __deriv__(GM1INV), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_696, __deriv__(PRIMR2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_697, __deriv__(PRIML2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_698, __deriv__(PRIMR2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_699, __deriv__(PRIMR5), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_700, __deriv__(PRIML2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_701, __deriv__(PRIML5), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_702, __deriv__(PRIMR2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_703, __deriv__(PRIMR4), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_704, __deriv__(PRIML2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_705, __deriv__(PRIML4), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_706, __deriv__(PRIMR2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_707, __deriv__(PRIMR3), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_708, __deriv__(PRIML2), __deriv__(ALP3))
      CALL saxpy(OpenAD_Symbol_709, __deriv__(PRIML3), __deriv__(ALP3))
      CALL sax(OpenAD_Symbol_560, __deriv__(WTILDE), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_567, __deriv__(NYHAT), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_568, __deriv__(NZHAT), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_288, __deriv__(NXHAT), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_654, __deriv__(THTAVE), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_655, __deriv__(GM1), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_656, __deriv__(CAVE), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_657, __deriv__(WAVE), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_658, __deriv__(VAVE), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_659, __deriv__(UAVE), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_660, __deriv__(PRIMR2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_661, __deriv__(THETAR), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_662, __deriv__(PRIMR1), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_663, __deriv__(GM1INV), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_664, __deriv__(PRIML2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_665, __deriv__(THETAL), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_666, __deriv__(PRIML1), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_667, __deriv__(GM1INV), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_668, __deriv__(PRIMR2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_669, __deriv__(PRIML2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_670, __deriv__(PRIMR2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_671, __deriv__(PRIMR5), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_672, __deriv__(PRIML2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_673, __deriv__(PRIML5), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_674, __deriv__(PRIMR2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_675, __deriv__(PRIMR4), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_676, __deriv__(PRIML2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_677, __deriv__(PRIML4), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_678, __deriv__(PRIMR2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_679, __deriv__(PRIMR3), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_680, __deriv__(PRIML2), __deriv__(ALP4))
      CALL saxpy(OpenAD_Symbol_681, __deriv__(PRIML3), __deriv__(ALP4))
      OpenAD_Symbol_317 = (__value__(ALAMCM) * __value__(ALP1))
      OpenAD_Symbol_315 = __value__(ALP1)
      OpenAD_Symbol_316 = __value__(ALAMCM)
      __value__(ALP1) = OpenAD_Symbol_317
      OpenAD_Symbol_320 = (__value__(ALAMU) * __value__(ALP2))
      OpenAD_Symbol_318 = __value__(ALP2)
      OpenAD_Symbol_319 = __value__(ALAMU)
      __value__(ALP2) = OpenAD_Symbol_320
      OpenAD_Symbol_323 = (__value__(ALAMU) * __value__(ALP3))
      OpenAD_Symbol_321 = __value__(ALP3)
      OpenAD_Symbol_322 = __value__(ALAMU)
      __value__(ALP3) = OpenAD_Symbol_323
      OpenAD_Symbol_326 = (__value__(ALAMU) * __value__(ALP4))
      OpenAD_Symbol_324 = __value__(ALP4)
      OpenAD_Symbol_325 = __value__(ALAMU)
      __value__(ALP4) = OpenAD_Symbol_326
      OpenAD_Symbol_329 = (__value__(ALAMCP) * __value__(ALP5))
      OpenAD_Symbol_327 = __value__(ALP5)
      OpenAD_Symbol_328 = __value__(ALAMCP)
      __value__(ALP5) = OpenAD_Symbol_329
      __value__(ALP15P) = (__value__(ALP1) + __value__(ALP5))
      OpenAD_Symbol_330 = 1_w2f__i8
      OpenAD_Symbol_331 = 1_w2f__i8
      __value__(ALP15M) = (__value__(ALP1) - __value__(ALP5))
      OpenAD_Symbol_332 = 1_w2f__i8
      OpenAD_Symbol_333 = (-1_w2f__i8)
      __value__(MU) = ((__value__(ALP15P) / __value__(CAVE)) +
     >  __value__(ALP2) * __value__(NXHAT) + __value__(ALP3) *
     >  __value__(NYHAT) + __value__(ALP4) * __value__(NZHAT))
      OpenAD_Symbol_340 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_Symbol_341 = (-(__value__(ALP15P) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_Symbol_338 = 1_w2f__i8
      OpenAD_Symbol_342 = __value__(NXHAT)
      OpenAD_Symbol_343 = __value__(ALP2)
      OpenAD_Symbol_339 = 1_w2f__i8
      OpenAD_Symbol_336 = 1_w2f__i8
      OpenAD_Symbol_344 = __value__(NYHAT)
      OpenAD_Symbol_345 = __value__(ALP3)
      OpenAD_Symbol_337 = 1_w2f__i8
      OpenAD_Symbol_334 = 1_w2f__i8
      OpenAD_Symbol_346 = __value__(NZHAT)
      OpenAD_Symbol_347 = __value__(ALP4)
      OpenAD_Symbol_335 = 1_w2f__i8
      OpenAD_Symbol_360 = (__value__(GM1INV) * __value__(CAVE))
      __value__(DSS1) = (__value__(MU) * __value__(THTAVE) + __value__(
     > ALP15P) * OpenAD_Symbol_360 - __value__(ALP15M) * __value__(UHAT
     > ) + __value__(ALP2) * __value__(UTILDE) + __value__(ALP3) *
     >  __value__(VTILDE) + __value__(ALP4) * __value__(WTILDE))
      OpenAD_Symbol_356 = __value__(THTAVE)
      OpenAD_Symbol_357 = __value__(MU)
      OpenAD_Symbol_354 = 1_w2f__i8
      OpenAD_Symbol_361 = OpenAD_Symbol_360
      OpenAD_Symbol_363 = __value__(CAVE)
      OpenAD_Symbol_364 = __value__(GM1INV)
      OpenAD_Symbol_362 = __value__(ALP15P)
      OpenAD_Symbol_358 = 1_w2f__i8
      OpenAD_Symbol_365 = __value__(UHAT)
      OpenAD_Symbol_366 = __value__(ALP15M)
      OpenAD_Symbol_359 = (-1_w2f__i8)
      OpenAD_Symbol_355 = 1_w2f__i8
      OpenAD_Symbol_352 = 1_w2f__i8
      OpenAD_Symbol_367 = __value__(UTILDE)
      OpenAD_Symbol_368 = __value__(ALP2)
      OpenAD_Symbol_353 = 1_w2f__i8
      OpenAD_Symbol_350 = 1_w2f__i8
      OpenAD_Symbol_369 = __value__(VTILDE)
      OpenAD_Symbol_370 = __value__(ALP3)
      OpenAD_Symbol_351 = 1_w2f__i8
      OpenAD_Symbol_348 = 1_w2f__i8
      OpenAD_Symbol_371 = __value__(WTILDE)
      OpenAD_Symbol_372 = __value__(ALP4)
      OpenAD_Symbol_349 = 1_w2f__i8
      __value__(DSS2) = __value__(MU)
      __value__(DSS3) = (__value__(ALP3) * __value__(NZHAT) + __value__
     > (MU) * __value__(UAVE) - __value__(ALP15M) * __value__(NXHAT) -
     >  __value__(ALP4) * __value__(NYHAT))
      OpenAD_Symbol_377 = __value__(NZHAT)
      OpenAD_Symbol_378 = __value__(ALP3)
      OpenAD_Symbol_375 = 1_w2f__i8
      OpenAD_Symbol_381 = __value__(UAVE)
      OpenAD_Symbol_382 = __value__(MU)
      OpenAD_Symbol_379 = 1_w2f__i8
      OpenAD_Symbol_383 = __value__(NXHAT)
      OpenAD_Symbol_384 = __value__(ALP15M)
      OpenAD_Symbol_380 = (-1_w2f__i8)
      OpenAD_Symbol_376 = 1_w2f__i8
      OpenAD_Symbol_373 = 1_w2f__i8
      OpenAD_Symbol_385 = __value__(NYHAT)
      OpenAD_Symbol_386 = __value__(ALP4)
      OpenAD_Symbol_374 = (-1_w2f__i8)
      __value__(DSS4) = (__value__(ALP4) * __value__(NXHAT) + __value__
     > (MU) * __value__(VAVE) - __value__(ALP15M) * __value__(NYHAT) -
     >  __value__(ALP2) * __value__(NZHAT))
      OpenAD_Symbol_391 = __value__(NXHAT)
      OpenAD_Symbol_392 = __value__(ALP4)
      OpenAD_Symbol_389 = 1_w2f__i8
      OpenAD_Symbol_395 = __value__(VAVE)
      OpenAD_Symbol_396 = __value__(MU)
      OpenAD_Symbol_393 = 1_w2f__i8
      OpenAD_Symbol_397 = __value__(NYHAT)
      OpenAD_Symbol_398 = __value__(ALP15M)
      OpenAD_Symbol_394 = (-1_w2f__i8)
      OpenAD_Symbol_390 = 1_w2f__i8
      OpenAD_Symbol_387 = 1_w2f__i8
      OpenAD_Symbol_399 = __value__(NZHAT)
      OpenAD_Symbol_400 = __value__(ALP2)
      OpenAD_Symbol_388 = (-1_w2f__i8)
      __value__(DSS5) = (__value__(ALP2) * __value__(NYHAT) + __value__
     > (MU) * __value__(WAVE) - __value__(ALP15M) * __value__(NZHAT) -
     >  __value__(ALP3) * __value__(NXHAT))
      OpenAD_Symbol_405 = __value__(NYHAT)
      OpenAD_Symbol_406 = __value__(ALP2)
      OpenAD_Symbol_403 = 1_w2f__i8
      OpenAD_Symbol_409 = __value__(WAVE)
      OpenAD_Symbol_410 = __value__(MU)
      OpenAD_Symbol_407 = 1_w2f__i8
      OpenAD_Symbol_411 = __value__(NZHAT)
      OpenAD_Symbol_412 = __value__(ALP15M)
      OpenAD_Symbol_408 = (-1_w2f__i8)
      OpenAD_Symbol_404 = 1_w2f__i8
      OpenAD_Symbol_401 = 1_w2f__i8
      OpenAD_Symbol_413 = __value__(NXHAT)
      OpenAD_Symbol_414 = __value__(ALP3)
      OpenAD_Symbol_402 = (-1_w2f__i8)
      __value__(UHATL) = (__value__(PRIML3) * __value__(NXHAT) +
     >  __value__(PRIML4) * __value__(NYHAT) + __value__(PRIML5) *
     >  __value__(NZHAT))
      OpenAD_Symbol_419 = __value__(NXHAT)
      OpenAD_Symbol_420 = __value__(PRIML3)
      OpenAD_Symbol_417 = 1_w2f__i8
      OpenAD_Symbol_421 = __value__(NYHAT)
      OpenAD_Symbol_422 = __value__(PRIML4)
      OpenAD_Symbol_418 = 1_w2f__i8
      OpenAD_Symbol_415 = 1_w2f__i8
      OpenAD_Symbol_423 = __value__(NZHAT)
      OpenAD_Symbol_424 = __value__(PRIML5)
      OpenAD_Symbol_416 = 1_w2f__i8
      OpenAD_Symbol_430 = (__value__(PRIML1) + __value__(EL))
      OpenAD_Symbol_425 = (__value__(DSS1) + __value__(UHATL) *
     >  OpenAD_Symbol_430)
      __value__(FLUX1) = (__value__(NSIZE) * OpenAD_Symbol_425)
      OpenAD_Symbol_426 = OpenAD_Symbol_425
      OpenAD_Symbol_428 = 1_w2f__i8
      OpenAD_Symbol_431 = OpenAD_Symbol_430
      OpenAD_Symbol_433 = 1_w2f__i8
      OpenAD_Symbol_434 = 1_w2f__i8
      OpenAD_Symbol_432 = __value__(UHATL)
      OpenAD_Symbol_429 = 1_w2f__i8
      OpenAD_Symbol_427 = __value__(NSIZE)
      OpenAD_Symbol_435 = (__value__(DSS2) + __value__(PRIML2) *
     >  __value__(UHATL))
      __value__(FLUX2) = (__value__(NSIZE) * OpenAD_Symbol_435)
      OpenAD_Symbol_436 = OpenAD_Symbol_435
      OpenAD_Symbol_438 = 1_w2f__i8
      OpenAD_Symbol_440 = __value__(UHATL)
      OpenAD_Symbol_441 = __value__(PRIML2)
      OpenAD_Symbol_439 = 1_w2f__i8
      OpenAD_Symbol_437 = __value__(NSIZE)
      OpenAD_Symbol_442 = (__value__(DSS3) + __value__(PRIML1) *
     >  __value__(NXHAT) + __value__(RUL) * __value__(UHATL))
      __value__(FLUX3) = (__value__(NSIZE) * OpenAD_Symbol_442)
      OpenAD_Symbol_443 = OpenAD_Symbol_442
      OpenAD_Symbol_445 = 1_w2f__i8
      OpenAD_Symbol_449 = __value__(NXHAT)
      OpenAD_Symbol_450 = __value__(PRIML1)
      OpenAD_Symbol_447 = 1_w2f__i8
      OpenAD_Symbol_451 = __value__(UHATL)
      OpenAD_Symbol_452 = __value__(RUL)
      OpenAD_Symbol_448 = 1_w2f__i8
      OpenAD_Symbol_446 = 1_w2f__i8
      OpenAD_Symbol_444 = __value__(NSIZE)
      OpenAD_Symbol_453 = (__value__(DSS4) + __value__(PRIML1) *
     >  __value__(NYHAT) + __value__(RVL) * __value__(UHATL))
      __value__(FLUX4) = (__value__(NSIZE) * OpenAD_Symbol_453)
      OpenAD_Symbol_454 = OpenAD_Symbol_453
      OpenAD_Symbol_456 = 1_w2f__i8
      OpenAD_Symbol_460 = __value__(NYHAT)
      OpenAD_Symbol_461 = __value__(PRIML1)
      OpenAD_Symbol_458 = 1_w2f__i8
      OpenAD_Symbol_462 = __value__(UHATL)
      OpenAD_Symbol_463 = __value__(RVL)
      OpenAD_Symbol_459 = 1_w2f__i8
      OpenAD_Symbol_457 = 1_w2f__i8
      OpenAD_Symbol_455 = __value__(NSIZE)
      OpenAD_Symbol_464 = (__value__(DSS5) + __value__(PRIML1) *
     >  __value__(NZHAT) + __value__(RWL) * __value__(UHATL))
      __value__(FLUX5) = (__value__(NSIZE) * OpenAD_Symbol_464)
      OpenAD_Symbol_465 = OpenAD_Symbol_464
      OpenAD_Symbol_467 = 1_w2f__i8
      OpenAD_Symbol_471 = __value__(NZHAT)
      OpenAD_Symbol_472 = __value__(PRIML1)
      OpenAD_Symbol_469 = 1_w2f__i8
      OpenAD_Symbol_473 = __value__(UHATL)
      OpenAD_Symbol_474 = __value__(RWL)
      OpenAD_Symbol_470 = 1_w2f__i8
      OpenAD_Symbol_468 = 1_w2f__i8
      OpenAD_Symbol_466 = __value__(NSIZE)
      OpenAD_Symbol_769 = (INT((-1_w2f__i8)) * OpenAD_Symbol_466)
      OpenAD_Symbol_770 = (INT((-1_w2f__i8)) * OpenAD_Symbol_455)
      OpenAD_Symbol_771 = (INT((-1_w2f__i8)) * OpenAD_Symbol_444)
      OpenAD_Symbol_772 = (INT((-1_w2f__i8)) * OpenAD_Symbol_466)
      OpenAD_Symbol_773 = (INT((-1_w2f__i8)) * OpenAD_Symbol_455)
      OpenAD_Symbol_774 = (INT((-1_w2f__i8)) * OpenAD_Symbol_444)
      OpenAD_Symbol_775 = (OpenAD_Symbol_409 * OpenAD_Symbol_466)
      OpenAD_Symbol_776 = (OpenAD_Symbol_410 * OpenAD_Symbol_466)
      OpenAD_Symbol_777 = (OpenAD_Symbol_395 * OpenAD_Symbol_455)
      OpenAD_Symbol_778 = (OpenAD_Symbol_396 * OpenAD_Symbol_455)
      OpenAD_Symbol_779 = (OpenAD_Symbol_381 * OpenAD_Symbol_444)
      OpenAD_Symbol_780 = (OpenAD_Symbol_382 * OpenAD_Symbol_444)
      OpenAD_Symbol_781 = (OpenAD_Symbol_356 * OpenAD_Symbol_427)
      OpenAD_Symbol_782 = (OpenAD_Symbol_357 * OpenAD_Symbol_427)
      OpenAD_Symbol_783 = (OpenAD_Symbol_473 * OpenAD_Symbol_466)
      OpenAD_Symbol_784 = (OpenAD_Symbol_474 * OpenAD_Symbol_466)
      OpenAD_Symbol_785 = (OpenAD_Symbol_462 * OpenAD_Symbol_455)
      OpenAD_Symbol_786 = (OpenAD_Symbol_463 * OpenAD_Symbol_455)
      OpenAD_Symbol_787 = (OpenAD_Symbol_451 * OpenAD_Symbol_444)
      OpenAD_Symbol_788 = (OpenAD_Symbol_452 * OpenAD_Symbol_444)
      OpenAD_Symbol_789 = (OpenAD_Symbol_440 * OpenAD_Symbol_437)
      OpenAD_Symbol_790 = (OpenAD_Symbol_441 * OpenAD_Symbol_437)
      OpenAD_Symbol_791 = (OpenAD_Symbol_431 * OpenAD_Symbol_427)
      OpenAD_Symbol_792 = (OpenAD_Symbol_432 * OpenAD_Symbol_427)
      OpenAD_Symbol_793 = (INT((-1_w2f__i8)) * OpenAD_Symbol_427)
      OpenAD_Symbol_794 = (OpenAD_Symbol_361 * OpenAD_Symbol_427)
      OpenAD_Symbol_795 = (OpenAD_Symbol_362 * OpenAD_Symbol_427)
      OpenAD_Symbol_796 = (OpenAD_Symbol_471 * OpenAD_Symbol_466)
      OpenAD_Symbol_797 = (OpenAD_Symbol_460 * OpenAD_Symbol_455)
      OpenAD_Symbol_798 = (OpenAD_Symbol_449 * OpenAD_Symbol_444)
      OpenAD_Symbol_799 = (OpenAD_Symbol_413 * OpenAD_Symbol_769)
      OpenAD_Symbol_800 = (OpenAD_Symbol_411 * OpenAD_Symbol_772)
      OpenAD_Symbol_801 = (OpenAD_Symbol_405 * OpenAD_Symbol_466)
      OpenAD_Symbol_802 = (OpenAD_Symbol_399 * OpenAD_Symbol_770)
      OpenAD_Symbol_803 = (OpenAD_Symbol_397 * OpenAD_Symbol_773)
      OpenAD_Symbol_804 = (OpenAD_Symbol_391 * OpenAD_Symbol_455)
      OpenAD_Symbol_805 = (OpenAD_Symbol_385 * OpenAD_Symbol_771)
      OpenAD_Symbol_806 = (OpenAD_Symbol_383 * OpenAD_Symbol_774)
      OpenAD_Symbol_807 = (OpenAD_Symbol_377 * OpenAD_Symbol_444)
      OpenAD_Symbol_808 = (OpenAD_Symbol_371 * OpenAD_Symbol_427)
      OpenAD_Symbol_809 = (OpenAD_Symbol_372 * OpenAD_Symbol_427)
      OpenAD_Symbol_810 = (OpenAD_Symbol_369 * OpenAD_Symbol_427)
      OpenAD_Symbol_811 = (OpenAD_Symbol_370 * OpenAD_Symbol_427)
      OpenAD_Symbol_812 = (OpenAD_Symbol_367 * OpenAD_Symbol_427)
      OpenAD_Symbol_813 = (OpenAD_Symbol_368 * OpenAD_Symbol_427)
      OpenAD_Symbol_814 = (OpenAD_Symbol_365 * OpenAD_Symbol_793)
      OpenAD_Symbol_815 = (OpenAD_Symbol_366 * OpenAD_Symbol_793)
      OpenAD_Symbol_816 = (OpenAD_Symbol_363 * OpenAD_Symbol_795)
      OpenAD_Symbol_817 = (OpenAD_Symbol_327 * INT((-1_w2f__i8)))
      OpenAD_Symbol_818 = (OpenAD_Symbol_327 * OpenAD_Symbol_340)
      OpenAD_Symbol_819 = (OpenAD_Symbol_328 * INT((-1_w2f__i8)))
      OpenAD_Symbol_820 = (OpenAD_Symbol_328 * OpenAD_Symbol_340)
      OpenAD_Symbol_821 = (OpenAD_Symbol_315 * OpenAD_Symbol_340)
      OpenAD_Symbol_822 = (OpenAD_Symbol_316 * OpenAD_Symbol_340)
      OpenAD_Symbol_823 = (OpenAD_Symbol_325 * OpenAD_Symbol_346)
      OpenAD_Symbol_824 = (OpenAD_Symbol_322 * OpenAD_Symbol_344)
      OpenAD_Symbol_825 = (OpenAD_Symbol_324 * OpenAD_Symbol_346 +
     >  OpenAD_Symbol_321 * OpenAD_Symbol_344 + OpenAD_Symbol_318 *
     >  OpenAD_Symbol_342)
      OpenAD_Symbol_826 = (OpenAD_Symbol_319 * OpenAD_Symbol_342)
      OpenAD_Symbol_827 = (OpenAD_Symbol_423 * OpenAD_Symbol_784)
      OpenAD_Symbol_828 = (OpenAD_Symbol_423 * OpenAD_Symbol_786)
      OpenAD_Symbol_829 = (OpenAD_Symbol_423 * OpenAD_Symbol_788)
      OpenAD_Symbol_830 = (OpenAD_Symbol_423 * OpenAD_Symbol_790)
      OpenAD_Symbol_831 = (OpenAD_Symbol_423 * OpenAD_Symbol_791)
      OpenAD_Symbol_832 = (OpenAD_Symbol_421 * OpenAD_Symbol_784)
      OpenAD_Symbol_833 = (OpenAD_Symbol_421 * OpenAD_Symbol_786)
      OpenAD_Symbol_834 = (OpenAD_Symbol_421 * OpenAD_Symbol_788)
      OpenAD_Symbol_835 = (OpenAD_Symbol_421 * OpenAD_Symbol_790)
      OpenAD_Symbol_836 = (OpenAD_Symbol_421 * OpenAD_Symbol_791)
      OpenAD_Symbol_837 = (OpenAD_Symbol_419 * OpenAD_Symbol_784)
      OpenAD_Symbol_838 = (OpenAD_Symbol_419 * OpenAD_Symbol_786)
      OpenAD_Symbol_839 = (OpenAD_Symbol_419 * OpenAD_Symbol_788)
      OpenAD_Symbol_840 = (OpenAD_Symbol_419 * OpenAD_Symbol_790)
      OpenAD_Symbol_841 = (OpenAD_Symbol_419 * OpenAD_Symbol_791)
      OpenAD_Symbol_842 = (OpenAD_Symbol_424 * OpenAD_Symbol_790 +
     >  OpenAD_Symbol_347 * OpenAD_Symbol_437)
      OpenAD_Symbol_843 = (OpenAD_Symbol_472 * OpenAD_Symbol_466 +
     >  OpenAD_Symbol_412 * OpenAD_Symbol_772 + OpenAD_Symbol_424 *
     >  OpenAD_Symbol_784 + OpenAD_Symbol_347 * OpenAD_Symbol_775)
      OpenAD_Symbol_844 = (OpenAD_Symbol_400 * OpenAD_Symbol_770 +
     >  OpenAD_Symbol_424 * OpenAD_Symbol_786 + OpenAD_Symbol_347 *
     >  OpenAD_Symbol_777)
      OpenAD_Symbol_845 = (OpenAD_Symbol_378 * OpenAD_Symbol_444 +
     >  OpenAD_Symbol_424 * OpenAD_Symbol_788 + OpenAD_Symbol_347 *
     >  OpenAD_Symbol_779)
      OpenAD_Symbol_846 = (OpenAD_Symbol_424 * OpenAD_Symbol_791 +
     >  OpenAD_Symbol_347 * OpenAD_Symbol_781)
      OpenAD_Symbol_847 = (OpenAD_Symbol_422 * OpenAD_Symbol_790 +
     >  OpenAD_Symbol_345 * OpenAD_Symbol_437)
      OpenAD_Symbol_848 = (OpenAD_Symbol_406 * OpenAD_Symbol_466 +
     >  OpenAD_Symbol_422 * OpenAD_Symbol_784 + OpenAD_Symbol_345 *
     >  OpenAD_Symbol_775)
      OpenAD_Symbol_849 = (OpenAD_Symbol_461 * OpenAD_Symbol_455 +
     >  OpenAD_Symbol_398 * OpenAD_Symbol_773 + OpenAD_Symbol_422 *
     >  OpenAD_Symbol_786 + OpenAD_Symbol_345 * OpenAD_Symbol_777)
      OpenAD_Symbol_850 = (OpenAD_Symbol_386 * OpenAD_Symbol_771 +
     >  OpenAD_Symbol_422 * OpenAD_Symbol_788 + OpenAD_Symbol_345 *
     >  OpenAD_Symbol_779)
      OpenAD_Symbol_851 = (OpenAD_Symbol_422 * OpenAD_Symbol_791 +
     >  OpenAD_Symbol_345 * OpenAD_Symbol_781)
      OpenAD_Symbol_852 = (OpenAD_Symbol_420 * OpenAD_Symbol_790 +
     >  OpenAD_Symbol_343 * OpenAD_Symbol_437)
      OpenAD_Symbol_853 = (OpenAD_Symbol_414 * OpenAD_Symbol_769 +
     >  OpenAD_Symbol_420 * OpenAD_Symbol_784 + OpenAD_Symbol_343 *
     >  OpenAD_Symbol_775)
      OpenAD_Symbol_854 = (OpenAD_Symbol_392 * OpenAD_Symbol_455 +
     >  OpenAD_Symbol_420 * OpenAD_Symbol_786 + OpenAD_Symbol_343 *
     >  OpenAD_Symbol_777)
      OpenAD_Symbol_855 = (OpenAD_Symbol_450 * OpenAD_Symbol_444 +
     >  OpenAD_Symbol_384 * OpenAD_Symbol_774 + OpenAD_Symbol_420 *
     >  OpenAD_Symbol_788 + OpenAD_Symbol_343 * OpenAD_Symbol_779)
      OpenAD_Symbol_856 = (OpenAD_Symbol_420 * OpenAD_Symbol_791 +
     >  OpenAD_Symbol_343 * OpenAD_Symbol_781)
      OpenAD_Symbol_857 = (OpenAD_Symbol_341 * OpenAD_Symbol_437)
      OpenAD_Symbol_858 = (OpenAD_Symbol_341 * OpenAD_Symbol_775)
      OpenAD_Symbol_859 = (OpenAD_Symbol_341 * OpenAD_Symbol_777)
      OpenAD_Symbol_860 = (OpenAD_Symbol_341 * OpenAD_Symbol_779)
      OpenAD_Symbol_861 = (OpenAD_Symbol_364 * OpenAD_Symbol_795 +
     >  OpenAD_Symbol_341 * OpenAD_Symbol_781)
      OpenAD_Symbol_862 = (OpenAD_Symbol_818 * OpenAD_Symbol_437)
      OpenAD_Symbol_863 = (OpenAD_Symbol_817 * OpenAD_Symbol_800 +
     >  OpenAD_Symbol_818 * OpenAD_Symbol_775)
      OpenAD_Symbol_864 = (OpenAD_Symbol_817 * OpenAD_Symbol_803 +
     >  OpenAD_Symbol_818 * OpenAD_Symbol_777)
      OpenAD_Symbol_865 = (OpenAD_Symbol_817 * OpenAD_Symbol_806 +
     >  OpenAD_Symbol_818 * OpenAD_Symbol_779)
      OpenAD_Symbol_866 = (OpenAD_Symbol_327 * OpenAD_Symbol_794 +
     >  OpenAD_Symbol_817 * OpenAD_Symbol_814 + OpenAD_Symbol_818 *
     >  OpenAD_Symbol_781)
      OpenAD_Symbol_867 = (OpenAD_Symbol_820 * OpenAD_Symbol_437)
      OpenAD_Symbol_868 = (OpenAD_Symbol_819 * OpenAD_Symbol_800 +
     >  OpenAD_Symbol_820 * OpenAD_Symbol_775)
      OpenAD_Symbol_869 = (OpenAD_Symbol_819 * OpenAD_Symbol_803 +
     >  OpenAD_Symbol_820 * OpenAD_Symbol_777)
      OpenAD_Symbol_870 = (OpenAD_Symbol_819 * OpenAD_Symbol_806 +
     >  OpenAD_Symbol_820 * OpenAD_Symbol_779)
      OpenAD_Symbol_871 = (OpenAD_Symbol_328 * OpenAD_Symbol_794 +
     >  OpenAD_Symbol_819 * OpenAD_Symbol_814 + OpenAD_Symbol_820 *
     >  OpenAD_Symbol_781)
      OpenAD_Symbol_872 = (OpenAD_Symbol_821 * OpenAD_Symbol_437)
      OpenAD_Symbol_873 = (OpenAD_Symbol_315 * OpenAD_Symbol_800 +
     >  OpenAD_Symbol_821 * OpenAD_Symbol_775)
      OpenAD_Symbol_874 = (OpenAD_Symbol_315 * OpenAD_Symbol_803 +
     >  OpenAD_Symbol_821 * OpenAD_Symbol_777)
      OpenAD_Symbol_875 = (OpenAD_Symbol_315 * OpenAD_Symbol_806 +
     >  OpenAD_Symbol_821 * OpenAD_Symbol_779)
      OpenAD_Symbol_876 = (OpenAD_Symbol_315 * OpenAD_Symbol_794 +
     >  OpenAD_Symbol_315 * OpenAD_Symbol_814 + OpenAD_Symbol_821 *
     >  OpenAD_Symbol_781)
      OpenAD_Symbol_877 = (OpenAD_Symbol_822 * OpenAD_Symbol_437)
      OpenAD_Symbol_878 = (OpenAD_Symbol_316 * OpenAD_Symbol_800 +
     >  OpenAD_Symbol_822 * OpenAD_Symbol_775)
      OpenAD_Symbol_879 = (OpenAD_Symbol_316 * OpenAD_Symbol_803 +
     >  OpenAD_Symbol_822 * OpenAD_Symbol_777)
      OpenAD_Symbol_880 = (OpenAD_Symbol_316 * OpenAD_Symbol_806 +
     >  OpenAD_Symbol_822 * OpenAD_Symbol_779)
      OpenAD_Symbol_881 = (OpenAD_Symbol_316 * OpenAD_Symbol_794 +
     >  OpenAD_Symbol_316 * OpenAD_Symbol_814 + OpenAD_Symbol_822 *
     >  OpenAD_Symbol_781)
      OpenAD_Symbol_882 = (OpenAD_Symbol_825 * OpenAD_Symbol_437)
      OpenAD_Symbol_883 = (OpenAD_Symbol_321 * OpenAD_Symbol_799 +
     >  OpenAD_Symbol_318 * OpenAD_Symbol_801 + OpenAD_Symbol_825 *
     >  OpenAD_Symbol_775)
      OpenAD_Symbol_884 = (OpenAD_Symbol_324 * OpenAD_Symbol_804 +
     >  OpenAD_Symbol_318 * OpenAD_Symbol_802 + OpenAD_Symbol_825 *
     >  OpenAD_Symbol_777)
      OpenAD_Symbol_885 = (OpenAD_Symbol_324 * OpenAD_Symbol_805 +
     >  OpenAD_Symbol_321 * OpenAD_Symbol_807 + OpenAD_Symbol_825 *
     >  OpenAD_Symbol_779)
      OpenAD_Symbol_886 = (OpenAD_Symbol_324 * OpenAD_Symbol_808 +
     >  OpenAD_Symbol_321 * OpenAD_Symbol_810 + OpenAD_Symbol_318 *
     >  OpenAD_Symbol_812 + OpenAD_Symbol_825 * OpenAD_Symbol_781)
      OpenAD_Symbol_887 = (OpenAD_Symbol_823 * OpenAD_Symbol_437)
      OpenAD_Symbol_888 = (OpenAD_Symbol_823 * OpenAD_Symbol_775)
      OpenAD_Symbol_889 = (OpenAD_Symbol_325 * OpenAD_Symbol_804 +
     >  OpenAD_Symbol_823 * OpenAD_Symbol_777)
      OpenAD_Symbol_890 = (OpenAD_Symbol_325 * OpenAD_Symbol_805 +
     >  OpenAD_Symbol_823 * OpenAD_Symbol_779)
      OpenAD_Symbol_891 = (OpenAD_Symbol_325 * OpenAD_Symbol_808 +
     >  OpenAD_Symbol_823 * OpenAD_Symbol_781)
      OpenAD_Symbol_892 = (OpenAD_Symbol_824 * OpenAD_Symbol_437)
      OpenAD_Symbol_893 = (OpenAD_Symbol_322 * OpenAD_Symbol_799 +
     >  OpenAD_Symbol_824 * OpenAD_Symbol_775)
      OpenAD_Symbol_894 = (OpenAD_Symbol_824 * OpenAD_Symbol_777)
      OpenAD_Symbol_895 = (OpenAD_Symbol_322 * OpenAD_Symbol_807 +
     >  OpenAD_Symbol_824 * OpenAD_Symbol_779)
      OpenAD_Symbol_896 = (OpenAD_Symbol_322 * OpenAD_Symbol_810 +
     >  OpenAD_Symbol_824 * OpenAD_Symbol_781)
      OpenAD_Symbol_897 = (OpenAD_Symbol_826 * OpenAD_Symbol_437)
      OpenAD_Symbol_898 = (OpenAD_Symbol_319 * OpenAD_Symbol_801 +
     >  OpenAD_Symbol_826 * OpenAD_Symbol_775)
      OpenAD_Symbol_899 = (OpenAD_Symbol_319 * OpenAD_Symbol_802 +
     >  OpenAD_Symbol_826 * OpenAD_Symbol_777)
      OpenAD_Symbol_900 = (OpenAD_Symbol_826 * OpenAD_Symbol_779)
      OpenAD_Symbol_901 = (OpenAD_Symbol_319 * OpenAD_Symbol_812 +
     >  OpenAD_Symbol_826 * OpenAD_Symbol_781)
      CALL sax(OpenAD_Symbol_789, __deriv__(PRIML2), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_830, __deriv__(PRIML5), __deriv__(FLUX2)
     > )
      CALL saxpy(OpenAD_Symbol_835, __deriv__(PRIML4), __deriv__(FLUX2)
     > )
      CALL saxpy(OpenAD_Symbol_840, __deriv__(PRIML3), __deriv__(FLUX2)
     > )
      CALL saxpy(OpenAD_Symbol_842, __deriv__(NZHAT), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_847, __deriv__(NYHAT), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_852, __deriv__(NXHAT), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_857, __deriv__(CAVE), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_862, __deriv__(ALAMCP), __deriv__(FLUX2)
     > )
      CALL saxpy(OpenAD_Symbol_867, __deriv__(ALP5), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_872, __deriv__(ALAMCM), __deriv__(FLUX2)
     > )
      CALL saxpy(OpenAD_Symbol_877, __deriv__(ALP1), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_882, __deriv__(ALAMU), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_887, __deriv__(ALP4), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_892, __deriv__(ALP3), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_897, __deriv__(ALP2), __deriv__(FLUX2))
      CALL saxpy(OpenAD_Symbol_436, __deriv__(NSIZE), __deriv__(FLUX2))
      CALL sax(OpenAD_Symbol_780, __deriv__(UAVE), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_787, __deriv__(RUL), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_798, __deriv__(PRIML1), __deriv__(FLUX3)
     > )
      CALL saxpy(OpenAD_Symbol_829, __deriv__(PRIML5), __deriv__(FLUX3)
     > )
      CALL saxpy(OpenAD_Symbol_834, __deriv__(PRIML4), __deriv__(FLUX3)
     > )
      CALL saxpy(OpenAD_Symbol_839, __deriv__(PRIML3), __deriv__(FLUX3)
     > )
      CALL saxpy(OpenAD_Symbol_845, __deriv__(NZHAT), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_850, __deriv__(NYHAT), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_855, __deriv__(NXHAT), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_860, __deriv__(CAVE), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_865, __deriv__(ALAMCP), __deriv__(FLUX3)
     > )
      CALL saxpy(OpenAD_Symbol_870, __deriv__(ALP5), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_875, __deriv__(ALAMCM), __deriv__(FLUX3)
     > )
      CALL saxpy(OpenAD_Symbol_880, __deriv__(ALP1), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_885, __deriv__(ALAMU), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_890, __deriv__(ALP4), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_895, __deriv__(ALP3), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_900, __deriv__(ALP2), __deriv__(FLUX3))
      CALL saxpy(OpenAD_Symbol_443, __deriv__(NSIZE), __deriv__(FLUX3))
      CALL sax(OpenAD_Symbol_778, __deriv__(VAVE), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_785, __deriv__(RVL), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_797, __deriv__(PRIML1), __deriv__(FLUX4)
     > )
      CALL saxpy(OpenAD_Symbol_828, __deriv__(PRIML5), __deriv__(FLUX4)
     > )
      CALL saxpy(OpenAD_Symbol_833, __deriv__(PRIML4), __deriv__(FLUX4)
     > )
      CALL saxpy(OpenAD_Symbol_838, __deriv__(PRIML3), __deriv__(FLUX4)
     > )
      CALL saxpy(OpenAD_Symbol_844, __deriv__(NZHAT), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_849, __deriv__(NYHAT), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_854, __deriv__(NXHAT), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_859, __deriv__(CAVE), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_864, __deriv__(ALAMCP), __deriv__(FLUX4)
     > )
      CALL saxpy(OpenAD_Symbol_869, __deriv__(ALP5), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_874, __deriv__(ALAMCM), __deriv__(FLUX4)
     > )
      CALL saxpy(OpenAD_Symbol_879, __deriv__(ALP1), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_884, __deriv__(ALAMU), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_889, __deriv__(ALP4), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_894, __deriv__(ALP3), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_899, __deriv__(ALP2), __deriv__(FLUX4))
      CALL saxpy(OpenAD_Symbol_454, __deriv__(NSIZE), __deriv__(FLUX4))
      CALL sax(OpenAD_Symbol_776, __deriv__(WAVE), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_783, __deriv__(RWL), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_796, __deriv__(PRIML1), __deriv__(FLUX5)
     > )
      CALL saxpy(OpenAD_Symbol_827, __deriv__(PRIML5), __deriv__(FLUX5)
     > )
      CALL saxpy(OpenAD_Symbol_832, __deriv__(PRIML4), __deriv__(FLUX5)
     > )
      CALL saxpy(OpenAD_Symbol_837, __deriv__(PRIML3), __deriv__(FLUX5)
     > )
      CALL saxpy(OpenAD_Symbol_843, __deriv__(NZHAT), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_848, __deriv__(NYHAT), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_853, __deriv__(NXHAT), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_858, __deriv__(CAVE), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_863, __deriv__(ALAMCP), __deriv__(FLUX5)
     > )
      CALL saxpy(OpenAD_Symbol_868, __deriv__(ALP5), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_873, __deriv__(ALAMCM), __deriv__(FLUX5)
     > )
      CALL saxpy(OpenAD_Symbol_878, __deriv__(ALP1), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_883, __deriv__(ALAMU), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_888, __deriv__(ALP4), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_893, __deriv__(ALP3), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_898, __deriv__(ALP2), __deriv__(FLUX5))
      CALL saxpy(OpenAD_Symbol_465, __deriv__(NSIZE), __deriv__(FLUX5))
      CALL sax(OpenAD_Symbol_782, __deriv__(THTAVE), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_792, __deriv__(PRIML1), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_792, __deriv__(EL), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_809, __deriv__(WTILDE), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_811, __deriv__(VTILDE), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_813, __deriv__(UTILDE), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_815, __deriv__(UHAT), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_816, __deriv__(GM1INV), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_831, __deriv__(PRIML5), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_836, __deriv__(PRIML4), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_841, __deriv__(PRIML3), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_846, __deriv__(NZHAT), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_851, __deriv__(NYHAT), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_856, __deriv__(NXHAT), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_861, __deriv__(CAVE), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_866, __deriv__(ALAMCP), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_871, __deriv__(ALP5), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_876, __deriv__(ALAMCM), __deriv__(FLUX1)
     > )
      CALL saxpy(OpenAD_Symbol_881, __deriv__(ALP1), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_886, __deriv__(ALAMU), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_891, __deriv__(ALP4), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_896, __deriv__(ALP3), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_901, __deriv__(ALP2), __deriv__(FLUX1))
      CALL saxpy(OpenAD_Symbol_426, __deriv__(NSIZE), __deriv__(FLUX1))
      END SUBROUTINE