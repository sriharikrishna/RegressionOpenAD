
C$OPENAD XXX File_start [head.f]
      SUBROUTINE ad_roehf5(NRM1, NRM2, NRM3, PRIML1, PRIML2, PRIML3, PRI
     +ML4, PRIML5, PRIMR1, PRIMR2, PRIMR3, PRIMR4, PRIMR5, GAMMA, GM1, G
     +M1INV, NLEFIX, LEFIX, MCHEPS, FLUX1, FLUX2, FLUX3, FLUX4, FLUX5)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: NRM1
      INTENT(IN) NRM1
      type(active) :: NRM2
      INTENT(IN) NRM2
      type(active) :: NRM3
      INTENT(IN) NRM3
      type(active) :: PRIML1
      INTENT(IN) PRIML1
      type(active) :: PRIML2
      INTENT(IN) PRIML2
      type(active) :: PRIML3
      INTENT(IN) PRIML3
      type(active) :: PRIML4
      INTENT(IN) PRIML4
      type(active) :: PRIML5
      INTENT(IN) PRIML5
      type(active) :: PRIMR1
      INTENT(IN) PRIMR1
      type(active) :: PRIMR2
      INTENT(IN) PRIMR2
      type(active) :: PRIMR3
      INTENT(IN) PRIMR3
      type(active) :: PRIMR4
      INTENT(IN) PRIMR4
      type(active) :: PRIMR5
      INTENT(IN) PRIMR5
      type(active) :: GAMMA
      INTENT(IN) GAMMA
      type(active) :: GM1
      INTENT(IN) GM1
      type(active) :: GM1INV
      INTENT(IN) GM1INV
      REAL(w2f__8) NLEFIX
      INTENT(IN) NLEFIX
      REAL(w2f__8) LEFIX
      INTENT(IN) LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN) MCHEPS
      type(active) :: FLUX1
      INTENT(OUT) FLUX1
      type(active) :: FLUX2
      INTENT(OUT) FLUX2
      type(active) :: FLUX3
      INTENT(OUT) FLUX3
      type(active) :: FLUX4
      INTENT(OUT) FLUX4
      type(active) :: FLUX5
      INTENT(OUT) FLUX5
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
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_100
      REAL(w2f__8) OpenAD_acc_101
      REAL(w2f__8) OpenAD_acc_102
      REAL(w2f__8) OpenAD_acc_103
      REAL(w2f__8) OpenAD_acc_104
      REAL(w2f__8) OpenAD_acc_105
      REAL(w2f__8) OpenAD_acc_106
      REAL(w2f__8) OpenAD_acc_107
      REAL(w2f__8) OpenAD_acc_108
      REAL(w2f__8) OpenAD_acc_109
      REAL(w2f__8) OpenAD_acc_11
      REAL(w2f__8) OpenAD_acc_110
      REAL(w2f__8) OpenAD_acc_111
      REAL(w2f__8) OpenAD_acc_112
      REAL(w2f__8) OpenAD_acc_113
      REAL(w2f__8) OpenAD_acc_114
      REAL(w2f__8) OpenAD_acc_115
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
      REAL(w2f__8) OpenAD_acc_81
      REAL(w2f__8) OpenAD_acc_82
      REAL(w2f__8) OpenAD_acc_83
      REAL(w2f__8) OpenAD_acc_84
      REAL(w2f__8) OpenAD_acc_85
      REAL(w2f__8) OpenAD_acc_86
      REAL(w2f__8) OpenAD_acc_87
      REAL(w2f__8) OpenAD_acc_88
      REAL(w2f__8) OpenAD_acc_89
      REAL(w2f__8) OpenAD_acc_9
      REAL(w2f__8) OpenAD_acc_90
      REAL(w2f__8) OpenAD_acc_91
      REAL(w2f__8) OpenAD_acc_92
      REAL(w2f__8) OpenAD_acc_93
      REAL(w2f__8) OpenAD_acc_94
      REAL(w2f__8) OpenAD_acc_95
      REAL(w2f__8) OpenAD_acc_96
      REAL(w2f__8) OpenAD_acc_97
      REAL(w2f__8) OpenAD_acc_98
      REAL(w2f__8) OpenAD_acc_99
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
      REAL(w2f__8) OpenAD_lin_105
      REAL(w2f__8) OpenAD_lin_107
      REAL(w2f__8) OpenAD_lin_109
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_110
      REAL(w2f__8) OpenAD_lin_111
      REAL(w2f__8) OpenAD_lin_112
      REAL(w2f__8) OpenAD_lin_113
      REAL(w2f__8) OpenAD_lin_114
      REAL(w2f__8) OpenAD_lin_115
      REAL(w2f__8) OpenAD_lin_116
      REAL(w2f__8) OpenAD_lin_117
      REAL(w2f__8) OpenAD_lin_118
      REAL(w2f__8) OpenAD_lin_119
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_120
      REAL(w2f__8) OpenAD_lin_121
      REAL(w2f__8) OpenAD_lin_122
      REAL(w2f__8) OpenAD_lin_123
      REAL(w2f__8) OpenAD_lin_124
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
      REAL(w2f__8) OpenAD_lin_166
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
      REAL(w2f__8) OpenAD_lin_206
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
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_31
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
      type(active) :: OpenAD_prp_2
      type(active) :: OpenAD_prp_3
      type(active) :: OpenAD_prp_4
      type(active) :: OpenAD_prp_5
      type(active) :: OpenAD_prp_6
      type(active) :: OpenAD_prp_7
      type(active) :: OpenAD_prp_8
      type(active) :: OpenAD_prp_9
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
      OpenAD_lin_0 = ((NRM1%v**2)+(NRM2%v**2)+(NRM3%v**2))
      NSIZE%v = SIN(OpenAD_lin_0)
      OpenAD_lin_2 = (2*(NRM1%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_4 = (2*(NRM2%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_6 = (2*(NRM3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_1 = COS(OpenAD_lin_0)
      NSIZEI%v = (1.0D00/NSIZE%v)
      OpenAD_lin_9 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
      NXHAT%v = (NRM1%v*NSIZEI%v)
      OpenAD_lin_10 = NSIZEI%v
      OpenAD_lin_11 = NRM1%v
      NYHAT%v = (NRM2%v*NSIZEI%v)
      OpenAD_lin_12 = NSIZEI%v
      OpenAD_lin_13 = NRM2%v
      NZHAT%v = (NRM3%v*NSIZEI%v)
      OpenAD_lin_14 = NSIZEI%v
      OpenAD_lin_15 = NRM3%v
      OpenAD_lin_20 = (PRIMR2%v/PRIML2%v)
      OpenAD_lin_16 = (SIN(OpenAD_lin_20)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_lin_16)
      OpenAD_lin_22 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_lin_23 = (-(PRIMR2%v/(PRIML2%v*PRIML2%v)))
      OpenAD_lin_21 = COS(OpenAD_lin_20)
      OpenAD_lin_18 = (-(1.0D00/(OpenAD_lin_16*OpenAD_lin_16)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_lin_25 = ((PRIML3%v**2)+(PRIML4%v**2)+(PRIML5%v**2))
      THETAL%v = (OpenAD_lin_25*5.0D-01)
      OpenAD_lin_27 = (2*(PRIML3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_29 = (2*(PRIML4%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_31 = (2*(PRIML5%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_33 = ((PRIMR3%v**2)+(PRIMR4%v**2)+(PRIMR5%v**2))
      THETAR%v = (OpenAD_lin_33*5.0D-01)
      OpenAD_lin_35 = (2*(PRIMR3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_37 = (2*(PRIMR4%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_39 = (2*(PRIMR5%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_44 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_41 = (PRIML1%v*OpenAD_lin_44)
      HL%v = (THETAL%v+(OpenAD_lin_41/PRIML2%v))
      OpenAD_lin_45 = OpenAD_lin_44
      OpenAD_lin_47 = GM1INV%v
      OpenAD_lin_48 = GAMMA%v
      OpenAD_lin_46 = PRIML1%v
      OpenAD_lin_42 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_lin_43 = (-(OpenAD_lin_41/(PRIML2%v*PRIML2%v)))
      OpenAD_lin_52 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_49 = (PRIMR1%v*OpenAD_lin_52)
      HR%v = (THETAR%v+(OpenAD_lin_49/PRIMR2%v))
      OpenAD_lin_53 = OpenAD_lin_52
      OpenAD_lin_55 = GM1INV%v
      OpenAD_lin_56 = GAMMA%v
      OpenAD_lin_54 = PRIMR1%v
      OpenAD_lin_50 = (INT(1_w2f__i8)/PRIMR2%v)
      OpenAD_lin_51 = (-(OpenAD_lin_49/(PRIMR2%v*PRIMR2%v)))
      UAVE%v = (PRIML3%v*ROEL%v+PRIMR3%v*ROER%v)
      OpenAD_lin_57 = ROEL%v
      OpenAD_lin_58 = PRIML3%v
      OpenAD_lin_59 = ROER%v
      OpenAD_lin_60 = PRIMR3%v
      VAVE%v = (PRIML4%v*ROEL%v+PRIMR4%v*ROER%v)
      OpenAD_lin_61 = ROEL%v
      OpenAD_lin_62 = PRIML4%v
      OpenAD_lin_63 = ROER%v
      OpenAD_lin_64 = PRIMR4%v
      WAVE%v = (PRIML5%v*ROEL%v+PRIMR5%v*ROER%v)
      OpenAD_lin_65 = ROEL%v
      OpenAD_lin_66 = PRIML5%v
      OpenAD_lin_67 = ROER%v
      OpenAD_lin_68 = PRIMR5%v
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
      OpenAD_acc_0 = (OpenAD_lin_54*OpenAD_lin_50)
      OpenAD_acc_1 = (OpenAD_lin_46*OpenAD_lin_42)
      OpenAD_acc_2 = (OpenAD_lin_9*OpenAD_lin_11)
      OpenAD_acc_3 = (OpenAD_lin_9*OpenAD_lin_13)
      OpenAD_acc_4 = (OpenAD_lin_9*OpenAD_lin_15)
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
      OpenAD_acc_15 = (OpenAD_lin_47*OpenAD_acc_1)
      OpenAD_acc_16 = (OpenAD_lin_48*OpenAD_acc_1)
      OpenAD_acc_17 = (OpenAD_lin_53*OpenAD_lin_50)
      OpenAD_acc_18 = (OpenAD_lin_55*OpenAD_acc_0)
      OpenAD_acc_19 = (OpenAD_lin_56*OpenAD_acc_0)
      CALL sax(OpenAD_lin_6,NRM3,OpenAD_prp_0)
      CALL saxpy(OpenAD_lin_2,NRM1,OpenAD_prp_0)
      CALL saxpy(OpenAD_lin_4,NRM2,OpenAD_prp_0)
      CALL sax(OpenAD_acc_12,PRIMR2,OpenAD_prp_1)
      CALL saxpy(OpenAD_acc_13,PRIML2,OpenAD_prp_1)
      CALL sax(OpenAD_lin_31,PRIML5,OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_27,PRIML3,OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_29,PRIML4,OpenAD_prp_2)
      CALL sax(OpenAD_lin_39,PRIMR5,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_35,PRIMR3,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_37,PRIMR4,OpenAD_prp_3)
      CALL sax(OpenAD_lin_1,OpenAD_prp_0,NSIZE)
      CALL sax(OpenAD_lin_10,NRM1,NXHAT)
      CALL saxpy(OpenAD_acc_2,NSIZE,NXHAT)
      CALL sax(OpenAD_lin_12,NRM2,NYHAT)
      CALL saxpy(OpenAD_acc_3,NSIZE,NYHAT)
      CALL sax(OpenAD_lin_14,NRM3,NZHAT)
      CALL saxpy(OpenAD_acc_4,NSIZE,NZHAT)
      CALL sax(5.0D-01,OpenAD_prp_2,THETAL)
      CALL sax(5.0D-01,OpenAD_prp_3,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_lin_43,PRIML2,HL)
      CALL saxpy(OpenAD_acc_14,PRIML1,HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_lin_51,PRIMR2,HR)
      CALL saxpy(OpenAD_acc_17,PRIMR1,HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_lin_59,PRIMR3,UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prp_1,UAVE)
      CALL saxpy(OpenAD_lin_57,PRIML3,UAVE)
      CALL sax(OpenAD_lin_63,PRIMR4,VAVE)
      CALL saxpy(OpenAD_lin_61,PRIML4,VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prp_1,VAVE)
      CALL sax(OpenAD_lin_67,PRIMR5,WAVE)
      CALL saxpy(OpenAD_lin_65,PRIML5,WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prp_1,WAVE)
      CALL sax(OpenAD_lin_79,WAVE,OpenAD_prp_4)
      CALL saxpy(OpenAD_lin_77,VAVE,OpenAD_prp_4)
      CALL saxpy(OpenAD_lin_75,UAVE,OpenAD_prp_4)
      CALL sax(5.0D-01,OpenAD_prp_4,THTAVE)
      CALL sax(OpenAD_lin_82,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prp_4,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prp_1,CAVE)
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
      ALAMCM%v = LAMCM%v
      ALAMCP%v = LAMCP%v
      ALAMU%v = LAMU%v
      OpenAD_acc_20 = (OpenAD_lin_93*INT((-1_w2f__i8)))
      OpenAD_acc_21 = (OpenAD_lin_94*INT((-1_w2f__i8)))
      OpenAD_acc_22 = (OpenAD_lin_97*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_98*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_101*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_102*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_5,CAVE)
      CALL sax(OpenAD_lin_84,OpenAD_prp_5,CAVE)
      CALL sax(OpenAD_lin_91,NYHAT,UTILDE)
      CALL saxpy(OpenAD_lin_92,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_20,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_21,VAVE,UTILDE)
      CALL sax(OpenAD_lin_95,NZHAT,VTILDE)
      CALL saxpy(OpenAD_lin_96,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_22,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_23,WAVE,VTILDE)
      CALL sax(OpenAD_lin_99,NXHAT,WTILDE)
      CALL saxpy(OpenAD_lin_100,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_24,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_25,UAVE,WTILDE)
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
      CALL setderiv(ALAMCM,LAMCM)
      CALL setderiv(ALAMCP,LAMCP)
      CALL setderiv(ALAMU,LAMU)
      OpenAD_lin_103 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_lin_103*5.0D-01)
      OpenAD_lin_105 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_lin_105*5.0D-01)
      OpenAD_lin_107 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_lin_107*5.0D-01)
      EL%v = (PRIML1%v*GM1INV%v+PRIML2%v*THETAL%v)
      OpenAD_lin_109 = GM1INV%v
      OpenAD_lin_110 = PRIML1%v
      OpenAD_lin_111 = THETAL%v
      OpenAD_lin_112 = PRIML2%v
      RUL%v = (PRIML2%v*PRIML3%v)
      OpenAD_lin_113 = PRIML3%v
      OpenAD_lin_114 = PRIML2%v
      RVL%v = (PRIML2%v*PRIML4%v)
      OpenAD_lin_115 = PRIML4%v
      OpenAD_lin_116 = PRIML2%v
      RWL%v = (PRIML2%v*PRIML5%v)
      OpenAD_lin_117 = PRIML5%v
      OpenAD_lin_118 = PRIML2%v
      ER%v = (PRIMR1%v*GM1INV%v+PRIMR2%v*THETAR%v)
      OpenAD_lin_119 = GM1INV%v
      OpenAD_lin_120 = PRIMR1%v
      OpenAD_lin_121 = THETAR%v
      OpenAD_lin_122 = PRIMR2%v
      RUR%v = (PRIMR2%v*PRIMR3%v)
      OpenAD_lin_123 = PRIMR3%v
      OpenAD_lin_124 = PRIMR2%v
      RVR%v = (PRIMR2%v*PRIMR4%v)
      OpenAD_lin_125 = PRIMR4%v
      OpenAD_lin_126 = PRIMR2%v
      RWR%v = (PRIMR2%v*PRIMR5%v)
      OpenAD_lin_127 = PRIMR5%v
      OpenAD_lin_128 = PRIMR2%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR2%v-PRIML2%v)
      DRU%v = (RUR%v-RUL%v)
      DRV%v = (RVR%v-RVL%v)
      DRW%v = (RWR%v-RWL%v)
      UDDRU%v = (DRU%v*UAVE%v+DRV%v*VAVE%v+DRW%v*WAVE%v)
      OpenAD_lin_129 = UAVE%v
      OpenAD_lin_130 = DRU%v
      OpenAD_lin_131 = VAVE%v
      OpenAD_lin_132 = DRV%v
      OpenAD_lin_133 = WAVE%v
      OpenAD_lin_134 = DRW%v
      OpenAD_lin_135 = (GM1%v/CAVE%v)
      OpenAD_lin_136 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_lin_135*OpenAD_lin_136)
      OpenAD_lin_139 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_140 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_137 = OpenAD_lin_136
      OpenAD_lin_141 = THTAVE%v
      OpenAD_lin_142 = DR%v
      OpenAD_lin_138 = OpenAD_lin_135
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_lin_143 = NXHAT%v
      OpenAD_lin_144 = DRU%v
      OpenAD_lin_145 = NYHAT%v
      OpenAD_lin_146 = DRV%v
      OpenAD_lin_147 = NZHAT%v
      OpenAD_lin_148 = DRW%v
      OpenAD_lin_149 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_lin_149*5.0D-01)
      OpenAD_lin_151 = UHAT%v
      OpenAD_lin_152 = DR%v
      OpenAD_lin_155 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_lin_160 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_lin_155+OMEGA%v*OpenAD_lin_160
     +-DRV%v*NZHAT%v)
      OpenAD_lin_153 = NYHAT%v
      OpenAD_lin_154 = DRW%v
      OpenAD_lin_156 = OpenAD_lin_155
      OpenAD_lin_158 = NXHAT%v
      OpenAD_lin_159 = CAVE%v
      OpenAD_lin_157 = DR%v
      OpenAD_lin_161 = OpenAD_lin_160
      OpenAD_lin_162 = OMEGA%v
      OpenAD_lin_163 = NZHAT%v
      OpenAD_lin_164 = DRV%v
      OpenAD_lin_167 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_lin_172 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_lin_167+OMEGA%v*OpenAD_lin_172
     +-DRW%v*NXHAT%v)
      OpenAD_lin_165 = NZHAT%v
      OpenAD_lin_166 = DRU%v
      OpenAD_lin_168 = OpenAD_lin_167
      OpenAD_lin_170 = NYHAT%v
      OpenAD_lin_171 = CAVE%v
      OpenAD_lin_169 = DR%v
      OpenAD_lin_173 = OpenAD_lin_172
      OpenAD_lin_174 = OMEGA%v
      OpenAD_lin_175 = NXHAT%v
      OpenAD_lin_176 = DRW%v
      OpenAD_lin_179 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_lin_184 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_lin_179+OMEGA%v*OpenAD_lin_184
     +-DRU%v*NYHAT%v)
      OpenAD_lin_177 = NXHAT%v
      OpenAD_lin_178 = DRV%v
      OpenAD_lin_180 = OpenAD_lin_179
      OpenAD_lin_182 = NZHAT%v
      OpenAD_lin_183 = CAVE%v
      OpenAD_lin_181 = DR%v
      OpenAD_lin_185 = OpenAD_lin_184
      OpenAD_lin_186 = OMEGA%v
      OpenAD_lin_187 = NYHAT%v
      OpenAD_lin_188 = DRU%v
      OpenAD_lin_189 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_lin_189*5.0D-01)
      OpenAD_lin_191 = UHAT%v
      OpenAD_lin_192 = DR%v
      OpenAD_acc_26 = (OpenAD_lin_139*OpenAD_lin_137)
      OpenAD_acc_27 = (OpenAD_lin_140*OpenAD_lin_137)
      OpenAD_acc_28 = (OpenAD_lin_192*(-5.0D-01))
      OpenAD_acc_29 = (OpenAD_lin_152*5.0D-01)
      OpenAD_acc_30 = (INT((-1_w2f__i8))*OpenAD_lin_138)
      OpenAD_acc_31 = (OpenAD_lin_133*OpenAD_acc_30)
      OpenAD_acc_32 = (OpenAD_lin_134*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_182*OpenAD_lin_181)
      OpenAD_acc_34 = (OpenAD_lin_183*OpenAD_lin_181+INT((-1_w2f__i8))*O
     +penAD_lin_186)
      OpenAD_acc_35 = (INT((-1_w2f__i8))*OpenAD_lin_181)
      OpenAD_acc_36 = (OpenAD_lin_170*OpenAD_lin_169)
      OpenAD_acc_37 = (OpenAD_lin_171*OpenAD_lin_169+INT((-1_w2f__i8))*O
     +penAD_lin_174)
      OpenAD_acc_38 = (INT((-1_w2f__i8))*OpenAD_lin_169)
      OpenAD_acc_39 = (OpenAD_lin_158*OpenAD_lin_157)
      OpenAD_acc_40 = (OpenAD_lin_159*OpenAD_lin_157+INT((-1_w2f__i8))*O
     +penAD_lin_162)
      OpenAD_acc_41 = (INT((-1_w2f__i8))*OpenAD_lin_157)
      OpenAD_acc_42 = (OpenAD_lin_141*OpenAD_lin_138)
      OpenAD_acc_43 = (OpenAD_lin_142*OpenAD_lin_138)
      OpenAD_acc_44 = (OpenAD_lin_191*(-5.0D-01)+OpenAD_acc_42*5.0D-01)
      OpenAD_acc_45 = (OpenAD_lin_180+OpenAD_acc_42*OpenAD_lin_185)
      OpenAD_acc_46 = (OpenAD_lin_168+OpenAD_acc_42*OpenAD_lin_173)
      OpenAD_acc_47 = (OpenAD_lin_156+OpenAD_acc_42*OpenAD_lin_161)
      OpenAD_acc_48 = (OpenAD_lin_151*5.0D-01+OpenAD_acc_42*5.0D-01)
      OpenAD_acc_49 = (OpenAD_lin_131*OpenAD_acc_30)
      OpenAD_acc_50 = (OpenAD_lin_132*OpenAD_acc_30)
      OpenAD_acc_51 = (OpenAD_lin_129*OpenAD_acc_30)
      OpenAD_acc_52 = (OpenAD_lin_130*OpenAD_acc_30)
      OpenAD_acc_53 = (OpenAD_lin_187*INT((-1_w2f__i8)))
      OpenAD_acc_54 = (OpenAD_lin_188*INT((-1_w2f__i8)))
      OpenAD_acc_55 = (OpenAD_lin_175*INT((-1_w2f__i8)))
      OpenAD_acc_56 = (OpenAD_lin_176*INT((-1_w2f__i8)))
      OpenAD_acc_57 = (OpenAD_lin_163*INT((-1_w2f__i8)))
      OpenAD_acc_58 = (OpenAD_lin_164*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_6,ALAMCM)
      CALL setderiv(OpenAD_prp_7,ALAMCP)
      CALL setderiv(OpenAD_prp_8,ALAMU)
      CALL setderiv(OpenAD_prp_9,LAMCM)
      CALL dec_deriv(OpenAD_prp_9,OpenAD_prp_6)
      CALL setderiv(OpenAD_prp_10,LAMCP)
      CALL dec_deriv(OpenAD_prp_10,OpenAD_prp_7)
      CALL setderiv(OpenAD_prp_11,LAMU)
      CALL dec_deriv(OpenAD_prp_11,OpenAD_prp_8)
      CALL sax(OpenAD_lin_113,PRIML2,RUL)
      CALL saxpy(OpenAD_lin_114,PRIML3,RUL)
      CALL sax(OpenAD_lin_115,PRIML2,RVL)
      CALL saxpy(OpenAD_lin_116,PRIML4,RVL)
      CALL sax(OpenAD_lin_117,PRIML2,RWL)
      CALL saxpy(OpenAD_lin_118,PRIML5,RWL)
      CALL setderiv(DR,PRIMR2)
      CALL dec_deriv(DR,PRIML2)
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_lin_123,PRIMR2,DRU)
      CALL saxpy(OpenAD_lin_124,PRIMR3,DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_lin_125,PRIMR2,DRV)
      CALL saxpy(OpenAD_lin_126,PRIMR4,DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_lin_127,PRIMR2,DRW)
      CALL saxpy(OpenAD_lin_128,PRIMR5,DRW)
      CALL sax(5.0D-01,OpenAD_prp_9,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prp_10,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prp_11,ALAMU)
      CALL sax(OpenAD_lin_109,PRIML1,EL)
      CALL saxpy(OpenAD_lin_110,GM1INV,EL)
      CALL saxpy(OpenAD_lin_111,PRIML2,EL)
      CALL saxpy(OpenAD_lin_112,THETAL,EL)
      CALL set_neg_deriv(DE,EL)
      CALL saxpy(OpenAD_lin_119,PRIMR1,DE)
      CALL saxpy(OpenAD_lin_120,GM1INV,DE)
      CALL saxpy(OpenAD_lin_121,PRIMR2,DE)
      CALL saxpy(OpenAD_lin_122,THETAR,DE)
      CALL sax(OpenAD_lin_147,DRW,NDDRU)
      CALL saxpy(OpenAD_lin_148,NZHAT,NDDRU)
      CALL saxpy(OpenAD_lin_145,DRV,NDDRU)
      CALL saxpy(OpenAD_lin_146,NYHAT,NDDRU)
      CALL saxpy(OpenAD_lin_143,DRU,NDDRU)
      CALL saxpy(OpenAD_lin_144,NXHAT,NDDRU)
      CALL sax(OpenAD_acc_26,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_27,CAVE,OMEGA)
      CALL saxpy(OpenAD_acc_31,DRW,OMEGA)
      CALL saxpy(OpenAD_acc_32,WAVE,OMEGA)
      CALL saxpy(OpenAD_lin_138,DE,OMEGA)
      CALL saxpy(OpenAD_acc_43,THTAVE,OMEGA)
      CALL saxpy(OpenAD_acc_49,DRV,OMEGA)
      CALL saxpy(OpenAD_acc_50,VAVE,OMEGA)
      CALL saxpy(OpenAD_acc_51,DRU,OMEGA)
      CALL saxpy(OpenAD_acc_52,UAVE,OMEGA)
      CALL sax(-5.0D-01,NDDRU,ALP1)
      CALL saxpy(5.0D-01,OMEGA,ALP1)
      CALL saxpy(OpenAD_acc_48,DR,ALP1)
      CALL saxpy(OpenAD_acc_29,UHAT,ALP1)
      CALL sax(5.0D-01,NDDRU,ALP5)
      CALL saxpy(5.0D-01,OMEGA,ALP5)
      CALL saxpy(OpenAD_acc_44,DR,ALP5)
      CALL saxpy(OpenAD_acc_28,UHAT,ALP5)
      CALL sax(OpenAD_lin_161,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_47,DR,ALP2)
      CALL saxpy(OpenAD_acc_39,CAVE,ALP2)
      CALL saxpy(OpenAD_acc_40,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_41,UTILDE,ALP2)
      CALL saxpy(OpenAD_lin_153,DRW,ALP2)
      CALL saxpy(OpenAD_lin_154,NYHAT,ALP2)
      CALL saxpy(OpenAD_acc_57,DRV,ALP2)
      CALL saxpy(OpenAD_acc_58,NZHAT,ALP2)
      CALL sax(OpenAD_lin_173,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_46,DR,ALP3)
      CALL saxpy(OpenAD_acc_36,CAVE,ALP3)
      CALL saxpy(OpenAD_acc_37,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_38,VTILDE,ALP3)
      CALL saxpy(OpenAD_lin_165,DRU,ALP3)
      CALL saxpy(OpenAD_lin_166,NZHAT,ALP3)
      CALL saxpy(OpenAD_acc_55,DRW,ALP3)
      CALL saxpy(OpenAD_acc_56,NXHAT,ALP3)
      CALL sax(OpenAD_lin_185,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,DR,ALP4)
      CALL saxpy(OpenAD_acc_33,CAVE,ALP4)
      CALL saxpy(OpenAD_acc_34,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_35,WTILDE,ALP4)
      CALL saxpy(OpenAD_lin_177,DRV,ALP4)
      CALL saxpy(OpenAD_lin_178,NXHAT,ALP4)
      CALL saxpy(OpenAD_acc_53,DRU,ALP4)
      CALL saxpy(OpenAD_acc_54,NYHAT,ALP4)
      OpenAD_dly_1 = (ALAMCM%v*ALP1%v)
      OpenAD_lin_193 = ALP1%v
      OpenAD_lin_194 = ALAMCM%v
      ALP1%v = OpenAD_dly_1
      OpenAD_dly_2 = (ALAMU%v*ALP2%v)
      OpenAD_lin_195 = ALP2%v
      OpenAD_lin_196 = ALAMU%v
      ALP2%v = OpenAD_dly_2
      OpenAD_dly_3 = (ALAMU%v*ALP3%v)
      OpenAD_lin_197 = ALP3%v
      OpenAD_lin_198 = ALAMU%v
      ALP3%v = OpenAD_dly_3
      OpenAD_dly_4 = (ALAMU%v*ALP4%v)
      OpenAD_lin_199 = ALP4%v
      OpenAD_lin_200 = ALAMU%v
      ALP4%v = OpenAD_dly_4
      OpenAD_dly_5 = (ALAMCP%v*ALP5%v)
      OpenAD_lin_201 = ALP5%v
      OpenAD_lin_202 = ALAMCP%v
      ALP5%v = OpenAD_dly_5
      ALP15P%v = (ALP1%v+ALP5%v)
      ALP15M%v = (ALP1%v-ALP5%v)
      MU%v = ((ALP15P%v/CAVE%v)+ALP2%v*NXHAT%v+ALP3%v*NYHAT%v+ALP4%v*NZH
     +AT%v)
      OpenAD_lin_203 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_204 = (-(ALP15P%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_205 = NXHAT%v
      OpenAD_lin_206 = ALP2%v
      OpenAD_lin_207 = NYHAT%v
      OpenAD_lin_208 = ALP3%v
      OpenAD_lin_209 = NZHAT%v
      OpenAD_lin_210 = ALP4%v
      OpenAD_lin_213 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_lin_213-ALP15M%v*UHAT%v+AL
     +P2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_lin_211 = THTAVE%v
      OpenAD_lin_212 = MU%v
      OpenAD_lin_214 = OpenAD_lin_213
      OpenAD_lin_216 = CAVE%v
      OpenAD_lin_217 = GM1INV%v
      OpenAD_lin_215 = ALP15P%v
      OpenAD_lin_218 = UHAT%v
      OpenAD_lin_219 = ALP15M%v
      OpenAD_lin_220 = UTILDE%v
      OpenAD_lin_221 = ALP2%v
      OpenAD_lin_222 = VTILDE%v
      OpenAD_lin_223 = ALP3%v
      OpenAD_lin_224 = WTILDE%v
      OpenAD_lin_225 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_lin_226 = NZHAT%v
      OpenAD_lin_227 = ALP3%v
      OpenAD_lin_228 = UAVE%v
      OpenAD_lin_229 = MU%v
      OpenAD_lin_230 = NXHAT%v
      OpenAD_lin_231 = ALP15M%v
      OpenAD_lin_232 = NYHAT%v
      OpenAD_lin_233 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_lin_234 = NXHAT%v
      OpenAD_lin_235 = ALP4%v
      OpenAD_lin_236 = VAVE%v
      OpenAD_lin_237 = MU%v
      OpenAD_lin_238 = NYHAT%v
      OpenAD_lin_239 = ALP15M%v
      OpenAD_lin_240 = NZHAT%v
      OpenAD_lin_241 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_lin_242 = NYHAT%v
      OpenAD_lin_243 = ALP2%v
      OpenAD_lin_244 = WAVE%v
      OpenAD_lin_245 = MU%v
      OpenAD_lin_246 = NZHAT%v
      OpenAD_lin_247 = ALP15M%v
      OpenAD_lin_248 = NXHAT%v
      OpenAD_lin_249 = ALP3%v
      UHATL%v = (PRIML3%v*NXHAT%v+PRIML4%v*NYHAT%v+PRIML5%v*NZHAT%v)
      OpenAD_lin_250 = NXHAT%v
      OpenAD_lin_251 = PRIML3%v
      OpenAD_lin_252 = NYHAT%v
      OpenAD_lin_253 = PRIML4%v
      OpenAD_lin_254 = NZHAT%v
      OpenAD_lin_255 = PRIML5%v
      OpenAD_lin_259 = (PRIML1%v+EL%v)
      OpenAD_lin_256 = (DSS1%v+UHATL%v*OpenAD_lin_259)
      FLUX1%v = (NSIZE%v*OpenAD_lin_256)
      OpenAD_lin_257 = OpenAD_lin_256
      OpenAD_lin_260 = OpenAD_lin_259
      OpenAD_lin_261 = UHATL%v
      OpenAD_lin_258 = NSIZE%v
      OpenAD_lin_262 = (DSS2%v+PRIML2%v*UHATL%v)
      FLUX2%v = (NSIZE%v*OpenAD_lin_262)
      OpenAD_lin_263 = OpenAD_lin_262
      OpenAD_lin_265 = UHATL%v
      OpenAD_lin_266 = PRIML2%v
      OpenAD_lin_264 = NSIZE%v
      OpenAD_lin_267 = (DSS3%v+PRIML1%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX3%v = (NSIZE%v*OpenAD_lin_267)
      OpenAD_lin_268 = OpenAD_lin_267
      OpenAD_lin_270 = NXHAT%v
      OpenAD_lin_271 = PRIML1%v
      OpenAD_lin_272 = UHATL%v
      OpenAD_lin_273 = RUL%v
      OpenAD_lin_269 = NSIZE%v
      OpenAD_lin_274 = (DSS4%v+PRIML1%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX4%v = (NSIZE%v*OpenAD_lin_274)
      OpenAD_lin_275 = OpenAD_lin_274
      OpenAD_lin_277 = NYHAT%v
      OpenAD_lin_278 = PRIML1%v
      OpenAD_lin_279 = UHATL%v
      OpenAD_lin_280 = RVL%v
      OpenAD_lin_276 = NSIZE%v
      OpenAD_lin_281 = (DSS5%v+PRIML1%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX5%v = (NSIZE%v*OpenAD_lin_281)
      OpenAD_lin_282 = OpenAD_lin_281
      OpenAD_lin_284 = NZHAT%v
      OpenAD_lin_285 = PRIML1%v
      OpenAD_lin_286 = UHATL%v
      OpenAD_lin_287 = RWL%v
      OpenAD_lin_283 = NSIZE%v
      OpenAD_acc_59 = (OpenAD_lin_260*OpenAD_lin_258)
      OpenAD_acc_60 = (OpenAD_lin_261*OpenAD_lin_258)
      OpenAD_acc_61 = (OpenAD_lin_224*OpenAD_lin_258)
      OpenAD_acc_62 = (OpenAD_lin_225*OpenAD_lin_258)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_lin_283)
      OpenAD_acc_64 = (OpenAD_lin_248*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_249*OpenAD_acc_63)
      OpenAD_acc_66 = (INT((-1_w2f__i8))*OpenAD_lin_276)
      OpenAD_acc_67 = (OpenAD_lin_240*OpenAD_acc_66)
      OpenAD_acc_68 = (OpenAD_lin_241*OpenAD_acc_66)
      OpenAD_acc_69 = (INT((-1_w2f__i8))*OpenAD_lin_269)
      OpenAD_acc_70 = (OpenAD_lin_232*OpenAD_acc_69)
      OpenAD_acc_71 = (OpenAD_lin_233*OpenAD_acc_69)
      OpenAD_acc_72 = (OpenAD_lin_222*OpenAD_lin_258)
      OpenAD_acc_73 = (OpenAD_lin_223*OpenAD_lin_258)
      OpenAD_acc_74 = (OpenAD_lin_242*OpenAD_lin_283)
      OpenAD_acc_75 = (OpenAD_lin_243*OpenAD_lin_283)
      OpenAD_acc_76 = (OpenAD_lin_234*OpenAD_lin_276)
      OpenAD_acc_77 = (OpenAD_lin_235*OpenAD_lin_276)
      OpenAD_acc_78 = (OpenAD_lin_226*OpenAD_lin_269)
      OpenAD_acc_79 = (OpenAD_lin_227*OpenAD_lin_269)
      OpenAD_acc_80 = (OpenAD_lin_220*OpenAD_lin_258)
      OpenAD_acc_81 = (OpenAD_lin_221*OpenAD_lin_258)
      OpenAD_acc_82 = (OpenAD_lin_244*OpenAD_lin_283)
      OpenAD_acc_83 = (OpenAD_lin_245*OpenAD_lin_283)
      OpenAD_acc_84 = (INT((-1_w2f__i8))*OpenAD_lin_283)
      OpenAD_acc_85 = (OpenAD_lin_246*OpenAD_acc_84)
      OpenAD_acc_86 = (OpenAD_lin_236*OpenAD_lin_276)
      OpenAD_acc_87 = (OpenAD_lin_237*OpenAD_lin_276)
      OpenAD_acc_88 = (INT((-1_w2f__i8))*OpenAD_lin_276)
      OpenAD_acc_89 = (OpenAD_lin_238*OpenAD_acc_88)
      OpenAD_acc_90 = (OpenAD_lin_228*OpenAD_lin_269)
      OpenAD_acc_91 = (OpenAD_lin_229*OpenAD_lin_269)
      OpenAD_acc_92 = (INT((-1_w2f__i8))*OpenAD_lin_269)
      OpenAD_acc_93 = (OpenAD_lin_230*OpenAD_acc_92)
      OpenAD_acc_94 = (OpenAD_lin_211*OpenAD_lin_258)
      OpenAD_acc_95 = (OpenAD_lin_212*OpenAD_lin_258)
      OpenAD_acc_96 = (OpenAD_lin_286*OpenAD_lin_283)
      OpenAD_acc_97 = (OpenAD_lin_287*OpenAD_lin_283)
      OpenAD_acc_98 = (OpenAD_lin_247*OpenAD_acc_84+OpenAD_lin_285*OpenA
     +D_lin_283)
      OpenAD_acc_99 = (OpenAD_lin_284*OpenAD_lin_283)
      OpenAD_acc_100 = (OpenAD_lin_279*OpenAD_lin_276)
      OpenAD_acc_101 = (OpenAD_lin_280*OpenAD_lin_276)
      OpenAD_acc_102 = (OpenAD_lin_239*OpenAD_acc_88+OpenAD_lin_278*Open
     +AD_lin_276)
      OpenAD_acc_103 = (OpenAD_lin_277*OpenAD_lin_276)
      OpenAD_acc_104 = (OpenAD_lin_272*OpenAD_lin_269)
      OpenAD_acc_105 = (OpenAD_lin_273*OpenAD_lin_269)
      OpenAD_acc_106 = (OpenAD_lin_231*OpenAD_acc_92+OpenAD_lin_271*Open
     +AD_lin_269)
      OpenAD_acc_107 = (OpenAD_lin_270*OpenAD_lin_269)
      OpenAD_acc_108 = (OpenAD_lin_265*OpenAD_lin_264)
      OpenAD_acc_109 = (OpenAD_lin_266*OpenAD_lin_264)
      OpenAD_acc_110 = (OpenAD_lin_214*OpenAD_lin_258)
      OpenAD_acc_111 = (OpenAD_lin_216*OpenAD_lin_215*OpenAD_lin_258)
      OpenAD_acc_112 = (OpenAD_lin_217*OpenAD_lin_215*OpenAD_lin_258)
      OpenAD_acc_113 = (INT((-1_w2f__i8))*OpenAD_lin_258)
      OpenAD_acc_114 = (OpenAD_lin_218*OpenAD_acc_113)
      OpenAD_acc_115 = (OpenAD_lin_219*OpenAD_acc_113)
      CALL setderiv(OpenAD_prp_12,ALP1)
      CALL setderiv(OpenAD_prp_13,ALP2)
      CALL setderiv(OpenAD_prp_14,ALP3)
      CALL setderiv(OpenAD_prp_15,ALP4)
      CALL setderiv(OpenAD_prp_16,ALP5)
      CALL sax(OpenAD_lin_193,ALAMCM,ALP1)
      CALL saxpy(OpenAD_lin_194,OpenAD_prp_12,ALP1)
      CALL sax(OpenAD_lin_195,ALAMU,ALP2)
      CALL saxpy(OpenAD_lin_196,OpenAD_prp_13,ALP2)
      CALL sax(OpenAD_lin_197,ALAMU,ALP3)
      CALL saxpy(OpenAD_lin_198,OpenAD_prp_14,ALP3)
      CALL sax(OpenAD_lin_199,ALAMU,ALP4)
      CALL saxpy(OpenAD_lin_200,OpenAD_prp_15,ALP4)
      CALL sax(OpenAD_lin_201,ALAMCP,ALP5)
      CALL saxpy(OpenAD_lin_202,OpenAD_prp_16,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prp_17,PRIML1)
      CALL inc_deriv(OpenAD_prp_17,EL)
      CALL sax(OpenAD_lin_250,PRIML3,UHATL)
      CALL saxpy(OpenAD_lin_251,NXHAT,UHATL)
      CALL saxpy(OpenAD_lin_252,PRIML4,UHATL)
      CALL saxpy(OpenAD_lin_253,NYHAT,UHATL)
      CALL saxpy(OpenAD_lin_254,PRIML5,UHATL)
      CALL saxpy(OpenAD_lin_255,NZHAT,UHATL)
      CALL sax(OpenAD_lin_203,ALP15P,MU)
      CALL saxpy(OpenAD_lin_204,CAVE,MU)
      CALL saxpy(OpenAD_lin_205,ALP2,MU)
      CALL saxpy(OpenAD_lin_206,NXHAT,MU)
      CALL saxpy(OpenAD_lin_207,ALP3,MU)
      CALL saxpy(OpenAD_lin_208,NYHAT,MU)
      CALL saxpy(OpenAD_lin_209,ALP4,MU)
      CALL saxpy(OpenAD_lin_210,NZHAT,MU)
      CALL sax(OpenAD_lin_263,NSIZE,FLUX2)
      CALL saxpy(OpenAD_acc_108,PRIML2,FLUX2)
      CALL saxpy(OpenAD_acc_109,UHATL,FLUX2)
      CALL saxpy(OpenAD_lin_264,MU,FLUX2)
      CALL sax(OpenAD_lin_268,NSIZE,FLUX3)
      CALL saxpy(OpenAD_acc_70,ALP4,FLUX3)
      CALL saxpy(OpenAD_acc_71,NYHAT,FLUX3)
      CALL saxpy(OpenAD_acc_78,ALP3,FLUX3)
      CALL saxpy(OpenAD_acc_79,NZHAT,FLUX3)
      CALL saxpy(OpenAD_acc_90,MU,FLUX3)
      CALL saxpy(OpenAD_acc_91,UAVE,FLUX3)
      CALL saxpy(OpenAD_acc_93,ALP15M,FLUX3)
      CALL saxpy(OpenAD_acc_106,NXHAT,FLUX3)
      CALL saxpy(OpenAD_acc_104,RUL,FLUX3)
      CALL saxpy(OpenAD_acc_105,UHATL,FLUX3)
      CALL saxpy(OpenAD_acc_107,PRIML1,FLUX3)
      CALL sax(OpenAD_lin_275,NSIZE,FLUX4)
      CALL saxpy(OpenAD_acc_67,ALP2,FLUX4)
      CALL saxpy(OpenAD_acc_68,NZHAT,FLUX4)
      CALL saxpy(OpenAD_acc_76,ALP4,FLUX4)
      CALL saxpy(OpenAD_acc_77,NXHAT,FLUX4)
      CALL saxpy(OpenAD_acc_86,MU,FLUX4)
      CALL saxpy(OpenAD_acc_87,VAVE,FLUX4)
      CALL saxpy(OpenAD_acc_89,ALP15M,FLUX4)
      CALL saxpy(OpenAD_acc_102,NYHAT,FLUX4)
      CALL saxpy(OpenAD_acc_100,RVL,FLUX4)
      CALL saxpy(OpenAD_acc_101,UHATL,FLUX4)
      CALL saxpy(OpenAD_acc_103,PRIML1,FLUX4)
      CALL sax(OpenAD_lin_282,NSIZE,FLUX5)
      CALL saxpy(OpenAD_acc_64,ALP3,FLUX5)
      CALL saxpy(OpenAD_acc_65,NXHAT,FLUX5)
      CALL saxpy(OpenAD_acc_74,ALP2,FLUX5)
      CALL saxpy(OpenAD_acc_75,NYHAT,FLUX5)
      CALL saxpy(OpenAD_acc_82,MU,FLUX5)
      CALL saxpy(OpenAD_acc_83,WAVE,FLUX5)
      CALL saxpy(OpenAD_acc_85,ALP15M,FLUX5)
      CALL saxpy(OpenAD_acc_98,NZHAT,FLUX5)
      CALL saxpy(OpenAD_acc_96,RWL,FLUX5)
      CALL saxpy(OpenAD_acc_97,UHATL,FLUX5)
      CALL saxpy(OpenAD_acc_99,PRIML1,FLUX5)
      CALL sax(OpenAD_lin_257,NSIZE,FLUX1)
      CALL saxpy(OpenAD_acc_59,UHATL,FLUX1)
      CALL saxpy(OpenAD_acc_60,OpenAD_prp_17,FLUX1)
      CALL saxpy(OpenAD_acc_61,ALP4,FLUX1)
      CALL saxpy(OpenAD_acc_62,WTILDE,FLUX1)
      CALL saxpy(OpenAD_acc_72,ALP3,FLUX1)
      CALL saxpy(OpenAD_acc_73,VTILDE,FLUX1)
      CALL saxpy(OpenAD_acc_80,ALP2,FLUX1)
      CALL saxpy(OpenAD_acc_81,UTILDE,FLUX1)
      CALL saxpy(OpenAD_acc_94,MU,FLUX1)
      CALL saxpy(OpenAD_acc_95,THTAVE,FLUX1)
      CALL saxpy(OpenAD_acc_110,ALP15P,FLUX1)
      CALL saxpy(OpenAD_acc_111,GM1INV,FLUX1)
      CALL saxpy(OpenAD_acc_112,CAVE,FLUX1)
      CALL saxpy(OpenAD_acc_114,ALP15M,FLUX1)
      CALL saxpy(OpenAD_acc_115,UHAT,FLUX1)
      END SUBROUTINE
