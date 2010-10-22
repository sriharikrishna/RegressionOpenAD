
C$OPENAD XXX File_start [head.f]
      SUBROUTINE ad_roehf5(NRM1, NRM2, NRM3, PRIML1, PRIML2, PRIML3, PRI
     +ML4, PRIML5, PRIMR1, PRIMR2, PRIMR3, PRIMR4, PRIMR5, GAMMA, GM1, G
     +M1INV, NLEFIX, LEFIX, MCHEPS, FLUX1, FLUX2, FLUX3, FLUX4, FLUX5)
      use OAD_active
      use w2f__types
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
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_28
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
      OpenAD_lin_3 = (2*(NRM2%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_4 = (2*(NRM3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_1 = COS(OpenAD_lin_0)
      NSIZEI%v = (1.0D00/NSIZE%v)
      OpenAD_lin_5 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
      NXHAT%v = (NRM1%v*NSIZEI%v)
      OpenAD_lin_6 = NSIZEI%v
      OpenAD_lin_7 = NRM1%v
      NYHAT%v = (NRM2%v*NSIZEI%v)
      OpenAD_lin_8 = NSIZEI%v
      OpenAD_lin_9 = NRM2%v
      NZHAT%v = (NRM3%v*NSIZEI%v)
      OpenAD_lin_10 = NSIZEI%v
      OpenAD_lin_11 = NRM3%v
      OpenAD_lin_14 = (PRIMR2%v/PRIML2%v)
      OpenAD_lin_12 = (SIN(OpenAD_lin_14)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_lin_12)
      OpenAD_lin_16 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_lin_17 = (-(PRIMR2%v/(PRIML2%v*PRIML2%v)))
      OpenAD_lin_15 = COS(OpenAD_lin_14)
      OpenAD_lin_13 = (-(1.0D00/(OpenAD_lin_12*OpenAD_lin_12)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_lin_18 = ((PRIML3%v**2)+(PRIML4%v**2)+(PRIML5%v**2))
      THETAL%v = (OpenAD_lin_18*5.0D-01)
      OpenAD_lin_19 = (2*(PRIML3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_20 = (2*(PRIML4%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_21 = (2*(PRIML5%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_22 = ((PRIMR3%v**2)+(PRIMR4%v**2)+(PRIMR5%v**2))
      THETAR%v = (OpenAD_lin_22*5.0D-01)
      OpenAD_lin_23 = (2*(PRIMR3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_24 = (2*(PRIMR4%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_25 = (2*(PRIMR5%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_29 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_26 = (PRIML1%v*OpenAD_lin_29)
      HL%v = (THETAL%v+(OpenAD_lin_26/PRIML2%v))
      OpenAD_lin_30 = OpenAD_lin_29
      OpenAD_lin_32 = GM1INV%v
      OpenAD_lin_33 = GAMMA%v
      OpenAD_lin_31 = PRIML1%v
      OpenAD_lin_27 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_lin_28 = (-(OpenAD_lin_26/(PRIML2%v*PRIML2%v)))
      OpenAD_lin_37 = (GAMMA%v*GM1INV%v)
      OpenAD_lin_34 = (PRIMR1%v*OpenAD_lin_37)
      HR%v = (THETAR%v+(OpenAD_lin_34/PRIMR2%v))
      OpenAD_lin_38 = OpenAD_lin_37
      OpenAD_lin_40 = GM1INV%v
      OpenAD_lin_41 = GAMMA%v
      OpenAD_lin_39 = PRIMR1%v
      OpenAD_lin_35 = (INT(1_w2f__i8)/PRIMR2%v)
      OpenAD_lin_36 = (-(OpenAD_lin_34/(PRIMR2%v*PRIMR2%v)))
      UAVE%v = (PRIML3%v*ROEL%v+PRIMR3%v*ROER%v)
      OpenAD_lin_42 = ROEL%v
      OpenAD_lin_43 = PRIML3%v
      OpenAD_lin_44 = ROER%v
      OpenAD_lin_45 = PRIMR3%v
      VAVE%v = (PRIML4%v*ROEL%v+PRIMR4%v*ROER%v)
      OpenAD_lin_46 = ROEL%v
      OpenAD_lin_47 = PRIML4%v
      OpenAD_lin_48 = ROER%v
      OpenAD_lin_49 = PRIMR4%v
      WAVE%v = (PRIML5%v*ROEL%v+PRIMR5%v*ROER%v)
      OpenAD_lin_50 = ROEL%v
      OpenAD_lin_51 = PRIML5%v
      OpenAD_lin_52 = ROER%v
      OpenAD_lin_53 = PRIMR5%v
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
      OpenAD_acc_0 = (OpenAD_lin_39*OpenAD_lin_35)
      OpenAD_acc_1 = (OpenAD_lin_31*OpenAD_lin_27)
      OpenAD_acc_2 = (OpenAD_lin_5*OpenAD_lin_7)
      OpenAD_acc_3 = (OpenAD_lin_5*OpenAD_lin_9)
      OpenAD_acc_4 = (OpenAD_lin_5*OpenAD_lin_11)
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
      OpenAD_acc_15 = (OpenAD_lin_32*OpenAD_acc_1)
      OpenAD_acc_16 = (OpenAD_lin_33*OpenAD_acc_1)
      OpenAD_acc_17 = (OpenAD_lin_38*OpenAD_lin_35)
      OpenAD_acc_18 = (OpenAD_lin_40*OpenAD_acc_0)
      OpenAD_acc_19 = (OpenAD_lin_41*OpenAD_acc_0)
      CALL sax(OpenAD_lin_4,NRM3,OpenAD_prp_0)
      CALL saxpy(OpenAD_lin_2,NRM1,OpenAD_prp_0)
      CALL saxpy(OpenAD_lin_3,NRM2,OpenAD_prp_0)
      CALL sax(OpenAD_acc_12,PRIMR2,OpenAD_prp_1)
      CALL saxpy(OpenAD_acc_13,PRIML2,OpenAD_prp_1)
      CALL sax(OpenAD_lin_21,PRIML5,OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_19,PRIML3,OpenAD_prp_2)
      CALL saxpy(OpenAD_lin_20,PRIML4,OpenAD_prp_2)
      CALL sax(OpenAD_lin_25,PRIMR5,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_23,PRIMR3,OpenAD_prp_3)
      CALL saxpy(OpenAD_lin_24,PRIMR4,OpenAD_prp_3)
      CALL sax(OpenAD_lin_1,OpenAD_prp_0,NSIZE)
      CALL sax(OpenAD_lin_6,NRM1,NXHAT)
      CALL saxpy(OpenAD_acc_2,NSIZE,NXHAT)
      CALL sax(OpenAD_lin_8,NRM2,NYHAT)
      CALL saxpy(OpenAD_acc_3,NSIZE,NYHAT)
      CALL sax(OpenAD_lin_10,NRM3,NZHAT)
      CALL saxpy(OpenAD_acc_4,NSIZE,NZHAT)
      CALL sax(5.0D-01,OpenAD_prp_2,THETAL)
      CALL sax(5.0D-01,OpenAD_prp_3,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_lin_28,PRIML2,HL)
      CALL saxpy(OpenAD_acc_14,PRIML1,HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_lin_36,PRIMR2,HR)
      CALL saxpy(OpenAD_acc_17,PRIMR1,HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_lin_44,PRIMR3,UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prp_1,UAVE)
      CALL saxpy(OpenAD_lin_42,PRIML3,UAVE)
      CALL sax(OpenAD_lin_48,PRIMR4,VAVE)
      CALL saxpy(OpenAD_lin_46,PRIML4,VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prp_1,VAVE)
      CALL sax(OpenAD_lin_52,PRIMR5,WAVE)
      CALL saxpy(OpenAD_lin_50,PRIML5,WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prp_1,WAVE)
      CALL sax(OpenAD_lin_61,WAVE,OpenAD_prp_4)
      CALL saxpy(OpenAD_lin_60,VAVE,OpenAD_prp_4)
      CALL saxpy(OpenAD_lin_59,UAVE,OpenAD_prp_4)
      CALL sax(5.0D-01,OpenAD_prp_4,THTAVE)
      CALL sax(OpenAD_lin_63,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prp_4,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prp_1,CAVE)
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
      ALAMCM%v = LAMCM%v
      ALAMCP%v = LAMCP%v
      ALAMU%v = LAMU%v
      OpenAD_acc_20 = (OpenAD_lin_74*INT((-1_w2f__i8)))
      OpenAD_acc_21 = (OpenAD_lin_75*INT((-1_w2f__i8)))
      OpenAD_acc_22 = (OpenAD_lin_78*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_79*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_82*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_83*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_5,CAVE)
      CALL sax(OpenAD_lin_65,OpenAD_prp_5,CAVE)
      CALL sax(OpenAD_lin_72,NYHAT,UTILDE)
      CALL saxpy(OpenAD_lin_73,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_20,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_21,VAVE,UTILDE)
      CALL sax(OpenAD_lin_76,NZHAT,VTILDE)
      CALL saxpy(OpenAD_lin_77,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_22,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_23,WAVE,VTILDE)
      CALL sax(OpenAD_lin_80,NXHAT,WTILDE)
      CALL saxpy(OpenAD_lin_81,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_24,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_25,UAVE,WTILDE)
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
      CALL setderiv(ALAMCM,LAMCM)
      CALL setderiv(ALAMCP,LAMCP)
      CALL setderiv(ALAMU,LAMU)
      OpenAD_lin_84 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_lin_84*5.0D-01)
      OpenAD_lin_85 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_lin_85*5.0D-01)
      OpenAD_lin_86 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_lin_86*5.0D-01)
      EL%v = (PRIML1%v*GM1INV%v+PRIML2%v*THETAL%v)
      OpenAD_lin_87 = GM1INV%v
      OpenAD_lin_88 = PRIML1%v
      OpenAD_lin_89 = THETAL%v
      OpenAD_lin_90 = PRIML2%v
      RUL%v = (PRIML2%v*PRIML3%v)
      OpenAD_lin_91 = PRIML3%v
      OpenAD_lin_92 = PRIML2%v
      RVL%v = (PRIML2%v*PRIML4%v)
      OpenAD_lin_93 = PRIML4%v
      OpenAD_lin_94 = PRIML2%v
      RWL%v = (PRIML2%v*PRIML5%v)
      OpenAD_lin_95 = PRIML5%v
      OpenAD_lin_96 = PRIML2%v
      ER%v = (PRIMR1%v*GM1INV%v+PRIMR2%v*THETAR%v)
      OpenAD_lin_97 = GM1INV%v
      OpenAD_lin_98 = PRIMR1%v
      OpenAD_lin_99 = THETAR%v
      OpenAD_lin_100 = PRIMR2%v
      RUR%v = (PRIMR2%v*PRIMR3%v)
      OpenAD_lin_101 = PRIMR3%v
      OpenAD_lin_102 = PRIMR2%v
      RVR%v = (PRIMR2%v*PRIMR4%v)
      OpenAD_lin_103 = PRIMR4%v
      OpenAD_lin_104 = PRIMR2%v
      RWR%v = (PRIMR2%v*PRIMR5%v)
      OpenAD_lin_105 = PRIMR5%v
      OpenAD_lin_106 = PRIMR2%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR2%v-PRIML2%v)
      DRU%v = (RUR%v-RUL%v)
      DRV%v = (RVR%v-RVL%v)
      DRW%v = (RWR%v-RWL%v)
      UDDRU%v = (DRU%v*UAVE%v+DRV%v*VAVE%v+DRW%v*WAVE%v)
      OpenAD_lin_107 = UAVE%v
      OpenAD_lin_108 = DRU%v
      OpenAD_lin_109 = VAVE%v
      OpenAD_lin_110 = DRV%v
      OpenAD_lin_111 = WAVE%v
      OpenAD_lin_112 = DRW%v
      OpenAD_lin_113 = (GM1%v/CAVE%v)
      OpenAD_lin_114 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_lin_113*OpenAD_lin_114)
      OpenAD_lin_117 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_118 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_115 = OpenAD_lin_114
      OpenAD_lin_119 = THTAVE%v
      OpenAD_lin_120 = DR%v
      OpenAD_lin_116 = OpenAD_lin_113
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_lin_121 = NXHAT%v
      OpenAD_lin_122 = DRU%v
      OpenAD_lin_123 = NYHAT%v
      OpenAD_lin_124 = DRV%v
      OpenAD_lin_125 = NZHAT%v
      OpenAD_lin_126 = DRW%v
      OpenAD_lin_127 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_lin_127*5.0D-01)
      OpenAD_lin_128 = UHAT%v
      OpenAD_lin_129 = DR%v
      OpenAD_lin_132 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_lin_137 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_lin_132+OMEGA%v*OpenAD_lin_137
     +-DRV%v*NZHAT%v)
      OpenAD_lin_130 = NYHAT%v
      OpenAD_lin_131 = DRW%v
      OpenAD_lin_133 = OpenAD_lin_132
      OpenAD_lin_135 = NXHAT%v
      OpenAD_lin_136 = CAVE%v
      OpenAD_lin_134 = DR%v
      OpenAD_lin_138 = OpenAD_lin_137
      OpenAD_lin_139 = OMEGA%v
      OpenAD_lin_140 = NZHAT%v
      OpenAD_lin_141 = DRV%v
      OpenAD_lin_144 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_lin_149 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_lin_144+OMEGA%v*OpenAD_lin_149
     +-DRW%v*NXHAT%v)
      OpenAD_lin_142 = NZHAT%v
      OpenAD_lin_143 = DRU%v
      OpenAD_lin_145 = OpenAD_lin_144
      OpenAD_lin_147 = NYHAT%v
      OpenAD_lin_148 = CAVE%v
      OpenAD_lin_146 = DR%v
      OpenAD_lin_150 = OpenAD_lin_149
      OpenAD_lin_151 = OMEGA%v
      OpenAD_lin_152 = NXHAT%v
      OpenAD_lin_153 = DRW%v
      OpenAD_lin_156 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_lin_161 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_lin_156+OMEGA%v*OpenAD_lin_161
     +-DRU%v*NYHAT%v)
      OpenAD_lin_154 = NXHAT%v
      OpenAD_lin_155 = DRV%v
      OpenAD_lin_157 = OpenAD_lin_156
      OpenAD_lin_159 = NZHAT%v
      OpenAD_lin_160 = CAVE%v
      OpenAD_lin_158 = DR%v
      OpenAD_lin_162 = OpenAD_lin_161
      OpenAD_lin_163 = OMEGA%v
      OpenAD_lin_164 = NYHAT%v
      OpenAD_lin_165 = DRU%v
      OpenAD_lin_166 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_lin_166*5.0D-01)
      OpenAD_lin_167 = UHAT%v
      OpenAD_lin_168 = DR%v
      OpenAD_acc_26 = (OpenAD_lin_117*OpenAD_lin_115)
      OpenAD_acc_27 = (OpenAD_lin_118*OpenAD_lin_115)
      OpenAD_acc_28 = (OpenAD_lin_168*(-5.0D-01))
      OpenAD_acc_29 = (OpenAD_lin_129*5.0D-01)
      OpenAD_acc_30 = (INT((-1_w2f__i8))*OpenAD_lin_116)
      OpenAD_acc_31 = (OpenAD_lin_111*OpenAD_acc_30)
      OpenAD_acc_32 = (OpenAD_lin_112*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_159*OpenAD_lin_158)
      OpenAD_acc_34 = (OpenAD_lin_160*OpenAD_lin_158+INT((-1_w2f__i8))*O
     +penAD_lin_163)
      OpenAD_acc_35 = (INT((-1_w2f__i8))*OpenAD_lin_158)
      OpenAD_acc_36 = (OpenAD_lin_147*OpenAD_lin_146)
      OpenAD_acc_37 = (OpenAD_lin_148*OpenAD_lin_146+INT((-1_w2f__i8))*O
     +penAD_lin_151)
      OpenAD_acc_38 = (INT((-1_w2f__i8))*OpenAD_lin_146)
      OpenAD_acc_39 = (OpenAD_lin_135*OpenAD_lin_134)
      OpenAD_acc_40 = (OpenAD_lin_136*OpenAD_lin_134+INT((-1_w2f__i8))*O
     +penAD_lin_139)
      OpenAD_acc_41 = (INT((-1_w2f__i8))*OpenAD_lin_134)
      OpenAD_acc_42 = (OpenAD_lin_119*OpenAD_lin_116)
      OpenAD_acc_43 = (OpenAD_lin_120*OpenAD_lin_116)
      OpenAD_acc_44 = (OpenAD_lin_167*(-5.0D-01)+OpenAD_acc_42*5.0D-01)
      OpenAD_acc_45 = (OpenAD_lin_157+OpenAD_acc_42*OpenAD_lin_162)
      OpenAD_acc_46 = (OpenAD_lin_145+OpenAD_acc_42*OpenAD_lin_150)
      OpenAD_acc_47 = (OpenAD_lin_133+OpenAD_acc_42*OpenAD_lin_138)
      OpenAD_acc_48 = (OpenAD_lin_128*5.0D-01+OpenAD_acc_42*5.0D-01)
      OpenAD_acc_49 = (OpenAD_lin_109*OpenAD_acc_30)
      OpenAD_acc_50 = (OpenAD_lin_110*OpenAD_acc_30)
      OpenAD_acc_51 = (OpenAD_lin_107*OpenAD_acc_30)
      OpenAD_acc_52 = (OpenAD_lin_108*OpenAD_acc_30)
      OpenAD_acc_53 = (OpenAD_lin_164*INT((-1_w2f__i8)))
      OpenAD_acc_54 = (OpenAD_lin_165*INT((-1_w2f__i8)))
      OpenAD_acc_55 = (OpenAD_lin_152*INT((-1_w2f__i8)))
      OpenAD_acc_56 = (OpenAD_lin_153*INT((-1_w2f__i8)))
      OpenAD_acc_57 = (OpenAD_lin_140*INT((-1_w2f__i8)))
      OpenAD_acc_58 = (OpenAD_lin_141*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prp_6,ALAMCM)
      CALL setderiv(OpenAD_prp_7,ALAMCP)
      CALL setderiv(OpenAD_prp_8,ALAMU)
      CALL setderiv(OpenAD_prp_9,LAMCM)
      CALL dec_deriv(OpenAD_prp_9,OpenAD_prp_6)
      CALL setderiv(OpenAD_prp_10,LAMCP)
      CALL dec_deriv(OpenAD_prp_10,OpenAD_prp_7)
      CALL setderiv(OpenAD_prp_11,LAMU)
      CALL dec_deriv(OpenAD_prp_11,OpenAD_prp_8)
      CALL sax(OpenAD_lin_91,PRIML2,RUL)
      CALL saxpy(OpenAD_lin_92,PRIML3,RUL)
      CALL sax(OpenAD_lin_93,PRIML2,RVL)
      CALL saxpy(OpenAD_lin_94,PRIML4,RVL)
      CALL sax(OpenAD_lin_95,PRIML2,RWL)
      CALL saxpy(OpenAD_lin_96,PRIML5,RWL)
      CALL setderiv(DR,PRIMR2)
      CALL dec_deriv(DR,PRIML2)
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_lin_101,PRIMR2,DRU)
      CALL saxpy(OpenAD_lin_102,PRIMR3,DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_lin_103,PRIMR2,DRV)
      CALL saxpy(OpenAD_lin_104,PRIMR4,DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_lin_105,PRIMR2,DRW)
      CALL saxpy(OpenAD_lin_106,PRIMR5,DRW)
      CALL sax(5.0D-01,OpenAD_prp_9,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prp_10,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prp_11,ALAMU)
      CALL sax(OpenAD_lin_87,PRIML1,EL)
      CALL saxpy(OpenAD_lin_88,GM1INV,EL)
      CALL saxpy(OpenAD_lin_89,PRIML2,EL)
      CALL saxpy(OpenAD_lin_90,THETAL,EL)
      CALL set_neg_deriv(DE,EL)
      CALL saxpy(OpenAD_lin_97,PRIMR1,DE)
      CALL saxpy(OpenAD_lin_98,GM1INV,DE)
      CALL saxpy(OpenAD_lin_99,PRIMR2,DE)
      CALL saxpy(OpenAD_lin_100,THETAR,DE)
      CALL sax(OpenAD_lin_125,DRW,NDDRU)
      CALL saxpy(OpenAD_lin_126,NZHAT,NDDRU)
      CALL saxpy(OpenAD_lin_123,DRV,NDDRU)
      CALL saxpy(OpenAD_lin_124,NYHAT,NDDRU)
      CALL saxpy(OpenAD_lin_121,DRU,NDDRU)
      CALL saxpy(OpenAD_lin_122,NXHAT,NDDRU)
      CALL sax(OpenAD_acc_26,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_27,CAVE,OMEGA)
      CALL saxpy(OpenAD_acc_31,DRW,OMEGA)
      CALL saxpy(OpenAD_acc_32,WAVE,OMEGA)
      CALL saxpy(OpenAD_lin_116,DE,OMEGA)
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
      CALL sax(OpenAD_lin_138,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_47,DR,ALP2)
      CALL saxpy(OpenAD_acc_39,CAVE,ALP2)
      CALL saxpy(OpenAD_acc_40,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_41,UTILDE,ALP2)
      CALL saxpy(OpenAD_lin_130,DRW,ALP2)
      CALL saxpy(OpenAD_lin_131,NYHAT,ALP2)
      CALL saxpy(OpenAD_acc_57,DRV,ALP2)
      CALL saxpy(OpenAD_acc_58,NZHAT,ALP2)
      CALL sax(OpenAD_lin_150,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_46,DR,ALP3)
      CALL saxpy(OpenAD_acc_36,CAVE,ALP3)
      CALL saxpy(OpenAD_acc_37,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_38,VTILDE,ALP3)
      CALL saxpy(OpenAD_lin_142,DRU,ALP3)
      CALL saxpy(OpenAD_lin_143,NZHAT,ALP3)
      CALL saxpy(OpenAD_acc_55,DRW,ALP3)
      CALL saxpy(OpenAD_acc_56,NXHAT,ALP3)
      CALL sax(OpenAD_lin_162,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,DR,ALP4)
      CALL saxpy(OpenAD_acc_33,CAVE,ALP4)
      CALL saxpy(OpenAD_acc_34,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_35,WTILDE,ALP4)
      CALL saxpy(OpenAD_lin_154,DRV,ALP4)
      CALL saxpy(OpenAD_lin_155,NXHAT,ALP4)
      CALL saxpy(OpenAD_acc_53,DRU,ALP4)
      CALL saxpy(OpenAD_acc_54,NYHAT,ALP4)
      OpenAD_dly_1 = (ALAMCM%v*ALP1%v)
      OpenAD_lin_169 = ALP1%v
      OpenAD_lin_170 = ALAMCM%v
      ALP1%v = OpenAD_dly_1
      OpenAD_dly_2 = (ALAMU%v*ALP2%v)
      OpenAD_lin_171 = ALP2%v
      OpenAD_lin_172 = ALAMU%v
      ALP2%v = OpenAD_dly_2
      OpenAD_dly_3 = (ALAMU%v*ALP3%v)
      OpenAD_lin_173 = ALP3%v
      OpenAD_lin_174 = ALAMU%v
      ALP3%v = OpenAD_dly_3
      OpenAD_dly_4 = (ALAMU%v*ALP4%v)
      OpenAD_lin_175 = ALP4%v
      OpenAD_lin_176 = ALAMU%v
      ALP4%v = OpenAD_dly_4
      OpenAD_dly_5 = (ALAMCP%v*ALP5%v)
      OpenAD_lin_177 = ALP5%v
      OpenAD_lin_178 = ALAMCP%v
      ALP5%v = OpenAD_dly_5
      ALP15P%v = (ALP1%v+ALP5%v)
      ALP15M%v = (ALP1%v-ALP5%v)
      MU%v = ((ALP15P%v/CAVE%v)+ALP2%v*NXHAT%v+ALP3%v*NYHAT%v+ALP4%v*NZH
     +AT%v)
      OpenAD_lin_179 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_180 = (-(ALP15P%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_181 = NXHAT%v
      OpenAD_lin_182 = ALP2%v
      OpenAD_lin_183 = NYHAT%v
      OpenAD_lin_184 = ALP3%v
      OpenAD_lin_185 = NZHAT%v
      OpenAD_lin_186 = ALP4%v
      OpenAD_lin_189 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_lin_189-ALP15M%v*UHAT%v+AL
     +P2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_lin_187 = THTAVE%v
      OpenAD_lin_188 = MU%v
      OpenAD_lin_190 = OpenAD_lin_189
      OpenAD_lin_192 = CAVE%v
      OpenAD_lin_193 = GM1INV%v
      OpenAD_lin_191 = ALP15P%v
      OpenAD_lin_194 = UHAT%v
      OpenAD_lin_195 = ALP15M%v
      OpenAD_lin_196 = UTILDE%v
      OpenAD_lin_197 = ALP2%v
      OpenAD_lin_198 = VTILDE%v
      OpenAD_lin_199 = ALP3%v
      OpenAD_lin_200 = WTILDE%v
      OpenAD_lin_201 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_lin_202 = NZHAT%v
      OpenAD_lin_203 = ALP3%v
      OpenAD_lin_204 = UAVE%v
      OpenAD_lin_205 = MU%v
      OpenAD_lin_206 = NXHAT%v
      OpenAD_lin_207 = ALP15M%v
      OpenAD_lin_208 = NYHAT%v
      OpenAD_lin_209 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_lin_210 = NXHAT%v
      OpenAD_lin_211 = ALP4%v
      OpenAD_lin_212 = VAVE%v
      OpenAD_lin_213 = MU%v
      OpenAD_lin_214 = NYHAT%v
      OpenAD_lin_215 = ALP15M%v
      OpenAD_lin_216 = NZHAT%v
      OpenAD_lin_217 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_lin_218 = NYHAT%v
      OpenAD_lin_219 = ALP2%v
      OpenAD_lin_220 = WAVE%v
      OpenAD_lin_221 = MU%v
      OpenAD_lin_222 = NZHAT%v
      OpenAD_lin_223 = ALP15M%v
      OpenAD_lin_224 = NXHAT%v
      OpenAD_lin_225 = ALP3%v
      UHATL%v = (PRIML3%v*NXHAT%v+PRIML4%v*NYHAT%v+PRIML5%v*NZHAT%v)
      OpenAD_lin_226 = NXHAT%v
      OpenAD_lin_227 = PRIML3%v
      OpenAD_lin_228 = NYHAT%v
      OpenAD_lin_229 = PRIML4%v
      OpenAD_lin_230 = NZHAT%v
      OpenAD_lin_231 = PRIML5%v
      OpenAD_lin_235 = (PRIML1%v+EL%v)
      OpenAD_lin_232 = (DSS1%v+UHATL%v*OpenAD_lin_235)
      FLUX1%v = (NSIZE%v*OpenAD_lin_232)
      OpenAD_lin_233 = OpenAD_lin_232
      OpenAD_lin_236 = OpenAD_lin_235
      OpenAD_lin_237 = UHATL%v
      OpenAD_lin_234 = NSIZE%v
      OpenAD_lin_238 = (DSS2%v+PRIML2%v*UHATL%v)
      FLUX2%v = (NSIZE%v*OpenAD_lin_238)
      OpenAD_lin_239 = OpenAD_lin_238
      OpenAD_lin_241 = UHATL%v
      OpenAD_lin_242 = PRIML2%v
      OpenAD_lin_240 = NSIZE%v
      OpenAD_lin_243 = (DSS3%v+PRIML1%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX3%v = (NSIZE%v*OpenAD_lin_243)
      OpenAD_lin_244 = OpenAD_lin_243
      OpenAD_lin_246 = NXHAT%v
      OpenAD_lin_247 = PRIML1%v
      OpenAD_lin_248 = UHATL%v
      OpenAD_lin_249 = RUL%v
      OpenAD_lin_245 = NSIZE%v
      OpenAD_lin_250 = (DSS4%v+PRIML1%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX4%v = (NSIZE%v*OpenAD_lin_250)
      OpenAD_lin_251 = OpenAD_lin_250
      OpenAD_lin_253 = NYHAT%v
      OpenAD_lin_254 = PRIML1%v
      OpenAD_lin_255 = UHATL%v
      OpenAD_lin_256 = RVL%v
      OpenAD_lin_252 = NSIZE%v
      OpenAD_lin_257 = (DSS5%v+PRIML1%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX5%v = (NSIZE%v*OpenAD_lin_257)
      OpenAD_lin_258 = OpenAD_lin_257
      OpenAD_lin_260 = NZHAT%v
      OpenAD_lin_261 = PRIML1%v
      OpenAD_lin_262 = UHATL%v
      OpenAD_lin_263 = RWL%v
      OpenAD_lin_259 = NSIZE%v
      OpenAD_acc_59 = (OpenAD_lin_236*OpenAD_lin_234)
      OpenAD_acc_60 = (OpenAD_lin_237*OpenAD_lin_234)
      OpenAD_acc_61 = (OpenAD_lin_200*OpenAD_lin_234)
      OpenAD_acc_62 = (OpenAD_lin_201*OpenAD_lin_234)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_lin_259)
      OpenAD_acc_64 = (OpenAD_lin_224*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_225*OpenAD_acc_63)
      OpenAD_acc_66 = (INT((-1_w2f__i8))*OpenAD_lin_252)
      OpenAD_acc_67 = (OpenAD_lin_216*OpenAD_acc_66)
      OpenAD_acc_68 = (OpenAD_lin_217*OpenAD_acc_66)
      OpenAD_acc_69 = (INT((-1_w2f__i8))*OpenAD_lin_245)
      OpenAD_acc_70 = (OpenAD_lin_208*OpenAD_acc_69)
      OpenAD_acc_71 = (OpenAD_lin_209*OpenAD_acc_69)
      OpenAD_acc_72 = (OpenAD_lin_198*OpenAD_lin_234)
      OpenAD_acc_73 = (OpenAD_lin_199*OpenAD_lin_234)
      OpenAD_acc_74 = (OpenAD_lin_218*OpenAD_lin_259)
      OpenAD_acc_75 = (OpenAD_lin_219*OpenAD_lin_259)
      OpenAD_acc_76 = (OpenAD_lin_210*OpenAD_lin_252)
      OpenAD_acc_77 = (OpenAD_lin_211*OpenAD_lin_252)
      OpenAD_acc_78 = (OpenAD_lin_202*OpenAD_lin_245)
      OpenAD_acc_79 = (OpenAD_lin_203*OpenAD_lin_245)
      OpenAD_acc_80 = (OpenAD_lin_196*OpenAD_lin_234)
      OpenAD_acc_81 = (OpenAD_lin_197*OpenAD_lin_234)
      OpenAD_acc_82 = (OpenAD_lin_220*OpenAD_lin_259)
      OpenAD_acc_83 = (OpenAD_lin_221*OpenAD_lin_259)
      OpenAD_acc_84 = (INT((-1_w2f__i8))*OpenAD_lin_259)
      OpenAD_acc_85 = (OpenAD_lin_222*OpenAD_acc_84)
      OpenAD_acc_86 = (OpenAD_lin_212*OpenAD_lin_252)
      OpenAD_acc_87 = (OpenAD_lin_213*OpenAD_lin_252)
      OpenAD_acc_88 = (INT((-1_w2f__i8))*OpenAD_lin_252)
      OpenAD_acc_89 = (OpenAD_lin_214*OpenAD_acc_88)
      OpenAD_acc_90 = (OpenAD_lin_204*OpenAD_lin_245)
      OpenAD_acc_91 = (OpenAD_lin_205*OpenAD_lin_245)
      OpenAD_acc_92 = (INT((-1_w2f__i8))*OpenAD_lin_245)
      OpenAD_acc_93 = (OpenAD_lin_206*OpenAD_acc_92)
      OpenAD_acc_94 = (OpenAD_lin_187*OpenAD_lin_234)
      OpenAD_acc_95 = (OpenAD_lin_188*OpenAD_lin_234)
      OpenAD_acc_96 = (OpenAD_lin_262*OpenAD_lin_259)
      OpenAD_acc_97 = (OpenAD_lin_263*OpenAD_lin_259)
      OpenAD_acc_98 = (OpenAD_lin_223*OpenAD_acc_84+OpenAD_lin_261*OpenA
     +D_lin_259)
      OpenAD_acc_99 = (OpenAD_lin_260*OpenAD_lin_259)
      OpenAD_acc_100 = (OpenAD_lin_255*OpenAD_lin_252)
      OpenAD_acc_101 = (OpenAD_lin_256*OpenAD_lin_252)
      OpenAD_acc_102 = (OpenAD_lin_215*OpenAD_acc_88+OpenAD_lin_254*Open
     +AD_lin_252)
      OpenAD_acc_103 = (OpenAD_lin_253*OpenAD_lin_252)
      OpenAD_acc_104 = (OpenAD_lin_248*OpenAD_lin_245)
      OpenAD_acc_105 = (OpenAD_lin_249*OpenAD_lin_245)
      OpenAD_acc_106 = (OpenAD_lin_207*OpenAD_acc_92+OpenAD_lin_247*Open
     +AD_lin_245)
      OpenAD_acc_107 = (OpenAD_lin_246*OpenAD_lin_245)
      OpenAD_acc_108 = (OpenAD_lin_241*OpenAD_lin_240)
      OpenAD_acc_109 = (OpenAD_lin_242*OpenAD_lin_240)
      OpenAD_acc_110 = (OpenAD_lin_190*OpenAD_lin_234)
      OpenAD_acc_111 = (OpenAD_lin_192*OpenAD_lin_191*OpenAD_lin_234)
      OpenAD_acc_112 = (OpenAD_lin_193*OpenAD_lin_191*OpenAD_lin_234)
      OpenAD_acc_113 = (INT((-1_w2f__i8))*OpenAD_lin_234)
      OpenAD_acc_114 = (OpenAD_lin_194*OpenAD_acc_113)
      OpenAD_acc_115 = (OpenAD_lin_195*OpenAD_acc_113)
      CALL setderiv(OpenAD_prp_12,ALP1)
      CALL setderiv(OpenAD_prp_13,ALP2)
      CALL setderiv(OpenAD_prp_14,ALP3)
      CALL setderiv(OpenAD_prp_15,ALP4)
      CALL setderiv(OpenAD_prp_16,ALP5)
      CALL sax(OpenAD_lin_169,ALAMCM,ALP1)
      CALL saxpy(OpenAD_lin_170,OpenAD_prp_12,ALP1)
      CALL sax(OpenAD_lin_171,ALAMU,ALP2)
      CALL saxpy(OpenAD_lin_172,OpenAD_prp_13,ALP2)
      CALL sax(OpenAD_lin_173,ALAMU,ALP3)
      CALL saxpy(OpenAD_lin_174,OpenAD_prp_14,ALP3)
      CALL sax(OpenAD_lin_175,ALAMU,ALP4)
      CALL saxpy(OpenAD_lin_176,OpenAD_prp_15,ALP4)
      CALL sax(OpenAD_lin_177,ALAMCP,ALP5)
      CALL saxpy(OpenAD_lin_178,OpenAD_prp_16,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prp_17,PRIML1)
      CALL inc_deriv(OpenAD_prp_17,EL)
      CALL sax(OpenAD_lin_226,PRIML3,UHATL)
      CALL saxpy(OpenAD_lin_227,NXHAT,UHATL)
      CALL saxpy(OpenAD_lin_228,PRIML4,UHATL)
      CALL saxpy(OpenAD_lin_229,NYHAT,UHATL)
      CALL saxpy(OpenAD_lin_230,PRIML5,UHATL)
      CALL saxpy(OpenAD_lin_231,NZHAT,UHATL)
      CALL sax(OpenAD_lin_179,ALP15P,MU)
      CALL saxpy(OpenAD_lin_180,CAVE,MU)
      CALL saxpy(OpenAD_lin_181,ALP2,MU)
      CALL saxpy(OpenAD_lin_182,NXHAT,MU)
      CALL saxpy(OpenAD_lin_183,ALP3,MU)
      CALL saxpy(OpenAD_lin_184,NYHAT,MU)
      CALL saxpy(OpenAD_lin_185,ALP4,MU)
      CALL saxpy(OpenAD_lin_186,NZHAT,MU)
      CALL sax(OpenAD_lin_239,NSIZE,FLUX2)
      CALL saxpy(OpenAD_acc_108,PRIML2,FLUX2)
      CALL saxpy(OpenAD_acc_109,UHATL,FLUX2)
      CALL saxpy(OpenAD_lin_240,MU,FLUX2)
      CALL sax(OpenAD_lin_244,NSIZE,FLUX3)
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
      CALL sax(OpenAD_lin_251,NSIZE,FLUX4)
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
      CALL sax(OpenAD_lin_258,NSIZE,FLUX5)
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
      CALL sax(OpenAD_lin_233,NSIZE,FLUX1)
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
