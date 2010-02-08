
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE ad_roehf5(NRM1, NRM2, NRM3, PRIML1, PRIML2, PRIML3, PRI
     +ML4, PRIML5, PRIMR1, PRIMR2, PRIMR3, PRIMR4, PRIMR5, GAMMA, GM1, G
     +M1INV, NLEFIX, LEFIX, MCHEPS, FLUX1, FLUX2, FLUX3, FLUX4, FLUX5)
      use w2f__types
      use OAD_active
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
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_4
      type(active) :: OpenAD_prop_5
      type(active) :: OpenAD_prop_6
      type(active) :: OpenAD_prop_7
      type(active) :: OpenAD_prop_8
      type(active) :: OpenAD_prop_9
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
      REAL(w2f__8) OpenAD_Symbol_31
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
      OpenAD_Symbol_2 = (2*(NRM1%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2*(NRM2%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_6 = (2*(NRM3%v**(2-INT(1_w2f__i8))))
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
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_Symbol_23 = (-(PRIMR2%v/(PRIML2%v*PRIML2%v)))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00/(OpenAD_Symbol_16*OpenAD_Symbol_16)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_Symbol_25 = ((PRIML3%v**2)+(PRIML4%v**2)+(PRIML5%v**2))
      THETAL%v = (OpenAD_Symbol_25*5.0D-01)
      OpenAD_Symbol_27 = (2*(PRIML3%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_29 = (2*(PRIML4%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_31 = (2*(PRIML5%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_33 = ((PRIMR3%v**2)+(PRIMR4%v**2)+(PRIMR5%v**2))
      THETAR%v = (OpenAD_Symbol_33*5.0D-01)
      OpenAD_Symbol_35 = (2*(PRIMR3%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_37 = (2*(PRIMR4%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_39 = (2*(PRIMR5%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_44 = (GAMMA%v*GM1INV%v)
      OpenAD_Symbol_41 = (PRIML1%v*OpenAD_Symbol_44)
      HL%v = (THETAL%v+(OpenAD_Symbol_41/PRIML2%v))
      OpenAD_Symbol_45 = OpenAD_Symbol_44
      OpenAD_Symbol_47 = GM1INV%v
      OpenAD_Symbol_48 = GAMMA%v
      OpenAD_Symbol_46 = PRIML1%v
      OpenAD_Symbol_42 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_Symbol_43 = (-(OpenAD_Symbol_41/(PRIML2%v*PRIML2%v)))
      OpenAD_Symbol_52 = (GAMMA%v*GM1INV%v)
      OpenAD_Symbol_49 = (PRIMR1%v*OpenAD_Symbol_52)
      HR%v = (THETAR%v+(OpenAD_Symbol_49/PRIMR2%v))
      OpenAD_Symbol_53 = OpenAD_Symbol_52
      OpenAD_Symbol_55 = GM1INV%v
      OpenAD_Symbol_56 = GAMMA%v
      OpenAD_Symbol_54 = PRIMR1%v
      OpenAD_Symbol_50 = (INT(1_w2f__i8)/PRIMR2%v)
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
      OpenAD_Symbol_75 = (2*(UAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_77 = (2*(VAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_79 = (2*(WAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_81 = (HAVE%v-THTAVE%v)
      CAVE%v = (GM1%v*OpenAD_Symbol_81)
      OpenAD_Symbol_82 = OpenAD_Symbol_81
      OpenAD_Symbol_83 = GM1%v
      OpenAD_acc_0 = (OpenAD_Symbol_54*OpenAD_Symbol_50)
      OpenAD_acc_1 = (OpenAD_Symbol_46*OpenAD_Symbol_42)
      OpenAD_acc_2 = (OpenAD_Symbol_9*OpenAD_Symbol_11)
      OpenAD_acc_3 = (OpenAD_Symbol_9*OpenAD_Symbol_13)
      OpenAD_acc_4 = (OpenAD_Symbol_9*OpenAD_Symbol_15)
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
      OpenAD_acc_15 = (OpenAD_Symbol_47*OpenAD_acc_1)
      OpenAD_acc_16 = (OpenAD_Symbol_48*OpenAD_acc_1)
      OpenAD_acc_17 = (OpenAD_Symbol_53*OpenAD_Symbol_50)
      OpenAD_acc_18 = (OpenAD_Symbol_55*OpenAD_acc_0)
      OpenAD_acc_19 = (OpenAD_Symbol_56*OpenAD_acc_0)
      CALL sax(OpenAD_Symbol_6,NRM3,OpenAD_prop_0)
      CALL saxpy(OpenAD_Symbol_2,NRM1,OpenAD_prop_0)
      CALL saxpy(OpenAD_Symbol_4,NRM2,OpenAD_prop_0)
      CALL sax(OpenAD_acc_12,PRIMR2,OpenAD_prop_1)
      CALL saxpy(OpenAD_acc_13,PRIML2,OpenAD_prop_1)
      CALL sax(OpenAD_Symbol_31,PRIML5,OpenAD_prop_2)
      CALL saxpy(OpenAD_Symbol_27,PRIML3,OpenAD_prop_2)
      CALL saxpy(OpenAD_Symbol_29,PRIML4,OpenAD_prop_2)
      CALL sax(OpenAD_Symbol_39,PRIMR5,OpenAD_prop_3)
      CALL saxpy(OpenAD_Symbol_35,PRIMR3,OpenAD_prop_3)
      CALL saxpy(OpenAD_Symbol_37,PRIMR4,OpenAD_prop_3)
      CALL sax(OpenAD_Symbol_1,OpenAD_prop_0,NSIZE)
      CALL sax(OpenAD_Symbol_10,NRM1,NXHAT)
      CALL saxpy(OpenAD_acc_2,NSIZE,NXHAT)
      CALL sax(OpenAD_Symbol_12,NRM2,NYHAT)
      CALL saxpy(OpenAD_acc_3,NSIZE,NYHAT)
      CALL sax(OpenAD_Symbol_14,NRM3,NZHAT)
      CALL saxpy(OpenAD_acc_4,NSIZE,NZHAT)
      CALL sax(5.0D-01,OpenAD_prop_2,THETAL)
      CALL sax(5.0D-01,OpenAD_prop_3,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_Symbol_43,PRIML2,HL)
      CALL saxpy(OpenAD_acc_14,PRIML1,HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_Symbol_51,PRIMR2,HR)
      CALL saxpy(OpenAD_acc_17,PRIMR1,HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_Symbol_59,PRIMR3,UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prop_1,UAVE)
      CALL saxpy(OpenAD_Symbol_57,PRIML3,UAVE)
      CALL sax(OpenAD_Symbol_63,PRIMR4,VAVE)
      CALL saxpy(OpenAD_Symbol_61,PRIML4,VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prop_1,VAVE)
      CALL sax(OpenAD_Symbol_67,PRIMR5,WAVE)
      CALL saxpy(OpenAD_Symbol_65,PRIML5,WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prop_1,WAVE)
      CALL sax(OpenAD_Symbol_79,WAVE,OpenAD_prop_4)
      CALL saxpy(OpenAD_Symbol_77,VAVE,OpenAD_prop_4)
      CALL saxpy(OpenAD_Symbol_75,UAVE,OpenAD_prop_4)
      CALL sax(5.0D-01,OpenAD_prop_4,THTAVE)
      CALL sax(OpenAD_Symbol_82,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prop_4,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prop_1,CAVE)
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
      OpenAD_acc_20 = (OpenAD_Symbol_94*INT((-1_w2f__i8)))
      OpenAD_acc_21 = (OpenAD_Symbol_95*INT((-1_w2f__i8)))
      OpenAD_acc_22 = (OpenAD_Symbol_98*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_Symbol_99*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_Symbol_102*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_Symbol_103*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_5,CAVE)
      CALL sax(OpenAD_Symbol_84,OpenAD_prop_5,CAVE)
      CALL sax(OpenAD_Symbol_92,NYHAT,UTILDE)
      CALL saxpy(OpenAD_Symbol_93,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_20,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_21,VAVE,UTILDE)
      CALL sax(OpenAD_Symbol_96,NZHAT,VTILDE)
      CALL saxpy(OpenAD_Symbol_97,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_22,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_23,WAVE,VTILDE)
      CALL sax(OpenAD_Symbol_100,NXHAT,WTILDE)
      CALL saxpy(OpenAD_Symbol_101,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_24,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_25,UAVE,WTILDE)
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
      CALL setderiv(ALAMCM,LAMCM)
      CALL setderiv(ALAMCP,LAMCP)
      CALL setderiv(ALAMU,LAMU)
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
      OpenAD_Symbol_140 = (INT(1_w2f__i8)/CAVE%v)
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
      OpenAD_acc_26 = (OpenAD_Symbol_140*OpenAD_Symbol_138)
      OpenAD_acc_27 = (OpenAD_Symbol_141*OpenAD_Symbol_138)
      OpenAD_acc_28 = (OpenAD_Symbol_193*(-5.0D-01))
      OpenAD_acc_29 = (OpenAD_Symbol_153*5.0D-01)
      OpenAD_acc_30 = (INT((-1_w2f__i8))*OpenAD_Symbol_139)
      OpenAD_acc_31 = (OpenAD_Symbol_134*OpenAD_acc_30)
      OpenAD_acc_32 = (OpenAD_Symbol_135*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_Symbol_183*OpenAD_Symbol_182)
      OpenAD_acc_34 = (OpenAD_Symbol_184*OpenAD_Symbol_182+INT((-1_w2f__
     +i8))*OpenAD_Symbol_187)
      OpenAD_acc_35 = (INT((-1_w2f__i8))*OpenAD_Symbol_182)
      OpenAD_acc_36 = (OpenAD_Symbol_171*OpenAD_Symbol_170)
      OpenAD_acc_37 = (OpenAD_Symbol_172*OpenAD_Symbol_170+INT((-1_w2f__
     +i8))*OpenAD_Symbol_175)
      OpenAD_acc_38 = (INT((-1_w2f__i8))*OpenAD_Symbol_170)
      OpenAD_acc_39 = (OpenAD_Symbol_159*OpenAD_Symbol_158)
      OpenAD_acc_40 = (OpenAD_Symbol_160*OpenAD_Symbol_158+INT((-1_w2f__
     +i8))*OpenAD_Symbol_163)
      OpenAD_acc_41 = (INT((-1_w2f__i8))*OpenAD_Symbol_158)
      OpenAD_acc_42 = (OpenAD_Symbol_142*OpenAD_Symbol_139)
      OpenAD_acc_43 = (OpenAD_Symbol_143*OpenAD_Symbol_139)
      OpenAD_acc_44 = (OpenAD_Symbol_192*(-5.0D-01)+OpenAD_acc_42*5.0D-0
     +1)
      OpenAD_acc_45 = (OpenAD_Symbol_181+OpenAD_acc_42*OpenAD_Symbol_186
     +)
      OpenAD_acc_46 = (OpenAD_Symbol_169+OpenAD_acc_42*OpenAD_Symbol_174
     +)
      OpenAD_acc_47 = (OpenAD_Symbol_157+OpenAD_acc_42*OpenAD_Symbol_162
     +)
      OpenAD_acc_48 = (OpenAD_Symbol_152*5.0D-01+OpenAD_acc_42*5.0D-01)
      OpenAD_acc_49 = (OpenAD_Symbol_132*OpenAD_acc_30)
      OpenAD_acc_50 = (OpenAD_Symbol_133*OpenAD_acc_30)
      OpenAD_acc_51 = (OpenAD_Symbol_130*OpenAD_acc_30)
      OpenAD_acc_52 = (OpenAD_Symbol_131*OpenAD_acc_30)
      OpenAD_acc_53 = (OpenAD_Symbol_188*INT((-1_w2f__i8)))
      OpenAD_acc_54 = (OpenAD_Symbol_189*INT((-1_w2f__i8)))
      OpenAD_acc_55 = (OpenAD_Symbol_176*INT((-1_w2f__i8)))
      OpenAD_acc_56 = (OpenAD_Symbol_177*INT((-1_w2f__i8)))
      OpenAD_acc_57 = (OpenAD_Symbol_164*INT((-1_w2f__i8)))
      OpenAD_acc_58 = (OpenAD_Symbol_165*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_6,ALAMCM)
      CALL setderiv(OpenAD_prop_7,ALAMCP)
      CALL setderiv(OpenAD_prop_8,ALAMU)
      CALL setderiv(OpenAD_prop_9,LAMCM)
      CALL dec_deriv(OpenAD_prop_9,OpenAD_prop_6)
      CALL setderiv(OpenAD_prop_10,LAMCP)
      CALL dec_deriv(OpenAD_prop_10,OpenAD_prop_7)
      CALL setderiv(OpenAD_prop_11,LAMU)
      CALL dec_deriv(OpenAD_prop_11,OpenAD_prop_8)
      CALL sax(OpenAD_Symbol_114,PRIML2,RUL)
      CALL saxpy(OpenAD_Symbol_115,PRIML3,RUL)
      CALL sax(OpenAD_Symbol_116,PRIML2,RVL)
      CALL saxpy(OpenAD_Symbol_117,PRIML4,RVL)
      CALL sax(OpenAD_Symbol_118,PRIML2,RWL)
      CALL saxpy(OpenAD_Symbol_119,PRIML5,RWL)
      CALL setderiv(DR,PRIMR2)
      CALL dec_deriv(DR,PRIML2)
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_Symbol_124,PRIMR2,DRU)
      CALL saxpy(OpenAD_Symbol_125,PRIMR3,DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_Symbol_126,PRIMR2,DRV)
      CALL saxpy(OpenAD_Symbol_127,PRIMR4,DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_Symbol_128,PRIMR2,DRW)
      CALL saxpy(OpenAD_Symbol_129,PRIMR5,DRW)
      CALL sax(5.0D-01,OpenAD_prop_9,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prop_10,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prop_11,ALAMU)
      CALL sax(OpenAD_Symbol_110,PRIML1,EL)
      CALL saxpy(OpenAD_Symbol_111,GM1INV,EL)
      CALL saxpy(OpenAD_Symbol_112,PRIML2,EL)
      CALL saxpy(OpenAD_Symbol_113,THETAL,EL)
      CALL set_neg_deriv(DE,EL)
      CALL saxpy(OpenAD_Symbol_120,PRIMR1,DE)
      CALL saxpy(OpenAD_Symbol_121,GM1INV,DE)
      CALL saxpy(OpenAD_Symbol_122,PRIMR2,DE)
      CALL saxpy(OpenAD_Symbol_123,THETAR,DE)
      CALL sax(OpenAD_Symbol_148,DRW,NDDRU)
      CALL saxpy(OpenAD_Symbol_149,NZHAT,NDDRU)
      CALL saxpy(OpenAD_Symbol_146,DRV,NDDRU)
      CALL saxpy(OpenAD_Symbol_147,NYHAT,NDDRU)
      CALL saxpy(OpenAD_Symbol_144,DRU,NDDRU)
      CALL saxpy(OpenAD_Symbol_145,NXHAT,NDDRU)
      CALL sax(OpenAD_acc_26,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_27,CAVE,OMEGA)
      CALL saxpy(OpenAD_acc_31,DRW,OMEGA)
      CALL saxpy(OpenAD_acc_32,WAVE,OMEGA)
      CALL saxpy(OpenAD_Symbol_139,DE,OMEGA)
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
      CALL sax(OpenAD_Symbol_162,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_47,DR,ALP2)
      CALL saxpy(OpenAD_acc_39,CAVE,ALP2)
      CALL saxpy(OpenAD_acc_40,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_41,UTILDE,ALP2)
      CALL saxpy(OpenAD_Symbol_154,DRW,ALP2)
      CALL saxpy(OpenAD_Symbol_155,NYHAT,ALP2)
      CALL saxpy(OpenAD_acc_57,DRV,ALP2)
      CALL saxpy(OpenAD_acc_58,NZHAT,ALP2)
      CALL sax(OpenAD_Symbol_174,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_46,DR,ALP3)
      CALL saxpy(OpenAD_acc_36,CAVE,ALP3)
      CALL saxpy(OpenAD_acc_37,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_38,VTILDE,ALP3)
      CALL saxpy(OpenAD_Symbol_166,DRU,ALP3)
      CALL saxpy(OpenAD_Symbol_167,NZHAT,ALP3)
      CALL saxpy(OpenAD_acc_55,DRW,ALP3)
      CALL saxpy(OpenAD_acc_56,NXHAT,ALP3)
      CALL sax(OpenAD_Symbol_186,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,DR,ALP4)
      CALL saxpy(OpenAD_acc_33,CAVE,ALP4)
      CALL saxpy(OpenAD_acc_34,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_35,WTILDE,ALP4)
      CALL saxpy(OpenAD_Symbol_178,DRV,ALP4)
      CALL saxpy(OpenAD_Symbol_179,NXHAT,ALP4)
      CALL saxpy(OpenAD_acc_53,DRU,ALP4)
      CALL saxpy(OpenAD_acc_54,NYHAT,ALP4)
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
      OpenAD_Symbol_209 = (INT(1_w2f__i8)/CAVE%v)
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
      OpenAD_acc_59 = (OpenAD_Symbol_266*OpenAD_Symbol_264)
      OpenAD_acc_60 = (OpenAD_Symbol_267*OpenAD_Symbol_264)
      OpenAD_acc_61 = (OpenAD_Symbol_230*OpenAD_Symbol_264)
      OpenAD_acc_62 = (OpenAD_Symbol_231*OpenAD_Symbol_264)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_Symbol_289)
      OpenAD_acc_64 = (OpenAD_Symbol_254*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_Symbol_255*OpenAD_acc_63)
      OpenAD_acc_66 = (INT((-1_w2f__i8))*OpenAD_Symbol_282)
      OpenAD_acc_67 = (OpenAD_Symbol_246*OpenAD_acc_66)
      OpenAD_acc_68 = (OpenAD_Symbol_247*OpenAD_acc_66)
      OpenAD_acc_69 = (INT((-1_w2f__i8))*OpenAD_Symbol_275)
      OpenAD_acc_70 = (OpenAD_Symbol_238*OpenAD_acc_69)
      OpenAD_acc_71 = (OpenAD_Symbol_239*OpenAD_acc_69)
      OpenAD_acc_72 = (OpenAD_Symbol_228*OpenAD_Symbol_264)
      OpenAD_acc_73 = (OpenAD_Symbol_229*OpenAD_Symbol_264)
      OpenAD_acc_74 = (OpenAD_Symbol_248*OpenAD_Symbol_289)
      OpenAD_acc_75 = (OpenAD_Symbol_249*OpenAD_Symbol_289)
      OpenAD_acc_76 = (OpenAD_Symbol_240*OpenAD_Symbol_282)
      OpenAD_acc_77 = (OpenAD_Symbol_241*OpenAD_Symbol_282)
      OpenAD_acc_78 = (OpenAD_Symbol_232*OpenAD_Symbol_275)
      OpenAD_acc_79 = (OpenAD_Symbol_233*OpenAD_Symbol_275)
      OpenAD_acc_80 = (OpenAD_Symbol_226*OpenAD_Symbol_264)
      OpenAD_acc_81 = (OpenAD_Symbol_227*OpenAD_Symbol_264)
      OpenAD_acc_82 = (OpenAD_Symbol_250*OpenAD_Symbol_289)
      OpenAD_acc_83 = (OpenAD_Symbol_251*OpenAD_Symbol_289)
      OpenAD_acc_84 = (INT((-1_w2f__i8))*OpenAD_Symbol_289)
      OpenAD_acc_85 = (OpenAD_Symbol_252*OpenAD_acc_84)
      OpenAD_acc_86 = (OpenAD_Symbol_242*OpenAD_Symbol_282)
      OpenAD_acc_87 = (OpenAD_Symbol_243*OpenAD_Symbol_282)
      OpenAD_acc_88 = (INT((-1_w2f__i8))*OpenAD_Symbol_282)
      OpenAD_acc_89 = (OpenAD_Symbol_244*OpenAD_acc_88)
      OpenAD_acc_90 = (OpenAD_Symbol_234*OpenAD_Symbol_275)
      OpenAD_acc_91 = (OpenAD_Symbol_235*OpenAD_Symbol_275)
      OpenAD_acc_92 = (INT((-1_w2f__i8))*OpenAD_Symbol_275)
      OpenAD_acc_93 = (OpenAD_Symbol_236*OpenAD_acc_92)
      OpenAD_acc_94 = (OpenAD_Symbol_217*OpenAD_Symbol_264)
      OpenAD_acc_95 = (OpenAD_Symbol_218*OpenAD_Symbol_264)
      OpenAD_acc_96 = (OpenAD_Symbol_292*OpenAD_Symbol_289)
      OpenAD_acc_97 = (OpenAD_Symbol_293*OpenAD_Symbol_289)
      OpenAD_acc_98 = (OpenAD_Symbol_253*OpenAD_acc_84+OpenAD_Symbol_291
     +*OpenAD_Symbol_289)
      OpenAD_acc_99 = (OpenAD_Symbol_290*OpenAD_Symbol_289)
      OpenAD_acc_100 = (OpenAD_Symbol_285*OpenAD_Symbol_282)
      OpenAD_acc_101 = (OpenAD_Symbol_286*OpenAD_Symbol_282)
      OpenAD_acc_102 = (OpenAD_Symbol_245*OpenAD_acc_88+OpenAD_Symbol_28
     +4*OpenAD_Symbol_282)
      OpenAD_acc_103 = (OpenAD_Symbol_283*OpenAD_Symbol_282)
      OpenAD_acc_104 = (OpenAD_Symbol_278*OpenAD_Symbol_275)
      OpenAD_acc_105 = (OpenAD_Symbol_279*OpenAD_Symbol_275)
      OpenAD_acc_106 = (OpenAD_Symbol_237*OpenAD_acc_92+OpenAD_Symbol_27
     +7*OpenAD_Symbol_275)
      OpenAD_acc_107 = (OpenAD_Symbol_276*OpenAD_Symbol_275)
      OpenAD_acc_108 = (OpenAD_Symbol_271*OpenAD_Symbol_270)
      OpenAD_acc_109 = (OpenAD_Symbol_272*OpenAD_Symbol_270)
      OpenAD_acc_110 = (OpenAD_Symbol_220*OpenAD_Symbol_264)
      OpenAD_acc_111 = (OpenAD_Symbol_222*OpenAD_Symbol_221*OpenAD_Symbo
     +l_264)
      OpenAD_acc_112 = (OpenAD_Symbol_223*OpenAD_Symbol_221*OpenAD_Symbo
     +l_264)
      OpenAD_acc_113 = (INT((-1_w2f__i8))*OpenAD_Symbol_264)
      OpenAD_acc_114 = (OpenAD_Symbol_224*OpenAD_acc_113)
      OpenAD_acc_115 = (OpenAD_Symbol_225*OpenAD_acc_113)
      CALL setderiv(OpenAD_prop_12,ALP1)
      CALL setderiv(OpenAD_prop_13,ALP2)
      CALL setderiv(OpenAD_prop_14,ALP3)
      CALL setderiv(OpenAD_prop_15,ALP4)
      CALL setderiv(OpenAD_prop_16,ALP5)
      CALL sax(OpenAD_Symbol_194,ALAMCM,ALP1)
      CALL saxpy(OpenAD_Symbol_195,OpenAD_prop_12,ALP1)
      CALL sax(OpenAD_Symbol_197,ALAMU,ALP2)
      CALL saxpy(OpenAD_Symbol_198,OpenAD_prop_13,ALP2)
      CALL sax(OpenAD_Symbol_200,ALAMU,ALP3)
      CALL saxpy(OpenAD_Symbol_201,OpenAD_prop_14,ALP3)
      CALL sax(OpenAD_Symbol_203,ALAMU,ALP4)
      CALL saxpy(OpenAD_Symbol_204,OpenAD_prop_15,ALP4)
      CALL sax(OpenAD_Symbol_206,ALAMCP,ALP5)
      CALL saxpy(OpenAD_Symbol_207,OpenAD_prop_16,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prop_17,PRIML1)
      CALL inc_deriv(OpenAD_prop_17,EL)
      CALL sax(OpenAD_Symbol_256,PRIML3,UHATL)
      CALL saxpy(OpenAD_Symbol_257,NXHAT,UHATL)
      CALL saxpy(OpenAD_Symbol_258,PRIML4,UHATL)
      CALL saxpy(OpenAD_Symbol_259,NYHAT,UHATL)
      CALL saxpy(OpenAD_Symbol_260,PRIML5,UHATL)
      CALL saxpy(OpenAD_Symbol_261,NZHAT,UHATL)
      CALL sax(OpenAD_Symbol_209,ALP15P,MU)
      CALL saxpy(OpenAD_Symbol_210,CAVE,MU)
      CALL saxpy(OpenAD_Symbol_211,ALP2,MU)
      CALL saxpy(OpenAD_Symbol_212,NXHAT,MU)
      CALL saxpy(OpenAD_Symbol_213,ALP3,MU)
      CALL saxpy(OpenAD_Symbol_214,NYHAT,MU)
      CALL saxpy(OpenAD_Symbol_215,ALP4,MU)
      CALL saxpy(OpenAD_Symbol_216,NZHAT,MU)
      CALL sax(OpenAD_Symbol_269,NSIZE,FLUX2)
      CALL saxpy(OpenAD_acc_108,PRIML2,FLUX2)
      CALL saxpy(OpenAD_acc_109,UHATL,FLUX2)
      CALL saxpy(OpenAD_Symbol_270,MU,FLUX2)
      CALL sax(OpenAD_Symbol_274,NSIZE,FLUX3)
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
      CALL sax(OpenAD_Symbol_281,NSIZE,FLUX4)
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
      CALL sax(OpenAD_Symbol_288,NSIZE,FLUX5)
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
      CALL sax(OpenAD_Symbol_263,NSIZE,FLUX1)
      CALL saxpy(OpenAD_acc_59,UHATL,FLUX1)
      CALL saxpy(OpenAD_acc_60,OpenAD_prop_17,FLUX1)
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
