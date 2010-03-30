
C$OPENAD XXX File_start [head.f]
      SUBROUTINE ad_roehf5(NRM, PRIML, PRIMR, GAMMA, GM1, GM1INV, NLEFIX
     +, LEFIX, MCHEPS, FLUX)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
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
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_dly_1
      REAL(w2f__8) OpenAD_dly_2
      REAL(w2f__8) OpenAD_dly_3
      REAL(w2f__8) OpenAD_dly_4
      REAL(w2f__8) OpenAD_dly_5
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_100
      REAL(w2f__8) OpenAD_lin_101
      REAL(w2f__8) OpenAD_lin_102
      REAL(w2f__8) OpenAD_lin_103
      REAL(w2f__8) OpenAD_lin_104
      REAL(w2f__8) OpenAD_lin_105
      REAL(w2f__8) OpenAD_lin_106
      REAL(w2f__8) OpenAD_lin_108
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_110
      REAL(w2f__8) OpenAD_lin_112
      REAL(w2f__8) OpenAD_lin_113
      REAL(w2f__8) OpenAD_lin_114
      REAL(w2f__8) OpenAD_lin_115
      REAL(w2f__8) OpenAD_lin_116
      REAL(w2f__8) OpenAD_lin_117
      REAL(w2f__8) OpenAD_lin_119
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_121
      REAL(w2f__8) OpenAD_lin_123
      REAL(w2f__8) OpenAD_lin_125
      REAL(w2f__8) OpenAD_lin_126
      REAL(w2f__8) OpenAD_lin_127
      REAL(w2f__8) OpenAD_lin_128
      REAL(w2f__8) OpenAD_lin_129
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_130
      REAL(w2f__8) OpenAD_lin_131
      REAL(w2f__8) OpenAD_lin_132
      REAL(w2f__8) OpenAD_lin_133
      REAL(w2f__8) OpenAD_lin_134
      REAL(w2f__8) OpenAD_lin_135
      REAL(w2f__8) OpenAD_lin_136
      REAL(w2f__8) OpenAD_lin_137
      REAL(w2f__8) OpenAD_lin_138
      REAL(w2f__8) OpenAD_lin_139
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_140
      REAL(w2f__8) OpenAD_lin_141
      REAL(w2f__8) OpenAD_lin_142
      REAL(w2f__8) OpenAD_lin_143
      REAL(w2f__8) OpenAD_lin_144
      REAL(w2f__8) OpenAD_lin_145
      REAL(w2f__8) OpenAD_lin_146
      REAL(w2f__8) OpenAD_lin_147
      REAL(w2f__8) OpenAD_lin_148
      REAL(w2f__8) OpenAD_lin_149
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_150
      REAL(w2f__8) OpenAD_lin_151
      REAL(w2f__8) OpenAD_lin_152
      REAL(w2f__8) OpenAD_lin_153
      REAL(w2f__8) OpenAD_lin_154
      REAL(w2f__8) OpenAD_lin_155
      REAL(w2f__8) OpenAD_lin_156
      REAL(w2f__8) OpenAD_lin_157
      REAL(w2f__8) OpenAD_lin_158
      REAL(w2f__8) OpenAD_lin_159
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_160
      REAL(w2f__8) OpenAD_lin_161
      REAL(w2f__8) OpenAD_lin_162
      REAL(w2f__8) OpenAD_lin_163
      REAL(w2f__8) OpenAD_lin_164
      REAL(w2f__8) OpenAD_lin_165
      REAL(w2f__8) OpenAD_lin_167
      REAL(w2f__8) OpenAD_lin_168
      REAL(w2f__8) OpenAD_lin_169
      REAL(w2f__8) OpenAD_lin_170
      REAL(w2f__8) OpenAD_lin_171
      REAL(w2f__8) OpenAD_lin_172
      REAL(w2f__8) OpenAD_lin_173
      REAL(w2f__8) OpenAD_lin_174
      REAL(w2f__8) OpenAD_lin_175
      REAL(w2f__8) OpenAD_lin_176
      REAL(w2f__8) OpenAD_lin_177
      REAL(w2f__8) OpenAD_lin_178
      REAL(w2f__8) OpenAD_lin_179
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_180
      REAL(w2f__8) OpenAD_lin_181
      REAL(w2f__8) OpenAD_lin_182
      REAL(w2f__8) OpenAD_lin_183
      REAL(w2f__8) OpenAD_lin_184
      REAL(w2f__8) OpenAD_lin_185
      REAL(w2f__8) OpenAD_lin_186
      REAL(w2f__8) OpenAD_lin_187
      REAL(w2f__8) OpenAD_lin_188
      REAL(w2f__8) OpenAD_lin_189
      REAL(w2f__8) OpenAD_lin_190
      REAL(w2f__8) OpenAD_lin_191
      REAL(w2f__8) OpenAD_lin_192
      REAL(w2f__8) OpenAD_lin_193
      REAL(w2f__8) OpenAD_lin_194
      REAL(w2f__8) OpenAD_lin_195
      REAL(w2f__8) OpenAD_lin_196
      REAL(w2f__8) OpenAD_lin_197
      REAL(w2f__8) OpenAD_lin_198
      REAL(w2f__8) OpenAD_lin_199
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_200
      REAL(w2f__8) OpenAD_lin_201
      REAL(w2f__8) OpenAD_lin_202
      REAL(w2f__8) OpenAD_lin_203
      REAL(w2f__8) OpenAD_lin_204
      REAL(w2f__8) OpenAD_lin_205
      REAL(w2f__8) OpenAD_lin_207
      REAL(w2f__8) OpenAD_lin_208
      REAL(w2f__8) OpenAD_lin_209
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_210
      REAL(w2f__8) OpenAD_lin_211
      REAL(w2f__8) OpenAD_lin_212
      REAL(w2f__8) OpenAD_lin_213
      REAL(w2f__8) OpenAD_lin_214
      REAL(w2f__8) OpenAD_lin_215
      REAL(w2f__8) OpenAD_lin_216
      REAL(w2f__8) OpenAD_lin_217
      REAL(w2f__8) OpenAD_lin_218
      REAL(w2f__8) OpenAD_lin_219
      REAL(w2f__8) OpenAD_lin_22
      REAL(w2f__8) OpenAD_lin_220
      REAL(w2f__8) OpenAD_lin_221
      REAL(w2f__8) OpenAD_lin_222
      REAL(w2f__8) OpenAD_lin_223
      REAL(w2f__8) OpenAD_lin_224
      REAL(w2f__8) OpenAD_lin_225
      REAL(w2f__8) OpenAD_lin_226
      REAL(w2f__8) OpenAD_lin_227
      REAL(w2f__8) OpenAD_lin_228
      REAL(w2f__8) OpenAD_lin_229
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_230
      REAL(w2f__8) OpenAD_lin_231
      REAL(w2f__8) OpenAD_lin_232
      REAL(w2f__8) OpenAD_lin_233
      REAL(w2f__8) OpenAD_lin_234
      REAL(w2f__8) OpenAD_lin_235
      REAL(w2f__8) OpenAD_lin_236
      REAL(w2f__8) OpenAD_lin_237
      REAL(w2f__8) OpenAD_lin_238
      REAL(w2f__8) OpenAD_lin_239
      REAL(w2f__8) OpenAD_lin_240
      REAL(w2f__8) OpenAD_lin_241
      REAL(w2f__8) OpenAD_lin_242
      REAL(w2f__8) OpenAD_lin_243
      REAL(w2f__8) OpenAD_lin_244
      REAL(w2f__8) OpenAD_lin_245
      REAL(w2f__8) OpenAD_lin_246
      REAL(w2f__8) OpenAD_lin_247
      REAL(w2f__8) OpenAD_lin_248
      REAL(w2f__8) OpenAD_lin_249
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_250
      REAL(w2f__8) OpenAD_lin_251
      REAL(w2f__8) OpenAD_lin_252
      REAL(w2f__8) OpenAD_lin_253
      REAL(w2f__8) OpenAD_lin_254
      REAL(w2f__8) OpenAD_lin_255
      REAL(w2f__8) OpenAD_lin_256
      REAL(w2f__8) OpenAD_lin_257
      REAL(w2f__8) OpenAD_lin_258
      REAL(w2f__8) OpenAD_lin_259
      REAL(w2f__8) OpenAD_lin_260
      REAL(w2f__8) OpenAD_lin_261
      REAL(w2f__8) OpenAD_lin_262
      REAL(w2f__8) OpenAD_lin_263
      REAL(w2f__8) OpenAD_lin_264
      REAL(w2f__8) OpenAD_lin_265
      REAL(w2f__8) OpenAD_lin_266
      REAL(w2f__8) OpenAD_lin_267
      REAL(w2f__8) OpenAD_lin_268
      REAL(w2f__8) OpenAD_lin_269
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_270
      REAL(w2f__8) OpenAD_lin_271
      REAL(w2f__8) OpenAD_lin_272
      REAL(w2f__8) OpenAD_lin_273
      REAL(w2f__8) OpenAD_lin_274
      REAL(w2f__8) OpenAD_lin_275
      REAL(w2f__8) OpenAD_lin_276
      REAL(w2f__8) OpenAD_lin_277
      REAL(w2f__8) OpenAD_lin_278
      REAL(w2f__8) OpenAD_lin_279
      REAL(w2f__8) OpenAD_lin_280
      REAL(w2f__8) OpenAD_lin_281
      REAL(w2f__8) OpenAD_lin_282
      REAL(w2f__8) OpenAD_lin_283
      REAL(w2f__8) OpenAD_lin_284
      REAL(w2f__8) OpenAD_lin_285
      REAL(w2f__8) OpenAD_lin_286
      REAL(w2f__8) OpenAD_lin_287
      REAL(w2f__8) OpenAD_lin_288
      REAL(w2f__8) OpenAD_lin_289
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_290
      REAL(w2f__8) OpenAD_lin_291
      REAL(w2f__8) OpenAD_lin_292
      REAL(w2f__8) OpenAD_lin_293
      REAL(w2f__8) OpenAD_lin_294
      REAL(w2f__8) OpenAD_lin_295
      REAL(w2f__8) OpenAD_lin_296
      REAL(w2f__8) OpenAD_lin_297
      REAL(w2f__8) OpenAD_lin_298
      REAL(w2f__8) OpenAD_lin_299
      REAL(w2f__8) OpenAD_lin_300
      REAL(w2f__8) OpenAD_lin_301
      REAL(w2f__8) OpenAD_lin_302
      REAL(w2f__8) OpenAD_lin_303
      REAL(w2f__8) OpenAD_lin_304
      REAL(w2f__8) OpenAD_lin_305
      REAL(w2f__8) OpenAD_lin_306
      REAL(w2f__8) OpenAD_lin_307
      REAL(w2f__8) OpenAD_lin_309
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_310
      REAL(w2f__8) OpenAD_lin_311
      REAL(w2f__8) OpenAD_lin_312
      REAL(w2f__8) OpenAD_lin_314
      REAL(w2f__8) OpenAD_lin_315
      REAL(w2f__8) OpenAD_lin_316
      REAL(w2f__8) OpenAD_lin_317
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_44
      REAL(w2f__8) OpenAD_lin_45
      REAL(w2f__8) OpenAD_lin_46
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_48
      REAL(w2f__8) OpenAD_lin_49
      REAL(w2f__8) OpenAD_lin_50
      REAL(w2f__8) OpenAD_lin_51
      REAL(w2f__8) OpenAD_lin_52
      REAL(w2f__8) OpenAD_lin_53
      REAL(w2f__8) OpenAD_lin_54
      REAL(w2f__8) OpenAD_lin_55
      REAL(w2f__8) OpenAD_lin_56
      REAL(w2f__8) OpenAD_lin_57
      REAL(w2f__8) OpenAD_lin_58
      REAL(w2f__8) OpenAD_lin_59
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_60
      REAL(w2f__8) OpenAD_lin_61
      REAL(w2f__8) OpenAD_lin_62
      REAL(w2f__8) OpenAD_lin_63
      REAL(w2f__8) OpenAD_lin_64
      REAL(w2f__8) OpenAD_lin_65
      REAL(w2f__8) OpenAD_lin_66
      REAL(w2f__8) OpenAD_lin_67
      REAL(w2f__8) OpenAD_lin_68
      REAL(w2f__8) OpenAD_lin_69
      REAL(w2f__8) OpenAD_lin_70
      REAL(w2f__8) OpenAD_lin_71
      REAL(w2f__8) OpenAD_lin_72
      REAL(w2f__8) OpenAD_lin_73
      REAL(w2f__8) OpenAD_lin_75
      REAL(w2f__8) OpenAD_lin_77
      REAL(w2f__8) OpenAD_lin_79
      REAL(w2f__8) OpenAD_lin_81
      REAL(w2f__8) OpenAD_lin_82
      REAL(w2f__8) OpenAD_lin_83
      REAL(w2f__8) OpenAD_lin_84
      REAL(w2f__8) OpenAD_lin_85
      REAL(w2f__8) OpenAD_lin_86
      REAL(w2f__8) OpenAD_lin_87
      REAL(w2f__8) OpenAD_lin_88
      REAL(w2f__8) OpenAD_lin_89
      REAL(w2f__8) OpenAD_lin_9
      REAL(w2f__8) OpenAD_lin_90
      REAL(w2f__8) OpenAD_lin_91
      REAL(w2f__8) OpenAD_lin_92
      REAL(w2f__8) OpenAD_lin_93
      REAL(w2f__8) OpenAD_lin_94
      REAL(w2f__8) OpenAD_lin_95
      REAL(w2f__8) OpenAD_lin_96
      REAL(w2f__8) OpenAD_lin_97
      REAL(w2f__8) OpenAD_lin_98
      REAL(w2f__8) OpenAD_lin_99
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
      type(active) :: OpenAD_prp_10
      type(active) :: OpenAD_prp_11
      type(active) :: OpenAD_prp_12
      type(active) :: OpenAD_prp_13
      type(active) :: OpenAD_prp_14
      type(active) :: OpenAD_prp_15
      type(active) :: OpenAD_prp_16
      type(active) :: OpenAD_prp_17
      type(active) :: OpenAD_prp_18
      type(active) :: OpenAD_prp_19
      type(active) :: OpenAD_prp_2
      type(active) :: OpenAD_prp_20
      type(active) :: OpenAD_prp_21
      type(active) :: OpenAD_prp_22
      type(active) :: OpenAD_prp_23
      type(active) :: OpenAD_prp_24
      type(active) :: OpenAD_prp_25
      type(active) :: OpenAD_prp_26
      type(active) :: OpenAD_prp_27
      type(active) :: OpenAD_prp_28
      type(active) :: OpenAD_prp_29
      type(active) :: OpenAD_prp_3
      type(active) :: OpenAD_prp_30
      type(active) :: OpenAD_prp_31
      type(active) :: OpenAD_prp_4
      type(active) :: OpenAD_prp_5
      type(active) :: OpenAD_prp_6
      type(active) :: OpenAD_prp_7
      type(active) :: OpenAD_prp_8
      type(active) :: OpenAD_prp_9
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
      OpenAD_lin_0 = ((NRM(1)%v**2)+(NRM(2)%v**2)+(NRM(3)%v**2))
      NSIZE%v = SIN(OpenAD_lin_0)
      OpenAD_lin_2 = (2*(NRM(1)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_4 = (2*(NRM(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_6 = (2*(NRM(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_1 = COS(OpenAD_lin_0)
      OpenAD_acc_0 = (OpenAD_lin_6*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_4*OpenAD_lin_1)
      OpenAD_acc_2 = (OpenAD_lin_2*OpenAD_lin_1)
      CALL sax(OpenAD_acc_0,NRM(3),NSIZE)
      CALL saxpy(OpenAD_acc_1,NRM(2),NSIZE)
      CALL saxpy(OpenAD_acc_2,NRM(1),NSIZE)
      IF (MCHEPS.LT.NSIZE%v) THEN
        NSIZEI%v = (1.0D00/NSIZE%v)
        OpenAD_lin_9 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
        CALL sax(OpenAD_lin_9,NSIZE,NSIZEI)
      ELSE
        NSIZEI%v = 0.0D00
        CALL zero_deriv(NSIZEI)
      ENDIF
      NXHAT%v = (NRM(1)%v*NSIZEI%v)
      OpenAD_lin_10 = NSIZEI%v
      OpenAD_lin_11 = NRM(1)%v
      NYHAT%v = (NRM(2)%v*NSIZEI%v)
      OpenAD_lin_12 = NSIZEI%v
      OpenAD_lin_13 = NRM(2)%v
      NZHAT%v = (NRM(3)%v*NSIZEI%v)
      OpenAD_lin_14 = NSIZEI%v
      OpenAD_lin_15 = NRM(3)%v
      OpenAD_lin_20 = (PRIMR(2)%v/PRIML(2)%v)
      OpenAD_lin_16 = (SIN(OpenAD_lin_20)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_lin_16)
      OpenAD_lin_22 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_lin_23 = (-(PRIMR(2)%v/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_lin_21 = COS(OpenAD_lin_20)
      OpenAD_lin_18 = (-(1.0D00/(OpenAD_lin_16*OpenAD_lin_16)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_lin_25 = ((PRIML(3)%v**2)+(PRIML(4)%v**2)+(PRIML(5)%v**2))
      THETAL%v = (OpenAD_lin_25*5.0D-01)
      OpenAD_lin_27 = (2*(PRIML(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_29 = (2*(PRIML(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_31 = (2*(PRIML(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_33 = ((PRIMR(3)%v**2)+(PRIMR(4)%v**2)+(PRIMR(5)%v**2))
      THETAR%v = (OpenAD_lin_33*5.0D-01)
      OpenAD_lin_35 = (2*(PRIMR(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_37 = (2*(PRIMR(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_39 = (2*(PRIMR(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_44 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_41 = (PRIML(1)%v*OpenAD_lin_44)
      HL%v = (THETAL%v+(OpenAD_lin_41/PRIML(2)%v))
      OpenAD_lin_45 = OpenAD_lin_44
      OpenAD_lin_47 = GM1INV%v
      OpenAD_lin_48 = GAMMA%v
      OpenAD_lin_46 = PRIML(1)%v
      OpenAD_lin_42 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_lin_43 = (-(OpenAD_lin_41/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_lin_52 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_49 = (PRIMR(1)%v*OpenAD_lin_52)
      HR%v = (THETAR%v+(OpenAD_lin_49/PRIMR(2)%v))
      OpenAD_lin_53 = OpenAD_lin_52
      OpenAD_lin_55 = GM1INV%v
      OpenAD_lin_56 = GAMMA%v
      OpenAD_lin_54 = PRIMR(1)%v
      OpenAD_lin_50 = (INT(1_w2f__i8)/PRIMR(2)%v)
      OpenAD_lin_51 = (-(OpenAD_lin_49/(PRIMR(2)%v*PRIMR(2)%v)))
      UAVE%v = (PRIML(3)%v*ROEL%v+PRIMR(3)%v*ROER%v)
      OpenAD_lin_57 = ROEL%v
      OpenAD_lin_58 = PRIML(3)%v
      OpenAD_lin_59 = ROER%v
      OpenAD_lin_60 = PRIMR(3)%v
      VAVE%v = (PRIML(4)%v*ROEL%v+PRIMR(4)%v*ROER%v)
      OpenAD_lin_61 = ROEL%v
      OpenAD_lin_62 = PRIML(4)%v
      OpenAD_lin_63 = ROER%v
      OpenAD_lin_64 = PRIMR(4)%v
      WAVE%v = (PRIML(5)%v*ROEL%v+PRIMR(5)%v*ROER%v)
      OpenAD_lin_65 = ROEL%v
      OpenAD_lin_66 = PRIML(5)%v
      OpenAD_lin_67 = ROER%v
      OpenAD_lin_68 = PRIMR(5)%v
      HAVE%v = (HL%v*ROEL%v+HR%v*ROER%v)
      OpenAD_lin_69 = ROEL%v
      OpenAD_lin_70 = HL%v
      OpenAD_lin_71 = ROER%v
      OpenAD_lin_72 = HR%v
      OpenAD_lin_73 = ((UAVE%v**2)+(VAVE%v**2)+(WAVE%v**2))
      THTAVE%v = (OpenAD_lin_73*5.0D-01)
      OpenAD_lin_75 = (2*(UAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_77 = (2*(VAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_79 = (2*(WAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_81 = (HAVE%v-THTAVE%v)
      CAVE%v = (GM1%v*OpenAD_lin_81)
      OpenAD_lin_82 = OpenAD_lin_81
      OpenAD_lin_83 = GM1%v
      OpenAD_acc_3 = (OpenAD_lin_54*OpenAD_lin_50)
      OpenAD_acc_4 = (OpenAD_lin_46*OpenAD_lin_42)
      OpenAD_acc_5 = (5.0D-01*INT((-1_w2f__i8))*OpenAD_lin_83)
      OpenAD_acc_6 = (OpenAD_lin_71*OpenAD_lin_83)
      OpenAD_acc_7 = (OpenAD_lin_69*OpenAD_lin_83)
      OpenAD_acc_8 = (OpenAD_lin_18*(OpenAD_lin_70*OpenAD_lin_83+INT((-1
     +_w2f__i8))*OpenAD_lin_72*OpenAD_lin_83))
      OpenAD_acc_9 = (OpenAD_lin_18*(OpenAD_lin_66+INT((-1_w2f__i8))*Ope
     +nAD_lin_68))
      OpenAD_acc_10 = (OpenAD_lin_18*(OpenAD_lin_62+INT((-1_w2f__i8))*Op
     +enAD_lin_64))
      OpenAD_acc_11 = (OpenAD_lin_18*(OpenAD_lin_58+INT((-1_w2f__i8))*Op
     +enAD_lin_60))
      OpenAD_acc_12 = (OpenAD_lin_22*OpenAD_lin_21)
      OpenAD_acc_13 = (OpenAD_lin_23*OpenAD_lin_21)
      OpenAD_acc_14 = (OpenAD_lin_45*OpenAD_lin_42)
      OpenAD_acc_15 = (OpenAD_lin_47*OpenAD_acc_4)
      OpenAD_acc_16 = (OpenAD_lin_48*OpenAD_acc_4)
      OpenAD_acc_17 = (OpenAD_lin_53*OpenAD_lin_50)
      OpenAD_acc_18 = (OpenAD_lin_55*OpenAD_acc_3)
      OpenAD_acc_19 = (OpenAD_lin_56*OpenAD_acc_3)
      CALL sax(OpenAD_lin_10,NRM(1),NXHAT)
      CALL saxpy(OpenAD_lin_11,NSIZEI,NXHAT)
      CALL sax(OpenAD_lin_12,NRM(2),NYHAT)
      CALL saxpy(OpenAD_lin_13,NSIZEI,NYHAT)
      CALL sax(OpenAD_lin_14,NRM(3),NZHAT)
      CALL saxpy(OpenAD_lin_15,NSIZEI,NZHAT)
      CALL sax(OpenAD_acc_12,PRIMR(2),OpenAD_prp_0)
      CALL saxpy(OpenAD_acc_13,PRIML(2),OpenAD_prp_0)
      CALL sax(OpenAD_lin_31,PRIML(5),OpenAD_prp_1)
      CALL saxpy(OpenAD_lin_27,PRIML(3),OpenAD_prp_1)
      CALL saxpy(OpenAD_lin_29,PRIML(4),OpenAD_prp_1)
      CALL sax(OpenAD_lin_39,PRIMR(5),OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_35,PRIMR(3),OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_37,PRIMR(4),OpenAD_prp_2)
      CALL sax(5.0D-01,OpenAD_prp_1,THETAL)
      CALL sax(5.0D-01,OpenAD_prp_2,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_lin_43,PRIML(2),HL)
      CALL saxpy(OpenAD_acc_14,PRIML(1),HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_lin_51,PRIMR(2),HR)
      CALL saxpy(OpenAD_acc_17,PRIMR(1),HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_lin_59,PRIMR(3),UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prp_0,UAVE)
      CALL saxpy(OpenAD_lin_57,PRIML(3),UAVE)
      CALL sax(OpenAD_lin_63,PRIMR(4),VAVE)
      CALL saxpy(OpenAD_lin_61,PRIML(4),VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prp_0,VAVE)
      CALL sax(OpenAD_lin_67,PRIMR(5),WAVE)
      CALL saxpy(OpenAD_lin_65,PRIML(5),WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prp_0,WAVE)
      CALL sax(OpenAD_lin_79,WAVE,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_77,VAVE,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_75,UAVE,OpenAD_prp_3)
      CALL sax(5.0D-01,OpenAD_prp_3,THTAVE)
      CALL sax(OpenAD_lin_82,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prp_3,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prp_0,CAVE)
      OpenAD_dly_0 = SIN(CAVE%v)
      OpenAD_lin_84 = COS(CAVE%v)
      CAVE%v = OpenAD_dly_0
      UHAT%v = (NXHAT%v*UAVE%v+NYHAT%v*VAVE%v+NZHAT%v*WAVE%v)
      OpenAD_lin_85 = UAVE%v
      OpenAD_lin_86 = NXHAT%v
      OpenAD_lin_87 = VAVE%v
      OpenAD_lin_88 = NYHAT%v
      OpenAD_lin_89 = WAVE%v
      OpenAD_lin_90 = NZHAT%v
      UTILDE%v = (NYHAT%v*WAVE%v-NZHAT%v*VAVE%v)
      OpenAD_lin_91 = WAVE%v
      OpenAD_lin_92 = NYHAT%v
      OpenAD_lin_93 = VAVE%v
      OpenAD_lin_94 = NZHAT%v
      VTILDE%v = (NZHAT%v*UAVE%v-NXHAT%v*WAVE%v)
      OpenAD_lin_95 = UAVE%v
      OpenAD_lin_96 = NZHAT%v
      OpenAD_lin_97 = WAVE%v
      OpenAD_lin_98 = NXHAT%v
      WTILDE%v = (NXHAT%v*VAVE%v-NYHAT%v*UAVE%v)
      OpenAD_lin_99 = VAVE%v
      OpenAD_lin_100 = NXHAT%v
      OpenAD_lin_101 = UAVE%v
      OpenAD_lin_102 = NYHAT%v
      LAMCM%v = (UHAT%v-CAVE%v)
      LAMU%v = UHAT%v
      LAMCP%v = (CAVE%v+UHAT%v)
      OpenAD_lin_103 = (CAVE%v+UHAT%v)
      DELTA%v = (NLEFIX%v*OpenAD_lin_103)
      OpenAD_lin_104 = OpenAD_lin_103
      OpenAD_lin_105 = NLEFIX%v
      DELTA2%v = (DELTA%v**2)
      OpenAD_lin_106 = (2*(DELTA%v**(2-INT(1_w2f__i8))))
      LAM2%v = (LAMCM%v**2)
      OpenAD_lin_108 = (2*(LAMCM%v**(2-INT(1_w2f__i8))))
      OpenAD_acc_20 = (OpenAD_lin_104*OpenAD_lin_106)
      OpenAD_acc_21 = (OpenAD_lin_105*OpenAD_lin_106)
      OpenAD_acc_22 = (OpenAD_lin_93*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_94*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_97*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_98*INT((-1_w2f__i8)))
      OpenAD_acc_26 = (OpenAD_lin_101*INT((-1_w2f__i8)))
      OpenAD_acc_27 = (OpenAD_lin_102*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_4,CAVE)
      CALL sax(OpenAD_lin_84,OpenAD_prp_4,CAVE)
      CALL sax(OpenAD_lin_91,NYHAT,UTILDE)
      CALL saxpy(OpenAD_lin_92,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_22,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_23,VAVE,UTILDE)
      CALL sax(OpenAD_lin_95,NZHAT,VTILDE)
      CALL saxpy(OpenAD_lin_96,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_24,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_25,WAVE,VTILDE)
      CALL sax(OpenAD_lin_99,NXHAT,WTILDE)
      CALL saxpy(OpenAD_lin_100,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_26,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_27,UAVE,WTILDE)
      CALL sax(OpenAD_lin_85,NXHAT,UHAT)
      CALL saxpy(OpenAD_lin_86,UAVE,UHAT)
      CALL saxpy(OpenAD_lin_87,NYHAT,UHAT)
      CALL saxpy(OpenAD_lin_88,VAVE,UHAT)
      CALL saxpy(OpenAD_lin_89,NZHAT,UHAT)
      CALL saxpy(OpenAD_lin_90,WAVE,UHAT)
      CALL setderiv(LAMCM,UHAT)
      CALL dec_deriv(LAMCM,CAVE)
      CALL setderiv(LAMU,UHAT)
      CALL setderiv(LAMCP,CAVE)
      CALL inc_deriv(LAMCP,UHAT)
      CALL setderiv(OpenAD_prp_5,CAVE)
      CALL inc_deriv(OpenAD_prp_5,UHAT)
      CALL sax(OpenAD_lin_108,LAMCM,LAM2)
      CALL sax(OpenAD_acc_20,NLEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_21,OpenAD_prp_5,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCM%v = LAMCM%v
        CALL setderiv(ALAMCM,LAMCM)
      ELSE
        OpenAD_lin_317 = (DELTA2%v+LAM2%v)
        OpenAD_lin_314 = (OpenAD_lin_317*5.0D-01)
        ALAMCM%v = (OpenAD_lin_314/DELTA2%v)
        OpenAD_lin_315 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_316 = (-(OpenAD_lin_314/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_80 = (5.0D-01*OpenAD_lin_315)
        CALL setderiv(OpenAD_prp_31,DELTA2)
        CALL inc_deriv(OpenAD_prp_31,LAM2)
        CALL sax(OpenAD_lin_316,DELTA2,ALAMCM)
        CALL saxpy(OpenAD_acc_80,OpenAD_prp_31,ALAMCM)
      ENDIF
      LAM2%v = (LAMCP%v**2)
      OpenAD_lin_110 = (2*(LAMCP%v**(2-INT(1_w2f__i8))))
      CALL sax(OpenAD_lin_110,LAMCP,LAM2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCP%v = LAMCP%v
        CALL setderiv(ALAMCP,LAMCP)
      ELSE
        OpenAD_lin_312 = (DELTA2%v+LAM2%v)
        OpenAD_lin_309 = (OpenAD_lin_312*5.0D-01)
        ALAMCP%v = (OpenAD_lin_309/DELTA2%v)
        OpenAD_lin_310 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_311 = (-(OpenAD_lin_309/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_79 = (5.0D-01*OpenAD_lin_310)
        CALL setderiv(OpenAD_prp_30,DELTA2)
        CALL inc_deriv(OpenAD_prp_30,LAM2)
        CALL sax(OpenAD_lin_311,DELTA2,ALAMCP)
        CALL saxpy(OpenAD_acc_79,OpenAD_prp_30,ALAMCP)
      ENDIF
      OpenAD_lin_112 = (CAVE%v+UHAT%v)
      DELTA%v = (LEFIX%v*OpenAD_lin_112)
      OpenAD_lin_113 = OpenAD_lin_112
      OpenAD_lin_114 = LEFIX%v
      DELTA2%v = (DELTA%v*DELTA%v)
      OpenAD_lin_115 = DELTA%v
      OpenAD_lin_116 = DELTA%v
      LAM2%v = (LAMU%v**2)
      OpenAD_lin_117 = (2*(LAMU%v**(2-INT(1_w2f__i8))))
      OpenAD_acc_28 = (OpenAD_lin_115+OpenAD_lin_116)
      OpenAD_acc_29 = (OpenAD_lin_113*OpenAD_acc_28)
      OpenAD_acc_30 = (OpenAD_lin_114*OpenAD_acc_28)
      CALL setderiv(OpenAD_prp_6,CAVE)
      CALL inc_deriv(OpenAD_prp_6,UHAT)
      CALL sax(OpenAD_lin_117,LAMU,LAM2)
      CALL sax(OpenAD_acc_29,LEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_30,OpenAD_prp_6,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMU%v = LAMU%v
        CALL setderiv(ALAMU,LAMU)
      ELSE
        OpenAD_lin_307 = (DELTA2%v+LAM2%v)
        OpenAD_lin_304 = (OpenAD_lin_307*5.0D-01)
        ALAMU%v = (OpenAD_lin_304/DELTA2%v)
        OpenAD_lin_305 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_306 = (-(OpenAD_lin_304/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_78 = (5.0D-01*OpenAD_lin_305)
        CALL setderiv(OpenAD_prp_29,DELTA2)
        CALL inc_deriv(OpenAD_prp_29,LAM2)
        CALL sax(OpenAD_lin_306,DELTA2,ALAMU)
        CALL saxpy(OpenAD_acc_78,OpenAD_prp_29,ALAMU)
      ENDIF
      OpenAD_lin_119 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_lin_119*5.0D-01)
      OpenAD_lin_121 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_lin_121*5.0D-01)
      OpenAD_lin_123 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_lin_123*5.0D-01)
      EL%v = (PRIML(1)%v*GM1INV%v+PRIML(2)%v*THETAL%v)
      OpenAD_lin_125 = GM1INV%v
      OpenAD_lin_126 = PRIML(1)%v
      OpenAD_lin_127 = THETAL%v
      OpenAD_lin_128 = PRIML(2)%v
      RUL%v = (PRIML(2)%v*PRIML(3)%v)
      OpenAD_lin_129 = PRIML(3)%v
      OpenAD_lin_130 = PRIML(2)%v
      RVL%v = (PRIML(2)%v*PRIML(4)%v)
      OpenAD_lin_131 = PRIML(4)%v
      OpenAD_lin_132 = PRIML(2)%v
      RWL%v = (PRIML(2)%v*PRIML(5)%v)
      OpenAD_lin_133 = PRIML(5)%v
      OpenAD_lin_134 = PRIML(2)%v
      ER%v = (PRIMR(1)%v*GM1INV%v+PRIMR(2)%v*THETAR%v)
      OpenAD_lin_135 = GM1INV%v
      OpenAD_lin_136 = PRIMR(1)%v
      OpenAD_lin_137 = THETAR%v
      OpenAD_lin_138 = PRIMR(2)%v
      RUR%v = (PRIMR(2)%v*PRIMR(3)%v)
      OpenAD_lin_139 = PRIMR(3)%v
      OpenAD_lin_140 = PRIMR(2)%v
      RVR%v = (PRIMR(2)%v*PRIMR(4)%v)
      OpenAD_lin_141 = PRIMR(4)%v
      OpenAD_lin_142 = PRIMR(2)%v
      RWR%v = (PRIMR(2)%v*PRIMR(5)%v)
      OpenAD_lin_143 = PRIMR(5)%v
      OpenAD_lin_144 = PRIMR(2)%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR(2)%v-PRIML(2)%v)
      DRU%v = (RUR%v-RUL%v)
      DRV%v = (RVR%v-RVL%v)
      DRW%v = (RWR%v-RWL%v)
      UDDRU%v = (DRU%v*UAVE%v+DRV%v*VAVE%v+DRW%v*WAVE%v)
      OpenAD_lin_145 = UAVE%v
      OpenAD_lin_146 = DRU%v
      OpenAD_lin_147 = VAVE%v
      OpenAD_lin_148 = DRV%v
      OpenAD_lin_149 = WAVE%v
      OpenAD_lin_150 = DRW%v
      OpenAD_lin_151 = (GM1%v/CAVE%v)
      OpenAD_lin_152 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_lin_151*OpenAD_lin_152)
      OpenAD_lin_155 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_156 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_153 = OpenAD_lin_152
      OpenAD_lin_157 = THTAVE%v
      OpenAD_lin_158 = DR%v
      OpenAD_lin_154 = OpenAD_lin_151
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_lin_159 = NXHAT%v
      OpenAD_lin_160 = DRU%v
      OpenAD_lin_161 = NYHAT%v
      OpenAD_lin_162 = DRV%v
      OpenAD_lin_163 = NZHAT%v
      OpenAD_lin_164 = DRW%v
      OpenAD_lin_165 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_lin_165*5.0D-01)
      OpenAD_lin_167 = UHAT%v
      OpenAD_lin_168 = DR%v
      OpenAD_lin_171 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_lin_176 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_lin_171+OMEGA%v*OpenAD_lin_176
     +-DRV%v*NZHAT%v)
      OpenAD_lin_169 = NYHAT%v
      OpenAD_lin_170 = DRW%v
      OpenAD_lin_172 = OpenAD_lin_171
      OpenAD_lin_174 = NXHAT%v
      OpenAD_lin_175 = CAVE%v
      OpenAD_lin_173 = DR%v
      OpenAD_lin_177 = OpenAD_lin_176
      OpenAD_lin_178 = OMEGA%v
      OpenAD_lin_179 = NZHAT%v
      OpenAD_lin_180 = DRV%v
      OpenAD_lin_183 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_lin_188 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_lin_183+OMEGA%v*OpenAD_lin_188
     +-DRW%v*NXHAT%v)
      OpenAD_lin_181 = NZHAT%v
      OpenAD_lin_182 = DRU%v
      OpenAD_lin_184 = OpenAD_lin_183
      OpenAD_lin_186 = NYHAT%v
      OpenAD_lin_187 = CAVE%v
      OpenAD_lin_185 = DR%v
      OpenAD_lin_189 = OpenAD_lin_188
      OpenAD_lin_190 = OMEGA%v
      OpenAD_lin_191 = NXHAT%v
      OpenAD_lin_192 = DRW%v
      OpenAD_lin_195 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_lin_200 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_lin_195+OMEGA%v*OpenAD_lin_200
     +-DRU%v*NYHAT%v)
      OpenAD_lin_193 = NXHAT%v
      OpenAD_lin_194 = DRV%v
      OpenAD_lin_196 = OpenAD_lin_195
      OpenAD_lin_198 = NZHAT%v
      OpenAD_lin_199 = CAVE%v
      OpenAD_lin_197 = DR%v
      OpenAD_lin_201 = OpenAD_lin_200
      OpenAD_lin_202 = OMEGA%v
      OpenAD_lin_203 = NYHAT%v
      OpenAD_lin_204 = DRU%v
      OpenAD_lin_205 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_lin_205*5.0D-01)
      OpenAD_lin_207 = UHAT%v
      OpenAD_lin_208 = DR%v
      OpenAD_acc_31 = (OpenAD_lin_155*OpenAD_lin_153)
      OpenAD_acc_32 = (OpenAD_lin_156*OpenAD_lin_153)
      OpenAD_acc_33 = (OpenAD_lin_145*INT((-1_w2f__i8)))
      OpenAD_acc_34 = (OpenAD_lin_146*INT((-1_w2f__i8)))
      OpenAD_acc_35 = (OpenAD_lin_147*INT((-1_w2f__i8)))
      OpenAD_acc_36 = (OpenAD_lin_148*INT((-1_w2f__i8)))
      OpenAD_acc_37 = (OpenAD_lin_149*INT((-1_w2f__i8)))
      OpenAD_acc_38 = (OpenAD_lin_150*INT((-1_w2f__i8)))
      OpenAD_acc_39 = (INT((-1_w2f__i8))*OpenAD_lin_178)
      OpenAD_acc_40 = (OpenAD_lin_179*INT((-1_w2f__i8)))
      OpenAD_acc_41 = (OpenAD_lin_180*INT((-1_w2f__i8)))
      OpenAD_acc_42 = (INT((-1_w2f__i8))*OpenAD_lin_190)
      OpenAD_acc_43 = (OpenAD_lin_191*INT((-1_w2f__i8)))
      OpenAD_acc_44 = (OpenAD_lin_192*INT((-1_w2f__i8)))
      OpenAD_acc_45 = (INT((-1_w2f__i8))*OpenAD_lin_202)
      OpenAD_acc_46 = (OpenAD_lin_203*INT((-1_w2f__i8)))
      OpenAD_acc_47 = (OpenAD_lin_204*INT((-1_w2f__i8)))
      OpenAD_acc_48 = (OpenAD_lin_207*INT((-1_w2f__i8)))
      OpenAD_acc_49 = (OpenAD_lin_208*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_7,ALAMCM)
      CALL setderiv(OpenAD_prp_8,ALAMCP)
      CALL setderiv(OpenAD_prp_9,ALAMU)
      CALL setderiv(OpenAD_prp_10,LAMCM)
      CALL dec_deriv(OpenAD_prp_10,OpenAD_prp_7)
      CALL setderiv(OpenAD_prp_11,LAMCP)
      CALL dec_deriv(OpenAD_prp_11,OpenAD_prp_8)
      CALL setderiv(OpenAD_prp_12,LAMU)
      CALL dec_deriv(OpenAD_prp_12,OpenAD_prp_9)
      CALL sax(OpenAD_lin_129,PRIML(2),RUL)
      CALL saxpy(OpenAD_lin_130,PRIML(3),RUL)
      CALL sax(OpenAD_lin_131,PRIML(2),RVL)
      CALL saxpy(OpenAD_lin_132,PRIML(4),RVL)
      CALL sax(OpenAD_lin_133,PRIML(2),RWL)
      CALL saxpy(OpenAD_lin_134,PRIML(5),RWL)
      CALL setderiv(DR,PRIMR(2))
      CALL dec_deriv(DR,PRIML(2))
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_lin_139,PRIMR(2),DRU)
      CALL saxpy(OpenAD_lin_140,PRIMR(3),DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_lin_141,PRIMR(2),DRV)
      CALL saxpy(OpenAD_lin_142,PRIMR(4),DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_lin_143,PRIMR(2),DRW)
      CALL saxpy(OpenAD_lin_144,PRIMR(5),DRW)
      CALL sax(5.0D-01,OpenAD_prp_10,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prp_11,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prp_12,ALAMU)
      CALL sax(OpenAD_lin_125,PRIML(1),EL)
      CALL saxpy(OpenAD_lin_126,GM1INV,EL)
      CALL saxpy(OpenAD_lin_127,PRIML(2),EL)
      CALL saxpy(OpenAD_lin_128,THETAL,EL)
      CALL set_neg_deriv(OpenAD_prp_13,UTILDE)
      CALL saxpy(OpenAD_lin_174,CAVE,OpenAD_prp_13)
      CALL saxpy(OpenAD_lin_175,NXHAT,OpenAD_prp_13)
      CALL set_neg_deriv(OpenAD_prp_14,VTILDE)
      CALL saxpy(OpenAD_lin_186,CAVE,OpenAD_prp_14)
      CALL saxpy(OpenAD_lin_187,NYHAT,OpenAD_prp_14)
      CALL set_neg_deriv(OpenAD_prp_15,WTILDE)
      CALL saxpy(OpenAD_lin_198,CAVE,OpenAD_prp_15)
      CALL saxpy(OpenAD_lin_199,NZHAT,OpenAD_prp_15)
      CALL set_neg_deriv(OpenAD_prp_16,EL)
      CALL saxpy(OpenAD_lin_135,PRIMR(1),OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_136,GM1INV,OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_137,PRIMR(2),OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_138,THETAR,OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_157,DR,OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_158,THTAVE,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_33,DRU,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_34,UAVE,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_35,DRV,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_36,VAVE,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_37,DRW,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_38,WAVE,OpenAD_prp_16)
      CALL sax(OpenAD_lin_159,DRU,NDDRU)
      CALL saxpy(OpenAD_lin_160,NXHAT,NDDRU)
      CALL saxpy(OpenAD_lin_161,DRV,NDDRU)
      CALL saxpy(OpenAD_lin_162,NYHAT,NDDRU)
      CALL saxpy(OpenAD_lin_163,DRW,NDDRU)
      CALL saxpy(OpenAD_lin_164,NZHAT,NDDRU)
      CALL sax(OpenAD_lin_154,OpenAD_prp_16,OMEGA)
      CALL saxpy(OpenAD_acc_31,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_32,CAVE,OMEGA)
      CALL setderiv(OpenAD_prp_17,OMEGA)
      CALL dec_deriv(OpenAD_prp_17,NDDRU)
      CALL saxpy(OpenAD_lin_167,DR,OpenAD_prp_17)
      CALL saxpy(OpenAD_lin_168,UHAT,OpenAD_prp_17)
      CALL setderiv(OpenAD_prp_18,NDDRU)
      CALL inc_deriv(OpenAD_prp_18,OMEGA)
      CALL saxpy(OpenAD_acc_48,DR,OpenAD_prp_18)
      CALL saxpy(OpenAD_acc_49,UHAT,OpenAD_prp_18)
      CALL sax(5.0D-01,OpenAD_prp_17,ALP1)
      CALL sax(5.0D-01,OpenAD_prp_18,ALP5)
      CALL sax(OpenAD_lin_169,DRW,ALP2)
      CALL saxpy(OpenAD_lin_170,NYHAT,ALP2)
      CALL saxpy(OpenAD_lin_172,DR,ALP2)
      CALL saxpy(OpenAD_lin_173,OpenAD_prp_13,ALP2)
      CALL saxpy(OpenAD_lin_177,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_39,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_40,DRV,ALP2)
      CALL saxpy(OpenAD_acc_41,NZHAT,ALP2)
      CALL sax(OpenAD_lin_181,DRU,ALP3)
      CALL saxpy(OpenAD_lin_182,NZHAT,ALP3)
      CALL saxpy(OpenAD_lin_184,DR,ALP3)
      CALL saxpy(OpenAD_lin_185,OpenAD_prp_14,ALP3)
      CALL saxpy(OpenAD_lin_189,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_42,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_43,DRW,ALP3)
      CALL saxpy(OpenAD_acc_44,NXHAT,ALP3)
      CALL sax(OpenAD_lin_193,DRV,ALP4)
      CALL saxpy(OpenAD_lin_194,NXHAT,ALP4)
      CALL saxpy(OpenAD_lin_196,DR,ALP4)
      CALL saxpy(OpenAD_lin_197,OpenAD_prp_15,ALP4)
      CALL saxpy(OpenAD_lin_201,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_46,DRU,ALP4)
      CALL saxpy(OpenAD_acc_47,NYHAT,ALP4)
      OpenAD_dly_1 = (ALAMCM%v*ALP1%v)
      OpenAD_lin_209 = ALP1%v
      OpenAD_lin_210 = ALAMCM%v
      ALP1%v = OpenAD_dly_1
      OpenAD_dly_2 = (ALAMU%v*ALP2%v)
      OpenAD_lin_211 = ALP2%v
      OpenAD_lin_212 = ALAMU%v
      ALP2%v = OpenAD_dly_2
      OpenAD_dly_3 = (ALAMU%v*ALP3%v)
      OpenAD_lin_213 = ALP3%v
      OpenAD_lin_214 = ALAMU%v
      ALP3%v = OpenAD_dly_3
      OpenAD_dly_4 = (ALAMU%v*ALP4%v)
      OpenAD_lin_215 = ALP4%v
      OpenAD_lin_216 = ALAMU%v
      ALP4%v = OpenAD_dly_4
      OpenAD_dly_5 = (ALAMCP%v*ALP5%v)
      OpenAD_lin_217 = ALP5%v
      OpenAD_lin_218 = ALAMCP%v
      ALP5%v = OpenAD_dly_5
      ALP15P%v = (ALP1%v+ALP5%v)
      ALP15M%v = (ALP1%v-ALP5%v)
      MU%v = ((ALP15P%v/CAVE%v)+ALP2%v*NXHAT%v+ALP3%v*NYHAT%v+ALP4%v*NZH
     +AT%v)
      OpenAD_lin_219 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_220 = (-(ALP15P%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_221 = NXHAT%v
      OpenAD_lin_222 = ALP2%v
      OpenAD_lin_223 = NYHAT%v
      OpenAD_lin_224 = ALP3%v
      OpenAD_lin_225 = NZHAT%v
      OpenAD_lin_226 = ALP4%v
      OpenAD_lin_229 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_lin_229-ALP15M%v*UHAT%v+AL
     +P2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_lin_227 = THTAVE%v
      OpenAD_lin_228 = MU%v
      OpenAD_lin_230 = OpenAD_lin_229
      OpenAD_lin_232 = CAVE%v
      OpenAD_lin_233 = GM1INV%v
      OpenAD_lin_231 = ALP15P%v
      OpenAD_lin_234 = UHAT%v
      OpenAD_lin_235 = ALP15M%v
      OpenAD_lin_236 = UTILDE%v
      OpenAD_lin_237 = ALP2%v
      OpenAD_lin_238 = VTILDE%v
      OpenAD_lin_239 = ALP3%v
      OpenAD_lin_240 = WTILDE%v
      OpenAD_lin_241 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_lin_242 = NZHAT%v
      OpenAD_lin_243 = ALP3%v
      OpenAD_lin_244 = UAVE%v
      OpenAD_lin_245 = MU%v
      OpenAD_lin_246 = NXHAT%v
      OpenAD_lin_247 = ALP15M%v
      OpenAD_lin_248 = NYHAT%v
      OpenAD_lin_249 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_lin_250 = NXHAT%v
      OpenAD_lin_251 = ALP4%v
      OpenAD_lin_252 = VAVE%v
      OpenAD_lin_253 = MU%v
      OpenAD_lin_254 = NYHAT%v
      OpenAD_lin_255 = ALP15M%v
      OpenAD_lin_256 = NZHAT%v
      OpenAD_lin_257 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_lin_258 = NYHAT%v
      OpenAD_lin_259 = ALP2%v
      OpenAD_lin_260 = WAVE%v
      OpenAD_lin_261 = MU%v
      OpenAD_lin_262 = NZHAT%v
      OpenAD_lin_263 = ALP15M%v
      OpenAD_lin_264 = NXHAT%v
      OpenAD_lin_265 = ALP3%v
      UHATL%v = (PRIML(3)%v*NXHAT%v+PRIML(4)%v*NYHAT%v+PRIML(5)%v*NZHAT%
     +v)
      OpenAD_lin_266 = NXHAT%v
      OpenAD_lin_267 = PRIML(3)%v
      OpenAD_lin_268 = NYHAT%v
      OpenAD_lin_269 = PRIML(4)%v
      OpenAD_lin_270 = NZHAT%v
      OpenAD_lin_271 = PRIML(5)%v
      OpenAD_lin_275 = (PRIML(1)%v+EL%v)
      OpenAD_lin_272 = (DSS1%v+UHATL%v*OpenAD_lin_275)
      FLUX(1)%v = (NSIZE%v*OpenAD_lin_272)
      OpenAD_lin_273 = OpenAD_lin_272
      OpenAD_lin_276 = OpenAD_lin_275
      OpenAD_lin_277 = UHATL%v
      OpenAD_lin_274 = NSIZE%v
      OpenAD_acc_50 = (OpenAD_lin_276*OpenAD_lin_274)
      OpenAD_acc_51 = (OpenAD_lin_277*OpenAD_lin_274)
      OpenAD_acc_52 = (OpenAD_lin_240*OpenAD_lin_274)
      OpenAD_acc_53 = (OpenAD_lin_241*OpenAD_lin_274)
      OpenAD_acc_54 = (OpenAD_lin_238*OpenAD_lin_274)
      OpenAD_acc_55 = (OpenAD_lin_239*OpenAD_lin_274)
      OpenAD_acc_56 = (OpenAD_lin_236*OpenAD_lin_274)
      OpenAD_acc_57 = (OpenAD_lin_237*OpenAD_lin_274)
      OpenAD_acc_58 = (OpenAD_lin_227*OpenAD_lin_274)
      OpenAD_acc_59 = (OpenAD_lin_228*OpenAD_lin_274)
      OpenAD_acc_60 = (OpenAD_lin_230*OpenAD_lin_274)
      OpenAD_acc_61 = (OpenAD_lin_232*OpenAD_lin_231*OpenAD_lin_274)
      OpenAD_acc_62 = (OpenAD_lin_233*OpenAD_lin_231*OpenAD_lin_274)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_lin_274)
      OpenAD_acc_64 = (OpenAD_lin_234*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_235*OpenAD_acc_63)
      OpenAD_acc_66 = (OpenAD_lin_248*INT((-1_w2f__i8)))
      OpenAD_acc_67 = (OpenAD_lin_249*INT((-1_w2f__i8)))
      OpenAD_acc_68 = (OpenAD_lin_256*INT((-1_w2f__i8)))
      OpenAD_acc_69 = (OpenAD_lin_257*INT((-1_w2f__i8)))
      OpenAD_acc_70 = (OpenAD_lin_264*INT((-1_w2f__i8)))
      OpenAD_acc_71 = (OpenAD_lin_265*INT((-1_w2f__i8)))
      OpenAD_acc_72 = (OpenAD_lin_262*INT((-1_w2f__i8)))
      OpenAD_acc_73 = (OpenAD_lin_263*INT((-1_w2f__i8)))
      OpenAD_acc_74 = (OpenAD_lin_254*INT((-1_w2f__i8)))
      OpenAD_acc_75 = (OpenAD_lin_255*INT((-1_w2f__i8)))
      OpenAD_acc_76 = (OpenAD_lin_246*INT((-1_w2f__i8)))
      OpenAD_acc_77 = (OpenAD_lin_247*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_19,ALP1)
      CALL setderiv(OpenAD_prp_20,ALP2)
      CALL setderiv(OpenAD_prp_21,ALP3)
      CALL setderiv(OpenAD_prp_22,ALP4)
      CALL setderiv(OpenAD_prp_23,ALP5)
      CALL sax(OpenAD_lin_209,ALAMCM,ALP1)
      CALL saxpy(OpenAD_lin_210,OpenAD_prp_19,ALP1)
      CALL sax(OpenAD_lin_211,ALAMU,ALP2)
      CALL saxpy(OpenAD_lin_212,OpenAD_prp_20,ALP2)
      CALL sax(OpenAD_lin_213,ALAMU,ALP3)
      CALL saxpy(OpenAD_lin_214,OpenAD_prp_21,ALP3)
      CALL sax(OpenAD_lin_215,ALAMU,ALP4)
      CALL saxpy(OpenAD_lin_216,OpenAD_prp_22,ALP4)
      CALL sax(OpenAD_lin_217,ALAMCP,ALP5)
      CALL saxpy(OpenAD_lin_218,OpenAD_prp_23,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prp_24,PRIML(1))
      CALL inc_deriv(OpenAD_prp_24,EL)
      CALL sax(OpenAD_lin_266,PRIML(3),UHATL)
      CALL saxpy(OpenAD_lin_267,NXHAT,UHATL)
      CALL saxpy(OpenAD_lin_268,PRIML(4),UHATL)
      CALL saxpy(OpenAD_lin_269,NYHAT,UHATL)
      CALL saxpy(OpenAD_lin_270,PRIML(5),UHATL)
      CALL saxpy(OpenAD_lin_271,NZHAT,UHATL)
      CALL sax(OpenAD_lin_219,ALP15P,MU)
      CALL saxpy(OpenAD_lin_220,CAVE,MU)
      CALL saxpy(OpenAD_lin_221,ALP2,MU)
      CALL saxpy(OpenAD_lin_222,NXHAT,MU)
      CALL saxpy(OpenAD_lin_223,ALP3,MU)
      CALL saxpy(OpenAD_lin_224,NYHAT,MU)
      CALL saxpy(OpenAD_lin_225,ALP4,MU)
      CALL saxpy(OpenAD_lin_226,NZHAT,MU)
      CALL setderiv(DSS2,MU)
      CALL sax(OpenAD_lin_244,MU,DSS3)
      CALL saxpy(OpenAD_lin_245,UAVE,DSS3)
      CALL saxpy(OpenAD_acc_66,ALP4,DSS3)
      CALL saxpy(OpenAD_acc_67,NYHAT,DSS3)
      CALL saxpy(OpenAD_lin_242,ALP3,DSS3)
      CALL saxpy(OpenAD_lin_243,NZHAT,DSS3)
      CALL saxpy(OpenAD_acc_76,ALP15M,DSS3)
      CALL saxpy(OpenAD_acc_77,NXHAT,DSS3)
      CALL sax(OpenAD_lin_252,MU,DSS4)
      CALL saxpy(OpenAD_lin_253,VAVE,DSS4)
      CALL saxpy(OpenAD_acc_68,ALP2,DSS4)
      CALL saxpy(OpenAD_acc_69,NZHAT,DSS4)
      CALL saxpy(OpenAD_lin_250,ALP4,DSS4)
      CALL saxpy(OpenAD_lin_251,NXHAT,DSS4)
      CALL saxpy(OpenAD_acc_74,ALP15M,DSS4)
      CALL saxpy(OpenAD_acc_75,NYHAT,DSS4)
      CALL sax(OpenAD_lin_260,MU,DSS5)
      CALL saxpy(OpenAD_lin_261,WAVE,DSS5)
      CALL saxpy(OpenAD_acc_70,ALP3,DSS5)
      CALL saxpy(OpenAD_acc_71,NXHAT,DSS5)
      CALL saxpy(OpenAD_lin_258,ALP2,DSS5)
      CALL saxpy(OpenAD_lin_259,NYHAT,DSS5)
      CALL saxpy(OpenAD_acc_72,ALP15M,DSS5)
      CALL saxpy(OpenAD_acc_73,NZHAT,DSS5)
      CALL sax(OpenAD_lin_273,NSIZE,FLUX(1))
      CALL saxpy(OpenAD_acc_50,UHATL,FLUX(1))
      CALL saxpy(OpenAD_acc_51,OpenAD_prp_24,FLUX(1))
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
      OpenAD_lin_278 = (DSS2%v+PRIML(2)%v*UHATL%v)
      FLUX(2)%v = (NSIZE%v*OpenAD_lin_278)
      OpenAD_lin_279 = OpenAD_lin_278
      OpenAD_lin_281 = UHATL%v
      OpenAD_lin_282 = PRIML(2)%v
      OpenAD_lin_280 = NSIZE%v
      CALL setderiv(OpenAD_prp_25,DSS2)
      CALL saxpy(OpenAD_lin_281,PRIML(2),OpenAD_prp_25)
      CALL saxpy(OpenAD_lin_282,UHATL,OpenAD_prp_25)
      CALL sax(OpenAD_lin_279,NSIZE,FLUX(2))
      CALL saxpy(OpenAD_lin_280,OpenAD_prp_25,FLUX(2))
      OpenAD_lin_283 = (DSS3%v+PRIML(1)%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX(3)%v = (NSIZE%v*OpenAD_lin_283)
      OpenAD_lin_284 = OpenAD_lin_283
      OpenAD_lin_286 = NXHAT%v
      OpenAD_lin_287 = PRIML(1)%v
      OpenAD_lin_288 = UHATL%v
      OpenAD_lin_289 = RUL%v
      OpenAD_lin_285 = NSIZE%v
      CALL setderiv(OpenAD_prp_26,DSS3)
      CALL saxpy(OpenAD_lin_286,PRIML(1),OpenAD_prp_26)
      CALL saxpy(OpenAD_lin_287,NXHAT,OpenAD_prp_26)
      CALL saxpy(OpenAD_lin_288,RUL,OpenAD_prp_26)
      CALL saxpy(OpenAD_lin_289,UHATL,OpenAD_prp_26)
      CALL sax(OpenAD_lin_284,NSIZE,FLUX(3))
      CALL saxpy(OpenAD_lin_285,OpenAD_prp_26,FLUX(3))
      OpenAD_lin_290 = (DSS4%v+PRIML(1)%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX(4)%v = (NSIZE%v*OpenAD_lin_290)
      OpenAD_lin_291 = OpenAD_lin_290
      OpenAD_lin_293 = NYHAT%v
      OpenAD_lin_294 = PRIML(1)%v
      OpenAD_lin_295 = UHATL%v
      OpenAD_lin_296 = RVL%v
      OpenAD_lin_292 = NSIZE%v
      CALL setderiv(OpenAD_prp_27,DSS4)
      CALL saxpy(OpenAD_lin_293,PRIML(1),OpenAD_prp_27)
      CALL saxpy(OpenAD_lin_294,NYHAT,OpenAD_prp_27)
      CALL saxpy(OpenAD_lin_295,RVL,OpenAD_prp_27)
      CALL saxpy(OpenAD_lin_296,UHATL,OpenAD_prp_27)
      CALL sax(OpenAD_lin_291,NSIZE,FLUX(4))
      CALL saxpy(OpenAD_lin_292,OpenAD_prp_27,FLUX(4))
      OpenAD_lin_297 = (DSS5%v+PRIML(1)%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX(5)%v = (NSIZE%v*OpenAD_lin_297)
      OpenAD_lin_298 = OpenAD_lin_297
      OpenAD_lin_300 = NZHAT%v
      OpenAD_lin_301 = PRIML(1)%v
      OpenAD_lin_302 = UHATL%v
      OpenAD_lin_303 = RWL%v
      OpenAD_lin_299 = NSIZE%v
      CALL setderiv(OpenAD_prp_28,DSS5)
      CALL saxpy(OpenAD_lin_300,PRIML(1),OpenAD_prp_28)
      CALL saxpy(OpenAD_lin_301,NZHAT,OpenAD_prp_28)
      CALL saxpy(OpenAD_lin_302,RWL,OpenAD_prp_28)
      CALL saxpy(OpenAD_lin_303,UHATL,OpenAD_prp_28)
      CALL sax(OpenAD_lin_298,NSIZE,FLUX(5))
      CALL saxpy(OpenAD_lin_299,OpenAD_prp_28,FLUX(5))
      END SUBROUTINE
