
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE ad_roehf5(NRM, PRIML, PRIMR, GAMMA, GM1, GM1INV, NLEFIX
     +, LEFIX, MCHEPS, FLUX)
      use OAD_active
      use w2f__types
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
      REAL(w2f__8) OpenAD_lin_107
      REAL(w2f__8) OpenAD_lin_108
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
      REAL(w2f__8) OpenAD_lin_166
      REAL(w2f__8) OpenAD_lin_167
      REAL(w2f__8) OpenAD_lin_168
      REAL(w2f__8) OpenAD_lin_169
      REAL(w2f__8) OpenAD_lin_17
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
      REAL(w2f__8) OpenAD_lin_19
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
      REAL(w2f__8) OpenAD_lin_24
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
      REAL(w2f__8) OpenAD_lin_26
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
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_280
      REAL(w2f__8) OpenAD_lin_281
      REAL(w2f__8) OpenAD_lin_282
      REAL(w2f__8) OpenAD_lin_283
      REAL(w2f__8) OpenAD_lin_284
      REAL(w2f__8) OpenAD_lin_285
      REAL(w2f__8) OpenAD_lin_286
      REAL(w2f__8) OpenAD_lin_287
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_32
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_34
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_36
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_40
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_44
      REAL(w2f__8) OpenAD_lin_45
      REAL(w2f__8) OpenAD_lin_46
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_48
      REAL(w2f__8) OpenAD_lin_49
      REAL(w2f__8) OpenAD_lin_5
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
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_70
      REAL(w2f__8) OpenAD_lin_71
      REAL(w2f__8) OpenAD_lin_72
      REAL(w2f__8) OpenAD_lin_73
      REAL(w2f__8) OpenAD_lin_74
      REAL(w2f__8) OpenAD_lin_75
      REAL(w2f__8) OpenAD_lin_76
      REAL(w2f__8) OpenAD_lin_77
      REAL(w2f__8) OpenAD_lin_78
      REAL(w2f__8) OpenAD_lin_79
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_80
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
      OpenAD_lin_3 = (2*(NRM(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_4 = (2*(NRM(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_1 = COS(OpenAD_lin_0)
      OpenAD_acc_0 = (OpenAD_lin_4*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
      OpenAD_acc_2 = (OpenAD_lin_2*OpenAD_lin_1)
      CALL sax(OpenAD_acc_0,NRM(3),NSIZE)
      CALL saxpy(OpenAD_acc_1,NRM(2),NSIZE)
      CALL saxpy(OpenAD_acc_2,NRM(1),NSIZE)
      IF (MCHEPS.LT.NSIZE%v) THEN
        NSIZEI%v = (1.0D00/NSIZE%v)
        OpenAD_lin_5 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
        CALL sax(OpenAD_lin_5,NSIZE,NSIZEI)
      ELSE
        NSIZEI%v = 0.0D00
        CALL zero_deriv(NSIZEI)
      ENDIF
      NXHAT%v = (NRM(1)%v*NSIZEI%v)
      OpenAD_lin_6 = NSIZEI%v
      OpenAD_lin_7 = NRM(1)%v
      NYHAT%v = (NRM(2)%v*NSIZEI%v)
      OpenAD_lin_8 = NSIZEI%v
      OpenAD_lin_9 = NRM(2)%v
      NZHAT%v = (NRM(3)%v*NSIZEI%v)
      OpenAD_lin_10 = NSIZEI%v
      OpenAD_lin_11 = NRM(3)%v
      OpenAD_lin_14 = (PRIMR(2)%v/PRIML(2)%v)
      OpenAD_lin_12 = (SIN(OpenAD_lin_14)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_lin_12)
      OpenAD_lin_16 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_lin_17 = (-(PRIMR(2)%v/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_lin_15 = COS(OpenAD_lin_14)
      OpenAD_lin_13 = (-(1.0D00/(OpenAD_lin_12*OpenAD_lin_12)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_lin_18 = ((PRIML(3)%v**2)+(PRIML(4)%v**2)+(PRIML(5)%v**2))
      THETAL%v = (OpenAD_lin_18*5.0D-01)
      OpenAD_lin_19 = (2*(PRIML(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_20 = (2*(PRIML(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_21 = (2*(PRIML(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_22 = ((PRIMR(3)%v**2)+(PRIMR(4)%v**2)+(PRIMR(5)%v**2))
      THETAR%v = (OpenAD_lin_22*5.0D-01)
      OpenAD_lin_23 = (2*(PRIMR(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_24 = (2*(PRIMR(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_25 = (2*(PRIMR(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_29 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_26 = (PRIML(1)%v*OpenAD_lin_29)
      HL%v = (THETAL%v+(OpenAD_lin_26/PRIML(2)%v))
      OpenAD_lin_30 = OpenAD_lin_29
      OpenAD_lin_32 = GM1INV%v
      OpenAD_lin_33 = GAMMA%v
      OpenAD_lin_31 = PRIML(1)%v
      OpenAD_lin_27 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_lin_28 = (-(OpenAD_lin_26/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_lin_37 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_34 = (PRIMR(1)%v*OpenAD_lin_37)
      HR%v = (THETAR%v+(OpenAD_lin_34/PRIMR(2)%v))
      OpenAD_lin_38 = OpenAD_lin_37
      OpenAD_lin_40 = GM1INV%v
      OpenAD_lin_41 = GAMMA%v
      OpenAD_lin_39 = PRIMR(1)%v
      OpenAD_lin_35 = (INT(1_w2f__i8)/PRIMR(2)%v)
      OpenAD_lin_36 = (-(OpenAD_lin_34/(PRIMR(2)%v*PRIMR(2)%v)))
      UAVE%v = (PRIML(3)%v*ROEL%v+PRIMR(3)%v*ROER%v)
      OpenAD_lin_42 = ROEL%v
      OpenAD_lin_43 = PRIML(3)%v
      OpenAD_lin_44 = ROER%v
      OpenAD_lin_45 = PRIMR(3)%v
      VAVE%v = (PRIML(4)%v*ROEL%v+PRIMR(4)%v*ROER%v)
      OpenAD_lin_46 = ROEL%v
      OpenAD_lin_47 = PRIML(4)%v
      OpenAD_lin_48 = ROER%v
      OpenAD_lin_49 = PRIMR(4)%v
      WAVE%v = (PRIML(5)%v*ROEL%v+PRIMR(5)%v*ROER%v)
      OpenAD_lin_50 = ROEL%v
      OpenAD_lin_51 = PRIML(5)%v
      OpenAD_lin_52 = ROER%v
      OpenAD_lin_53 = PRIMR(5)%v
      HAVE%v = (HL%v*ROEL%v+HR%v*ROER%v)
      OpenAD_lin_54 = ROEL%v
      OpenAD_lin_55 = HL%v
      OpenAD_lin_56 = ROER%v
      OpenAD_lin_57 = HR%v
      OpenAD_lin_58 = ((UAVE%v**2)+(VAVE%v**2)+(WAVE%v**2))
      THTAVE%v = (OpenAD_lin_58*5.0D-01)
      OpenAD_lin_59 = (2*(UAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_60 = (2*(VAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_61 = (2*(WAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_62 = (HAVE%v-THTAVE%v)
      CAVE%v = (GM1%v*OpenAD_lin_62)
      OpenAD_lin_63 = OpenAD_lin_62
      OpenAD_lin_64 = GM1%v
      OpenAD_acc_3 = (OpenAD_lin_39*OpenAD_lin_35)
      OpenAD_acc_4 = (OpenAD_lin_31*OpenAD_lin_27)
      OpenAD_acc_5 = (5.0D-01*INT((-1_w2f__i8))*OpenAD_lin_64)
      OpenAD_acc_6 = (OpenAD_lin_56*OpenAD_lin_64)
      OpenAD_acc_7 = (OpenAD_lin_54*OpenAD_lin_64)
      OpenAD_acc_8 = (OpenAD_lin_13*(OpenAD_lin_55*OpenAD_lin_64+INT((-1
     +_w2f__i8))*OpenAD_lin_57*OpenAD_lin_64))
      OpenAD_acc_9 = (OpenAD_lin_13*(OpenAD_lin_51+INT((-1_w2f__i8))*Ope
     +nAD_lin_53))
      OpenAD_acc_10 = (OpenAD_lin_13*(OpenAD_lin_47+INT((-1_w2f__i8))*Op
     +enAD_lin_49))
      OpenAD_acc_11 = (OpenAD_lin_13*(OpenAD_lin_43+INT((-1_w2f__i8))*Op
     +enAD_lin_45))
      OpenAD_acc_12 = (OpenAD_lin_16*OpenAD_lin_15)
      OpenAD_acc_13 = (OpenAD_lin_17*OpenAD_lin_15)
      OpenAD_acc_14 = (OpenAD_lin_30*OpenAD_lin_27)
      OpenAD_acc_15 = (OpenAD_lin_32*OpenAD_acc_4)
      OpenAD_acc_16 = (OpenAD_lin_33*OpenAD_acc_4)
      OpenAD_acc_17 = (OpenAD_lin_38*OpenAD_lin_35)
      OpenAD_acc_18 = (OpenAD_lin_40*OpenAD_acc_3)
      OpenAD_acc_19 = (OpenAD_lin_41*OpenAD_acc_3)
      CALL sax(OpenAD_lin_6,NRM(1),NXHAT)
      CALL saxpy(OpenAD_lin_7,NSIZEI,NXHAT)
      CALL sax(OpenAD_lin_8,NRM(2),NYHAT)
      CALL saxpy(OpenAD_lin_9,NSIZEI,NYHAT)
      CALL sax(OpenAD_lin_10,NRM(3),NZHAT)
      CALL saxpy(OpenAD_lin_11,NSIZEI,NZHAT)
      CALL sax(OpenAD_acc_12,PRIMR(2),OpenAD_prp_0)
      CALL saxpy(OpenAD_acc_13,PRIML(2),OpenAD_prp_0)
      CALL sax(OpenAD_lin_21,PRIML(5),OpenAD_prp_1)
      CALL saxpy(OpenAD_lin_19,PRIML(3),OpenAD_prp_1)
      CALL saxpy(OpenAD_lin_20,PRIML(4),OpenAD_prp_1)
      CALL sax(OpenAD_lin_25,PRIMR(5),OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_23,PRIMR(3),OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_24,PRIMR(4),OpenAD_prp_2)
      CALL sax(5.0D-01,OpenAD_prp_1,THETAL)
      CALL sax(5.0D-01,OpenAD_prp_2,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_lin_28,PRIML(2),HL)
      CALL saxpy(OpenAD_acc_14,PRIML(1),HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_lin_36,PRIMR(2),HR)
      CALL saxpy(OpenAD_acc_17,PRIMR(1),HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_lin_44,PRIMR(3),UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prp_0,UAVE)
      CALL saxpy(OpenAD_lin_42,PRIML(3),UAVE)
      CALL sax(OpenAD_lin_48,PRIMR(4),VAVE)
      CALL saxpy(OpenAD_lin_46,PRIML(4),VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prp_0,VAVE)
      CALL sax(OpenAD_lin_52,PRIMR(5),WAVE)
      CALL saxpy(OpenAD_lin_50,PRIML(5),WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prp_0,WAVE)
      CALL sax(OpenAD_lin_61,WAVE,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_60,VAVE,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_59,UAVE,OpenAD_prp_3)
      CALL sax(5.0D-01,OpenAD_prp_3,THTAVE)
      CALL sax(OpenAD_lin_63,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prp_3,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prp_0,CAVE)
      OpenAD_dly_0 = SIN(CAVE%v)
      OpenAD_lin_65 = COS(CAVE%v)
      CAVE%v = OpenAD_dly_0
      UHAT%v = (NXHAT%v*UAVE%v+NYHAT%v*VAVE%v+NZHAT%v*WAVE%v)
      OpenAD_lin_66 = UAVE%v
      OpenAD_lin_67 = NXHAT%v
      OpenAD_lin_68 = VAVE%v
      OpenAD_lin_69 = NYHAT%v
      OpenAD_lin_70 = WAVE%v
      OpenAD_lin_71 = NZHAT%v
      UTILDE%v = (NYHAT%v*WAVE%v-NZHAT%v*VAVE%v)
      OpenAD_lin_72 = WAVE%v
      OpenAD_lin_73 = NYHAT%v
      OpenAD_lin_74 = VAVE%v
      OpenAD_lin_75 = NZHAT%v
      VTILDE%v = (NZHAT%v*UAVE%v-NXHAT%v*WAVE%v)
      OpenAD_lin_76 = UAVE%v
      OpenAD_lin_77 = NZHAT%v
      OpenAD_lin_78 = WAVE%v
      OpenAD_lin_79 = NXHAT%v
      WTILDE%v = (NXHAT%v*VAVE%v-NYHAT%v*UAVE%v)
      OpenAD_lin_80 = VAVE%v
      OpenAD_lin_81 = NXHAT%v
      OpenAD_lin_82 = UAVE%v
      OpenAD_lin_83 = NYHAT%v
      LAMCM%v = (UHAT%v-CAVE%v)
      LAMU%v = UHAT%v
      LAMCP%v = (CAVE%v+UHAT%v)
      OpenAD_lin_84 = (CAVE%v+UHAT%v)
      DELTA%v = (NLEFIX%v*OpenAD_lin_84)
      OpenAD_lin_85 = OpenAD_lin_84
      OpenAD_lin_86 = NLEFIX%v
      DELTA2%v = (DELTA%v**2)
      OpenAD_lin_87 = (2*(DELTA%v**(2-INT(1_w2f__i8))))
      LAM2%v = (LAMCM%v**2)
      OpenAD_lin_88 = (2*(LAMCM%v**(2-INT(1_w2f__i8))))
      OpenAD_acc_20 = (OpenAD_lin_85*OpenAD_lin_87)
      OpenAD_acc_21 = (OpenAD_lin_86*OpenAD_lin_87)
      OpenAD_acc_22 = (OpenAD_lin_74*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_75*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_78*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_79*INT((-1_w2f__i8)))
      OpenAD_acc_26 = (OpenAD_lin_82*INT((-1_w2f__i8)))
      OpenAD_acc_27 = (OpenAD_lin_83*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_4,CAVE)
      CALL sax(OpenAD_lin_65,OpenAD_prp_4,CAVE)
      CALL sax(OpenAD_lin_72,NYHAT,UTILDE)
      CALL saxpy(OpenAD_lin_73,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_22,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_23,VAVE,UTILDE)
      CALL sax(OpenAD_lin_76,NZHAT,VTILDE)
      CALL saxpy(OpenAD_lin_77,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_24,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_25,WAVE,VTILDE)
      CALL sax(OpenAD_lin_80,NXHAT,WTILDE)
      CALL saxpy(OpenAD_lin_81,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_26,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_27,UAVE,WTILDE)
      CALL sax(OpenAD_lin_66,NXHAT,UHAT)
      CALL saxpy(OpenAD_lin_67,UAVE,UHAT)
      CALL saxpy(OpenAD_lin_68,NYHAT,UHAT)
      CALL saxpy(OpenAD_lin_69,VAVE,UHAT)
      CALL saxpy(OpenAD_lin_70,NZHAT,UHAT)
      CALL saxpy(OpenAD_lin_71,WAVE,UHAT)
      CALL setderiv(LAMCM,UHAT)
      CALL dec_deriv(LAMCM,CAVE)
      CALL setderiv(LAMU,UHAT)
      CALL setderiv(LAMCP,CAVE)
      CALL inc_deriv(LAMCP,UHAT)
      CALL setderiv(OpenAD_prp_5,CAVE)
      CALL inc_deriv(OpenAD_prp_5,UHAT)
      CALL sax(OpenAD_lin_88,LAMCM,LAM2)
      CALL sax(OpenAD_acc_20,NLEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_21,OpenAD_prp_5,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCM%v = LAMCM%v
        CALL setderiv(ALAMCM,LAMCM)
      ELSE
        OpenAD_lin_287 = (DELTA2%v+LAM2%v)
        OpenAD_lin_284 = (OpenAD_lin_287*5.0D-01)
        ALAMCM%v = (OpenAD_lin_284/DELTA2%v)
        OpenAD_lin_285 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_286 = (-(OpenAD_lin_284/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_80 = (5.0D-01*OpenAD_lin_285)
        CALL setderiv(OpenAD_prp_31,DELTA2)
        CALL inc_deriv(OpenAD_prp_31,LAM2)
        CALL sax(OpenAD_lin_286,DELTA2,ALAMCM)
        CALL saxpy(OpenAD_acc_80,OpenAD_prp_31,ALAMCM)
      ENDIF
      LAM2%v = (LAMCP%v**2)
      OpenAD_lin_89 = (2*(LAMCP%v**(2-INT(1_w2f__i8))))
      CALL sax(OpenAD_lin_89,LAMCP,LAM2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCP%v = LAMCP%v
        CALL setderiv(ALAMCP,LAMCP)
      ELSE
        OpenAD_lin_283 = (DELTA2%v+LAM2%v)
        OpenAD_lin_280 = (OpenAD_lin_283*5.0D-01)
        ALAMCP%v = (OpenAD_lin_280/DELTA2%v)
        OpenAD_lin_281 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_282 = (-(OpenAD_lin_280/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_79 = (5.0D-01*OpenAD_lin_281)
        CALL setderiv(OpenAD_prp_30,DELTA2)
        CALL inc_deriv(OpenAD_prp_30,LAM2)
        CALL sax(OpenAD_lin_282,DELTA2,ALAMCP)
        CALL saxpy(OpenAD_acc_79,OpenAD_prp_30,ALAMCP)
      ENDIF
      OpenAD_lin_90 = (CAVE%v+UHAT%v)
      DELTA%v = (LEFIX%v*OpenAD_lin_90)
      OpenAD_lin_91 = OpenAD_lin_90
      OpenAD_lin_92 = LEFIX%v
      DELTA2%v = (DELTA%v*DELTA%v)
      OpenAD_lin_93 = DELTA%v
      OpenAD_lin_94 = DELTA%v
      LAM2%v = (LAMU%v**2)
      OpenAD_lin_95 = (2*(LAMU%v**(2-INT(1_w2f__i8))))
      OpenAD_acc_28 = (OpenAD_lin_93+OpenAD_lin_94)
      OpenAD_acc_29 = (OpenAD_lin_91*OpenAD_acc_28)
      OpenAD_acc_30 = (OpenAD_lin_92*OpenAD_acc_28)
      CALL setderiv(OpenAD_prp_6,CAVE)
      CALL inc_deriv(OpenAD_prp_6,UHAT)
      CALL sax(OpenAD_lin_95,LAMU,LAM2)
      CALL sax(OpenAD_acc_29,LEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_30,OpenAD_prp_6,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMU%v = LAMU%v
        CALL setderiv(ALAMU,LAMU)
      ELSE
        OpenAD_lin_279 = (DELTA2%v+LAM2%v)
        OpenAD_lin_276 = (OpenAD_lin_279*5.0D-01)
        ALAMU%v = (OpenAD_lin_276/DELTA2%v)
        OpenAD_lin_277 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_278 = (-(OpenAD_lin_276/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_78 = (5.0D-01*OpenAD_lin_277)
        CALL setderiv(OpenAD_prp_29,DELTA2)
        CALL inc_deriv(OpenAD_prp_29,LAM2)
        CALL sax(OpenAD_lin_278,DELTA2,ALAMU)
        CALL saxpy(OpenAD_acc_78,OpenAD_prp_29,ALAMU)
      ENDIF
      OpenAD_lin_96 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_lin_96*5.0D-01)
      OpenAD_lin_97 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_lin_97*5.0D-01)
      OpenAD_lin_98 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_lin_98*5.0D-01)
      EL%v = (PRIML(1)%v*GM1INV%v+PRIML(2)%v*THETAL%v)
      OpenAD_lin_99 = GM1INV%v
      OpenAD_lin_100 = PRIML(1)%v
      OpenAD_lin_101 = THETAL%v
      OpenAD_lin_102 = PRIML(2)%v
      RUL%v = (PRIML(2)%v*PRIML(3)%v)
      OpenAD_lin_103 = PRIML(3)%v
      OpenAD_lin_104 = PRIML(2)%v
      RVL%v = (PRIML(2)%v*PRIML(4)%v)
      OpenAD_lin_105 = PRIML(4)%v
      OpenAD_lin_106 = PRIML(2)%v
      RWL%v = (PRIML(2)%v*PRIML(5)%v)
      OpenAD_lin_107 = PRIML(5)%v
      OpenAD_lin_108 = PRIML(2)%v
      ER%v = (PRIMR(1)%v*GM1INV%v+PRIMR(2)%v*THETAR%v)
      OpenAD_lin_109 = GM1INV%v
      OpenAD_lin_110 = PRIMR(1)%v
      OpenAD_lin_111 = THETAR%v
      OpenAD_lin_112 = PRIMR(2)%v
      RUR%v = (PRIMR(2)%v*PRIMR(3)%v)
      OpenAD_lin_113 = PRIMR(3)%v
      OpenAD_lin_114 = PRIMR(2)%v
      RVR%v = (PRIMR(2)%v*PRIMR(4)%v)
      OpenAD_lin_115 = PRIMR(4)%v
      OpenAD_lin_116 = PRIMR(2)%v
      RWR%v = (PRIMR(2)%v*PRIMR(5)%v)
      OpenAD_lin_117 = PRIMR(5)%v
      OpenAD_lin_118 = PRIMR(2)%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR(2)%v-PRIML(2)%v)
      DRU%v = (RUR%v-RUL%v)
      DRV%v = (RVR%v-RVL%v)
      DRW%v = (RWR%v-RWL%v)
      UDDRU%v = (DRU%v*UAVE%v+DRV%v*VAVE%v+DRW%v*WAVE%v)
      OpenAD_lin_119 = UAVE%v
      OpenAD_lin_120 = DRU%v
      OpenAD_lin_121 = VAVE%v
      OpenAD_lin_122 = DRV%v
      OpenAD_lin_123 = WAVE%v
      OpenAD_lin_124 = DRW%v
      OpenAD_lin_125 = (GM1%v/CAVE%v)
      OpenAD_lin_126 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_lin_125*OpenAD_lin_126)
      OpenAD_lin_129 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_130 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_127 = OpenAD_lin_126
      OpenAD_lin_131 = THTAVE%v
      OpenAD_lin_132 = DR%v
      OpenAD_lin_128 = OpenAD_lin_125
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_lin_133 = NXHAT%v
      OpenAD_lin_134 = DRU%v
      OpenAD_lin_135 = NYHAT%v
      OpenAD_lin_136 = DRV%v
      OpenAD_lin_137 = NZHAT%v
      OpenAD_lin_138 = DRW%v
      OpenAD_lin_139 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_lin_139*5.0D-01)
      OpenAD_lin_140 = UHAT%v
      OpenAD_lin_141 = DR%v
      OpenAD_lin_144 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_lin_149 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_lin_144+OMEGA%v*OpenAD_lin_149
     +-DRV%v*NZHAT%v)
      OpenAD_lin_142 = NYHAT%v
      OpenAD_lin_143 = DRW%v
      OpenAD_lin_145 = OpenAD_lin_144
      OpenAD_lin_147 = NXHAT%v
      OpenAD_lin_148 = CAVE%v
      OpenAD_lin_146 = DR%v
      OpenAD_lin_150 = OpenAD_lin_149
      OpenAD_lin_151 = OMEGA%v
      OpenAD_lin_152 = NZHAT%v
      OpenAD_lin_153 = DRV%v
      OpenAD_lin_156 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_lin_161 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_lin_156+OMEGA%v*OpenAD_lin_161
     +-DRW%v*NXHAT%v)
      OpenAD_lin_154 = NZHAT%v
      OpenAD_lin_155 = DRU%v
      OpenAD_lin_157 = OpenAD_lin_156
      OpenAD_lin_159 = NYHAT%v
      OpenAD_lin_160 = CAVE%v
      OpenAD_lin_158 = DR%v
      OpenAD_lin_162 = OpenAD_lin_161
      OpenAD_lin_163 = OMEGA%v
      OpenAD_lin_164 = NXHAT%v
      OpenAD_lin_165 = DRW%v
      OpenAD_lin_168 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_lin_173 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_lin_168+OMEGA%v*OpenAD_lin_173
     +-DRU%v*NYHAT%v)
      OpenAD_lin_166 = NXHAT%v
      OpenAD_lin_167 = DRV%v
      OpenAD_lin_169 = OpenAD_lin_168
      OpenAD_lin_171 = NZHAT%v
      OpenAD_lin_172 = CAVE%v
      OpenAD_lin_170 = DR%v
      OpenAD_lin_174 = OpenAD_lin_173
      OpenAD_lin_175 = OMEGA%v
      OpenAD_lin_176 = NYHAT%v
      OpenAD_lin_177 = DRU%v
      OpenAD_lin_178 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_lin_178*5.0D-01)
      OpenAD_lin_179 = UHAT%v
      OpenAD_lin_180 = DR%v
      OpenAD_acc_31 = (OpenAD_lin_129*OpenAD_lin_127)
      OpenAD_acc_32 = (OpenAD_lin_130*OpenAD_lin_127)
      OpenAD_acc_33 = (OpenAD_lin_119*INT((-1_w2f__i8)))
      OpenAD_acc_34 = (OpenAD_lin_120*INT((-1_w2f__i8)))
      OpenAD_acc_35 = (OpenAD_lin_121*INT((-1_w2f__i8)))
      OpenAD_acc_36 = (OpenAD_lin_122*INT((-1_w2f__i8)))
      OpenAD_acc_37 = (OpenAD_lin_123*INT((-1_w2f__i8)))
      OpenAD_acc_38 = (OpenAD_lin_124*INT((-1_w2f__i8)))
      OpenAD_acc_39 = (INT((-1_w2f__i8))*OpenAD_lin_151)
      OpenAD_acc_40 = (OpenAD_lin_152*INT((-1_w2f__i8)))
      OpenAD_acc_41 = (OpenAD_lin_153*INT((-1_w2f__i8)))
      OpenAD_acc_42 = (INT((-1_w2f__i8))*OpenAD_lin_163)
      OpenAD_acc_43 = (OpenAD_lin_164*INT((-1_w2f__i8)))
      OpenAD_acc_44 = (OpenAD_lin_165*INT((-1_w2f__i8)))
      OpenAD_acc_45 = (INT((-1_w2f__i8))*OpenAD_lin_175)
      OpenAD_acc_46 = (OpenAD_lin_176*INT((-1_w2f__i8)))
      OpenAD_acc_47 = (OpenAD_lin_177*INT((-1_w2f__i8)))
      OpenAD_acc_48 = (OpenAD_lin_179*INT((-1_w2f__i8)))
      OpenAD_acc_49 = (OpenAD_lin_180*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_7,ALAMCM)
      CALL setderiv(OpenAD_prp_8,ALAMCP)
      CALL setderiv(OpenAD_prp_9,ALAMU)
      CALL setderiv(OpenAD_prp_10,LAMCM)
      CALL dec_deriv(OpenAD_prp_10,OpenAD_prp_7)
      CALL setderiv(OpenAD_prp_11,LAMCP)
      CALL dec_deriv(OpenAD_prp_11,OpenAD_prp_8)
      CALL setderiv(OpenAD_prp_12,LAMU)
      CALL dec_deriv(OpenAD_prp_12,OpenAD_prp_9)
      CALL sax(OpenAD_lin_103,PRIML(2),RUL)
      CALL saxpy(OpenAD_lin_104,PRIML(3),RUL)
      CALL sax(OpenAD_lin_105,PRIML(2),RVL)
      CALL saxpy(OpenAD_lin_106,PRIML(4),RVL)
      CALL sax(OpenAD_lin_107,PRIML(2),RWL)
      CALL saxpy(OpenAD_lin_108,PRIML(5),RWL)
      CALL setderiv(DR,PRIMR(2))
      CALL dec_deriv(DR,PRIML(2))
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_lin_113,PRIMR(2),DRU)
      CALL saxpy(OpenAD_lin_114,PRIMR(3),DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_lin_115,PRIMR(2),DRV)
      CALL saxpy(OpenAD_lin_116,PRIMR(4),DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_lin_117,PRIMR(2),DRW)
      CALL saxpy(OpenAD_lin_118,PRIMR(5),DRW)
      CALL sax(5.0D-01,OpenAD_prp_10,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prp_11,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prp_12,ALAMU)
      CALL sax(OpenAD_lin_99,PRIML(1),EL)
      CALL saxpy(OpenAD_lin_100,GM1INV,EL)
      CALL saxpy(OpenAD_lin_101,PRIML(2),EL)
      CALL saxpy(OpenAD_lin_102,THETAL,EL)
      CALL set_neg_deriv(OpenAD_prp_13,UTILDE)
      CALL saxpy(OpenAD_lin_147,CAVE,OpenAD_prp_13)
      CALL saxpy(OpenAD_lin_148,NXHAT,OpenAD_prp_13)
      CALL set_neg_deriv(OpenAD_prp_14,VTILDE)
      CALL saxpy(OpenAD_lin_159,CAVE,OpenAD_prp_14)
      CALL saxpy(OpenAD_lin_160,NYHAT,OpenAD_prp_14)
      CALL set_neg_deriv(OpenAD_prp_15,WTILDE)
      CALL saxpy(OpenAD_lin_171,CAVE,OpenAD_prp_15)
      CALL saxpy(OpenAD_lin_172,NZHAT,OpenAD_prp_15)
      CALL set_neg_deriv(OpenAD_prp_16,EL)
      CALL saxpy(OpenAD_lin_109,PRIMR(1),OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_110,GM1INV,OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_111,PRIMR(2),OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_112,THETAR,OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_131,DR,OpenAD_prp_16)
      CALL saxpy(OpenAD_lin_132,THTAVE,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_33,DRU,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_34,UAVE,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_35,DRV,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_36,VAVE,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_37,DRW,OpenAD_prp_16)
      CALL saxpy(OpenAD_acc_38,WAVE,OpenAD_prp_16)
      CALL sax(OpenAD_lin_133,DRU,NDDRU)
      CALL saxpy(OpenAD_lin_134,NXHAT,NDDRU)
      CALL saxpy(OpenAD_lin_135,DRV,NDDRU)
      CALL saxpy(OpenAD_lin_136,NYHAT,NDDRU)
      CALL saxpy(OpenAD_lin_137,DRW,NDDRU)
      CALL saxpy(OpenAD_lin_138,NZHAT,NDDRU)
      CALL sax(OpenAD_lin_128,OpenAD_prp_16,OMEGA)
      CALL saxpy(OpenAD_acc_31,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_32,CAVE,OMEGA)
      CALL setderiv(OpenAD_prp_17,OMEGA)
      CALL dec_deriv(OpenAD_prp_17,NDDRU)
      CALL saxpy(OpenAD_lin_140,DR,OpenAD_prp_17)
      CALL saxpy(OpenAD_lin_141,UHAT,OpenAD_prp_17)
      CALL setderiv(OpenAD_prp_18,NDDRU)
      CALL inc_deriv(OpenAD_prp_18,OMEGA)
      CALL saxpy(OpenAD_acc_48,DR,OpenAD_prp_18)
      CALL saxpy(OpenAD_acc_49,UHAT,OpenAD_prp_18)
      CALL sax(5.0D-01,OpenAD_prp_17,ALP1)
      CALL sax(5.0D-01,OpenAD_prp_18,ALP5)
      CALL sax(OpenAD_lin_142,DRW,ALP2)
      CALL saxpy(OpenAD_lin_143,NYHAT,ALP2)
      CALL saxpy(OpenAD_lin_145,DR,ALP2)
      CALL saxpy(OpenAD_lin_146,OpenAD_prp_13,ALP2)
      CALL saxpy(OpenAD_lin_150,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_39,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_40,DRV,ALP2)
      CALL saxpy(OpenAD_acc_41,NZHAT,ALP2)
      CALL sax(OpenAD_lin_154,DRU,ALP3)
      CALL saxpy(OpenAD_lin_155,NZHAT,ALP3)
      CALL saxpy(OpenAD_lin_157,DR,ALP3)
      CALL saxpy(OpenAD_lin_158,OpenAD_prp_14,ALP3)
      CALL saxpy(OpenAD_lin_162,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_42,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_43,DRW,ALP3)
      CALL saxpy(OpenAD_acc_44,NXHAT,ALP3)
      CALL sax(OpenAD_lin_166,DRV,ALP4)
      CALL saxpy(OpenAD_lin_167,NXHAT,ALP4)
      CALL saxpy(OpenAD_lin_169,DR,ALP4)
      CALL saxpy(OpenAD_lin_170,OpenAD_prp_15,ALP4)
      CALL saxpy(OpenAD_lin_174,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_46,DRU,ALP4)
      CALL saxpy(OpenAD_acc_47,NYHAT,ALP4)
      OpenAD_dly_1 = (ALAMCM%v*ALP1%v)
      OpenAD_lin_181 = ALP1%v
      OpenAD_lin_182 = ALAMCM%v
      ALP1%v = OpenAD_dly_1
      OpenAD_dly_2 = (ALAMU%v*ALP2%v)
      OpenAD_lin_183 = ALP2%v
      OpenAD_lin_184 = ALAMU%v
      ALP2%v = OpenAD_dly_2
      OpenAD_dly_3 = (ALAMU%v*ALP3%v)
      OpenAD_lin_185 = ALP3%v
      OpenAD_lin_186 = ALAMU%v
      ALP3%v = OpenAD_dly_3
      OpenAD_dly_4 = (ALAMU%v*ALP4%v)
      OpenAD_lin_187 = ALP4%v
      OpenAD_lin_188 = ALAMU%v
      ALP4%v = OpenAD_dly_4
      OpenAD_dly_5 = (ALAMCP%v*ALP5%v)
      OpenAD_lin_189 = ALP5%v
      OpenAD_lin_190 = ALAMCP%v
      ALP5%v = OpenAD_dly_5
      ALP15P%v = (ALP1%v+ALP5%v)
      ALP15M%v = (ALP1%v-ALP5%v)
      MU%v = ((ALP15P%v/CAVE%v)+ALP2%v*NXHAT%v+ALP3%v*NYHAT%v+ALP4%v*NZH
     +AT%v)
      OpenAD_lin_191 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_192 = (-(ALP15P%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_193 = NXHAT%v
      OpenAD_lin_194 = ALP2%v
      OpenAD_lin_195 = NYHAT%v
      OpenAD_lin_196 = ALP3%v
      OpenAD_lin_197 = NZHAT%v
      OpenAD_lin_198 = ALP4%v
      OpenAD_lin_201 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_lin_201-ALP15M%v*UHAT%v+AL
     +P2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_lin_199 = THTAVE%v
      OpenAD_lin_200 = MU%v
      OpenAD_lin_202 = OpenAD_lin_201
      OpenAD_lin_204 = CAVE%v
      OpenAD_lin_205 = GM1INV%v
      OpenAD_lin_203 = ALP15P%v
      OpenAD_lin_206 = UHAT%v
      OpenAD_lin_207 = ALP15M%v
      OpenAD_lin_208 = UTILDE%v
      OpenAD_lin_209 = ALP2%v
      OpenAD_lin_210 = VTILDE%v
      OpenAD_lin_211 = ALP3%v
      OpenAD_lin_212 = WTILDE%v
      OpenAD_lin_213 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_lin_214 = NZHAT%v
      OpenAD_lin_215 = ALP3%v
      OpenAD_lin_216 = UAVE%v
      OpenAD_lin_217 = MU%v
      OpenAD_lin_218 = NXHAT%v
      OpenAD_lin_219 = ALP15M%v
      OpenAD_lin_220 = NYHAT%v
      OpenAD_lin_221 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_lin_222 = NXHAT%v
      OpenAD_lin_223 = ALP4%v
      OpenAD_lin_224 = VAVE%v
      OpenAD_lin_225 = MU%v
      OpenAD_lin_226 = NYHAT%v
      OpenAD_lin_227 = ALP15M%v
      OpenAD_lin_228 = NZHAT%v
      OpenAD_lin_229 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_lin_230 = NYHAT%v
      OpenAD_lin_231 = ALP2%v
      OpenAD_lin_232 = WAVE%v
      OpenAD_lin_233 = MU%v
      OpenAD_lin_234 = NZHAT%v
      OpenAD_lin_235 = ALP15M%v
      OpenAD_lin_236 = NXHAT%v
      OpenAD_lin_237 = ALP3%v
      UHATL%v = (PRIML(3)%v*NXHAT%v+PRIML(4)%v*NYHAT%v+PRIML(5)%v*NZHAT%
     +v)
      OpenAD_lin_238 = NXHAT%v
      OpenAD_lin_239 = PRIML(3)%v
      OpenAD_lin_240 = NYHAT%v
      OpenAD_lin_241 = PRIML(4)%v
      OpenAD_lin_242 = NZHAT%v
      OpenAD_lin_243 = PRIML(5)%v
      OpenAD_lin_247 = (PRIML(1)%v+EL%v)
      OpenAD_lin_244 = (DSS1%v+UHATL%v*OpenAD_lin_247)
      FLUX(1)%v = (NSIZE%v*OpenAD_lin_244)
      OpenAD_lin_245 = OpenAD_lin_244
      OpenAD_lin_248 = OpenAD_lin_247
      OpenAD_lin_249 = UHATL%v
      OpenAD_lin_246 = NSIZE%v
      OpenAD_acc_50 = (OpenAD_lin_248*OpenAD_lin_246)
      OpenAD_acc_51 = (OpenAD_lin_249*OpenAD_lin_246)
      OpenAD_acc_52 = (OpenAD_lin_212*OpenAD_lin_246)
      OpenAD_acc_53 = (OpenAD_lin_213*OpenAD_lin_246)
      OpenAD_acc_54 = (OpenAD_lin_210*OpenAD_lin_246)
      OpenAD_acc_55 = (OpenAD_lin_211*OpenAD_lin_246)
      OpenAD_acc_56 = (OpenAD_lin_208*OpenAD_lin_246)
      OpenAD_acc_57 = (OpenAD_lin_209*OpenAD_lin_246)
      OpenAD_acc_58 = (OpenAD_lin_199*OpenAD_lin_246)
      OpenAD_acc_59 = (OpenAD_lin_200*OpenAD_lin_246)
      OpenAD_acc_60 = (OpenAD_lin_202*OpenAD_lin_246)
      OpenAD_acc_61 = (OpenAD_lin_204*OpenAD_lin_203*OpenAD_lin_246)
      OpenAD_acc_62 = (OpenAD_lin_205*OpenAD_lin_203*OpenAD_lin_246)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_lin_246)
      OpenAD_acc_64 = (OpenAD_lin_206*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_207*OpenAD_acc_63)
      OpenAD_acc_66 = (OpenAD_lin_220*INT((-1_w2f__i8)))
      OpenAD_acc_67 = (OpenAD_lin_221*INT((-1_w2f__i8)))
      OpenAD_acc_68 = (OpenAD_lin_228*INT((-1_w2f__i8)))
      OpenAD_acc_69 = (OpenAD_lin_229*INT((-1_w2f__i8)))
      OpenAD_acc_70 = (OpenAD_lin_236*INT((-1_w2f__i8)))
      OpenAD_acc_71 = (OpenAD_lin_237*INT((-1_w2f__i8)))
      OpenAD_acc_72 = (OpenAD_lin_234*INT((-1_w2f__i8)))
      OpenAD_acc_73 = (OpenAD_lin_235*INT((-1_w2f__i8)))
      OpenAD_acc_74 = (OpenAD_lin_226*INT((-1_w2f__i8)))
      OpenAD_acc_75 = (OpenAD_lin_227*INT((-1_w2f__i8)))
      OpenAD_acc_76 = (OpenAD_lin_218*INT((-1_w2f__i8)))
      OpenAD_acc_77 = (OpenAD_lin_219*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_19,ALP1)
      CALL setderiv(OpenAD_prp_20,ALP2)
      CALL setderiv(OpenAD_prp_21,ALP3)
      CALL setderiv(OpenAD_prp_22,ALP4)
      CALL setderiv(OpenAD_prp_23,ALP5)
      CALL sax(OpenAD_lin_181,ALAMCM,ALP1)
      CALL saxpy(OpenAD_lin_182,OpenAD_prp_19,ALP1)
      CALL sax(OpenAD_lin_183,ALAMU,ALP2)
      CALL saxpy(OpenAD_lin_184,OpenAD_prp_20,ALP2)
      CALL sax(OpenAD_lin_185,ALAMU,ALP3)
      CALL saxpy(OpenAD_lin_186,OpenAD_prp_21,ALP3)
      CALL sax(OpenAD_lin_187,ALAMU,ALP4)
      CALL saxpy(OpenAD_lin_188,OpenAD_prp_22,ALP4)
      CALL sax(OpenAD_lin_189,ALAMCP,ALP5)
      CALL saxpy(OpenAD_lin_190,OpenAD_prp_23,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prp_24,PRIML(1))
      CALL inc_deriv(OpenAD_prp_24,EL)
      CALL sax(OpenAD_lin_238,PRIML(3),UHATL)
      CALL saxpy(OpenAD_lin_239,NXHAT,UHATL)
      CALL saxpy(OpenAD_lin_240,PRIML(4),UHATL)
      CALL saxpy(OpenAD_lin_241,NYHAT,UHATL)
      CALL saxpy(OpenAD_lin_242,PRIML(5),UHATL)
      CALL saxpy(OpenAD_lin_243,NZHAT,UHATL)
      CALL sax(OpenAD_lin_191,ALP15P,MU)
      CALL saxpy(OpenAD_lin_192,CAVE,MU)
      CALL saxpy(OpenAD_lin_193,ALP2,MU)
      CALL saxpy(OpenAD_lin_194,NXHAT,MU)
      CALL saxpy(OpenAD_lin_195,ALP3,MU)
      CALL saxpy(OpenAD_lin_196,NYHAT,MU)
      CALL saxpy(OpenAD_lin_197,ALP4,MU)
      CALL saxpy(OpenAD_lin_198,NZHAT,MU)
      CALL setderiv(DSS2,MU)
      CALL sax(OpenAD_lin_216,MU,DSS3)
      CALL saxpy(OpenAD_lin_217,UAVE,DSS3)
      CALL saxpy(OpenAD_acc_66,ALP4,DSS3)
      CALL saxpy(OpenAD_acc_67,NYHAT,DSS3)
      CALL saxpy(OpenAD_lin_214,ALP3,DSS3)
      CALL saxpy(OpenAD_lin_215,NZHAT,DSS3)
      CALL saxpy(OpenAD_acc_76,ALP15M,DSS3)
      CALL saxpy(OpenAD_acc_77,NXHAT,DSS3)
      CALL sax(OpenAD_lin_224,MU,DSS4)
      CALL saxpy(OpenAD_lin_225,VAVE,DSS4)
      CALL saxpy(OpenAD_acc_68,ALP2,DSS4)
      CALL saxpy(OpenAD_acc_69,NZHAT,DSS4)
      CALL saxpy(OpenAD_lin_222,ALP4,DSS4)
      CALL saxpy(OpenAD_lin_223,NXHAT,DSS4)
      CALL saxpy(OpenAD_acc_74,ALP15M,DSS4)
      CALL saxpy(OpenAD_acc_75,NYHAT,DSS4)
      CALL sax(OpenAD_lin_232,MU,DSS5)
      CALL saxpy(OpenAD_lin_233,WAVE,DSS5)
      CALL saxpy(OpenAD_acc_70,ALP3,DSS5)
      CALL saxpy(OpenAD_acc_71,NXHAT,DSS5)
      CALL saxpy(OpenAD_lin_230,ALP2,DSS5)
      CALL saxpy(OpenAD_lin_231,NYHAT,DSS5)
      CALL saxpy(OpenAD_acc_72,ALP15M,DSS5)
      CALL saxpy(OpenAD_acc_73,NZHAT,DSS5)
      CALL sax(OpenAD_lin_245,NSIZE,FLUX(1))
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
      OpenAD_lin_250 = (DSS2%v+PRIML(2)%v*UHATL%v)
      FLUX(2)%v = (NSIZE%v*OpenAD_lin_250)
      OpenAD_lin_251 = OpenAD_lin_250
      OpenAD_lin_253 = UHATL%v
      OpenAD_lin_254 = PRIML(2)%v
      OpenAD_lin_252 = NSIZE%v
      CALL setderiv(OpenAD_prp_25,DSS2)
      CALL saxpy(OpenAD_lin_253,PRIML(2),OpenAD_prp_25)
      CALL saxpy(OpenAD_lin_254,UHATL,OpenAD_prp_25)
      CALL sax(OpenAD_lin_251,NSIZE,FLUX(2))
      CALL saxpy(OpenAD_lin_252,OpenAD_prp_25,FLUX(2))
      OpenAD_lin_255 = (DSS3%v+PRIML(1)%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX(3)%v = (NSIZE%v*OpenAD_lin_255)
      OpenAD_lin_256 = OpenAD_lin_255
      OpenAD_lin_258 = NXHAT%v
      OpenAD_lin_259 = PRIML(1)%v
      OpenAD_lin_260 = UHATL%v
      OpenAD_lin_261 = RUL%v
      OpenAD_lin_257 = NSIZE%v
      CALL setderiv(OpenAD_prp_26,DSS3)
      CALL saxpy(OpenAD_lin_258,PRIML(1),OpenAD_prp_26)
      CALL saxpy(OpenAD_lin_259,NXHAT,OpenAD_prp_26)
      CALL saxpy(OpenAD_lin_260,RUL,OpenAD_prp_26)
      CALL saxpy(OpenAD_lin_261,UHATL,OpenAD_prp_26)
      CALL sax(OpenAD_lin_256,NSIZE,FLUX(3))
      CALL saxpy(OpenAD_lin_257,OpenAD_prp_26,FLUX(3))
      OpenAD_lin_262 = (DSS4%v+PRIML(1)%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX(4)%v = (NSIZE%v*OpenAD_lin_262)
      OpenAD_lin_263 = OpenAD_lin_262
      OpenAD_lin_265 = NYHAT%v
      OpenAD_lin_266 = PRIML(1)%v
      OpenAD_lin_267 = UHATL%v
      OpenAD_lin_268 = RVL%v
      OpenAD_lin_264 = NSIZE%v
      CALL setderiv(OpenAD_prp_27,DSS4)
      CALL saxpy(OpenAD_lin_265,PRIML(1),OpenAD_prp_27)
      CALL saxpy(OpenAD_lin_266,NYHAT,OpenAD_prp_27)
      CALL saxpy(OpenAD_lin_267,RVL,OpenAD_prp_27)
      CALL saxpy(OpenAD_lin_268,UHATL,OpenAD_prp_27)
      CALL sax(OpenAD_lin_263,NSIZE,FLUX(4))
      CALL saxpy(OpenAD_lin_264,OpenAD_prp_27,FLUX(4))
      OpenAD_lin_269 = (DSS5%v+PRIML(1)%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX(5)%v = (NSIZE%v*OpenAD_lin_269)
      OpenAD_lin_270 = OpenAD_lin_269
      OpenAD_lin_272 = NZHAT%v
      OpenAD_lin_273 = PRIML(1)%v
      OpenAD_lin_274 = UHATL%v
      OpenAD_lin_275 = RWL%v
      OpenAD_lin_271 = NSIZE%v
      CALL setderiv(OpenAD_prp_28,DSS5)
      CALL saxpy(OpenAD_lin_272,PRIML(1),OpenAD_prp_28)
      CALL saxpy(OpenAD_lin_273,NZHAT,OpenAD_prp_28)
      CALL saxpy(OpenAD_lin_274,RWL,OpenAD_prp_28)
      CALL saxpy(OpenAD_lin_275,UHATL,OpenAD_prp_28)
      CALL sax(OpenAD_lin_270,NSIZE,FLUX(5))
      CALL saxpy(OpenAD_lin_271,OpenAD_prp_28,FLUX(5))
      END SUBROUTINE
