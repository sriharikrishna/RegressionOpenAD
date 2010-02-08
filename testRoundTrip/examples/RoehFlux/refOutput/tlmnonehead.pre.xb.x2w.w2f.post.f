
C$OPENAD XXX File_start [head.f]
      SUBROUTINE ad_roehf5(NRM, PRIML, PRIMR, GAMMA, GM1, GM1INV, NLEFIX
     +, LEFIX, MCHEPS, FLUX)
      use w2f__types
      use OAD_active
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
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_10
      type(active) :: OpenAD_prop_11
      type(active) :: OpenAD_prop_12
      type(active) :: OpenAD_prop_13
      type(active) :: OpenAD_prop_14
      type(active) :: OpenAD_prop_15
      type(active) :: OpenAD_prop_16
      type(active) :: OpenAD_prop_17
      type(active) :: OpenAD_prop_18
      type(active) :: OpenAD_prop_19
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_20
      type(active) :: OpenAD_prop_21
      type(active) :: OpenAD_prop_22
      type(active) :: OpenAD_prop_23
      type(active) :: OpenAD_prop_24
      type(active) :: OpenAD_prop_25
      type(active) :: OpenAD_prop_26
      type(active) :: OpenAD_prop_27
      type(active) :: OpenAD_prop_28
      type(active) :: OpenAD_prop_29
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_30
      type(active) :: OpenAD_prop_31
      type(active) :: OpenAD_prop_4
      type(active) :: OpenAD_prop_5
      type(active) :: OpenAD_prop_6
      type(active) :: OpenAD_prop_7
      type(active) :: OpenAD_prop_8
      type(active) :: OpenAD_prop_9
C
C     **** Parameters and Result ****
C
      type(active) :: NRM(1:3)
      INTENT(IN) NRM
      type(active) :: PRIML(1:5)
      INTENT(IN) PRIML
      type(active) :: PRIMR(1:5)
      INTENT(IN) PRIMR
      type(active) :: GAMMA
      INTENT(IN) GAMMA
      type(active) :: GM1
      INTENT(IN) GM1
      type(active) :: GM1INV
      INTENT(IN) GM1INV
      type(active) :: NLEFIX
      INTENT(IN) NLEFIX
      type(active) :: LEFIX
      INTENT(IN) LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN) MCHEPS
      type(active) :: FLUX(1:5)
      INTENT(OUT) FLUX
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
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
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
      OpenAD_acc_0 = (OpenAD_Symbol_6*OpenAD_Symbol_1)
      OpenAD_acc_1 = (OpenAD_Symbol_4*OpenAD_Symbol_1)
      OpenAD_acc_2 = (OpenAD_Symbol_2*OpenAD_Symbol_1)
      CALL sax(OpenAD_acc_0,NRM(3),NSIZE)
      CALL saxpy(OpenAD_acc_1,NRM(2),NSIZE)
      CALL saxpy(OpenAD_acc_2,NRM(1),NSIZE)
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
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_Symbol_23 = (-(PRIMR(2)%v/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00/(OpenAD_Symbol_16*OpenAD_Symbol_16)))
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
      OpenAD_acc_3 = (OpenAD_Symbol_54*OpenAD_Symbol_50)
      OpenAD_acc_4 = (OpenAD_Symbol_46*OpenAD_Symbol_42)
      OpenAD_acc_5 = (5.0D-01*INT((-1_w2f__i8))*OpenAD_Symbol_83)
      OpenAD_acc_6 = (OpenAD_Symbol_71*OpenAD_Symbol_83)
      OpenAD_acc_7 = (OpenAD_Symbol_69*OpenAD_Symbol_83)
      OpenAD_acc_8 = (OpenAD_Symbol_18*(OpenAD_Symbol_70*OpenAD_Symbol_8
     +3+INT((-1_w2f__i8))*OpenAD_Symbol_72*OpenAD_Symbol_83))
      OpenAD_acc_9 = (OpenAD_Symbol_18*(OpenAD_Symbol_66+INT((-1_w2f__i8
     +))*OpenAD_Symbol_68))
      OpenAD_acc_10 = (OpenAD_Symbol_18*(OpenAD_Symbol_62+INT((-1_w2f__i
     +8))*OpenAD_Symbol_64))
      OpenAD_acc_11 = (OpenAD_Symbol_18*(OpenAD_Symbol_58+INT((-1_w2f__i
     +8))*OpenAD_Symbol_60))
      OpenAD_acc_12 = (OpenAD_Symbol_22*OpenAD_Symbol_21)
      OpenAD_acc_13 = (OpenAD_Symbol_23*OpenAD_Symbol_21)
      OpenAD_acc_14 = (OpenAD_Symbol_45*OpenAD_Symbol_42)
      OpenAD_acc_15 = (OpenAD_Symbol_47*OpenAD_acc_4)
      OpenAD_acc_16 = (OpenAD_Symbol_48*OpenAD_acc_4)
      OpenAD_acc_17 = (OpenAD_Symbol_53*OpenAD_Symbol_50)
      OpenAD_acc_18 = (OpenAD_Symbol_55*OpenAD_acc_3)
      OpenAD_acc_19 = (OpenAD_Symbol_56*OpenAD_acc_3)
      CALL sax(OpenAD_Symbol_10,NRM(1),NXHAT)
      CALL saxpy(OpenAD_Symbol_11,NSIZEI,NXHAT)
      CALL sax(OpenAD_Symbol_12,NRM(2),NYHAT)
      CALL saxpy(OpenAD_Symbol_13,NSIZEI,NYHAT)
      CALL sax(OpenAD_Symbol_14,NRM(3),NZHAT)
      CALL saxpy(OpenAD_Symbol_15,NSIZEI,NZHAT)
      CALL sax(OpenAD_acc_12,PRIMR(2),OpenAD_prop_0)
      CALL saxpy(OpenAD_acc_13,PRIML(2),OpenAD_prop_0)
      CALL sax(OpenAD_Symbol_31,PRIML(5),OpenAD_prop_1)
      CALL saxpy(OpenAD_Symbol_27,PRIML(3),OpenAD_prop_1)
      CALL saxpy(OpenAD_Symbol_29,PRIML(4),OpenAD_prop_1)
      CALL sax(OpenAD_Symbol_39,PRIMR(5),OpenAD_prop_2)
      CALL saxpy(OpenAD_Symbol_35,PRIMR(3),OpenAD_prop_2)
      CALL saxpy(OpenAD_Symbol_37,PRIMR(4),OpenAD_prop_2)
      CALL sax(5.0D-01,OpenAD_prop_1,THETAL)
      CALL sax(5.0D-01,OpenAD_prop_2,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_Symbol_43,PRIML(2),HL)
      CALL saxpy(OpenAD_acc_14,PRIML(1),HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_Symbol_51,PRIMR(2),HR)
      CALL saxpy(OpenAD_acc_17,PRIMR(1),HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_Symbol_59,PRIMR(3),UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prop_0,UAVE)
      CALL saxpy(OpenAD_Symbol_57,PRIML(3),UAVE)
      CALL sax(OpenAD_Symbol_63,PRIMR(4),VAVE)
      CALL saxpy(OpenAD_Symbol_61,PRIML(4),VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prop_0,VAVE)
      CALL sax(OpenAD_Symbol_67,PRIMR(5),WAVE)
      CALL saxpy(OpenAD_Symbol_65,PRIML(5),WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prop_0,WAVE)
      CALL sax(OpenAD_Symbol_79,WAVE,OpenAD_prop_3)
      CALL saxpy(OpenAD_Symbol_77,VAVE,OpenAD_prop_3)
      CALL saxpy(OpenAD_Symbol_75,UAVE,OpenAD_prop_3)
      CALL sax(5.0D-01,OpenAD_prop_3,THTAVE)
      CALL sax(OpenAD_Symbol_82,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prop_3,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prop_0,CAVE)
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
      OpenAD_acc_20 = (OpenAD_Symbol_105*OpenAD_Symbol_107)
      OpenAD_acc_21 = (OpenAD_Symbol_106*OpenAD_Symbol_107)
      OpenAD_acc_22 = (OpenAD_Symbol_94*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_Symbol_95*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_Symbol_98*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_Symbol_99*INT((-1_w2f__i8)))
      OpenAD_acc_26 = (OpenAD_Symbol_102*INT((-1_w2f__i8)))
      OpenAD_acc_27 = (OpenAD_Symbol_103*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_4,CAVE)
      CALL sax(OpenAD_Symbol_84,OpenAD_prop_4,CAVE)
      CALL sax(OpenAD_Symbol_92,NYHAT,UTILDE)
      CALL saxpy(OpenAD_Symbol_93,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_22,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_23,VAVE,UTILDE)
      CALL sax(OpenAD_Symbol_96,NZHAT,VTILDE)
      CALL saxpy(OpenAD_Symbol_97,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_24,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_25,WAVE,VTILDE)
      CALL sax(OpenAD_Symbol_100,NXHAT,WTILDE)
      CALL saxpy(OpenAD_Symbol_101,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_26,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_27,UAVE,WTILDE)
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
      CALL setderiv(OpenAD_prop_5,CAVE)
      CALL inc_deriv(OpenAD_prop_5,UHAT)
      CALL sax(OpenAD_Symbol_109,LAMCM,LAM2)
      CALL sax(OpenAD_acc_20,NLEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_21,OpenAD_prop_5,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCM%v = LAMCM%v
        CALL setderiv(ALAMCM,LAMCM)
      ELSE
        OpenAD_Symbol_323 = (DELTA2%v+LAM2%v)
        OpenAD_Symbol_320 = (OpenAD_Symbol_323*5.0D-01)
        ALAMCM%v = (OpenAD_Symbol_320/DELTA2%v)
        OpenAD_Symbol_321 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_Symbol_322 = (-(OpenAD_Symbol_320/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_80 = (5.0D-01*OpenAD_Symbol_321)
        CALL setderiv(OpenAD_prop_31,DELTA2)
        CALL inc_deriv(OpenAD_prop_31,LAM2)
        CALL sax(OpenAD_Symbol_322,DELTA2,ALAMCM)
        CALL saxpy(OpenAD_acc_80,OpenAD_prop_31,ALAMCM)
      ENDIF
      LAM2%v = (LAMCP%v**2)
      OpenAD_Symbol_111 = (2*(LAMCP%v**(2-INT(1_w2f__i8))))
      CALL sax(OpenAD_Symbol_111,LAMCP,LAM2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCP%v = LAMCP%v
        CALL setderiv(ALAMCP,LAMCP)
      ELSE
        OpenAD_Symbol_318 = (DELTA2%v+LAM2%v)
        OpenAD_Symbol_315 = (OpenAD_Symbol_318*5.0D-01)
        ALAMCP%v = (OpenAD_Symbol_315/DELTA2%v)
        OpenAD_Symbol_316 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_Symbol_317 = (-(OpenAD_Symbol_315/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_79 = (5.0D-01*OpenAD_Symbol_316)
        CALL setderiv(OpenAD_prop_30,DELTA2)
        CALL inc_deriv(OpenAD_prop_30,LAM2)
        CALL sax(OpenAD_Symbol_317,DELTA2,ALAMCP)
        CALL saxpy(OpenAD_acc_79,OpenAD_prop_30,ALAMCP)
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
      OpenAD_acc_28 = (OpenAD_Symbol_116+OpenAD_Symbol_117)
      OpenAD_acc_29 = (OpenAD_Symbol_114*OpenAD_acc_28)
      OpenAD_acc_30 = (OpenAD_Symbol_115*OpenAD_acc_28)
      CALL setderiv(OpenAD_prop_6,CAVE)
      CALL inc_deriv(OpenAD_prop_6,UHAT)
      CALL sax(OpenAD_Symbol_118,LAMU,LAM2)
      CALL sax(OpenAD_acc_29,LEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_30,OpenAD_prop_6,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMU%v = LAMU%v
        CALL setderiv(ALAMU,LAMU)
      ELSE
        OpenAD_Symbol_313 = (DELTA2%v+LAM2%v)
        OpenAD_Symbol_310 = (OpenAD_Symbol_313*5.0D-01)
        ALAMU%v = (OpenAD_Symbol_310/DELTA2%v)
        OpenAD_Symbol_311 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_Symbol_312 = (-(OpenAD_Symbol_310/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_78 = (5.0D-01*OpenAD_Symbol_311)
        CALL setderiv(OpenAD_prop_29,DELTA2)
        CALL inc_deriv(OpenAD_prop_29,LAM2)
        CALL sax(OpenAD_Symbol_312,DELTA2,ALAMU)
        CALL saxpy(OpenAD_acc_78,OpenAD_prop_29,ALAMU)
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
      OpenAD_acc_31 = (OpenAD_Symbol_156*OpenAD_Symbol_154)
      OpenAD_acc_32 = (OpenAD_Symbol_157*OpenAD_Symbol_154)
      OpenAD_acc_33 = (OpenAD_Symbol_146*INT((-1_w2f__i8)))
      OpenAD_acc_34 = (OpenAD_Symbol_147*INT((-1_w2f__i8)))
      OpenAD_acc_35 = (OpenAD_Symbol_148*INT((-1_w2f__i8)))
      OpenAD_acc_36 = (OpenAD_Symbol_149*INT((-1_w2f__i8)))
      OpenAD_acc_37 = (OpenAD_Symbol_150*INT((-1_w2f__i8)))
      OpenAD_acc_38 = (OpenAD_Symbol_151*INT((-1_w2f__i8)))
      OpenAD_acc_39 = (INT((-1_w2f__i8))*OpenAD_Symbol_179)
      OpenAD_acc_40 = (OpenAD_Symbol_180*INT((-1_w2f__i8)))
      OpenAD_acc_41 = (OpenAD_Symbol_181*INT((-1_w2f__i8)))
      OpenAD_acc_42 = (INT((-1_w2f__i8))*OpenAD_Symbol_191)
      OpenAD_acc_43 = (OpenAD_Symbol_192*INT((-1_w2f__i8)))
      OpenAD_acc_44 = (OpenAD_Symbol_193*INT((-1_w2f__i8)))
      OpenAD_acc_45 = (INT((-1_w2f__i8))*OpenAD_Symbol_203)
      OpenAD_acc_46 = (OpenAD_Symbol_204*INT((-1_w2f__i8)))
      OpenAD_acc_47 = (OpenAD_Symbol_205*INT((-1_w2f__i8)))
      OpenAD_acc_48 = (OpenAD_Symbol_208*INT((-1_w2f__i8)))
      OpenAD_acc_49 = (OpenAD_Symbol_209*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_7,ALAMCM)
      CALL setderiv(OpenAD_prop_8,ALAMCP)
      CALL setderiv(OpenAD_prop_9,ALAMU)
      CALL setderiv(OpenAD_prop_10,LAMCM)
      CALL dec_deriv(OpenAD_prop_10,OpenAD_prop_7)
      CALL setderiv(OpenAD_prop_11,LAMCP)
      CALL dec_deriv(OpenAD_prop_11,OpenAD_prop_8)
      CALL setderiv(OpenAD_prop_12,LAMU)
      CALL dec_deriv(OpenAD_prop_12,OpenAD_prop_9)
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
      CALL sax(5.0D-01,OpenAD_prop_10,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prop_11,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prop_12,ALAMU)
      CALL sax(OpenAD_Symbol_126,PRIML(1),EL)
      CALL saxpy(OpenAD_Symbol_127,GM1INV,EL)
      CALL saxpy(OpenAD_Symbol_128,PRIML(2),EL)
      CALL saxpy(OpenAD_Symbol_129,THETAL,EL)
      CALL set_neg_deriv(OpenAD_prop_13,UTILDE)
      CALL saxpy(OpenAD_Symbol_175,CAVE,OpenAD_prop_13)
      CALL saxpy(OpenAD_Symbol_176,NXHAT,OpenAD_prop_13)
      CALL set_neg_deriv(OpenAD_prop_14,VTILDE)
      CALL saxpy(OpenAD_Symbol_187,CAVE,OpenAD_prop_14)
      CALL saxpy(OpenAD_Symbol_188,NYHAT,OpenAD_prop_14)
      CALL set_neg_deriv(OpenAD_prop_15,WTILDE)
      CALL saxpy(OpenAD_Symbol_199,CAVE,OpenAD_prop_15)
      CALL saxpy(OpenAD_Symbol_200,NZHAT,OpenAD_prop_15)
      CALL set_neg_deriv(OpenAD_prop_16,EL)
      CALL saxpy(OpenAD_Symbol_136,PRIMR(1),OpenAD_prop_16)
      CALL saxpy(OpenAD_Symbol_137,GM1INV,OpenAD_prop_16)
      CALL saxpy(OpenAD_Symbol_138,PRIMR(2),OpenAD_prop_16)
      CALL saxpy(OpenAD_Symbol_139,THETAR,OpenAD_prop_16)
      CALL saxpy(OpenAD_Symbol_158,DR,OpenAD_prop_16)
      CALL saxpy(OpenAD_Symbol_159,THTAVE,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_33,DRU,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_34,UAVE,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_35,DRV,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_36,VAVE,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_37,DRW,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_38,WAVE,OpenAD_prop_16)
      CALL sax(OpenAD_Symbol_160,DRU,NDDRU)
      CALL saxpy(OpenAD_Symbol_161,NXHAT,NDDRU)
      CALL saxpy(OpenAD_Symbol_162,DRV,NDDRU)
      CALL saxpy(OpenAD_Symbol_163,NYHAT,NDDRU)
      CALL saxpy(OpenAD_Symbol_164,DRW,NDDRU)
      CALL saxpy(OpenAD_Symbol_165,NZHAT,NDDRU)
      CALL sax(OpenAD_Symbol_155,OpenAD_prop_16,OMEGA)
      CALL saxpy(OpenAD_acc_31,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_32,CAVE,OMEGA)
      CALL setderiv(OpenAD_prop_17,OMEGA)
      CALL dec_deriv(OpenAD_prop_17,NDDRU)
      CALL saxpy(OpenAD_Symbol_168,DR,OpenAD_prop_17)
      CALL saxpy(OpenAD_Symbol_169,UHAT,OpenAD_prop_17)
      CALL setderiv(OpenAD_prop_18,NDDRU)
      CALL inc_deriv(OpenAD_prop_18,OMEGA)
      CALL saxpy(OpenAD_acc_48,DR,OpenAD_prop_18)
      CALL saxpy(OpenAD_acc_49,UHAT,OpenAD_prop_18)
      CALL sax(5.0D-01,OpenAD_prop_17,ALP1)
      CALL sax(5.0D-01,OpenAD_prop_18,ALP5)
      CALL sax(OpenAD_Symbol_170,DRW,ALP2)
      CALL saxpy(OpenAD_Symbol_171,NYHAT,ALP2)
      CALL saxpy(OpenAD_Symbol_173,DR,ALP2)
      CALL saxpy(OpenAD_Symbol_174,OpenAD_prop_13,ALP2)
      CALL saxpy(OpenAD_Symbol_178,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_39,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_40,DRV,ALP2)
      CALL saxpy(OpenAD_acc_41,NZHAT,ALP2)
      CALL sax(OpenAD_Symbol_182,DRU,ALP3)
      CALL saxpy(OpenAD_Symbol_183,NZHAT,ALP3)
      CALL saxpy(OpenAD_Symbol_185,DR,ALP3)
      CALL saxpy(OpenAD_Symbol_186,OpenAD_prop_14,ALP3)
      CALL saxpy(OpenAD_Symbol_190,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_42,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_43,DRW,ALP3)
      CALL saxpy(OpenAD_acc_44,NXHAT,ALP3)
      CALL sax(OpenAD_Symbol_194,DRV,ALP4)
      CALL saxpy(OpenAD_Symbol_195,NXHAT,ALP4)
      CALL saxpy(OpenAD_Symbol_197,DR,ALP4)
      CALL saxpy(OpenAD_Symbol_198,OpenAD_prop_15,ALP4)
      CALL saxpy(OpenAD_Symbol_202,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_46,DRU,ALP4)
      CALL saxpy(OpenAD_acc_47,NYHAT,ALP4)
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
      OpenAD_acc_50 = (OpenAD_Symbol_282*OpenAD_Symbol_280)
      OpenAD_acc_51 = (OpenAD_Symbol_283*OpenAD_Symbol_280)
      OpenAD_acc_52 = (OpenAD_Symbol_246*OpenAD_Symbol_280)
      OpenAD_acc_53 = (OpenAD_Symbol_247*OpenAD_Symbol_280)
      OpenAD_acc_54 = (OpenAD_Symbol_244*OpenAD_Symbol_280)
      OpenAD_acc_55 = (OpenAD_Symbol_245*OpenAD_Symbol_280)
      OpenAD_acc_56 = (OpenAD_Symbol_242*OpenAD_Symbol_280)
      OpenAD_acc_57 = (OpenAD_Symbol_243*OpenAD_Symbol_280)
      OpenAD_acc_58 = (OpenAD_Symbol_233*OpenAD_Symbol_280)
      OpenAD_acc_59 = (OpenAD_Symbol_234*OpenAD_Symbol_280)
      OpenAD_acc_60 = (OpenAD_Symbol_236*OpenAD_Symbol_280)
      OpenAD_acc_61 = (OpenAD_Symbol_238*OpenAD_Symbol_237*OpenAD_Symbol
     +_280)
      OpenAD_acc_62 = (OpenAD_Symbol_239*OpenAD_Symbol_237*OpenAD_Symbol
     +_280)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_Symbol_280)
      OpenAD_acc_64 = (OpenAD_Symbol_240*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_Symbol_241*OpenAD_acc_63)
      OpenAD_acc_66 = (OpenAD_Symbol_254*INT((-1_w2f__i8)))
      OpenAD_acc_67 = (OpenAD_Symbol_255*INT((-1_w2f__i8)))
      OpenAD_acc_68 = (OpenAD_Symbol_262*INT((-1_w2f__i8)))
      OpenAD_acc_69 = (OpenAD_Symbol_263*INT((-1_w2f__i8)))
      OpenAD_acc_70 = (OpenAD_Symbol_270*INT((-1_w2f__i8)))
      OpenAD_acc_71 = (OpenAD_Symbol_271*INT((-1_w2f__i8)))
      OpenAD_acc_72 = (OpenAD_Symbol_268*INT((-1_w2f__i8)))
      OpenAD_acc_73 = (OpenAD_Symbol_269*INT((-1_w2f__i8)))
      OpenAD_acc_74 = (OpenAD_Symbol_260*INT((-1_w2f__i8)))
      OpenAD_acc_75 = (OpenAD_Symbol_261*INT((-1_w2f__i8)))
      OpenAD_acc_76 = (OpenAD_Symbol_252*INT((-1_w2f__i8)))
      OpenAD_acc_77 = (OpenAD_Symbol_253*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_19,ALP1)
      CALL setderiv(OpenAD_prop_20,ALP2)
      CALL setderiv(OpenAD_prop_21,ALP3)
      CALL setderiv(OpenAD_prop_22,ALP4)
      CALL setderiv(OpenAD_prop_23,ALP5)
      CALL sax(OpenAD_Symbol_210,ALAMCM,ALP1)
      CALL saxpy(OpenAD_Symbol_211,OpenAD_prop_19,ALP1)
      CALL sax(OpenAD_Symbol_213,ALAMU,ALP2)
      CALL saxpy(OpenAD_Symbol_214,OpenAD_prop_20,ALP2)
      CALL sax(OpenAD_Symbol_216,ALAMU,ALP3)
      CALL saxpy(OpenAD_Symbol_217,OpenAD_prop_21,ALP3)
      CALL sax(OpenAD_Symbol_219,ALAMU,ALP4)
      CALL saxpy(OpenAD_Symbol_220,OpenAD_prop_22,ALP4)
      CALL sax(OpenAD_Symbol_222,ALAMCP,ALP5)
      CALL saxpy(OpenAD_Symbol_223,OpenAD_prop_23,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prop_24,PRIML(1))
      CALL inc_deriv(OpenAD_prop_24,EL)
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
      CALL saxpy(OpenAD_acc_66,ALP4,DSS3)
      CALL saxpy(OpenAD_acc_67,NYHAT,DSS3)
      CALL saxpy(OpenAD_Symbol_248,ALP3,DSS3)
      CALL saxpy(OpenAD_Symbol_249,NZHAT,DSS3)
      CALL saxpy(OpenAD_acc_76,ALP15M,DSS3)
      CALL saxpy(OpenAD_acc_77,NXHAT,DSS3)
      CALL sax(OpenAD_Symbol_258,MU,DSS4)
      CALL saxpy(OpenAD_Symbol_259,VAVE,DSS4)
      CALL saxpy(OpenAD_acc_68,ALP2,DSS4)
      CALL saxpy(OpenAD_acc_69,NZHAT,DSS4)
      CALL saxpy(OpenAD_Symbol_256,ALP4,DSS4)
      CALL saxpy(OpenAD_Symbol_257,NXHAT,DSS4)
      CALL saxpy(OpenAD_acc_74,ALP15M,DSS4)
      CALL saxpy(OpenAD_acc_75,NYHAT,DSS4)
      CALL sax(OpenAD_Symbol_266,MU,DSS5)
      CALL saxpy(OpenAD_Symbol_267,WAVE,DSS5)
      CALL saxpy(OpenAD_acc_70,ALP3,DSS5)
      CALL saxpy(OpenAD_acc_71,NXHAT,DSS5)
      CALL saxpy(OpenAD_Symbol_264,ALP2,DSS5)
      CALL saxpy(OpenAD_Symbol_265,NYHAT,DSS5)
      CALL saxpy(OpenAD_acc_72,ALP15M,DSS5)
      CALL saxpy(OpenAD_acc_73,NZHAT,DSS5)
      CALL sax(OpenAD_Symbol_279,NSIZE,FLUX(1))
      CALL saxpy(OpenAD_acc_50,UHATL,FLUX(1))
      CALL saxpy(OpenAD_acc_51,OpenAD_prop_24,FLUX(1))
      CALL saxpy(OpenAD_acc_52,ALP4,FLUX(1))
      CALL saxpy(OpenAD_acc_53,WTILDE,FLUX(1))
      CALL saxpy(OpenAD_acc_54,ALP3,FLUX(1))
      CALL saxpy(OpenAD_acc_55,VTILDE,FLUX(1))
      CALL saxpy(OpenAD_acc_56,ALP2,FLUX(1))
      CALL saxpy(OpenAD_acc_57,UTILDE,FLUX(1))
      CALL saxpy(OpenAD_acc_58,MU,FLUX(1))
      CALL saxpy(OpenAD_acc_59,THTAVE,FLUX(1))
      CALL saxpy(OpenAD_acc_60,ALP15P,FLUX(1))
      CALL saxpy(OpenAD_acc_61,GM1INV,FLUX(1))
      CALL saxpy(OpenAD_acc_62,CAVE,FLUX(1))
      CALL saxpy(OpenAD_acc_64,ALP15M,FLUX(1))
      CALL saxpy(OpenAD_acc_65,UHAT,FLUX(1))
      OpenAD_Symbol_284 = (DSS2%v+PRIML(2)%v*UHATL%v)
      FLUX(2)%v = (NSIZE%v*OpenAD_Symbol_284)
      OpenAD_Symbol_285 = OpenAD_Symbol_284
      OpenAD_Symbol_287 = UHATL%v
      OpenAD_Symbol_288 = PRIML(2)%v
      OpenAD_Symbol_286 = NSIZE%v
      CALL setderiv(OpenAD_prop_25,DSS2)
      CALL saxpy(OpenAD_Symbol_287,PRIML(2),OpenAD_prop_25)
      CALL saxpy(OpenAD_Symbol_288,UHATL,OpenAD_prop_25)
      CALL sax(OpenAD_Symbol_285,NSIZE,FLUX(2))
      CALL saxpy(OpenAD_Symbol_286,OpenAD_prop_25,FLUX(2))
      OpenAD_Symbol_289 = (DSS3%v+PRIML(1)%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX(3)%v = (NSIZE%v*OpenAD_Symbol_289)
      OpenAD_Symbol_290 = OpenAD_Symbol_289
      OpenAD_Symbol_292 = NXHAT%v
      OpenAD_Symbol_293 = PRIML(1)%v
      OpenAD_Symbol_294 = UHATL%v
      OpenAD_Symbol_295 = RUL%v
      OpenAD_Symbol_291 = NSIZE%v
      CALL setderiv(OpenAD_prop_26,DSS3)
      CALL saxpy(OpenAD_Symbol_292,PRIML(1),OpenAD_prop_26)
      CALL saxpy(OpenAD_Symbol_293,NXHAT,OpenAD_prop_26)
      CALL saxpy(OpenAD_Symbol_294,RUL,OpenAD_prop_26)
      CALL saxpy(OpenAD_Symbol_295,UHATL,OpenAD_prop_26)
      CALL sax(OpenAD_Symbol_290,NSIZE,FLUX(3))
      CALL saxpy(OpenAD_Symbol_291,OpenAD_prop_26,FLUX(3))
      OpenAD_Symbol_296 = (DSS4%v+PRIML(1)%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX(4)%v = (NSIZE%v*OpenAD_Symbol_296)
      OpenAD_Symbol_297 = OpenAD_Symbol_296
      OpenAD_Symbol_299 = NYHAT%v
      OpenAD_Symbol_300 = PRIML(1)%v
      OpenAD_Symbol_301 = UHATL%v
      OpenAD_Symbol_302 = RVL%v
      OpenAD_Symbol_298 = NSIZE%v
      CALL setderiv(OpenAD_prop_27,DSS4)
      CALL saxpy(OpenAD_Symbol_299,PRIML(1),OpenAD_prop_27)
      CALL saxpy(OpenAD_Symbol_300,NYHAT,OpenAD_prop_27)
      CALL saxpy(OpenAD_Symbol_301,RVL,OpenAD_prop_27)
      CALL saxpy(OpenAD_Symbol_302,UHATL,OpenAD_prop_27)
      CALL sax(OpenAD_Symbol_297,NSIZE,FLUX(4))
      CALL saxpy(OpenAD_Symbol_298,OpenAD_prop_27,FLUX(4))
      OpenAD_Symbol_303 = (DSS5%v+PRIML(1)%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX(5)%v = (NSIZE%v*OpenAD_Symbol_303)
      OpenAD_Symbol_304 = OpenAD_Symbol_303
      OpenAD_Symbol_306 = NZHAT%v
      OpenAD_Symbol_307 = PRIML(1)%v
      OpenAD_Symbol_308 = UHATL%v
      OpenAD_Symbol_309 = RWL%v
      OpenAD_Symbol_305 = NSIZE%v
      CALL setderiv(OpenAD_prop_28,DSS5)
      CALL saxpy(OpenAD_Symbol_306,PRIML(1),OpenAD_prop_28)
      CALL saxpy(OpenAD_Symbol_307,NZHAT,OpenAD_prop_28)
      CALL saxpy(OpenAD_Symbol_308,RWL,OpenAD_prop_28)
      CALL saxpy(OpenAD_Symbol_309,UHATL,OpenAD_prop_28)
      CALL sax(OpenAD_Symbol_304,NSIZE,FLUX(5))
      CALL saxpy(OpenAD_Symbol_305,OpenAD_prop_28,FLUX(5))
      END SUBROUTINE
