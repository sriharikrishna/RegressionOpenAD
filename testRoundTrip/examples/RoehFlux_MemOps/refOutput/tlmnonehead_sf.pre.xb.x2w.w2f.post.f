
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
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
      type(active) :: OpenAD_Symbol_377
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
      REAL(w2f__8) OpenAD_Symbol_581
      REAL(w2f__8) OpenAD_Symbol_582
      REAL(w2f__8) OpenAD_Symbol_583
      REAL(w2f__8) OpenAD_Symbol_584
      type(active) :: OpenAD_Symbol_585
      type(active) :: OpenAD_Symbol_586
      type(active) :: OpenAD_Symbol_587
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
      type(active) :: NRM1
      INTENT(IN)  NRM1
      type(active) :: NRM2
      INTENT(IN)  NRM2
      type(active) :: NRM3
      INTENT(IN)  NRM3
      type(active) :: PRIML1
      INTENT(IN)  PRIML1
      type(active) :: PRIML2
      INTENT(IN)  PRIML2
      type(active) :: PRIML3
      INTENT(IN)  PRIML3
      type(active) :: PRIML4
      INTENT(IN)  PRIML4
      type(active) :: PRIML5
      INTENT(IN)  PRIML5
      type(active) :: PRIMR1
      INTENT(IN)  PRIMR1
      type(active) :: PRIMR2
      INTENT(IN)  PRIMR2
      type(active) :: PRIMR3
      INTENT(IN)  PRIMR3
      type(active) :: PRIMR4
      INTENT(IN)  PRIMR4
      type(active) :: PRIMR5
      INTENT(IN)  PRIMR5
      type(active) :: GAMMA
      INTENT(IN)  GAMMA
      type(active) :: GM1
      INTENT(IN)  GM1
      type(active) :: GM1INV
      INTENT(IN)  GM1INV
      REAL(w2f__8) NLEFIX
      INTENT(IN)  NLEFIX
      REAL(w2f__8) LEFIX
      INTENT(IN)  LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN)  MCHEPS
      type(active) :: FLUX1
      INTENT(OUT)  FLUX1
      type(active) :: FLUX2
      INTENT(OUT)  FLUX2
      type(active) :: FLUX3
      INTENT(OUT)  FLUX3
      type(active) :: FLUX4
      INTENT(OUT)  FLUX4
      type(active) :: FLUX5
      INTENT(OUT)  FLUX5
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
      OpenAD_Symbol_0 = ((NRM1%v**2)+(NRM2%v**2)+(NRM3%v**2))
      NSIZE%v = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = (2*(NRM1%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_4 = (2*(NRM2%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_6 = (2*(NRM3%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      NSIZEI%v = (1.0D00/NSIZE%v)
      OpenAD_Symbol_9 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
      NXHAT%v = (NRM1%v*NSIZEI%v)
      OpenAD_Symbol_10 = NSIZEI%v
      OpenAD_Symbol_11 = NRM1%v
      NYHAT%v = (NRM2%v*NSIZEI%v)
      OpenAD_Symbol_12 = NSIZEI%v
      OpenAD_Symbol_13 = NRM2%v
      NZHAT%v = (NRM3%v*NSIZEI%v)
      OpenAD_Symbol_14 = NSIZEI%v
      OpenAD_Symbol_15 = NRM3%v
      OpenAD_Symbol_20 = (PRIMR2%v/PRIML2%v)
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20) + 1.0D00)
      ROEL%v = (1.0D00/OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1 _w2f__i8)/PRIML2%v)
      OpenAD_Symbol_23 = (-(PRIMR2%v/(PRIML2%v*PRIML2%v)))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00 /(OpenAD_Symbol_16 *
     >  OpenAD_Symbol_16)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_Symbol_25 = ((PRIML3%v**2)+(PRIML4%v**2)+(PRIML5%v**2))
      THETAL%v = (OpenAD_Symbol_25*5.0D-01)
      OpenAD_Symbol_27 = (2*(PRIML3%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_29 = (2*(PRIML4%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_31 = (2*(PRIML5%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_33 = ((PRIMR3%v**2)+(PRIMR4%v**2)+(PRIMR5%v**2))
      THETAR%v = (OpenAD_Symbol_33*5.0D-01)
      OpenAD_Symbol_35 = (2*(PRIMR3%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_37 = (2*(PRIMR4%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_39 = (2*(PRIMR5%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_44 = (GAMMA%v*GM1INV%v)
      OpenAD_Symbol_41 = (PRIML1%v*OpenAD_Symbol_44)
      HL%v = (THETAL%v+(OpenAD_Symbol_41/PRIML2%v))
      OpenAD_Symbol_45 = OpenAD_Symbol_44
      OpenAD_Symbol_47 = GM1INV%v
      OpenAD_Symbol_48 = GAMMA%v
      OpenAD_Symbol_46 = PRIML1%v
      OpenAD_Symbol_42 = (INT(1 _w2f__i8)/PRIML2%v)
      OpenAD_Symbol_43 = (-(OpenAD_Symbol_41/(PRIML2%v*PRIML2%v)))
      OpenAD_Symbol_52 = (GAMMA%v*GM1INV%v)
      OpenAD_Symbol_49 = (PRIMR1%v*OpenAD_Symbol_52)
      HR%v = (THETAR%v+(OpenAD_Symbol_49/PRIMR2%v))
      OpenAD_Symbol_53 = OpenAD_Symbol_52
      OpenAD_Symbol_55 = GM1INV%v
      OpenAD_Symbol_56 = GAMMA%v
      OpenAD_Symbol_54 = PRIMR1%v
      OpenAD_Symbol_50 = (INT(1 _w2f__i8)/PRIMR2%v)
      OpenAD_Symbol_51 = (-(OpenAD_Symbol_49/(PRIMR2%v*PRIMR2%v)))
      UAVE%v = (PRIML3%v*ROEL%v+PRIMR3%v*ROER%v)
      OpenAD_Symbol_57 = ROEL%v
      OpenAD_Symbol_58 = PRIML3%v
      OpenAD_Symbol_59 = ROER%v
      OpenAD_Symbol_60 = PRIMR3%v
      VAVE%v = (PRIML4%v*ROEL%v+PRIMR4%v*ROER%v)
      OpenAD_Symbol_61 = ROEL%v
      OpenAD_Symbol_62 = PRIML4%v
      OpenAD_Symbol_63 = ROER%v
      OpenAD_Symbol_64 = PRIMR4%v
      WAVE%v = (PRIML5%v*ROEL%v+PRIMR5%v*ROER%v)
      OpenAD_Symbol_65 = ROEL%v
      OpenAD_Symbol_66 = PRIML5%v
      OpenAD_Symbol_67 = ROER%v
      OpenAD_Symbol_68 = PRIMR5%v
      HAVE%v = (HL%v*ROEL%v+HR%v*ROER%v)
      OpenAD_Symbol_69 = ROEL%v
      OpenAD_Symbol_70 = HL%v
      OpenAD_Symbol_71 = ROER%v
      OpenAD_Symbol_72 = HR%v
      OpenAD_Symbol_73 = ((UAVE%v**2)+(VAVE%v**2)+(WAVE%v**2))
      THTAVE%v = (OpenAD_Symbol_73*5.0D-01)
      OpenAD_Symbol_75 = (2*(UAVE%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_77 = (2*(VAVE%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_79 = (2*(WAVE%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_81 = (HAVE%v-THTAVE%v)
      CAVE%v = (GM1%v*OpenAD_Symbol_81)
      OpenAD_Symbol_82 = OpenAD_Symbol_81
      OpenAD_Symbol_83 = GM1%v
      OpenAD_Symbol_294 = (OpenAD_Symbol_69 * OpenAD_Symbol_83)
      OpenAD_Symbol_295 = (INT((-1_w2f__i8)) * OpenAD_Symbol_83)
      OpenAD_Symbol_296 = (OpenAD_Symbol_71 * OpenAD_Symbol_83)
      OpenAD_Symbol_297 = (OpenAD_Symbol_50 * OpenAD_Symbol_296)
      OpenAD_Symbol_298 = (OpenAD_Symbol_53 * OpenAD_Symbol_297)
      OpenAD_Symbol_299 = (OpenAD_Symbol_42 * OpenAD_Symbol_294)
      OpenAD_Symbol_300 = (OpenAD_Symbol_45 * OpenAD_Symbol_299)
      OpenAD_Symbol_301 = (OpenAD_Symbol_51 * OpenAD_Symbol_296)
      OpenAD_Symbol_302 = (OpenAD_Symbol_43 * OpenAD_Symbol_294)
      OpenAD_Symbol_303 = (OpenAD_Symbol_54 * OpenAD_Symbol_297)
      OpenAD_Symbol_304 = (OpenAD_Symbol_55 * OpenAD_Symbol_303)
      OpenAD_Symbol_305 = (OpenAD_Symbol_46 * OpenAD_Symbol_299)
      OpenAD_Symbol_306 = (OpenAD_Symbol_47 * OpenAD_Symbol_305)
      OpenAD_Symbol_307 = (OpenAD_Symbol_21 * OpenAD_Symbol_18)
      OpenAD_Symbol_308 = (OpenAD_Symbol_56 * OpenAD_Symbol_303)
      OpenAD_Symbol_309 = (OpenAD_Symbol_48 * OpenAD_Symbol_305)
      OpenAD_Symbol_310 = (OpenAD_Symbol_79 * 5.0D-01)
      OpenAD_Symbol_311 = (OpenAD_Symbol_77 * 5.0D-01)
      OpenAD_Symbol_312 = (OpenAD_Symbol_75 * 5.0D-01)
      OpenAD_Symbol_313 = (INT((-1_w2f__i8)) * OpenAD_Symbol_68 +
     >  OpenAD_Symbol_66)
      OpenAD_Symbol_314 = (INT((-1_w2f__i8)) * OpenAD_Symbol_64 +
     >  OpenAD_Symbol_62)
      OpenAD_Symbol_315 = (INT((-1_w2f__i8)) * OpenAD_Symbol_60 +
     >  OpenAD_Symbol_58)
      OpenAD_Symbol_316 = (OpenAD_Symbol_39 * 5.0D-01)
      OpenAD_Symbol_317 = (OpenAD_Symbol_31 * 5.0D-01)
      OpenAD_Symbol_318 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      OpenAD_Symbol_319 = (OpenAD_Symbol_37 * 5.0D-01)
      OpenAD_Symbol_320 = (OpenAD_Symbol_316 * OpenAD_Symbol_296)
      OpenAD_Symbol_321 = (OpenAD_Symbol_319 * OpenAD_Symbol_296)
      OpenAD_Symbol_322 = (OpenAD_Symbol_35 * 5.0D-01)
      OpenAD_Symbol_323 = (OpenAD_Symbol_35 * 5.0D-01 *
     >  OpenAD_Symbol_296)
      OpenAD_Symbol_324 = (OpenAD_Symbol_29 * 5.0D-01)
      OpenAD_Symbol_325 = (OpenAD_Symbol_317 * OpenAD_Symbol_294)
      OpenAD_Symbol_326 = (OpenAD_Symbol_324 * OpenAD_Symbol_294)
      OpenAD_Symbol_327 = (OpenAD_Symbol_27 * 5.0D-01)
      OpenAD_Symbol_328 = (OpenAD_Symbol_27 * 5.0D-01 *
     >  OpenAD_Symbol_294)
      OpenAD_Symbol_329 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_Symbol_330 = (OpenAD_Symbol_2 * OpenAD_Symbol_1)
      OpenAD_Symbol_331 = (OpenAD_Symbol_67 * OpenAD_Symbol_310)
      OpenAD_Symbol_332 = (OpenAD_Symbol_65 * OpenAD_Symbol_310)
      OpenAD_Symbol_333 = (OpenAD_Symbol_63 * OpenAD_Symbol_311)
      OpenAD_Symbol_334 = (OpenAD_Symbol_313 * OpenAD_Symbol_310 +
     >  OpenAD_Symbol_314 * OpenAD_Symbol_311)
      OpenAD_Symbol_335 = (OpenAD_Symbol_61 * OpenAD_Symbol_311)
      OpenAD_Symbol_336 = (OpenAD_Symbol_312 * OpenAD_Symbol_295)
      OpenAD_Symbol_337 = (OpenAD_Symbol_331 * OpenAD_Symbol_295)
      OpenAD_Symbol_338 = (OpenAD_Symbol_332 * OpenAD_Symbol_295)
      OpenAD_Symbol_339 = (OpenAD_Symbol_333 * OpenAD_Symbol_295)
      OpenAD_Symbol_340 = (OpenAD_Symbol_335 * OpenAD_Symbol_295)
      OpenAD_Symbol_341 = (OpenAD_Symbol_59 * OpenAD_Symbol_312)
      OpenAD_Symbol_342 = (OpenAD_Symbol_334 + OpenAD_Symbol_315 *
     >  OpenAD_Symbol_312)
      OpenAD_Symbol_343 = (OpenAD_Symbol_57 * OpenAD_Symbol_312)
      OpenAD_Symbol_344 = (OpenAD_Symbol_59 * OpenAD_Symbol_336)
      OpenAD_Symbol_345 = (OpenAD_Symbol_70 * OpenAD_Symbol_83 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_72 * OpenAD_Symbol_83 +
     >  OpenAD_Symbol_334 * OpenAD_Symbol_295 + OpenAD_Symbol_315 *
     >  OpenAD_Symbol_336)
      OpenAD_Symbol_346 = (OpenAD_Symbol_57 * OpenAD_Symbol_336)
      OpenAD_Symbol_347 = (OpenAD_Symbol_22 * OpenAD_Symbol_307)
      OpenAD_Symbol_348 = (OpenAD_Symbol_347 * OpenAD_Symbol_345)
      OpenAD_Symbol_349 = (OpenAD_Symbol_23 * OpenAD_Symbol_307 *
     >  OpenAD_Symbol_345)
      OpenAD_Symbol_350 = (OpenAD_Symbol_23 * OpenAD_Symbol_307 *
     >  OpenAD_Symbol_313)
      OpenAD_Symbol_351 = (OpenAD_Symbol_23 * OpenAD_Symbol_307 *
     >  OpenAD_Symbol_314)
      OpenAD_Symbol_352 = (OpenAD_Symbol_23 * OpenAD_Symbol_307 *
     >  OpenAD_Symbol_315)
      OpenAD_Symbol_353 = (OpenAD_Symbol_23 * OpenAD_Symbol_307 *
     >  OpenAD_Symbol_342)
      OpenAD_Symbol_354 = (OpenAD_Symbol_347 * OpenAD_Symbol_313)
      OpenAD_Symbol_355 = (OpenAD_Symbol_347 * OpenAD_Symbol_314)
      OpenAD_Symbol_356 = (OpenAD_Symbol_347 * OpenAD_Symbol_315)
      OpenAD_Symbol_357 = (OpenAD_Symbol_347 * OpenAD_Symbol_342)
      OpenAD_Symbol_358 = (OpenAD_Symbol_9 * OpenAD_Symbol_11)
      OpenAD_Symbol_359 = (OpenAD_Symbol_9 * OpenAD_Symbol_13)
      OpenAD_Symbol_360 = (OpenAD_Symbol_9 * OpenAD_Symbol_15)
      OpenAD_Symbol_361 = (OpenAD_Symbol_318 * OpenAD_Symbol_358)
      OpenAD_Symbol_362 = (OpenAD_Symbol_329 * OpenAD_Symbol_358)
      OpenAD_Symbol_363 = (OpenAD_Symbol_330 * OpenAD_Symbol_358)
      OpenAD_Symbol_364 = (OpenAD_Symbol_318 * OpenAD_Symbol_359)
      OpenAD_Symbol_365 = (OpenAD_Symbol_329 * OpenAD_Symbol_359)
      OpenAD_Symbol_366 = (OpenAD_Symbol_330 * OpenAD_Symbol_359)
      OpenAD_Symbol_367 = (OpenAD_Symbol_318 * OpenAD_Symbol_360)
      OpenAD_Symbol_368 = (OpenAD_Symbol_329 * OpenAD_Symbol_360)
      OpenAD_Symbol_369 = (OpenAD_Symbol_330 * OpenAD_Symbol_360)
      CALL sax(OpenAD_Symbol_318,NRM3,NSIZE)
      CALL saxpy(OpenAD_Symbol_329,NRM2,NSIZE)
      CALL saxpy(OpenAD_Symbol_330,NRM1,NSIZE)
      CALL sax(OpenAD_Symbol_361,NRM3,NXHAT)
      CALL saxpy(OpenAD_Symbol_362,NRM2,NXHAT)
      CALL saxpy(OpenAD_Symbol_363,NRM1,NXHAT)
      CALL saxpy(OpenAD_Symbol_10,NRM1,NXHAT)
      CALL sax(OpenAD_Symbol_364,NRM3,NYHAT)
      CALL saxpy(OpenAD_Symbol_365,NRM2,NYHAT)
      CALL saxpy(OpenAD_Symbol_366,NRM1,NYHAT)
      CALL saxpy(OpenAD_Symbol_12,NRM2,NYHAT)
      CALL sax(OpenAD_Symbol_367,NRM3,NZHAT)
      CALL saxpy(OpenAD_Symbol_368,NRM2,NZHAT)
      CALL saxpy(OpenAD_Symbol_369,NRM1,NZHAT)
      CALL saxpy(OpenAD_Symbol_14,NRM3,NZHAT)
      CALL sax(OpenAD_Symbol_317,PRIML5,THETAL)
      CALL saxpy(OpenAD_Symbol_324,PRIML4,THETAL)
      CALL saxpy(OpenAD_Symbol_327,PRIML3,THETAL)
      CALL sax(OpenAD_Symbol_316,PRIMR5,THETAR)
      CALL saxpy(OpenAD_Symbol_319,PRIMR4,THETAR)
      CALL saxpy(OpenAD_Symbol_322,PRIMR3,THETAR)
      CALL sax(OpenAD_Symbol_59,PRIMR3,UAVE)
      CALL saxpy(OpenAD_Symbol_57,PRIML3,UAVE)
      CALL saxpy(OpenAD_Symbol_352,PRIML2,UAVE)
      CALL saxpy(OpenAD_Symbol_356,PRIMR2,UAVE)
      CALL sax(OpenAD_Symbol_63,PRIMR4,VAVE)
      CALL saxpy(OpenAD_Symbol_61,PRIML4,VAVE)
      CALL saxpy(OpenAD_Symbol_351,PRIML2,VAVE)
      CALL saxpy(OpenAD_Symbol_355,PRIMR2,VAVE)
      CALL sax(OpenAD_Symbol_67,PRIMR5,WAVE)
      CALL saxpy(OpenAD_Symbol_65,PRIML5,WAVE)
      CALL saxpy(OpenAD_Symbol_350,PRIML2,WAVE)
      CALL saxpy(OpenAD_Symbol_354,PRIMR2,WAVE)
      CALL sax(OpenAD_Symbol_331,PRIMR5,THTAVE)
      CALL saxpy(OpenAD_Symbol_332,PRIML5,THTAVE)
      CALL saxpy(OpenAD_Symbol_333,PRIMR4,THTAVE)
      CALL saxpy(OpenAD_Symbol_335,PRIML4,THTAVE)
      CALL saxpy(OpenAD_Symbol_341,PRIMR3,THTAVE)
      CALL saxpy(OpenAD_Symbol_343,PRIML3,THTAVE)
      CALL saxpy(OpenAD_Symbol_353,PRIML2,THTAVE)
      CALL saxpy(OpenAD_Symbol_357,PRIMR2,THTAVE)
      CALL sax(OpenAD_Symbol_298,PRIMR1,CAVE)
      CALL saxpy(OpenAD_Symbol_300,PRIML1,CAVE)
      CALL saxpy(OpenAD_Symbol_301,PRIMR2,CAVE)
      CALL saxpy(OpenAD_Symbol_302,PRIML2,CAVE)
      CALL saxpy(OpenAD_Symbol_304,GAMMA,CAVE)
      CALL saxpy(OpenAD_Symbol_306,GAMMA,CAVE)
      CALL saxpy(OpenAD_Symbol_308,GM1INV,CAVE)
      CALL saxpy(OpenAD_Symbol_309,GM1INV,CAVE)
      CALL saxpy(OpenAD_Symbol_320,PRIMR5,CAVE)
      CALL saxpy(OpenAD_Symbol_321,PRIMR4,CAVE)
      CALL saxpy(OpenAD_Symbol_323,PRIMR3,CAVE)
      CALL saxpy(OpenAD_Symbol_325,PRIML5,CAVE)
      CALL saxpy(OpenAD_Symbol_326,PRIML4,CAVE)
      CALL saxpy(OpenAD_Symbol_328,PRIML3,CAVE)
      CALL saxpy(OpenAD_Symbol_337,PRIMR5,CAVE)
      CALL saxpy(OpenAD_Symbol_338,PRIML5,CAVE)
      CALL saxpy(OpenAD_Symbol_339,PRIMR4,CAVE)
      CALL saxpy(OpenAD_Symbol_340,PRIML4,CAVE)
      CALL saxpy(OpenAD_Symbol_344,PRIMR3,CAVE)
      CALL saxpy(OpenAD_Symbol_346,PRIML3,CAVE)
      CALL saxpy(OpenAD_Symbol_348,PRIMR2,CAVE)
      CALL saxpy(OpenAD_Symbol_349,PRIML2,CAVE)
      CALL saxpy(OpenAD_Symbol_82,GM1,CAVE)
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
      ALAMCM%v = LAMCM%v
      ALAMCP%v = LAMCP%v
      ALAMU%v = LAMU%v
      OpenAD_Symbol_370 = (OpenAD_Symbol_84 * INT((-1_w2f__i8)))
      OpenAD_Symbol_371 = (OpenAD_Symbol_95 * INT((-1_w2f__i8)))
      OpenAD_Symbol_372 = (OpenAD_Symbol_94 * INT((-1_w2f__i8)))
      OpenAD_Symbol_373 = (OpenAD_Symbol_98 * INT((-1_w2f__i8)))
      OpenAD_Symbol_374 = (OpenAD_Symbol_99 * INT((-1_w2f__i8)))
      OpenAD_Symbol_375 = (OpenAD_Symbol_103 * INT((-1_w2f__i8)))
      OpenAD_Symbol_376 = (OpenAD_Symbol_102 * INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_Symbol_377,CAVE)
      CALL sax(OpenAD_Symbol_84,OpenAD_Symbol_377,CAVE)
      CALL sax(OpenAD_Symbol_92,NYHAT,UTILDE)
      CALL saxpy(OpenAD_Symbol_93,WAVE,UTILDE)
      CALL saxpy(OpenAD_Symbol_371,VAVE,UTILDE)
      CALL saxpy(OpenAD_Symbol_372,NZHAT,UTILDE)
      CALL sax(OpenAD_Symbol_97,UAVE,VTILDE)
      CALL saxpy(OpenAD_Symbol_96,NZHAT,VTILDE)
      CALL saxpy(OpenAD_Symbol_373,NXHAT,VTILDE)
      CALL saxpy(OpenAD_Symbol_374,WAVE,VTILDE)
      CALL sax(OpenAD_Symbol_100,NXHAT,WTILDE)
      CALL saxpy(OpenAD_Symbol_101,VAVE,WTILDE)
      CALL saxpy(OpenAD_Symbol_375,UAVE,WTILDE)
      CALL saxpy(OpenAD_Symbol_376,NYHAT,WTILDE)
      CALL sax(OpenAD_Symbol_90,NZHAT,UHAT)
      CALL saxpy(OpenAD_Symbol_91,WAVE,UHAT)
      CALL saxpy(OpenAD_Symbol_86,NXHAT,UHAT)
      CALL saxpy(OpenAD_Symbol_87,UAVE,UHAT)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,UHAT)
      CALL saxpy(OpenAD_Symbol_89,VAVE,UHAT)
      CALL sax(OpenAD_Symbol_370,OpenAD_Symbol_377,LAMCM)
      CALL saxpy(OpenAD_Symbol_90,NZHAT,LAMCM)
      CALL saxpy(OpenAD_Symbol_91,WAVE,LAMCM)
      CALL saxpy(OpenAD_Symbol_86,NXHAT,LAMCM)
      CALL saxpy(OpenAD_Symbol_87,UAVE,LAMCM)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,LAMCM)
      CALL saxpy(OpenAD_Symbol_89,VAVE,LAMCM)
      CALL sax(OpenAD_Symbol_90,NZHAT,LAMU)
      CALL saxpy(OpenAD_Symbol_91,WAVE,LAMU)
      CALL saxpy(OpenAD_Symbol_86,NXHAT,LAMU)
      CALL saxpy(OpenAD_Symbol_87,UAVE,LAMU)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,LAMU)
      CALL saxpy(OpenAD_Symbol_89,VAVE,LAMU)
      CALL sax(OpenAD_Symbol_84,OpenAD_Symbol_377,LAMCP)
      CALL saxpy(OpenAD_Symbol_90,NZHAT,LAMCP)
      CALL saxpy(OpenAD_Symbol_91,WAVE,LAMCP)
      CALL saxpy(OpenAD_Symbol_86,NXHAT,LAMCP)
      CALL saxpy(OpenAD_Symbol_87,UAVE,LAMCP)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,LAMCP)
      CALL saxpy(OpenAD_Symbol_89,VAVE,LAMCP)
      CALL sax(OpenAD_Symbol_370,OpenAD_Symbol_377,ALAMCM)
      CALL saxpy(OpenAD_Symbol_90,NZHAT,ALAMCM)
      CALL saxpy(OpenAD_Symbol_91,WAVE,ALAMCM)
      CALL saxpy(OpenAD_Symbol_86,NXHAT,ALAMCM)
      CALL saxpy(OpenAD_Symbol_87,UAVE,ALAMCM)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,ALAMCM)
      CALL saxpy(OpenAD_Symbol_89,VAVE,ALAMCM)
      CALL sax(OpenAD_Symbol_84,OpenAD_Symbol_377,ALAMCP)
      CALL saxpy(OpenAD_Symbol_90,NZHAT,ALAMCP)
      CALL saxpy(OpenAD_Symbol_91,WAVE,ALAMCP)
      CALL saxpy(OpenAD_Symbol_86,NXHAT,ALAMCP)
      CALL saxpy(OpenAD_Symbol_87,UAVE,ALAMCP)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,ALAMCP)
      CALL saxpy(OpenAD_Symbol_89,VAVE,ALAMCP)
      CALL sax(OpenAD_Symbol_90,NZHAT,ALAMU)
      CALL saxpy(OpenAD_Symbol_91,WAVE,ALAMU)
      CALL saxpy(OpenAD_Symbol_86,NXHAT,ALAMU)
      CALL saxpy(OpenAD_Symbol_87,UAVE,ALAMU)
      CALL saxpy(OpenAD_Symbol_88,NYHAT,ALAMU)
      CALL saxpy(OpenAD_Symbol_89,VAVE,ALAMU)
      OpenAD_Symbol_104 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_Symbol_104*5.0D-01)
      OpenAD_Symbol_106 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_Symbol_106*5.0D-01)
      OpenAD_Symbol_108 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_Symbol_108*5.0D-01)
      EL%v = (PRIML1%v*GM1INV%v+PRIML2%v*THETAL%v)
      OpenAD_Symbol_110 = GM1INV%v
      OpenAD_Symbol_111 = PRIML1%v
      OpenAD_Symbol_112 = THETAL%v
      OpenAD_Symbol_113 = PRIML2%v
      RUL%v = (PRIML2%v*PRIML3%v)
      OpenAD_Symbol_114 = PRIML3%v
      OpenAD_Symbol_115 = PRIML2%v
      RVL%v = (PRIML2%v*PRIML4%v)
      OpenAD_Symbol_116 = PRIML4%v
      OpenAD_Symbol_117 = PRIML2%v
      RWL%v = (PRIML2%v*PRIML5%v)
      OpenAD_Symbol_118 = PRIML5%v
      OpenAD_Symbol_119 = PRIML2%v
      ER%v = (PRIMR1%v*GM1INV%v+PRIMR2%v*THETAR%v)
      OpenAD_Symbol_120 = GM1INV%v
      OpenAD_Symbol_121 = PRIMR1%v
      OpenAD_Symbol_122 = THETAR%v
      OpenAD_Symbol_123 = PRIMR2%v
      RUR%v = (PRIMR2%v*PRIMR3%v)
      OpenAD_Symbol_124 = PRIMR3%v
      OpenAD_Symbol_125 = PRIMR2%v
      RVR%v = (PRIMR2%v*PRIMR4%v)
      OpenAD_Symbol_126 = PRIMR4%v
      OpenAD_Symbol_127 = PRIMR2%v
      RWR%v = (PRIMR2%v*PRIMR5%v)
      OpenAD_Symbol_128 = PRIMR5%v
      OpenAD_Symbol_129 = PRIMR2%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR2%v-PRIML2%v)
      DRU%v = (RUR%v-RUL%v)
      DRV%v = (RVR%v-RVL%v)
      DRW%v = (RWR%v-RWL%v)
      UDDRU%v = (DRU%v*UAVE%v+DRV%v*VAVE%v+DRW%v*WAVE%v)
      OpenAD_Symbol_130 = UAVE%v
      OpenAD_Symbol_131 = DRU%v
      OpenAD_Symbol_132 = VAVE%v
      OpenAD_Symbol_133 = DRV%v
      OpenAD_Symbol_134 = WAVE%v
      OpenAD_Symbol_135 = DRW%v
      OpenAD_Symbol_136 = (GM1%v/CAVE%v)
      OpenAD_Symbol_137 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_Symbol_136*OpenAD_Symbol_137)
      OpenAD_Symbol_140 = (INT(1 _w2f__i8)/CAVE%v)
      OpenAD_Symbol_141 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_Symbol_138 = OpenAD_Symbol_137
      OpenAD_Symbol_142 = THTAVE%v
      OpenAD_Symbol_143 = DR%v
      OpenAD_Symbol_139 = OpenAD_Symbol_136
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_Symbol_144 = NXHAT%v
      OpenAD_Symbol_145 = DRU%v
      OpenAD_Symbol_146 = NYHAT%v
      OpenAD_Symbol_147 = DRV%v
      OpenAD_Symbol_148 = NZHAT%v
      OpenAD_Symbol_149 = DRW%v
      OpenAD_Symbol_150 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_Symbol_150*5.0D-01)
      OpenAD_Symbol_152 = UHAT%v
      OpenAD_Symbol_153 = DR%v
      OpenAD_Symbol_156 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_Symbol_161 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_Symbol_156+OMEGA%v*OpenAD_Symb
     +ol_161-DRV%v*NZHAT%v)
      OpenAD_Symbol_154 = NYHAT%v
      OpenAD_Symbol_155 = DRW%v
      OpenAD_Symbol_157 = OpenAD_Symbol_156
      OpenAD_Symbol_159 = NXHAT%v
      OpenAD_Symbol_160 = CAVE%v
      OpenAD_Symbol_158 = DR%v
      OpenAD_Symbol_162 = OpenAD_Symbol_161
      OpenAD_Symbol_163 = OMEGA%v
      OpenAD_Symbol_164 = NZHAT%v
      OpenAD_Symbol_165 = DRV%v
      OpenAD_Symbol_168 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_Symbol_173 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_Symbol_168+OMEGA%v*OpenAD_Symb
     +ol_173-DRW%v*NXHAT%v)
      OpenAD_Symbol_166 = NZHAT%v
      OpenAD_Symbol_167 = DRU%v
      OpenAD_Symbol_169 = OpenAD_Symbol_168
      OpenAD_Symbol_171 = NYHAT%v
      OpenAD_Symbol_172 = CAVE%v
      OpenAD_Symbol_170 = DR%v
      OpenAD_Symbol_174 = OpenAD_Symbol_173
      OpenAD_Symbol_175 = OMEGA%v
      OpenAD_Symbol_176 = NXHAT%v
      OpenAD_Symbol_177 = DRW%v
      OpenAD_Symbol_180 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_Symbol_185 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_Symbol_180+OMEGA%v*OpenAD_Symb
     +ol_185-DRU%v*NYHAT%v)
      OpenAD_Symbol_178 = NXHAT%v
      OpenAD_Symbol_179 = DRV%v
      OpenAD_Symbol_181 = OpenAD_Symbol_180
      OpenAD_Symbol_183 = NZHAT%v
      OpenAD_Symbol_184 = CAVE%v
      OpenAD_Symbol_182 = DR%v
      OpenAD_Symbol_186 = OpenAD_Symbol_185
      OpenAD_Symbol_187 = OMEGA%v
      OpenAD_Symbol_188 = NYHAT%v
      OpenAD_Symbol_189 = DRU%v
      OpenAD_Symbol_190 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_Symbol_190*5.0D-01)
      OpenAD_Symbol_192 = UHAT%v
      OpenAD_Symbol_193 = DR%v
      OpenAD_Symbol_378 = (INT((-1_w2f__i8)) * OpenAD_Symbol_139)
      OpenAD_Symbol_379 = (INT((-1_w2f__i8)) * OpenAD_Symbol_182)
      OpenAD_Symbol_380 = (INT((-1_w2f__i8)) * OpenAD_Symbol_170)
      OpenAD_Symbol_381 = (INT((-1_w2f__i8)) * OpenAD_Symbol_158)
      OpenAD_Symbol_382 = (INT((-1_w2f__i8)) * OpenAD_Symbol_139)
      OpenAD_Symbol_383 = (OpenAD_Symbol_192 *(-5.0D-01))
      OpenAD_Symbol_384 = (OpenAD_Symbol_193 *(-5.0D-01))
      OpenAD_Symbol_385 = (OpenAD_Symbol_188 * INT((-1_w2f__i8)))
      OpenAD_Symbol_386 = (OpenAD_Symbol_189 * INT((-1_w2f__i8)))
      OpenAD_Symbol_387 = (INT((-1_w2f__i8)) * OpenAD_Symbol_187 +
     >  OpenAD_Symbol_184 * OpenAD_Symbol_182)
      OpenAD_Symbol_388 = (OpenAD_Symbol_176 * INT((-1_w2f__i8)))
      OpenAD_Symbol_389 = (OpenAD_Symbol_177 * INT((-1_w2f__i8)))
      OpenAD_Symbol_390 = (INT((-1_w2f__i8)) * OpenAD_Symbol_175 +
     >  OpenAD_Symbol_172 * OpenAD_Symbol_170)
      OpenAD_Symbol_391 = (OpenAD_Symbol_164 * INT((-1_w2f__i8)))
      OpenAD_Symbol_392 = (OpenAD_Symbol_165 * INT((-1_w2f__i8)))
      OpenAD_Symbol_393 = (INT((-1_w2f__i8)) * OpenAD_Symbol_163 +
     >  OpenAD_Symbol_160 * OpenAD_Symbol_158)
      OpenAD_Symbol_394 = (OpenAD_Symbol_152 * 5.0D-01)
      OpenAD_Symbol_395 = (OpenAD_Symbol_153 * 5.0D-01)
      OpenAD_Symbol_396 = (OpenAD_Symbol_142 * OpenAD_Symbol_139)
      OpenAD_Symbol_397 = (OpenAD_Symbol_143 * OpenAD_Symbol_139)
      OpenAD_Symbol_398 = (OpenAD_Symbol_140 * OpenAD_Symbol_138)
      OpenAD_Symbol_399 = (OpenAD_Symbol_141 * OpenAD_Symbol_138)
      OpenAD_Symbol_400 = (OpenAD_Symbol_134 * OpenAD_Symbol_378)
      OpenAD_Symbol_401 = (OpenAD_Symbol_135 * OpenAD_Symbol_378)
      OpenAD_Symbol_402 = (OpenAD_Symbol_132 * OpenAD_Symbol_378)
      OpenAD_Symbol_403 = (OpenAD_Symbol_133 * OpenAD_Symbol_378)
      OpenAD_Symbol_404 = (OpenAD_Symbol_130 * OpenAD_Symbol_378)
      OpenAD_Symbol_405 = (OpenAD_Symbol_131 * OpenAD_Symbol_378)
      OpenAD_Symbol_406 = (OpenAD_Symbol_122 * OpenAD_Symbol_139)
      OpenAD_Symbol_407 = (OpenAD_Symbol_123 * OpenAD_Symbol_139)
      OpenAD_Symbol_408 = (OpenAD_Symbol_120 * OpenAD_Symbol_139)
      OpenAD_Symbol_409 = (OpenAD_Symbol_121 * OpenAD_Symbol_139)
      OpenAD_Symbol_410 = (OpenAD_Symbol_118 * INT((-1_w2f__i8)))
      OpenAD_Symbol_411 = (OpenAD_Symbol_119 * INT((-1_w2f__i8)))
      OpenAD_Symbol_412 = (OpenAD_Symbol_116 * INT((-1_w2f__i8)))
      OpenAD_Symbol_413 = (OpenAD_Symbol_117 * INT((-1_w2f__i8)))
      OpenAD_Symbol_414 = (OpenAD_Symbol_114 * INT((-1_w2f__i8)))
      OpenAD_Symbol_415 = (OpenAD_Symbol_115 * INT((-1_w2f__i8)))
      OpenAD_Symbol_416 = (OpenAD_Symbol_112 * OpenAD_Symbol_382)
      OpenAD_Symbol_417 = (OpenAD_Symbol_113 * OpenAD_Symbol_382)
      OpenAD_Symbol_418 = (OpenAD_Symbol_110 * OpenAD_Symbol_382)
      OpenAD_Symbol_419 = (OpenAD_Symbol_111 * OpenAD_Symbol_382)
      OpenAD_Symbol_420 = (OpenAD_Symbol_148 * 5.0D-01)
      OpenAD_Symbol_421 = (OpenAD_Symbol_149 * 5.0D-01)
      OpenAD_Symbol_422 = (OpenAD_Symbol_146 * 5.0D-01)
      OpenAD_Symbol_423 = (OpenAD_Symbol_147 * 5.0D-01)
      OpenAD_Symbol_424 = (OpenAD_Symbol_144 * 5.0D-01)
      OpenAD_Symbol_425 = (OpenAD_Symbol_145 * 5.0D-01)
      OpenAD_Symbol_426 = (OpenAD_Symbol_148 *(-5.0D-01))
      OpenAD_Symbol_427 = (OpenAD_Symbol_149 *(-5.0D-01))
      OpenAD_Symbol_428 = (OpenAD_Symbol_146 *(-5.0D-01))
      OpenAD_Symbol_429 = (OpenAD_Symbol_147 *(-5.0D-01))
      OpenAD_Symbol_430 = (OpenAD_Symbol_144 *(-5.0D-01))
      OpenAD_Symbol_431 = (OpenAD_Symbol_145 *(-5.0D-01))
      OpenAD_Symbol_432 = (INT((-1_w2f__i8)) * OpenAD_Symbol_396)
      OpenAD_Symbol_433 = (OpenAD_Symbol_128 * OpenAD_Symbol_400)
      OpenAD_Symbol_434 = (OpenAD_Symbol_129 * OpenAD_Symbol_400)
      OpenAD_Symbol_435 = (OpenAD_Symbol_410 * OpenAD_Symbol_400)
      OpenAD_Symbol_436 = (OpenAD_Symbol_411 * OpenAD_Symbol_400)
      OpenAD_Symbol_437 = (OpenAD_Symbol_126 * OpenAD_Symbol_402)
      OpenAD_Symbol_438 = (OpenAD_Symbol_127 * OpenAD_Symbol_402)
      OpenAD_Symbol_439 = (OpenAD_Symbol_412 * OpenAD_Symbol_402)
      OpenAD_Symbol_440 = (OpenAD_Symbol_413 * OpenAD_Symbol_402)
      OpenAD_Symbol_441 = (OpenAD_Symbol_124 * OpenAD_Symbol_404)
      OpenAD_Symbol_442 = (OpenAD_Symbol_125 * OpenAD_Symbol_404)
      OpenAD_Symbol_443 = (OpenAD_Symbol_414 * OpenAD_Symbol_404)
      OpenAD_Symbol_444 = (OpenAD_Symbol_415 * OpenAD_Symbol_404)
      OpenAD_Symbol_445 = (OpenAD_Symbol_397 * 5.0D-01)
      OpenAD_Symbol_446 = (OpenAD_Symbol_398 * 5.0D-01)
      OpenAD_Symbol_447 = (OpenAD_Symbol_399 * 5.0D-01)
      OpenAD_Symbol_448 = (OpenAD_Symbol_401 * 5.0D-01)
      OpenAD_Symbol_449 = (OpenAD_Symbol_403 * 5.0D-01)
      OpenAD_Symbol_450 = (OpenAD_Symbol_405 * 5.0D-01)
      OpenAD_Symbol_451 = (OpenAD_Symbol_406 * 5.0D-01)
      OpenAD_Symbol_452 = (OpenAD_Symbol_407 * 5.0D-01)
      OpenAD_Symbol_453 = (OpenAD_Symbol_408 * 5.0D-01)
      OpenAD_Symbol_454 = (OpenAD_Symbol_409 * 5.0D-01)
      OpenAD_Symbol_455 = (OpenAD_Symbol_416 * 5.0D-01)
      OpenAD_Symbol_456 = (OpenAD_Symbol_417 * 5.0D-01)
      OpenAD_Symbol_457 = (OpenAD_Symbol_418 * 5.0D-01)
      OpenAD_Symbol_458 = (OpenAD_Symbol_419 * 5.0D-01)
      OpenAD_Symbol_459 = (OpenAD_Symbol_383 + OpenAD_Symbol_396 *
     >  5.0D-01)
      OpenAD_Symbol_460 = (INT((-1_w2f__i8)) * OpenAD_Symbol_383 +
     >  OpenAD_Symbol_432 * 5.0D-01)
      OpenAD_Symbol_461 = (OpenAD_Symbol_128 * OpenAD_Symbol_420 +
     >  OpenAD_Symbol_433 * 5.0D-01)
      OpenAD_Symbol_462 = (OpenAD_Symbol_129 * OpenAD_Symbol_420 +
     >  OpenAD_Symbol_434 * 5.0D-01)
      OpenAD_Symbol_463 = (OpenAD_Symbol_410 * OpenAD_Symbol_420 +
     >  OpenAD_Symbol_435 * 5.0D-01)
      OpenAD_Symbol_464 = (OpenAD_Symbol_411 * OpenAD_Symbol_420 +
     >  OpenAD_Symbol_436 * 5.0D-01)
      OpenAD_Symbol_465 = (OpenAD_Symbol_126 * OpenAD_Symbol_422 +
     >  OpenAD_Symbol_437 * 5.0D-01)
      OpenAD_Symbol_466 = (OpenAD_Symbol_127 * OpenAD_Symbol_422 +
     >  OpenAD_Symbol_438 * 5.0D-01)
      OpenAD_Symbol_467 = (OpenAD_Symbol_412 * OpenAD_Symbol_422 +
     >  OpenAD_Symbol_439 * 5.0D-01)
      OpenAD_Symbol_468 = (OpenAD_Symbol_413 * OpenAD_Symbol_422 +
     >  OpenAD_Symbol_440 * 5.0D-01)
      OpenAD_Symbol_469 = (OpenAD_Symbol_124 * OpenAD_Symbol_424 +
     >  OpenAD_Symbol_441 * 5.0D-01)
      OpenAD_Symbol_470 = (OpenAD_Symbol_125 * OpenAD_Symbol_424 +
     >  OpenAD_Symbol_442 * 5.0D-01)
      OpenAD_Symbol_471 = (OpenAD_Symbol_414 * OpenAD_Symbol_424 +
     >  OpenAD_Symbol_443 * 5.0D-01)
      OpenAD_Symbol_472 = (OpenAD_Symbol_415 * OpenAD_Symbol_424 +
     >  OpenAD_Symbol_444 * 5.0D-01)
      OpenAD_Symbol_473 = (OpenAD_Symbol_397 * OpenAD_Symbol_186)
      OpenAD_Symbol_474 = (OpenAD_Symbol_398 * OpenAD_Symbol_186)
      OpenAD_Symbol_475 = (OpenAD_Symbol_183 * OpenAD_Symbol_182 +
     >  OpenAD_Symbol_399 * OpenAD_Symbol_186)
      OpenAD_Symbol_476 = (OpenAD_Symbol_401 * OpenAD_Symbol_186)
      OpenAD_Symbol_477 = (OpenAD_Symbol_403 * OpenAD_Symbol_186)
      OpenAD_Symbol_478 = (OpenAD_Symbol_405 * OpenAD_Symbol_186)
      OpenAD_Symbol_479 = (OpenAD_Symbol_406 * OpenAD_Symbol_186)
      OpenAD_Symbol_480 = (OpenAD_Symbol_407 * OpenAD_Symbol_186)
      OpenAD_Symbol_481 = (OpenAD_Symbol_408 * OpenAD_Symbol_186)
      OpenAD_Symbol_482 = (OpenAD_Symbol_409 * OpenAD_Symbol_186)
      OpenAD_Symbol_483 = (OpenAD_Symbol_416 * OpenAD_Symbol_186)
      OpenAD_Symbol_484 = (OpenAD_Symbol_417 * OpenAD_Symbol_186)
      OpenAD_Symbol_485 = (OpenAD_Symbol_418 * OpenAD_Symbol_186)
      OpenAD_Symbol_486 = (OpenAD_Symbol_419 * OpenAD_Symbol_186)
      OpenAD_Symbol_487 = (OpenAD_Symbol_181 + OpenAD_Symbol_396 *
     >  OpenAD_Symbol_186)
      OpenAD_Symbol_488 = (INT((-1_w2f__i8)) * OpenAD_Symbol_181 +
     >  OpenAD_Symbol_432 * OpenAD_Symbol_186)
      OpenAD_Symbol_489 = (OpenAD_Symbol_433 * OpenAD_Symbol_186)
      OpenAD_Symbol_490 = (OpenAD_Symbol_434 * OpenAD_Symbol_186)
      OpenAD_Symbol_491 = (OpenAD_Symbol_435 * OpenAD_Symbol_186)
      OpenAD_Symbol_492 = (OpenAD_Symbol_436 * OpenAD_Symbol_186)
      OpenAD_Symbol_493 = (OpenAD_Symbol_126 * OpenAD_Symbol_178 +
     >  OpenAD_Symbol_437 * OpenAD_Symbol_186)
      OpenAD_Symbol_494 = (OpenAD_Symbol_127 * OpenAD_Symbol_178 +
     >  OpenAD_Symbol_438 * OpenAD_Symbol_186)
      OpenAD_Symbol_495 = (OpenAD_Symbol_412 * OpenAD_Symbol_178 +
     >  OpenAD_Symbol_439 * OpenAD_Symbol_186)
      OpenAD_Symbol_496 = (OpenAD_Symbol_413 * OpenAD_Symbol_178 +
     >  OpenAD_Symbol_440 * OpenAD_Symbol_186)
      OpenAD_Symbol_497 = (OpenAD_Symbol_124 * OpenAD_Symbol_385 +
     >  OpenAD_Symbol_441 * OpenAD_Symbol_186)
      OpenAD_Symbol_498 = (OpenAD_Symbol_125 * OpenAD_Symbol_385 +
     >  OpenAD_Symbol_442 * OpenAD_Symbol_186)
      OpenAD_Symbol_499 = (OpenAD_Symbol_414 * OpenAD_Symbol_385 +
     >  OpenAD_Symbol_443 * OpenAD_Symbol_186)
      OpenAD_Symbol_500 = (OpenAD_Symbol_415 * OpenAD_Symbol_385 +
     >  OpenAD_Symbol_444 * OpenAD_Symbol_186)
      OpenAD_Symbol_501 = (OpenAD_Symbol_397 * OpenAD_Symbol_174)
      OpenAD_Symbol_502 = (OpenAD_Symbol_398 * OpenAD_Symbol_174)
      OpenAD_Symbol_503 = (OpenAD_Symbol_171 * OpenAD_Symbol_170 +
     >  OpenAD_Symbol_399 * OpenAD_Symbol_174)
      OpenAD_Symbol_504 = (OpenAD_Symbol_401 * OpenAD_Symbol_174)
      OpenAD_Symbol_505 = (OpenAD_Symbol_403 * OpenAD_Symbol_174)
      OpenAD_Symbol_506 = (OpenAD_Symbol_405 * OpenAD_Symbol_174)
      OpenAD_Symbol_507 = (OpenAD_Symbol_406 * OpenAD_Symbol_174)
      OpenAD_Symbol_508 = (OpenAD_Symbol_407 * OpenAD_Symbol_174)
      OpenAD_Symbol_509 = (OpenAD_Symbol_408 * OpenAD_Symbol_174)
      OpenAD_Symbol_510 = (OpenAD_Symbol_409 * OpenAD_Symbol_174)
      OpenAD_Symbol_511 = (OpenAD_Symbol_416 * OpenAD_Symbol_174)
      OpenAD_Symbol_512 = (OpenAD_Symbol_417 * OpenAD_Symbol_174)
      OpenAD_Symbol_513 = (OpenAD_Symbol_418 * OpenAD_Symbol_174)
      OpenAD_Symbol_514 = (OpenAD_Symbol_419 * OpenAD_Symbol_174)
      OpenAD_Symbol_515 = (OpenAD_Symbol_169 + OpenAD_Symbol_396 *
     >  OpenAD_Symbol_174)
      OpenAD_Symbol_516 = (INT((-1_w2f__i8)) * OpenAD_Symbol_169 +
     >  OpenAD_Symbol_432 * OpenAD_Symbol_174)
      OpenAD_Symbol_517 = (OpenAD_Symbol_128 * OpenAD_Symbol_388 +
     >  OpenAD_Symbol_433 * OpenAD_Symbol_174)
      OpenAD_Symbol_518 = (OpenAD_Symbol_129 * OpenAD_Symbol_388 +
     >  OpenAD_Symbol_434 * OpenAD_Symbol_174)
      OpenAD_Symbol_519 = (OpenAD_Symbol_410 * OpenAD_Symbol_388 +
     >  OpenAD_Symbol_435 * OpenAD_Symbol_174)
      OpenAD_Symbol_520 = (OpenAD_Symbol_411 * OpenAD_Symbol_388 +
     >  OpenAD_Symbol_436 * OpenAD_Symbol_174)
      OpenAD_Symbol_521 = (OpenAD_Symbol_437 * OpenAD_Symbol_174)
      OpenAD_Symbol_522 = (OpenAD_Symbol_438 * OpenAD_Symbol_174)
      OpenAD_Symbol_523 = (OpenAD_Symbol_439 * OpenAD_Symbol_174)
      OpenAD_Symbol_524 = (OpenAD_Symbol_440 * OpenAD_Symbol_174)
      OpenAD_Symbol_525 = (OpenAD_Symbol_124 * OpenAD_Symbol_166 +
     >  OpenAD_Symbol_441 * OpenAD_Symbol_174)
      OpenAD_Symbol_526 = (OpenAD_Symbol_125 * OpenAD_Symbol_166 +
     >  OpenAD_Symbol_442 * OpenAD_Symbol_174)
      OpenAD_Symbol_527 = (OpenAD_Symbol_414 * OpenAD_Symbol_166 +
     >  OpenAD_Symbol_443 * OpenAD_Symbol_174)
      OpenAD_Symbol_528 = (OpenAD_Symbol_415 * OpenAD_Symbol_166 +
     >  OpenAD_Symbol_444 * OpenAD_Symbol_174)
      OpenAD_Symbol_529 = (OpenAD_Symbol_397 * OpenAD_Symbol_162)
      OpenAD_Symbol_530 = (OpenAD_Symbol_398 * OpenAD_Symbol_162)
      OpenAD_Symbol_531 = (OpenAD_Symbol_159 * OpenAD_Symbol_158 +
     >  OpenAD_Symbol_399 * OpenAD_Symbol_162)
      OpenAD_Symbol_532 = (OpenAD_Symbol_401 * OpenAD_Symbol_162)
      OpenAD_Symbol_533 = (OpenAD_Symbol_403 * OpenAD_Symbol_162)
      OpenAD_Symbol_534 = (OpenAD_Symbol_405 * OpenAD_Symbol_162)
      OpenAD_Symbol_535 = (OpenAD_Symbol_406 * OpenAD_Symbol_162)
      OpenAD_Symbol_536 = (OpenAD_Symbol_407 * OpenAD_Symbol_162)
      OpenAD_Symbol_537 = (OpenAD_Symbol_408 * OpenAD_Symbol_162)
      OpenAD_Symbol_538 = (OpenAD_Symbol_409 * OpenAD_Symbol_162)
      OpenAD_Symbol_539 = (OpenAD_Symbol_416 * OpenAD_Symbol_162)
      OpenAD_Symbol_540 = (OpenAD_Symbol_417 * OpenAD_Symbol_162)
      OpenAD_Symbol_541 = (OpenAD_Symbol_418 * OpenAD_Symbol_162)
      OpenAD_Symbol_542 = (OpenAD_Symbol_419 * OpenAD_Symbol_162)
      OpenAD_Symbol_543 = (OpenAD_Symbol_157 + OpenAD_Symbol_396 *
     >  OpenAD_Symbol_162)
      OpenAD_Symbol_544 = (INT((-1_w2f__i8)) * OpenAD_Symbol_157 +
     >  OpenAD_Symbol_432 * OpenAD_Symbol_162)
      OpenAD_Symbol_545 = (OpenAD_Symbol_128 * OpenAD_Symbol_154 +
     >  OpenAD_Symbol_433 * OpenAD_Symbol_162)
      OpenAD_Symbol_546 = (OpenAD_Symbol_129 * OpenAD_Symbol_154 +
     >  OpenAD_Symbol_434 * OpenAD_Symbol_162)
      OpenAD_Symbol_547 = (OpenAD_Symbol_410 * OpenAD_Symbol_154 +
     >  OpenAD_Symbol_435 * OpenAD_Symbol_162)
      OpenAD_Symbol_548 = (OpenAD_Symbol_411 * OpenAD_Symbol_154 +
     >  OpenAD_Symbol_436 * OpenAD_Symbol_162)
      OpenAD_Symbol_549 = (OpenAD_Symbol_126 * OpenAD_Symbol_391 +
     >  OpenAD_Symbol_437 * OpenAD_Symbol_162)
      OpenAD_Symbol_550 = (OpenAD_Symbol_127 * OpenAD_Symbol_391 +
     >  OpenAD_Symbol_438 * OpenAD_Symbol_162)
      OpenAD_Symbol_551 = (OpenAD_Symbol_412 * OpenAD_Symbol_391 +
     >  OpenAD_Symbol_439 * OpenAD_Symbol_162)
      OpenAD_Symbol_552 = (OpenAD_Symbol_413 * OpenAD_Symbol_391 +
     >  OpenAD_Symbol_440 * OpenAD_Symbol_162)
      OpenAD_Symbol_553 = (OpenAD_Symbol_441 * OpenAD_Symbol_162)
      OpenAD_Symbol_554 = (OpenAD_Symbol_442 * OpenAD_Symbol_162)
      OpenAD_Symbol_555 = (OpenAD_Symbol_443 * OpenAD_Symbol_162)
      OpenAD_Symbol_556 = (OpenAD_Symbol_444 * OpenAD_Symbol_162)
      OpenAD_Symbol_557 = (OpenAD_Symbol_397 * 5.0D-01)
      OpenAD_Symbol_558 = (OpenAD_Symbol_398 * 5.0D-01)
      OpenAD_Symbol_559 = (OpenAD_Symbol_399 * 5.0D-01)
      OpenAD_Symbol_560 = (OpenAD_Symbol_401 * 5.0D-01)
      OpenAD_Symbol_561 = (OpenAD_Symbol_403 * 5.0D-01)
      OpenAD_Symbol_562 = (OpenAD_Symbol_405 * 5.0D-01)
      OpenAD_Symbol_563 = (OpenAD_Symbol_406 * 5.0D-01)
      OpenAD_Symbol_564 = (OpenAD_Symbol_407 * 5.0D-01)
      OpenAD_Symbol_565 = (OpenAD_Symbol_408 * 5.0D-01)
      OpenAD_Symbol_566 = (OpenAD_Symbol_409 * 5.0D-01)
      OpenAD_Symbol_567 = (OpenAD_Symbol_416 * 5.0D-01)
      OpenAD_Symbol_568 = (OpenAD_Symbol_417 * 5.0D-01)
      OpenAD_Symbol_569 = (OpenAD_Symbol_418 * 5.0D-01)
      OpenAD_Symbol_570 = (OpenAD_Symbol_419 * 5.0D-01)
      OpenAD_Symbol_571 = (OpenAD_Symbol_394 + OpenAD_Symbol_396 *
     >  5.0D-01)
      OpenAD_Symbol_572 = (INT((-1_w2f__i8)) * OpenAD_Symbol_394 +
     >  OpenAD_Symbol_432 * 5.0D-01)
      OpenAD_Symbol_573 = (OpenAD_Symbol_128 * OpenAD_Symbol_426 +
     >  OpenAD_Symbol_433 * 5.0D-01)
      OpenAD_Symbol_574 = (OpenAD_Symbol_129 * OpenAD_Symbol_426 +
     >  OpenAD_Symbol_434 * 5.0D-01)
      OpenAD_Symbol_575 = (OpenAD_Symbol_410 * OpenAD_Symbol_426 +
     >  OpenAD_Symbol_435 * 5.0D-01)
      OpenAD_Symbol_576 = (OpenAD_Symbol_411 * OpenAD_Symbol_426 +
     >  OpenAD_Symbol_436 * 5.0D-01)
      OpenAD_Symbol_577 = (OpenAD_Symbol_126 * OpenAD_Symbol_428 +
     >  OpenAD_Symbol_437 * 5.0D-01)
      OpenAD_Symbol_578 = (OpenAD_Symbol_127 * OpenAD_Symbol_428 +
     >  OpenAD_Symbol_438 * 5.0D-01)
      OpenAD_Symbol_579 = (OpenAD_Symbol_412 * OpenAD_Symbol_428 +
     >  OpenAD_Symbol_439 * 5.0D-01)
      OpenAD_Symbol_580 = (OpenAD_Symbol_413 * OpenAD_Symbol_428 +
     >  OpenAD_Symbol_440 * 5.0D-01)
      OpenAD_Symbol_581 = (OpenAD_Symbol_124 * OpenAD_Symbol_430 +
     >  OpenAD_Symbol_441 * 5.0D-01)
      OpenAD_Symbol_582 = (OpenAD_Symbol_125 * OpenAD_Symbol_430 +
     >  OpenAD_Symbol_442 * 5.0D-01)
      OpenAD_Symbol_583 = (OpenAD_Symbol_414 * OpenAD_Symbol_430 +
     >  OpenAD_Symbol_443 * 5.0D-01)
      OpenAD_Symbol_584 = (OpenAD_Symbol_415 * OpenAD_Symbol_430 +
     >  OpenAD_Symbol_444 * 5.0D-01)
      CALL setderiv(OpenAD_Symbol_585,ALAMCM)
      CALL setderiv(OpenAD_Symbol_586,ALAMCP)
      CALL setderiv(OpenAD_Symbol_587,ALAMU)
      CALL sax(OpenAD_Symbol_114,PRIML2,RUL)
      CALL saxpy(OpenAD_Symbol_115,PRIML3,RUL)
      CALL sax(OpenAD_Symbol_116,PRIML2,RVL)
      CALL saxpy(OpenAD_Symbol_117,PRIML4,RVL)
      CALL sax(OpenAD_Symbol_118,PRIML2,RWL)
      CALL saxpy(OpenAD_Symbol_119,PRIML5,RWL)
      CALL sax(5.0D-01,LAMCM,ALAMCM)
      CALL saxpy(-5.0D-01,OpenAD_Symbol_585,ALAMCM)
      CALL sax(5.0D-01,LAMCP,ALAMCP)
      CALL saxpy(-5.0D-01,OpenAD_Symbol_586,ALAMCP)
      CALL sax(5.0D-01,LAMU,ALAMU)
      CALL saxpy(-5.0D-01,OpenAD_Symbol_587,ALAMU)
      CALL sax(OpenAD_Symbol_112,PRIML2,EL)
      CALL saxpy(OpenAD_Symbol_113,THETAL,EL)
      CALL saxpy(OpenAD_Symbol_110,PRIML1,EL)
      CALL saxpy(OpenAD_Symbol_111,GM1INV,EL)
      CALL sax(OpenAD_Symbol_395,UHAT,ALP1)
      CALL saxpy(OpenAD_Symbol_427,NZHAT,ALP1)
      CALL saxpy(OpenAD_Symbol_429,NYHAT,ALP1)
      CALL saxpy(OpenAD_Symbol_431,NXHAT,ALP1)
      CALL saxpy(OpenAD_Symbol_557,THTAVE,ALP1)
      CALL saxpy(OpenAD_Symbol_558,GM1,ALP1)
      CALL saxpy(OpenAD_Symbol_559,CAVE,ALP1)
      CALL saxpy(OpenAD_Symbol_560,WAVE,ALP1)
      CALL saxpy(OpenAD_Symbol_561,VAVE,ALP1)
      CALL saxpy(OpenAD_Symbol_562,UAVE,ALP1)
      CALL saxpy(OpenAD_Symbol_563,PRIMR2,ALP1)
      CALL saxpy(OpenAD_Symbol_564,THETAR,ALP1)
      CALL saxpy(OpenAD_Symbol_565,PRIMR1,ALP1)
      CALL saxpy(OpenAD_Symbol_566,GM1INV,ALP1)
      CALL saxpy(OpenAD_Symbol_567,PRIML2,ALP1)
      CALL saxpy(OpenAD_Symbol_568,THETAL,ALP1)
      CALL saxpy(OpenAD_Symbol_569,PRIML1,ALP1)
      CALL saxpy(OpenAD_Symbol_570,GM1INV,ALP1)
      CALL saxpy(OpenAD_Symbol_571,PRIMR2,ALP1)
      CALL saxpy(OpenAD_Symbol_572,PRIML2,ALP1)
      CALL saxpy(OpenAD_Symbol_573,PRIMR2,ALP1)
      CALL saxpy(OpenAD_Symbol_574,PRIMR5,ALP1)
      CALL saxpy(OpenAD_Symbol_575,PRIML2,ALP1)
      CALL saxpy(OpenAD_Symbol_576,PRIML5,ALP1)
      CALL saxpy(OpenAD_Symbol_577,PRIMR2,ALP1)
      CALL saxpy(OpenAD_Symbol_578,PRIMR4,ALP1)
      CALL saxpy(OpenAD_Symbol_579,PRIML2,ALP1)
      CALL saxpy(OpenAD_Symbol_580,PRIML4,ALP1)
      CALL saxpy(OpenAD_Symbol_581,PRIMR2,ALP1)
      CALL saxpy(OpenAD_Symbol_582,PRIMR3,ALP1)
      CALL saxpy(OpenAD_Symbol_583,PRIML2,ALP1)
      CALL saxpy(OpenAD_Symbol_584,PRIML3,ALP1)
      CALL sax(OpenAD_Symbol_384,UHAT,ALP5)
      CALL saxpy(OpenAD_Symbol_421,NZHAT,ALP5)
      CALL saxpy(OpenAD_Symbol_423,NYHAT,ALP5)
      CALL saxpy(OpenAD_Symbol_425,NXHAT,ALP5)
      CALL saxpy(OpenAD_Symbol_445,THTAVE,ALP5)
      CALL saxpy(OpenAD_Symbol_446,GM1,ALP5)
      CALL saxpy(OpenAD_Symbol_447,CAVE,ALP5)
      CALL saxpy(OpenAD_Symbol_448,WAVE,ALP5)
      CALL saxpy(OpenAD_Symbol_449,VAVE,ALP5)
      CALL saxpy(OpenAD_Symbol_450,UAVE,ALP5)
      CALL saxpy(OpenAD_Symbol_451,PRIMR2,ALP5)
      CALL saxpy(OpenAD_Symbol_452,THETAR,ALP5)
      CALL saxpy(OpenAD_Symbol_453,PRIMR1,ALP5)
      CALL saxpy(OpenAD_Symbol_454,GM1INV,ALP5)
      CALL saxpy(OpenAD_Symbol_455,PRIML2,ALP5)
      CALL saxpy(OpenAD_Symbol_456,THETAL,ALP5)
      CALL saxpy(OpenAD_Symbol_457,PRIML1,ALP5)
      CALL saxpy(OpenAD_Symbol_458,GM1INV,ALP5)
      CALL saxpy(OpenAD_Symbol_459,PRIMR2,ALP5)
      CALL saxpy(OpenAD_Symbol_460,PRIML2,ALP5)
      CALL saxpy(OpenAD_Symbol_461,PRIMR2,ALP5)
      CALL saxpy(OpenAD_Symbol_462,PRIMR5,ALP5)
      CALL saxpy(OpenAD_Symbol_463,PRIML2,ALP5)
      CALL saxpy(OpenAD_Symbol_464,PRIML5,ALP5)
      CALL saxpy(OpenAD_Symbol_465,PRIMR2,ALP5)
      CALL saxpy(OpenAD_Symbol_466,PRIMR4,ALP5)
      CALL saxpy(OpenAD_Symbol_467,PRIML2,ALP5)
      CALL saxpy(OpenAD_Symbol_468,PRIML4,ALP5)
      CALL saxpy(OpenAD_Symbol_469,PRIMR2,ALP5)
      CALL saxpy(OpenAD_Symbol_470,PRIMR3,ALP5)
      CALL saxpy(OpenAD_Symbol_471,PRIML2,ALP5)
      CALL saxpy(OpenAD_Symbol_472,PRIML3,ALP5)
      CALL sax(OpenAD_Symbol_381,UTILDE,ALP2)
      CALL saxpy(OpenAD_Symbol_392,NZHAT,ALP2)
      CALL saxpy(OpenAD_Symbol_393,NXHAT,ALP2)
      CALL saxpy(OpenAD_Symbol_155,NYHAT,ALP2)
      CALL saxpy(OpenAD_Symbol_529,THTAVE,ALP2)
      CALL saxpy(OpenAD_Symbol_530,GM1,ALP2)
      CALL saxpy(OpenAD_Symbol_531,CAVE,ALP2)
      CALL saxpy(OpenAD_Symbol_532,WAVE,ALP2)
      CALL saxpy(OpenAD_Symbol_533,VAVE,ALP2)
      CALL saxpy(OpenAD_Symbol_534,UAVE,ALP2)
      CALL saxpy(OpenAD_Symbol_535,PRIMR2,ALP2)
      CALL saxpy(OpenAD_Symbol_536,THETAR,ALP2)
      CALL saxpy(OpenAD_Symbol_537,PRIMR1,ALP2)
      CALL saxpy(OpenAD_Symbol_538,GM1INV,ALP2)
      CALL saxpy(OpenAD_Symbol_539,PRIML2,ALP2)
      CALL saxpy(OpenAD_Symbol_540,THETAL,ALP2)
      CALL saxpy(OpenAD_Symbol_541,PRIML1,ALP2)
      CALL saxpy(OpenAD_Symbol_542,GM1INV,ALP2)
      CALL saxpy(OpenAD_Symbol_543,PRIMR2,ALP2)
      CALL saxpy(OpenAD_Symbol_544,PRIML2,ALP2)
      CALL saxpy(OpenAD_Symbol_545,PRIMR2,ALP2)
      CALL saxpy(OpenAD_Symbol_546,PRIMR5,ALP2)
      CALL saxpy(OpenAD_Symbol_547,PRIML2,ALP2)
      CALL saxpy(OpenAD_Symbol_548,PRIML5,ALP2)
      CALL saxpy(OpenAD_Symbol_549,PRIMR2,ALP2)
      CALL saxpy(OpenAD_Symbol_550,PRIMR4,ALP2)
      CALL saxpy(OpenAD_Symbol_551,PRIML2,ALP2)
      CALL saxpy(OpenAD_Symbol_552,PRIML4,ALP2)
      CALL saxpy(OpenAD_Symbol_553,PRIMR2,ALP2)
      CALL saxpy(OpenAD_Symbol_554,PRIMR3,ALP2)
      CALL saxpy(OpenAD_Symbol_555,PRIML2,ALP2)
      CALL saxpy(OpenAD_Symbol_556,PRIML3,ALP2)
      CALL sax(OpenAD_Symbol_380,VTILDE,ALP3)
      CALL saxpy(OpenAD_Symbol_389,NXHAT,ALP3)
      CALL saxpy(OpenAD_Symbol_390,NYHAT,ALP3)
      CALL saxpy(OpenAD_Symbol_167,NZHAT,ALP3)
      CALL saxpy(OpenAD_Symbol_501,THTAVE,ALP3)
      CALL saxpy(OpenAD_Symbol_502,GM1,ALP3)
      CALL saxpy(OpenAD_Symbol_503,CAVE,ALP3)
      CALL saxpy(OpenAD_Symbol_504,WAVE,ALP3)
      CALL saxpy(OpenAD_Symbol_505,VAVE,ALP3)
      CALL saxpy(OpenAD_Symbol_506,UAVE,ALP3)
      CALL saxpy(OpenAD_Symbol_507,PRIMR2,ALP3)
      CALL saxpy(OpenAD_Symbol_508,THETAR,ALP3)
      CALL saxpy(OpenAD_Symbol_509,PRIMR1,ALP3)
      CALL saxpy(OpenAD_Symbol_510,GM1INV,ALP3)
      CALL saxpy(OpenAD_Symbol_511,PRIML2,ALP3)
      CALL saxpy(OpenAD_Symbol_512,THETAL,ALP3)
      CALL saxpy(OpenAD_Symbol_513,PRIML1,ALP3)
      CALL saxpy(OpenAD_Symbol_514,GM1INV,ALP3)
      CALL saxpy(OpenAD_Symbol_515,PRIMR2,ALP3)
      CALL saxpy(OpenAD_Symbol_516,PRIML2,ALP3)
      CALL saxpy(OpenAD_Symbol_517,PRIMR2,ALP3)
      CALL saxpy(OpenAD_Symbol_518,PRIMR5,ALP3)
      CALL saxpy(OpenAD_Symbol_519,PRIML2,ALP3)
      CALL saxpy(OpenAD_Symbol_520,PRIML5,ALP3)
      CALL saxpy(OpenAD_Symbol_521,PRIMR2,ALP3)
      CALL saxpy(OpenAD_Symbol_522,PRIMR4,ALP3)
      CALL saxpy(OpenAD_Symbol_523,PRIML2,ALP3)
      CALL saxpy(OpenAD_Symbol_524,PRIML4,ALP3)
      CALL saxpy(OpenAD_Symbol_525,PRIMR2,ALP3)
      CALL saxpy(OpenAD_Symbol_526,PRIMR3,ALP3)
      CALL saxpy(OpenAD_Symbol_527,PRIML2,ALP3)
      CALL saxpy(OpenAD_Symbol_528,PRIML3,ALP3)
      CALL sax(OpenAD_Symbol_379,WTILDE,ALP4)
      CALL saxpy(OpenAD_Symbol_386,NYHAT,ALP4)
      CALL saxpy(OpenAD_Symbol_387,NZHAT,ALP4)
      CALL saxpy(OpenAD_Symbol_179,NXHAT,ALP4)
      CALL saxpy(OpenAD_Symbol_473,THTAVE,ALP4)
      CALL saxpy(OpenAD_Symbol_474,GM1,ALP4)
      CALL saxpy(OpenAD_Symbol_475,CAVE,ALP4)
      CALL saxpy(OpenAD_Symbol_476,WAVE,ALP4)
      CALL saxpy(OpenAD_Symbol_477,VAVE,ALP4)
      CALL saxpy(OpenAD_Symbol_478,UAVE,ALP4)
      CALL saxpy(OpenAD_Symbol_479,PRIMR2,ALP4)
      CALL saxpy(OpenAD_Symbol_480,THETAR,ALP4)
      CALL saxpy(OpenAD_Symbol_481,PRIMR1,ALP4)
      CALL saxpy(OpenAD_Symbol_482,GM1INV,ALP4)
      CALL saxpy(OpenAD_Symbol_483,PRIML2,ALP4)
      CALL saxpy(OpenAD_Symbol_484,THETAL,ALP4)
      CALL saxpy(OpenAD_Symbol_485,PRIML1,ALP4)
      CALL saxpy(OpenAD_Symbol_486,GM1INV,ALP4)
      CALL saxpy(OpenAD_Symbol_487,PRIMR2,ALP4)
      CALL saxpy(OpenAD_Symbol_488,PRIML2,ALP4)
      CALL saxpy(OpenAD_Symbol_489,PRIMR2,ALP4)
      CALL saxpy(OpenAD_Symbol_490,PRIMR5,ALP4)
      CALL saxpy(OpenAD_Symbol_491,PRIML2,ALP4)
      CALL saxpy(OpenAD_Symbol_492,PRIML5,ALP4)
      CALL saxpy(OpenAD_Symbol_493,PRIMR2,ALP4)
      CALL saxpy(OpenAD_Symbol_494,PRIMR4,ALP4)
      CALL saxpy(OpenAD_Symbol_495,PRIML2,ALP4)
      CALL saxpy(OpenAD_Symbol_496,PRIML4,ALP4)
      CALL saxpy(OpenAD_Symbol_497,PRIMR2,ALP4)
      CALL saxpy(OpenAD_Symbol_498,PRIMR3,ALP4)
      CALL saxpy(OpenAD_Symbol_499,PRIML2,ALP4)
      CALL saxpy(OpenAD_Symbol_500,PRIML3,ALP4)
      OpenAD_Symbol_196 = (ALAMCM%v*ALP1%v)
      OpenAD_Symbol_194 = ALP1%v
      OpenAD_Symbol_195 = ALAMCM%v
      ALP1%v = OpenAD_Symbol_196
      OpenAD_Symbol_199 = (ALAMU%v*ALP2%v)
      OpenAD_Symbol_197 = ALP2%v
      OpenAD_Symbol_198 = ALAMU%v
      ALP2%v = OpenAD_Symbol_199
      OpenAD_Symbol_202 = (ALAMU%v*ALP3%v)
      OpenAD_Symbol_200 = ALP3%v
      OpenAD_Symbol_201 = ALAMU%v
      ALP3%v = OpenAD_Symbol_202
      OpenAD_Symbol_205 = (ALAMU%v*ALP4%v)
      OpenAD_Symbol_203 = ALP4%v
      OpenAD_Symbol_204 = ALAMU%v
      ALP4%v = OpenAD_Symbol_205
      OpenAD_Symbol_208 = (ALAMCP%v*ALP5%v)
      OpenAD_Symbol_206 = ALP5%v
      OpenAD_Symbol_207 = ALAMCP%v
      ALP5%v = OpenAD_Symbol_208
      ALP15P%v = (ALP1%v+ALP5%v)
      ALP15M%v = (ALP1%v-ALP5%v)
      MU%v = ((ALP15P%v/CAVE%v)+ALP2%v*NXHAT%v+ALP3%v*NYHAT%v+ALP4%v*NZH
     +AT%v)
      OpenAD_Symbol_209 = (INT(1 _w2f__i8)/CAVE%v)
      OpenAD_Symbol_210 = (-(ALP15P%v/(CAVE%v*CAVE%v)))
      OpenAD_Symbol_211 = NXHAT%v
      OpenAD_Symbol_212 = ALP2%v
      OpenAD_Symbol_213 = NYHAT%v
      OpenAD_Symbol_214 = ALP3%v
      OpenAD_Symbol_215 = NZHAT%v
      OpenAD_Symbol_216 = ALP4%v
      OpenAD_Symbol_219 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_Symbol_219-ALP15M%v*UHAT%v
     ++ALP2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_Symbol_217 = THTAVE%v
      OpenAD_Symbol_218 = MU%v
      OpenAD_Symbol_220 = OpenAD_Symbol_219
      OpenAD_Symbol_222 = CAVE%v
      OpenAD_Symbol_223 = GM1INV%v
      OpenAD_Symbol_221 = ALP15P%v
      OpenAD_Symbol_224 = UHAT%v
      OpenAD_Symbol_225 = ALP15M%v
      OpenAD_Symbol_226 = UTILDE%v
      OpenAD_Symbol_227 = ALP2%v
      OpenAD_Symbol_228 = VTILDE%v
      OpenAD_Symbol_229 = ALP3%v
      OpenAD_Symbol_230 = WTILDE%v
      OpenAD_Symbol_231 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_Symbol_232 = NZHAT%v
      OpenAD_Symbol_233 = ALP3%v
      OpenAD_Symbol_234 = UAVE%v
      OpenAD_Symbol_235 = MU%v
      OpenAD_Symbol_236 = NXHAT%v
      OpenAD_Symbol_237 = ALP15M%v
      OpenAD_Symbol_238 = NYHAT%v
      OpenAD_Symbol_239 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_Symbol_240 = NXHAT%v
      OpenAD_Symbol_241 = ALP4%v
      OpenAD_Symbol_242 = VAVE%v
      OpenAD_Symbol_243 = MU%v
      OpenAD_Symbol_244 = NYHAT%v
      OpenAD_Symbol_245 = ALP15M%v
      OpenAD_Symbol_246 = NZHAT%v
      OpenAD_Symbol_247 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_Symbol_248 = NYHAT%v
      OpenAD_Symbol_249 = ALP2%v
      OpenAD_Symbol_250 = WAVE%v
      OpenAD_Symbol_251 = MU%v
      OpenAD_Symbol_252 = NZHAT%v
      OpenAD_Symbol_253 = ALP15M%v
      OpenAD_Symbol_254 = NXHAT%v
      OpenAD_Symbol_255 = ALP3%v
      UHATL%v = (PRIML3%v*NXHAT%v+PRIML4%v*NYHAT%v+PRIML5%v*NZHAT%v)
      OpenAD_Symbol_256 = NXHAT%v
      OpenAD_Symbol_257 = PRIML3%v
      OpenAD_Symbol_258 = NYHAT%v
      OpenAD_Symbol_259 = PRIML4%v
      OpenAD_Symbol_260 = NZHAT%v
      OpenAD_Symbol_261 = PRIML5%v
      OpenAD_Symbol_265 = (PRIML1%v+EL%v)
      OpenAD_Symbol_262 = (DSS1%v+UHATL%v*OpenAD_Symbol_265)
      FLUX1%v = (NSIZE%v*OpenAD_Symbol_262)
      OpenAD_Symbol_263 = OpenAD_Symbol_262
      OpenAD_Symbol_266 = OpenAD_Symbol_265
      OpenAD_Symbol_267 = UHATL%v
      OpenAD_Symbol_264 = NSIZE%v
      OpenAD_Symbol_268 = (DSS2%v+PRIML2%v*UHATL%v)
      FLUX2%v = (NSIZE%v*OpenAD_Symbol_268)
      OpenAD_Symbol_269 = OpenAD_Symbol_268
      OpenAD_Symbol_271 = UHATL%v
      OpenAD_Symbol_272 = PRIML2%v
      OpenAD_Symbol_270 = NSIZE%v
      OpenAD_Symbol_273 = (DSS3%v+PRIML1%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX3%v = (NSIZE%v*OpenAD_Symbol_273)
      OpenAD_Symbol_274 = OpenAD_Symbol_273
      OpenAD_Symbol_276 = NXHAT%v
      OpenAD_Symbol_277 = PRIML1%v
      OpenAD_Symbol_278 = UHATL%v
      OpenAD_Symbol_279 = RUL%v
      OpenAD_Symbol_275 = NSIZE%v
      OpenAD_Symbol_280 = (DSS4%v+PRIML1%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX4%v = (NSIZE%v*OpenAD_Symbol_280)
      OpenAD_Symbol_281 = OpenAD_Symbol_280
      OpenAD_Symbol_283 = NYHAT%v
      OpenAD_Symbol_284 = PRIML1%v
      OpenAD_Symbol_285 = UHATL%v
      OpenAD_Symbol_286 = RVL%v
      OpenAD_Symbol_282 = NSIZE%v
      OpenAD_Symbol_287 = (DSS5%v+PRIML1%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX5%v = (NSIZE%v*OpenAD_Symbol_287)
      OpenAD_Symbol_288 = OpenAD_Symbol_287
      OpenAD_Symbol_290 = NZHAT%v
      OpenAD_Symbol_291 = PRIML1%v
      OpenAD_Symbol_292 = UHATL%v
      OpenAD_Symbol_293 = RWL%v
      OpenAD_Symbol_289 = NSIZE%v
      OpenAD_Symbol_588 = (INT((-1_w2f__i8)) * OpenAD_Symbol_289)
      OpenAD_Symbol_589 = (INT((-1_w2f__i8)) * OpenAD_Symbol_282)
      OpenAD_Symbol_590 = (INT((-1_w2f__i8)) * OpenAD_Symbol_275)
      OpenAD_Symbol_591 = (INT((-1_w2f__i8)) * OpenAD_Symbol_289)
      OpenAD_Symbol_592 = (INT((-1_w2f__i8)) * OpenAD_Symbol_282)
      OpenAD_Symbol_593 = (INT((-1_w2f__i8)) * OpenAD_Symbol_275)
      OpenAD_Symbol_594 = (OpenAD_Symbol_250 * OpenAD_Symbol_289)
      OpenAD_Symbol_595 = (OpenAD_Symbol_251 * OpenAD_Symbol_289)
      OpenAD_Symbol_596 = (OpenAD_Symbol_242 * OpenAD_Symbol_282)
      OpenAD_Symbol_597 = (OpenAD_Symbol_243 * OpenAD_Symbol_282)
      OpenAD_Symbol_598 = (OpenAD_Symbol_234 * OpenAD_Symbol_275)
      OpenAD_Symbol_599 = (OpenAD_Symbol_235 * OpenAD_Symbol_275)
      OpenAD_Symbol_600 = (OpenAD_Symbol_217 * OpenAD_Symbol_264)
      OpenAD_Symbol_601 = (OpenAD_Symbol_218 * OpenAD_Symbol_264)
      OpenAD_Symbol_602 = (OpenAD_Symbol_292 * OpenAD_Symbol_289)
      OpenAD_Symbol_603 = (OpenAD_Symbol_293 * OpenAD_Symbol_289)
      OpenAD_Symbol_604 = (OpenAD_Symbol_285 * OpenAD_Symbol_282)
      OpenAD_Symbol_605 = (OpenAD_Symbol_286 * OpenAD_Symbol_282)
      OpenAD_Symbol_606 = (OpenAD_Symbol_278 * OpenAD_Symbol_275)
      OpenAD_Symbol_607 = (OpenAD_Symbol_279 * OpenAD_Symbol_275)
      OpenAD_Symbol_608 = (OpenAD_Symbol_271 * OpenAD_Symbol_270)
      OpenAD_Symbol_609 = (OpenAD_Symbol_272 * OpenAD_Symbol_270)
      OpenAD_Symbol_610 = (OpenAD_Symbol_266 * OpenAD_Symbol_264)
      OpenAD_Symbol_611 = (OpenAD_Symbol_267 * OpenAD_Symbol_264)
      OpenAD_Symbol_612 = (INT((-1_w2f__i8)) * OpenAD_Symbol_264)
      OpenAD_Symbol_613 = (OpenAD_Symbol_220 * OpenAD_Symbol_264)
      OpenAD_Symbol_614 = (OpenAD_Symbol_221 * OpenAD_Symbol_264)
      OpenAD_Symbol_615 = (OpenAD_Symbol_290 * OpenAD_Symbol_289)
      OpenAD_Symbol_616 = (OpenAD_Symbol_283 * OpenAD_Symbol_282)
      OpenAD_Symbol_617 = (OpenAD_Symbol_276 * OpenAD_Symbol_275)
      OpenAD_Symbol_618 = (OpenAD_Symbol_254 * OpenAD_Symbol_588)
      OpenAD_Symbol_619 = (OpenAD_Symbol_252 * OpenAD_Symbol_591)
      OpenAD_Symbol_620 = (OpenAD_Symbol_248 * OpenAD_Symbol_289)
      OpenAD_Symbol_621 = (OpenAD_Symbol_246 * OpenAD_Symbol_589)
      OpenAD_Symbol_622 = (OpenAD_Symbol_244 * OpenAD_Symbol_592)
      OpenAD_Symbol_623 = (OpenAD_Symbol_240 * OpenAD_Symbol_282)
      OpenAD_Symbol_624 = (OpenAD_Symbol_238 * OpenAD_Symbol_590)
      OpenAD_Symbol_625 = (OpenAD_Symbol_236 * OpenAD_Symbol_593)
      OpenAD_Symbol_626 = (OpenAD_Symbol_232 * OpenAD_Symbol_275)
      OpenAD_Symbol_627 = (OpenAD_Symbol_230 * OpenAD_Symbol_264)
      OpenAD_Symbol_628 = (OpenAD_Symbol_231 * OpenAD_Symbol_264)
      OpenAD_Symbol_629 = (OpenAD_Symbol_228 * OpenAD_Symbol_264)
      OpenAD_Symbol_630 = (OpenAD_Symbol_229 * OpenAD_Symbol_264)
      OpenAD_Symbol_631 = (OpenAD_Symbol_226 * OpenAD_Symbol_264)
      OpenAD_Symbol_632 = (OpenAD_Symbol_227 * OpenAD_Symbol_264)
      OpenAD_Symbol_633 = (OpenAD_Symbol_224 * OpenAD_Symbol_612)
      OpenAD_Symbol_634 = (OpenAD_Symbol_225 * OpenAD_Symbol_612)
      OpenAD_Symbol_635 = (OpenAD_Symbol_222 * OpenAD_Symbol_614)
      OpenAD_Symbol_636 = (OpenAD_Symbol_206 * INT((-1_w2f__i8)))
      OpenAD_Symbol_637 = (OpenAD_Symbol_206 * OpenAD_Symbol_209)
      OpenAD_Symbol_638 = (OpenAD_Symbol_207 * INT((-1_w2f__i8)))
      OpenAD_Symbol_639 = (OpenAD_Symbol_207 * OpenAD_Symbol_209)
      OpenAD_Symbol_640 = (OpenAD_Symbol_194 * OpenAD_Symbol_209)
      OpenAD_Symbol_641 = (OpenAD_Symbol_195 * OpenAD_Symbol_209)
      OpenAD_Symbol_642 = (OpenAD_Symbol_204 * OpenAD_Symbol_215)
      OpenAD_Symbol_643 = (OpenAD_Symbol_201 * OpenAD_Symbol_213)
      OpenAD_Symbol_644 = (OpenAD_Symbol_203 * OpenAD_Symbol_215 +
     >  OpenAD_Symbol_200 * OpenAD_Symbol_213 + OpenAD_Symbol_197 *
     >  OpenAD_Symbol_211)
      OpenAD_Symbol_645 = (OpenAD_Symbol_198 * OpenAD_Symbol_211)
      OpenAD_Symbol_646 = (OpenAD_Symbol_260 * OpenAD_Symbol_603)
      OpenAD_Symbol_647 = (OpenAD_Symbol_260 * OpenAD_Symbol_605)
      OpenAD_Symbol_648 = (OpenAD_Symbol_260 * OpenAD_Symbol_607)
      OpenAD_Symbol_649 = (OpenAD_Symbol_260 * OpenAD_Symbol_609)
      OpenAD_Symbol_650 = (OpenAD_Symbol_260 * OpenAD_Symbol_610)
      OpenAD_Symbol_651 = (OpenAD_Symbol_258 * OpenAD_Symbol_603)
      OpenAD_Symbol_652 = (OpenAD_Symbol_258 * OpenAD_Symbol_605)
      OpenAD_Symbol_653 = (OpenAD_Symbol_258 * OpenAD_Symbol_607)
      OpenAD_Symbol_654 = (OpenAD_Symbol_258 * OpenAD_Symbol_609)
      OpenAD_Symbol_655 = (OpenAD_Symbol_258 * OpenAD_Symbol_610)
      OpenAD_Symbol_656 = (OpenAD_Symbol_256 * OpenAD_Symbol_603)
      OpenAD_Symbol_657 = (OpenAD_Symbol_256 * OpenAD_Symbol_605)
      OpenAD_Symbol_658 = (OpenAD_Symbol_256 * OpenAD_Symbol_607)
      OpenAD_Symbol_659 = (OpenAD_Symbol_256 * OpenAD_Symbol_609)
      OpenAD_Symbol_660 = (OpenAD_Symbol_256 * OpenAD_Symbol_610)
      OpenAD_Symbol_661 = (OpenAD_Symbol_261 * OpenAD_Symbol_609 +
     >  OpenAD_Symbol_216 * OpenAD_Symbol_270)
      OpenAD_Symbol_662 = (OpenAD_Symbol_291 * OpenAD_Symbol_289 +
     >  OpenAD_Symbol_253 * OpenAD_Symbol_591 + OpenAD_Symbol_261 *
     >  OpenAD_Symbol_603 + OpenAD_Symbol_216 * OpenAD_Symbol_594)
      OpenAD_Symbol_663 = (OpenAD_Symbol_247 * OpenAD_Symbol_589 +
     >  OpenAD_Symbol_261 * OpenAD_Symbol_605 + OpenAD_Symbol_216 *
     >  OpenAD_Symbol_596)
      OpenAD_Symbol_664 = (OpenAD_Symbol_233 * OpenAD_Symbol_275 +
     >  OpenAD_Symbol_261 * OpenAD_Symbol_607 + OpenAD_Symbol_216 *
     >  OpenAD_Symbol_598)
      OpenAD_Symbol_665 = (OpenAD_Symbol_261 * OpenAD_Symbol_610 +
     >  OpenAD_Symbol_216 * OpenAD_Symbol_600)
      OpenAD_Symbol_666 = (OpenAD_Symbol_259 * OpenAD_Symbol_609 +
     >  OpenAD_Symbol_214 * OpenAD_Symbol_270)
      OpenAD_Symbol_667 = (OpenAD_Symbol_249 * OpenAD_Symbol_289 +
     >  OpenAD_Symbol_259 * OpenAD_Symbol_603 + OpenAD_Symbol_214 *
     >  OpenAD_Symbol_594)
      OpenAD_Symbol_668 = (OpenAD_Symbol_284 * OpenAD_Symbol_282 +
     >  OpenAD_Symbol_245 * OpenAD_Symbol_592 + OpenAD_Symbol_259 *
     >  OpenAD_Symbol_605 + OpenAD_Symbol_214 * OpenAD_Symbol_596)
      OpenAD_Symbol_669 = (OpenAD_Symbol_239 * OpenAD_Symbol_590 +
     >  OpenAD_Symbol_259 * OpenAD_Symbol_607 + OpenAD_Symbol_214 *
     >  OpenAD_Symbol_598)
      OpenAD_Symbol_670 = (OpenAD_Symbol_259 * OpenAD_Symbol_610 +
     >  OpenAD_Symbol_214 * OpenAD_Symbol_600)
      OpenAD_Symbol_671 = (OpenAD_Symbol_257 * OpenAD_Symbol_609 +
     >  OpenAD_Symbol_212 * OpenAD_Symbol_270)
      OpenAD_Symbol_672 = (OpenAD_Symbol_255 * OpenAD_Symbol_588 +
     >  OpenAD_Symbol_257 * OpenAD_Symbol_603 + OpenAD_Symbol_212 *
     >  OpenAD_Symbol_594)
      OpenAD_Symbol_673 = (OpenAD_Symbol_241 * OpenAD_Symbol_282 +
     >  OpenAD_Symbol_257 * OpenAD_Symbol_605 + OpenAD_Symbol_212 *
     >  OpenAD_Symbol_596)
      OpenAD_Symbol_674 = (OpenAD_Symbol_277 * OpenAD_Symbol_275 +
     >  OpenAD_Symbol_237 * OpenAD_Symbol_593 + OpenAD_Symbol_257 *
     >  OpenAD_Symbol_607 + OpenAD_Symbol_212 * OpenAD_Symbol_598)
      OpenAD_Symbol_675 = (OpenAD_Symbol_257 * OpenAD_Symbol_610 +
     >  OpenAD_Symbol_212 * OpenAD_Symbol_600)
      OpenAD_Symbol_676 = (OpenAD_Symbol_210 * OpenAD_Symbol_270)
      OpenAD_Symbol_677 = (OpenAD_Symbol_210 * OpenAD_Symbol_594)
      OpenAD_Symbol_678 = (OpenAD_Symbol_210 * OpenAD_Symbol_596)
      OpenAD_Symbol_679 = (OpenAD_Symbol_210 * OpenAD_Symbol_598)
      OpenAD_Symbol_680 = (OpenAD_Symbol_223 * OpenAD_Symbol_614 +
     >  OpenAD_Symbol_210 * OpenAD_Symbol_600)
      OpenAD_Symbol_681 = (OpenAD_Symbol_637 * OpenAD_Symbol_270)
      OpenAD_Symbol_682 = (OpenAD_Symbol_636 * OpenAD_Symbol_619 +
     >  OpenAD_Symbol_637 * OpenAD_Symbol_594)
      OpenAD_Symbol_683 = (OpenAD_Symbol_636 * OpenAD_Symbol_622 +
     >  OpenAD_Symbol_637 * OpenAD_Symbol_596)
      OpenAD_Symbol_684 = (OpenAD_Symbol_636 * OpenAD_Symbol_625 +
     >  OpenAD_Symbol_637 * OpenAD_Symbol_598)
      OpenAD_Symbol_685 = (OpenAD_Symbol_206 * OpenAD_Symbol_613 +
     >  OpenAD_Symbol_636 * OpenAD_Symbol_633 + OpenAD_Symbol_637 *
     >  OpenAD_Symbol_600)
      OpenAD_Symbol_686 = (OpenAD_Symbol_639 * OpenAD_Symbol_270)
      OpenAD_Symbol_687 = (OpenAD_Symbol_638 * OpenAD_Symbol_619 +
     >  OpenAD_Symbol_639 * OpenAD_Symbol_594)
      OpenAD_Symbol_688 = (OpenAD_Symbol_638 * OpenAD_Symbol_622 +
     >  OpenAD_Symbol_639 * OpenAD_Symbol_596)
      OpenAD_Symbol_689 = (OpenAD_Symbol_638 * OpenAD_Symbol_625 +
     >  OpenAD_Symbol_639 * OpenAD_Symbol_598)
      OpenAD_Symbol_690 = (OpenAD_Symbol_207 * OpenAD_Symbol_613 +
     >  OpenAD_Symbol_638 * OpenAD_Symbol_633 + OpenAD_Symbol_639 *
     >  OpenAD_Symbol_600)
      OpenAD_Symbol_691 = (OpenAD_Symbol_640 * OpenAD_Symbol_270)
      OpenAD_Symbol_692 = (OpenAD_Symbol_194 * OpenAD_Symbol_619 +
     >  OpenAD_Symbol_640 * OpenAD_Symbol_594)
      OpenAD_Symbol_693 = (OpenAD_Symbol_194 * OpenAD_Symbol_622 +
     >  OpenAD_Symbol_640 * OpenAD_Symbol_596)
      OpenAD_Symbol_694 = (OpenAD_Symbol_194 * OpenAD_Symbol_625 +
     >  OpenAD_Symbol_640 * OpenAD_Symbol_598)
      OpenAD_Symbol_695 = (OpenAD_Symbol_194 * OpenAD_Symbol_613 +
     >  OpenAD_Symbol_194 * OpenAD_Symbol_633 + OpenAD_Symbol_640 *
     >  OpenAD_Symbol_600)
      OpenAD_Symbol_696 = (OpenAD_Symbol_641 * OpenAD_Symbol_270)
      OpenAD_Symbol_697 = (OpenAD_Symbol_195 * OpenAD_Symbol_619 +
     >  OpenAD_Symbol_641 * OpenAD_Symbol_594)
      OpenAD_Symbol_698 = (OpenAD_Symbol_195 * OpenAD_Symbol_622 +
     >  OpenAD_Symbol_641 * OpenAD_Symbol_596)
      OpenAD_Symbol_699 = (OpenAD_Symbol_195 * OpenAD_Symbol_625 +
     >  OpenAD_Symbol_641 * OpenAD_Symbol_598)
      OpenAD_Symbol_700 = (OpenAD_Symbol_195 * OpenAD_Symbol_613 +
     >  OpenAD_Symbol_195 * OpenAD_Symbol_633 + OpenAD_Symbol_641 *
     >  OpenAD_Symbol_600)
      OpenAD_Symbol_701 = (OpenAD_Symbol_644 * OpenAD_Symbol_270)
      OpenAD_Symbol_702 = (OpenAD_Symbol_200 * OpenAD_Symbol_618 +
     >  OpenAD_Symbol_197 * OpenAD_Symbol_620 + OpenAD_Symbol_644 *
     >  OpenAD_Symbol_594)
      OpenAD_Symbol_703 = (OpenAD_Symbol_203 * OpenAD_Symbol_623 +
     >  OpenAD_Symbol_197 * OpenAD_Symbol_621 + OpenAD_Symbol_644 *
     >  OpenAD_Symbol_596)
      OpenAD_Symbol_704 = (OpenAD_Symbol_203 * OpenAD_Symbol_624 +
     >  OpenAD_Symbol_200 * OpenAD_Symbol_626 + OpenAD_Symbol_644 *
     >  OpenAD_Symbol_598)
      OpenAD_Symbol_705 = (OpenAD_Symbol_203 * OpenAD_Symbol_627 +
     >  OpenAD_Symbol_200 * OpenAD_Symbol_629 + OpenAD_Symbol_197 *
     >  OpenAD_Symbol_631 + OpenAD_Symbol_644 * OpenAD_Symbol_600)
      OpenAD_Symbol_706 = (OpenAD_Symbol_642 * OpenAD_Symbol_270)
      OpenAD_Symbol_707 = (OpenAD_Symbol_642 * OpenAD_Symbol_594)
      OpenAD_Symbol_708 = (OpenAD_Symbol_204 * OpenAD_Symbol_623 +
     >  OpenAD_Symbol_642 * OpenAD_Symbol_596)
      OpenAD_Symbol_709 = (OpenAD_Symbol_204 * OpenAD_Symbol_624 +
     >  OpenAD_Symbol_642 * OpenAD_Symbol_598)
      OpenAD_Symbol_710 = (OpenAD_Symbol_204 * OpenAD_Symbol_627 +
     >  OpenAD_Symbol_642 * OpenAD_Symbol_600)
      OpenAD_Symbol_711 = (OpenAD_Symbol_643 * OpenAD_Symbol_270)
      OpenAD_Symbol_712 = (OpenAD_Symbol_201 * OpenAD_Symbol_618 +
     >  OpenAD_Symbol_643 * OpenAD_Symbol_594)
      OpenAD_Symbol_713 = (OpenAD_Symbol_643 * OpenAD_Symbol_596)
      OpenAD_Symbol_714 = (OpenAD_Symbol_201 * OpenAD_Symbol_626 +
     >  OpenAD_Symbol_643 * OpenAD_Symbol_598)
      OpenAD_Symbol_715 = (OpenAD_Symbol_201 * OpenAD_Symbol_629 +
     >  OpenAD_Symbol_643 * OpenAD_Symbol_600)
      OpenAD_Symbol_716 = (OpenAD_Symbol_645 * OpenAD_Symbol_270)
      OpenAD_Symbol_717 = (OpenAD_Symbol_198 * OpenAD_Symbol_620 +
     >  OpenAD_Symbol_645 * OpenAD_Symbol_594)
      OpenAD_Symbol_718 = (OpenAD_Symbol_198 * OpenAD_Symbol_621 +
     >  OpenAD_Symbol_645 * OpenAD_Symbol_596)
      OpenAD_Symbol_719 = (OpenAD_Symbol_645 * OpenAD_Symbol_598)
      OpenAD_Symbol_720 = (OpenAD_Symbol_198 * OpenAD_Symbol_631 +
     >  OpenAD_Symbol_645 * OpenAD_Symbol_600)
      CALL sax(OpenAD_Symbol_608,PRIML2,FLUX2)
      CALL saxpy(OpenAD_Symbol_649,PRIML5,FLUX2)
      CALL saxpy(OpenAD_Symbol_654,PRIML4,FLUX2)
      CALL saxpy(OpenAD_Symbol_659,PRIML3,FLUX2)
      CALL saxpy(OpenAD_Symbol_661,NZHAT,FLUX2)
      CALL saxpy(OpenAD_Symbol_666,NYHAT,FLUX2)
      CALL saxpy(OpenAD_Symbol_671,NXHAT,FLUX2)
      CALL saxpy(OpenAD_Symbol_676,CAVE,FLUX2)
      CALL saxpy(OpenAD_Symbol_681,ALAMCP,FLUX2)
      CALL saxpy(OpenAD_Symbol_686,ALP5,FLUX2)
      CALL saxpy(OpenAD_Symbol_691,ALAMCM,FLUX2)
      CALL saxpy(OpenAD_Symbol_696,ALP1,FLUX2)
      CALL saxpy(OpenAD_Symbol_701,ALAMU,FLUX2)
      CALL saxpy(OpenAD_Symbol_706,ALP4,FLUX2)
      CALL saxpy(OpenAD_Symbol_711,ALP3,FLUX2)
      CALL saxpy(OpenAD_Symbol_716,ALP2,FLUX2)
      CALL saxpy(OpenAD_Symbol_269,NSIZE,FLUX2)
      CALL sax(OpenAD_Symbol_599,UAVE,FLUX3)
      CALL saxpy(OpenAD_Symbol_606,RUL,FLUX3)
      CALL saxpy(OpenAD_Symbol_617,PRIML1,FLUX3)
      CALL saxpy(OpenAD_Symbol_648,PRIML5,FLUX3)
      CALL saxpy(OpenAD_Symbol_653,PRIML4,FLUX3)
      CALL saxpy(OpenAD_Symbol_658,PRIML3,FLUX3)
      CALL saxpy(OpenAD_Symbol_664,NZHAT,FLUX3)
      CALL saxpy(OpenAD_Symbol_669,NYHAT,FLUX3)
      CALL saxpy(OpenAD_Symbol_674,NXHAT,FLUX3)
      CALL saxpy(OpenAD_Symbol_679,CAVE,FLUX3)
      CALL saxpy(OpenAD_Symbol_684,ALAMCP,FLUX3)
      CALL saxpy(OpenAD_Symbol_689,ALP5,FLUX3)
      CALL saxpy(OpenAD_Symbol_694,ALAMCM,FLUX3)
      CALL saxpy(OpenAD_Symbol_699,ALP1,FLUX3)
      CALL saxpy(OpenAD_Symbol_704,ALAMU,FLUX3)
      CALL saxpy(OpenAD_Symbol_709,ALP4,FLUX3)
      CALL saxpy(OpenAD_Symbol_714,ALP3,FLUX3)
      CALL saxpy(OpenAD_Symbol_719,ALP2,FLUX3)
      CALL saxpy(OpenAD_Symbol_274,NSIZE,FLUX3)
      CALL sax(OpenAD_Symbol_597,VAVE,FLUX4)
      CALL saxpy(OpenAD_Symbol_604,RVL,FLUX4)
      CALL saxpy(OpenAD_Symbol_616,PRIML1,FLUX4)
      CALL saxpy(OpenAD_Symbol_647,PRIML5,FLUX4)
      CALL saxpy(OpenAD_Symbol_652,PRIML4,FLUX4)
      CALL saxpy(OpenAD_Symbol_657,PRIML3,FLUX4)
      CALL saxpy(OpenAD_Symbol_663,NZHAT,FLUX4)
      CALL saxpy(OpenAD_Symbol_668,NYHAT,FLUX4)
      CALL saxpy(OpenAD_Symbol_673,NXHAT,FLUX4)
      CALL saxpy(OpenAD_Symbol_678,CAVE,FLUX4)
      CALL saxpy(OpenAD_Symbol_683,ALAMCP,FLUX4)
      CALL saxpy(OpenAD_Symbol_688,ALP5,FLUX4)
      CALL saxpy(OpenAD_Symbol_693,ALAMCM,FLUX4)
      CALL saxpy(OpenAD_Symbol_698,ALP1,FLUX4)
      CALL saxpy(OpenAD_Symbol_703,ALAMU,FLUX4)
      CALL saxpy(OpenAD_Symbol_708,ALP4,FLUX4)
      CALL saxpy(OpenAD_Symbol_713,ALP3,FLUX4)
      CALL saxpy(OpenAD_Symbol_718,ALP2,FLUX4)
      CALL saxpy(OpenAD_Symbol_281,NSIZE,FLUX4)
      CALL sax(OpenAD_Symbol_595,WAVE,FLUX5)
      CALL saxpy(OpenAD_Symbol_602,RWL,FLUX5)
      CALL saxpy(OpenAD_Symbol_615,PRIML1,FLUX5)
      CALL saxpy(OpenAD_Symbol_646,PRIML5,FLUX5)
      CALL saxpy(OpenAD_Symbol_651,PRIML4,FLUX5)
      CALL saxpy(OpenAD_Symbol_656,PRIML3,FLUX5)
      CALL saxpy(OpenAD_Symbol_662,NZHAT,FLUX5)
      CALL saxpy(OpenAD_Symbol_667,NYHAT,FLUX5)
      CALL saxpy(OpenAD_Symbol_672,NXHAT,FLUX5)
      CALL saxpy(OpenAD_Symbol_677,CAVE,FLUX5)
      CALL saxpy(OpenAD_Symbol_682,ALAMCP,FLUX5)
      CALL saxpy(OpenAD_Symbol_687,ALP5,FLUX5)
      CALL saxpy(OpenAD_Symbol_692,ALAMCM,FLUX5)
      CALL saxpy(OpenAD_Symbol_697,ALP1,FLUX5)
      CALL saxpy(OpenAD_Symbol_702,ALAMU,FLUX5)
      CALL saxpy(OpenAD_Symbol_707,ALP4,FLUX5)
      CALL saxpy(OpenAD_Symbol_712,ALP3,FLUX5)
      CALL saxpy(OpenAD_Symbol_717,ALP2,FLUX5)
      CALL saxpy(OpenAD_Symbol_288,NSIZE,FLUX5)
      CALL sax(OpenAD_Symbol_601,THTAVE,FLUX1)
      CALL saxpy(OpenAD_Symbol_611,PRIML1,FLUX1)
      CALL saxpy(OpenAD_Symbol_611,EL,FLUX1)
      CALL saxpy(OpenAD_Symbol_628,WTILDE,FLUX1)
      CALL saxpy(OpenAD_Symbol_630,VTILDE,FLUX1)
      CALL saxpy(OpenAD_Symbol_632,UTILDE,FLUX1)
      CALL saxpy(OpenAD_Symbol_634,UHAT,FLUX1)
      CALL saxpy(OpenAD_Symbol_635,GM1INV,FLUX1)
      CALL saxpy(OpenAD_Symbol_650,PRIML5,FLUX1)
      CALL saxpy(OpenAD_Symbol_655,PRIML4,FLUX1)
      CALL saxpy(OpenAD_Symbol_660,PRIML3,FLUX1)
      CALL saxpy(OpenAD_Symbol_665,NZHAT,FLUX1)
      CALL saxpy(OpenAD_Symbol_670,NYHAT,FLUX1)
      CALL saxpy(OpenAD_Symbol_675,NXHAT,FLUX1)
      CALL saxpy(OpenAD_Symbol_680,CAVE,FLUX1)
      CALL saxpy(OpenAD_Symbol_685,ALAMCP,FLUX1)
      CALL saxpy(OpenAD_Symbol_690,ALP5,FLUX1)
      CALL saxpy(OpenAD_Symbol_695,ALAMCM,FLUX1)
      CALL saxpy(OpenAD_Symbol_700,ALP1,FLUX1)
      CALL saxpy(OpenAD_Symbol_705,ALAMU,FLUX1)
      CALL saxpy(OpenAD_Symbol_710,ALP4,FLUX1)
      CALL saxpy(OpenAD_Symbol_715,ALP3,FLUX1)
      CALL saxpy(OpenAD_Symbol_720,ALP2,FLUX1)
      CALL saxpy(OpenAD_Symbol_263,NSIZE,FLUX1)
      END SUBROUTINE
