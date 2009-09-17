
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE ad_roehf5(NRM, PRIML, PRIMR, GAMMA, GM1, GM1INV,  NLEFI
     +X, LEFIX, MCHEPS, FLUX)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
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
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_100
      REAL(w2f__8) OpenAD_lin_101
      REAL(w2f__8) OpenAD_lin_102
      REAL(w2f__8) OpenAD_lin_103
      REAL(w2f__8) OpenAD_lin_104
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
      REAL(w2f__8) OpenAD_lin_148
      REAL(w2f__8) OpenAD_lin_149
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
      REAL(w2f__8) OpenAD_lin_274
      REAL(w2f__8) OpenAD_lin_275
      REAL(w2f__8) OpenAD_lin_277
      REAL(w2f__8) OpenAD_lin_278
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_32
      REAL(w2f__8) OpenAD_lin_34
      REAL(w2f__8) OpenAD_lin_36
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_39
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
      REAL(w2f__8) OpenAD_lin_60
      REAL(w2f__8) OpenAD_lin_61
      REAL(w2f__8) OpenAD_lin_62
      REAL(w2f__8) OpenAD_lin_63
      REAL(w2f__8) OpenAD_lin_65
      REAL(w2f__8) OpenAD_lin_67
      REAL(w2f__8) OpenAD_lin_69
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
      REAL(w2f__8) OpenAD_lin_96
      REAL(w2f__8) OpenAD_lin_98
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
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_10
      REAL(w2f__8) OpenAD_tmp_11
      REAL(w2f__8) OpenAD_tmp_12
      REAL(w2f__8) OpenAD_tmp_13
      REAL(w2f__8) OpenAD_tmp_14
      REAL(w2f__8) OpenAD_tmp_15
      REAL(w2f__8) OpenAD_tmp_16
      REAL(w2f__8) OpenAD_tmp_17
      REAL(w2f__8) OpenAD_tmp_18
      REAL(w2f__8) OpenAD_tmp_19
      REAL(w2f__8) OpenAD_tmp_2
      REAL(w2f__8) OpenAD_tmp_20
      REAL(w2f__8) OpenAD_tmp_21
      REAL(w2f__8) OpenAD_tmp_22
      REAL(w2f__8) OpenAD_tmp_23
      REAL(w2f__8) OpenAD_tmp_24
      REAL(w2f__8) OpenAD_tmp_25
      REAL(w2f__8) OpenAD_tmp_26
      REAL(w2f__8) OpenAD_tmp_27
      REAL(w2f__8) OpenAD_tmp_28
      REAL(w2f__8) OpenAD_tmp_29
      REAL(w2f__8) OpenAD_tmp_3
      REAL(w2f__8) OpenAD_tmp_30
      REAL(w2f__8) OpenAD_tmp_31
      REAL(w2f__8) OpenAD_tmp_32
      REAL(w2f__8) OpenAD_tmp_33
      REAL(w2f__8) OpenAD_tmp_34
      REAL(w2f__8) OpenAD_tmp_35
      REAL(w2f__8) OpenAD_tmp_36
      REAL(w2f__8) OpenAD_tmp_37
      REAL(w2f__8) OpenAD_tmp_38
      REAL(w2f__8) OpenAD_tmp_4
      REAL(w2f__8) OpenAD_tmp_5
      REAL(w2f__8) OpenAD_tmp_6
      REAL(w2f__8) OpenAD_tmp_7
      REAL(w2f__8) OpenAD_tmp_8
      REAL(w2f__8) OpenAD_tmp_9
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
      OpenAD_tmp_0 = ((NRM(1)%v**2)+(NRM(2)%v**2)+(NRM(3)%v**2))
      NSIZE%v = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = (2*(NRM(1)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_3 = (2*(NRM(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_5 = (2*(NRM(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      OpenAD_acc_0 = (OpenAD_lin_5*OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_0)
      OpenAD_acc_2 = (OpenAD_lin_1*OpenAD_lin_0)
      CALL sax(OpenAD_acc_0,NRM(3),NSIZE)
      CALL saxpy(OpenAD_acc_1,NRM(2),NSIZE)
      CALL saxpy(OpenAD_acc_2,NRM(1),NSIZE)
      IF (MCHEPS.LT.NSIZE%v) THEN
        NSIZEI%v = (1.0D00/NSIZE%v)
        OpenAD_lin_8 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
        CALL sax(OpenAD_lin_8,NSIZE,NSIZEI)
      ELSE
        NSIZEI%v = 0.0D00
        CALL zero_deriv(NSIZEI)
      ENDIF
      NXHAT%v = (NRM(1)%v*NSIZEI%v)
      OpenAD_lin_9 = NSIZEI%v
      OpenAD_lin_10 = NRM(1)%v
      NYHAT%v = (NRM(2)%v*NSIZEI%v)
      OpenAD_lin_11 = NSIZEI%v
      OpenAD_lin_12 = NRM(2)%v
      NZHAT%v = (NRM(3)%v*NSIZEI%v)
      OpenAD_lin_13 = NSIZEI%v
      OpenAD_lin_14 = NRM(3)%v
      OpenAD_tmp_2 = (PRIMR(2)%v/PRIML(2)%v)
      OpenAD_tmp_1 = (SIN(OpenAD_tmp_2)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_tmp_1)
      OpenAD_lin_19 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_lin_20 = (-(PRIMR(2)%v/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_lin_18 = COS(OpenAD_tmp_2)
      OpenAD_lin_16 = (-(1.0D00/(OpenAD_tmp_1*OpenAD_tmp_1)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_tmp_3 = ((PRIML(3)%v**2)+(PRIML(4)%v**2)+(PRIML(5)%v**2))
      THETAL%v = (OpenAD_tmp_3*5.0D-01)
      OpenAD_lin_23 = (2*(PRIML(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_25 = (2*(PRIML(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_27 = (2*(PRIML(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_tmp_4 = ((PRIMR(3)%v**2)+(PRIMR(4)%v**2)+(PRIMR(5)%v**2))
      THETAR%v = (OpenAD_tmp_4*5.0D-01)
      OpenAD_lin_30 = (2*(PRIMR(3)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_32 = (2*(PRIMR(4)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_34 = (2*(PRIMR(5)%v**(2-INT(1_w2f__i8))))
      OpenAD_tmp_6 = (GAMMA%v*GM1INV%v)
      OpenAD_tmp_5 = (PRIML(1)%v*OpenAD_tmp_6)
      HL%v = (THETAL%v+(OpenAD_tmp_5/PRIML(2)%v))
      OpenAD_lin_38 = OpenAD_tmp_6
      OpenAD_lin_40 = GM1INV%v
      OpenAD_lin_41 = GAMMA%v
      OpenAD_lin_39 = PRIML(1)%v
      OpenAD_lin_36 = (INT(1_w2f__i8)/PRIML(2)%v)
      OpenAD_lin_37 = (-(OpenAD_tmp_5/(PRIML(2)%v*PRIML(2)%v)))
      OpenAD_tmp_8 = (GAMMA%v*GM1INV%v)
      OpenAD_tmp_7 = (PRIMR(1)%v*OpenAD_tmp_8)
      HR%v = (THETAR%v+(OpenAD_tmp_7/PRIMR(2)%v))
      OpenAD_lin_44 = OpenAD_tmp_8
      OpenAD_lin_46 = GM1INV%v
      OpenAD_lin_47 = GAMMA%v
      OpenAD_lin_45 = PRIMR(1)%v
      OpenAD_lin_42 = (INT(1_w2f__i8)/PRIMR(2)%v)
      OpenAD_lin_43 = (-(OpenAD_tmp_7/(PRIMR(2)%v*PRIMR(2)%v)))
      UAVE%v = (PRIML(3)%v*ROEL%v+PRIMR(3)%v*ROER%v)
      OpenAD_lin_48 = ROEL%v
      OpenAD_lin_49 = PRIML(3)%v
      OpenAD_lin_50 = ROER%v
      OpenAD_lin_51 = PRIMR(3)%v
      VAVE%v = (PRIML(4)%v*ROEL%v+PRIMR(4)%v*ROER%v)
      OpenAD_lin_52 = ROEL%v
      OpenAD_lin_53 = PRIML(4)%v
      OpenAD_lin_54 = ROER%v
      OpenAD_lin_55 = PRIMR(4)%v
      WAVE%v = (PRIML(5)%v*ROEL%v+PRIMR(5)%v*ROER%v)
      OpenAD_lin_56 = ROEL%v
      OpenAD_lin_57 = PRIML(5)%v
      OpenAD_lin_58 = ROER%v
      OpenAD_lin_59 = PRIMR(5)%v
      HAVE%v = (HL%v*ROEL%v+HR%v*ROER%v)
      OpenAD_lin_60 = ROEL%v
      OpenAD_lin_61 = HL%v
      OpenAD_lin_62 = ROER%v
      OpenAD_lin_63 = HR%v
      OpenAD_tmp_9 = ((UAVE%v**2)+(VAVE%v**2)+(WAVE%v**2))
      THTAVE%v = (OpenAD_tmp_9*5.0D-01)
      OpenAD_lin_65 = (2*(UAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_67 = (2*(VAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_69 = (2*(WAVE%v**(2-INT(1_w2f__i8))))
      OpenAD_tmp_10 = (HAVE%v-THTAVE%v)
      CAVE%v = (GM1%v*OpenAD_tmp_10)
      OpenAD_lin_71 = OpenAD_tmp_10
      OpenAD_lin_72 = GM1%v
      OpenAD_acc_3 = (OpenAD_lin_45*OpenAD_lin_42)
      OpenAD_acc_4 = (OpenAD_lin_39*OpenAD_lin_36)
      OpenAD_acc_5 = (5.0D-01*INT((-1_w2f__i8))*OpenAD_lin_72)
      OpenAD_acc_6 = (OpenAD_lin_62*OpenAD_lin_72)
      OpenAD_acc_7 = (OpenAD_lin_60*OpenAD_lin_72)
      OpenAD_acc_8 = (OpenAD_lin_16*(OpenAD_lin_61*OpenAD_lin_72+INT((-1
     +_w2f__i8))*OpenAD_lin_63*OpenAD_lin_72))
      OpenAD_acc_9 = (OpenAD_lin_16*(OpenAD_lin_57+INT((-1_w2f__i8))*Ope
     +nAD_lin_59))
      OpenAD_acc_10 = (OpenAD_lin_16*(OpenAD_lin_53+INT((-1_w2f__i8))*Op
     +enAD_lin_55))
      OpenAD_acc_11 = (OpenAD_lin_16*(OpenAD_lin_49+INT((-1_w2f__i8))*Op
     +enAD_lin_51))
      OpenAD_acc_12 = (OpenAD_lin_19*OpenAD_lin_18)
      OpenAD_acc_13 = (OpenAD_lin_20*OpenAD_lin_18)
      OpenAD_acc_14 = (OpenAD_lin_38*OpenAD_lin_36)
      OpenAD_acc_15 = (OpenAD_lin_40*OpenAD_acc_4)
      OpenAD_acc_16 = (OpenAD_lin_41*OpenAD_acc_4)
      OpenAD_acc_17 = (OpenAD_lin_44*OpenAD_lin_42)
      OpenAD_acc_18 = (OpenAD_lin_46*OpenAD_acc_3)
      OpenAD_acc_19 = (OpenAD_lin_47*OpenAD_acc_3)
      CALL sax(OpenAD_lin_9,NRM(1),NXHAT)
      CALL saxpy(OpenAD_lin_10,NSIZEI,NXHAT)
      CALL sax(OpenAD_lin_11,NRM(2),NYHAT)
      CALL saxpy(OpenAD_lin_12,NSIZEI,NYHAT)
      CALL sax(OpenAD_lin_13,NRM(3),NZHAT)
      CALL saxpy(OpenAD_lin_14,NSIZEI,NZHAT)
      CALL sax(OpenAD_acc_12,PRIMR(2),OpenAD_prop_0)
      CALL saxpy(OpenAD_acc_13,PRIML(2),OpenAD_prop_0)
      CALL sax(OpenAD_lin_27,PRIML(5),OpenAD_prop_1)
      CALL saxpy(OpenAD_lin_23,PRIML(3),OpenAD_prop_1)
      CALL saxpy(OpenAD_lin_25,PRIML(4),OpenAD_prop_1)
      CALL sax(OpenAD_lin_34,PRIMR(5),OpenAD_prop_2)
      CALL saxpy(OpenAD_lin_30,PRIMR(3),OpenAD_prop_2)
      CALL saxpy(OpenAD_lin_32,PRIMR(4),OpenAD_prop_2)
      CALL sax(5.0D-01,OpenAD_prop_1,THETAL)
      CALL sax(5.0D-01,OpenAD_prop_2,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_lin_37,PRIML(2),HL)
      CALL saxpy(OpenAD_acc_14,PRIML(1),HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_lin_43,PRIMR(2),HR)
      CALL saxpy(OpenAD_acc_17,PRIMR(1),HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_lin_50,PRIMR(3),UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prop_0,UAVE)
      CALL saxpy(OpenAD_lin_48,PRIML(3),UAVE)
      CALL sax(OpenAD_lin_54,PRIMR(4),VAVE)
      CALL saxpy(OpenAD_lin_52,PRIML(4),VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prop_0,VAVE)
      CALL sax(OpenAD_lin_58,PRIMR(5),WAVE)
      CALL saxpy(OpenAD_lin_56,PRIML(5),WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prop_0,WAVE)
      CALL sax(OpenAD_lin_69,WAVE,OpenAD_prop_3)
      CALL saxpy(OpenAD_lin_67,VAVE,OpenAD_prop_3)
      CALL saxpy(OpenAD_lin_65,UAVE,OpenAD_prop_3)
      CALL sax(5.0D-01,OpenAD_prop_3,THTAVE)
      CALL sax(OpenAD_lin_71,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prop_3,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prop_0,CAVE)
      OpenAD_Symbol_0 = SIN(CAVE%v)
      OpenAD_lin_73 = COS(CAVE%v)
      CAVE%v = OpenAD_Symbol_0
      UHAT%v = (NXHAT%v*UAVE%v+NYHAT%v*VAVE%v+NZHAT%v*WAVE%v)
      OpenAD_lin_74 = UAVE%v
      OpenAD_lin_75 = NXHAT%v
      OpenAD_lin_76 = VAVE%v
      OpenAD_lin_77 = NYHAT%v
      OpenAD_lin_78 = WAVE%v
      OpenAD_lin_79 = NZHAT%v
      UTILDE%v = (NYHAT%v*WAVE%v-NZHAT%v*VAVE%v)
      OpenAD_lin_80 = WAVE%v
      OpenAD_lin_81 = NYHAT%v
      OpenAD_lin_82 = VAVE%v
      OpenAD_lin_83 = NZHAT%v
      VTILDE%v = (NZHAT%v*UAVE%v-NXHAT%v*WAVE%v)
      OpenAD_lin_84 = UAVE%v
      OpenAD_lin_85 = NZHAT%v
      OpenAD_lin_86 = WAVE%v
      OpenAD_lin_87 = NXHAT%v
      WTILDE%v = (NXHAT%v*VAVE%v-NYHAT%v*UAVE%v)
      OpenAD_lin_88 = VAVE%v
      OpenAD_lin_89 = NXHAT%v
      OpenAD_lin_90 = UAVE%v
      OpenAD_lin_91 = NYHAT%v
      LAMCM%v = (UHAT%v-CAVE%v)
      LAMU%v = UHAT%v
      LAMCP%v = (CAVE%v+UHAT%v)
      OpenAD_tmp_11 = (CAVE%v+UHAT%v)
      DELTA%v = (NLEFIX%v*OpenAD_tmp_11)
      OpenAD_lin_92 = OpenAD_tmp_11
      OpenAD_lin_93 = NLEFIX%v
      DELTA2%v = (DELTA%v**2)
      OpenAD_lin_94 = (2*(DELTA%v**(2-INT(1_w2f__i8))))
      LAM2%v = (LAMCM%v**2)
      OpenAD_lin_96 = (2*(LAMCM%v**(2-INT(1_w2f__i8))))
      OpenAD_acc_20 = (OpenAD_lin_92*OpenAD_lin_94)
      OpenAD_acc_21 = (OpenAD_lin_93*OpenAD_lin_94)
      OpenAD_acc_22 = (OpenAD_lin_82*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_83*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_86*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_87*INT((-1_w2f__i8)))
      OpenAD_acc_26 = (OpenAD_lin_90*INT((-1_w2f__i8)))
      OpenAD_acc_27 = (OpenAD_lin_91*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_4,CAVE)
      CALL sax(OpenAD_lin_73,OpenAD_prop_4,CAVE)
      CALL sax(OpenAD_lin_80,NYHAT,UTILDE)
      CALL saxpy(OpenAD_lin_81,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_22,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_23,VAVE,UTILDE)
      CALL sax(OpenAD_lin_84,NZHAT,VTILDE)
      CALL saxpy(OpenAD_lin_85,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_24,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_25,WAVE,VTILDE)
      CALL sax(OpenAD_lin_88,NXHAT,WTILDE)
      CALL saxpy(OpenAD_lin_89,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_26,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_27,UAVE,WTILDE)
      CALL sax(OpenAD_lin_74,NXHAT,UHAT)
      CALL saxpy(OpenAD_lin_75,UAVE,UHAT)
      CALL saxpy(OpenAD_lin_76,NYHAT,UHAT)
      CALL saxpy(OpenAD_lin_77,VAVE,UHAT)
      CALL saxpy(OpenAD_lin_78,NZHAT,UHAT)
      CALL saxpy(OpenAD_lin_79,WAVE,UHAT)
      CALL setderiv(LAMCM,UHAT)
      CALL dec_deriv(LAMCM,CAVE)
      CALL setderiv(LAMU,UHAT)
      CALL setderiv(LAMCP,CAVE)
      CALL inc_deriv(LAMCP,UHAT)
      CALL setderiv(OpenAD_prop_5,CAVE)
      CALL inc_deriv(OpenAD_prop_5,UHAT)
      CALL sax(OpenAD_lin_96,LAMCM,LAM2)
      CALL sax(OpenAD_acc_20,NLEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_21,OpenAD_prop_5,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCM%v = LAMCM%v
        CALL setderiv(ALAMCM,LAMCM)
      ELSE
        OpenAD_tmp_38 = (DELTA2%v+LAM2%v)
        OpenAD_tmp_37 = (OpenAD_tmp_38*5.0D-01)
        ALAMCM%v = (OpenAD_tmp_37/DELTA2%v)
        OpenAD_lin_277 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_278 = (-(OpenAD_tmp_37/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_80 = (5.0D-01*OpenAD_lin_277)
        CALL setderiv(OpenAD_prop_31,DELTA2)
        CALL inc_deriv(OpenAD_prop_31,LAM2)
        CALL sax(OpenAD_lin_278,DELTA2,ALAMCM)
        CALL saxpy(OpenAD_acc_80,OpenAD_prop_31,ALAMCM)
      ENDIF
      LAM2%v = (LAMCP%v**2)
      OpenAD_lin_98 = (2*(LAMCP%v**(2-INT(1_w2f__i8))))
      CALL sax(OpenAD_lin_98,LAMCP,LAM2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMCP%v = LAMCP%v
        CALL setderiv(ALAMCP,LAMCP)
      ELSE
        OpenAD_tmp_36 = (DELTA2%v+LAM2%v)
        OpenAD_tmp_35 = (OpenAD_tmp_36*5.0D-01)
        ALAMCP%v = (OpenAD_tmp_35/DELTA2%v)
        OpenAD_lin_274 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_275 = (-(OpenAD_tmp_35/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_79 = (5.0D-01*OpenAD_lin_274)
        CALL setderiv(OpenAD_prop_30,DELTA2)
        CALL inc_deriv(OpenAD_prop_30,LAM2)
        CALL sax(OpenAD_lin_275,DELTA2,ALAMCP)
        CALL saxpy(OpenAD_acc_79,OpenAD_prop_30,ALAMCP)
      ENDIF
      OpenAD_tmp_12 = (CAVE%v+UHAT%v)
      DELTA%v = (LEFIX%v*OpenAD_tmp_12)
      OpenAD_lin_100 = OpenAD_tmp_12
      OpenAD_lin_101 = LEFIX%v
      DELTA2%v = (DELTA%v*DELTA%v)
      OpenAD_lin_102 = DELTA%v
      OpenAD_lin_103 = DELTA%v
      LAM2%v = (LAMU%v**2)
      OpenAD_lin_104 = (2*(LAMU%v**(2-INT(1_w2f__i8))))
      OpenAD_acc_28 = (OpenAD_lin_102+OpenAD_lin_103)
      OpenAD_acc_29 = (OpenAD_lin_100*OpenAD_acc_28)
      OpenAD_acc_30 = (OpenAD_lin_101*OpenAD_acc_28)
      CALL setderiv(OpenAD_prop_6,CAVE)
      CALL inc_deriv(OpenAD_prop_6,UHAT)
      CALL sax(OpenAD_lin_104,LAMU,LAM2)
      CALL sax(OpenAD_acc_29,LEFIX,DELTA2)
      CALL saxpy(OpenAD_acc_30,OpenAD_prop_6,DELTA2)
      IF (DELTA2%v.LT.LAM2%v) THEN
        ALAMU%v = LAMU%v
        CALL setderiv(ALAMU,LAMU)
      ELSE
        OpenAD_tmp_34 = (DELTA2%v+LAM2%v)
        OpenAD_tmp_33 = (OpenAD_tmp_34*5.0D-01)
        ALAMU%v = (OpenAD_tmp_33/DELTA2%v)
        OpenAD_lin_271 = (INT(1_w2f__i8)/DELTA2%v)
        OpenAD_lin_272 = (-(OpenAD_tmp_33/(DELTA2%v*DELTA2%v)))
        OpenAD_acc_78 = (5.0D-01*OpenAD_lin_271)
        CALL setderiv(OpenAD_prop_29,DELTA2)
        CALL inc_deriv(OpenAD_prop_29,LAM2)
        CALL sax(OpenAD_lin_272,DELTA2,ALAMU)
        CALL saxpy(OpenAD_acc_78,OpenAD_prop_29,ALAMU)
      ENDIF
      OpenAD_tmp_13 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_tmp_13*5.0D-01)
      OpenAD_tmp_14 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_tmp_14*5.0D-01)
      OpenAD_tmp_15 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_tmp_15*5.0D-01)
      EL%v = (PRIML(1)%v*GM1INV%v+PRIML(2)%v*THETAL%v)
      OpenAD_lin_109 = GM1INV%v
      OpenAD_lin_110 = PRIML(1)%v
      OpenAD_lin_111 = THETAL%v
      OpenAD_lin_112 = PRIML(2)%v
      RUL%v = (PRIML(2)%v*PRIML(3)%v)
      OpenAD_lin_113 = PRIML(3)%v
      OpenAD_lin_114 = PRIML(2)%v
      RVL%v = (PRIML(2)%v*PRIML(4)%v)
      OpenAD_lin_115 = PRIML(4)%v
      OpenAD_lin_116 = PRIML(2)%v
      RWL%v = (PRIML(2)%v*PRIML(5)%v)
      OpenAD_lin_117 = PRIML(5)%v
      OpenAD_lin_118 = PRIML(2)%v
      ER%v = (PRIMR(1)%v*GM1INV%v+PRIMR(2)%v*THETAR%v)
      OpenAD_lin_119 = GM1INV%v
      OpenAD_lin_120 = PRIMR(1)%v
      OpenAD_lin_121 = THETAR%v
      OpenAD_lin_122 = PRIMR(2)%v
      RUR%v = (PRIMR(2)%v*PRIMR(3)%v)
      OpenAD_lin_123 = PRIMR(3)%v
      OpenAD_lin_124 = PRIMR(2)%v
      RVR%v = (PRIMR(2)%v*PRIMR(4)%v)
      OpenAD_lin_125 = PRIMR(4)%v
      OpenAD_lin_126 = PRIMR(2)%v
      RWR%v = (PRIMR(2)%v*PRIMR(5)%v)
      OpenAD_lin_127 = PRIMR(5)%v
      OpenAD_lin_128 = PRIMR(2)%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR(2)%v-PRIML(2)%v)
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
      OpenAD_tmp_16 = (GM1%v/CAVE%v)
      OpenAD_tmp_17 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_tmp_16*OpenAD_tmp_17)
      OpenAD_lin_137 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_138 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_135 = OpenAD_tmp_17
      OpenAD_lin_139 = THTAVE%v
      OpenAD_lin_140 = DR%v
      OpenAD_lin_136 = OpenAD_tmp_16
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_lin_141 = NXHAT%v
      OpenAD_lin_142 = DRU%v
      OpenAD_lin_143 = NYHAT%v
      OpenAD_lin_144 = DRV%v
      OpenAD_lin_145 = NZHAT%v
      OpenAD_lin_146 = DRW%v
      OpenAD_tmp_18 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_tmp_18*5.0D-01)
      OpenAD_lin_148 = UHAT%v
      OpenAD_lin_149 = DR%v
      OpenAD_tmp_19 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_tmp_20 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_tmp_19+OMEGA%v*OpenAD_tmp_20-D
     +RV%v*NZHAT%v)
      OpenAD_lin_150 = NYHAT%v
      OpenAD_lin_151 = DRW%v
      OpenAD_lin_152 = OpenAD_tmp_19
      OpenAD_lin_154 = NXHAT%v
      OpenAD_lin_155 = CAVE%v
      OpenAD_lin_153 = DR%v
      OpenAD_lin_156 = OpenAD_tmp_20
      OpenAD_lin_157 = OMEGA%v
      OpenAD_lin_158 = NZHAT%v
      OpenAD_lin_159 = DRV%v
      OpenAD_tmp_21 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_tmp_22 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_tmp_21+OMEGA%v*OpenAD_tmp_22-D
     +RW%v*NXHAT%v)
      OpenAD_lin_160 = NZHAT%v
      OpenAD_lin_161 = DRU%v
      OpenAD_lin_162 = OpenAD_tmp_21
      OpenAD_lin_164 = NYHAT%v
      OpenAD_lin_165 = CAVE%v
      OpenAD_lin_163 = DR%v
      OpenAD_lin_166 = OpenAD_tmp_22
      OpenAD_lin_167 = OMEGA%v
      OpenAD_lin_168 = NXHAT%v
      OpenAD_lin_169 = DRW%v
      OpenAD_tmp_23 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_tmp_24 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_tmp_23+OMEGA%v*OpenAD_tmp_24-D
     +RU%v*NYHAT%v)
      OpenAD_lin_170 = NXHAT%v
      OpenAD_lin_171 = DRV%v
      OpenAD_lin_172 = OpenAD_tmp_23
      OpenAD_lin_174 = NZHAT%v
      OpenAD_lin_175 = CAVE%v
      OpenAD_lin_173 = DR%v
      OpenAD_lin_176 = OpenAD_tmp_24
      OpenAD_lin_177 = OMEGA%v
      OpenAD_lin_178 = NYHAT%v
      OpenAD_lin_179 = DRU%v
      OpenAD_tmp_25 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_tmp_25*5.0D-01)
      OpenAD_lin_181 = UHAT%v
      OpenAD_lin_182 = DR%v
      OpenAD_acc_31 = (OpenAD_lin_137*OpenAD_lin_135)
      OpenAD_acc_32 = (OpenAD_lin_138*OpenAD_lin_135)
      OpenAD_acc_33 = (OpenAD_lin_129*INT((-1_w2f__i8)))
      OpenAD_acc_34 = (OpenAD_lin_130*INT((-1_w2f__i8)))
      OpenAD_acc_35 = (OpenAD_lin_131*INT((-1_w2f__i8)))
      OpenAD_acc_36 = (OpenAD_lin_132*INT((-1_w2f__i8)))
      OpenAD_acc_37 = (OpenAD_lin_133*INT((-1_w2f__i8)))
      OpenAD_acc_38 = (OpenAD_lin_134*INT((-1_w2f__i8)))
      OpenAD_acc_39 = (INT((-1_w2f__i8))*OpenAD_lin_157)
      OpenAD_acc_40 = (OpenAD_lin_158*INT((-1_w2f__i8)))
      OpenAD_acc_41 = (OpenAD_lin_159*INT((-1_w2f__i8)))
      OpenAD_acc_42 = (INT((-1_w2f__i8))*OpenAD_lin_167)
      OpenAD_acc_43 = (OpenAD_lin_168*INT((-1_w2f__i8)))
      OpenAD_acc_44 = (OpenAD_lin_169*INT((-1_w2f__i8)))
      OpenAD_acc_45 = (INT((-1_w2f__i8))*OpenAD_lin_177)
      OpenAD_acc_46 = (OpenAD_lin_178*INT((-1_w2f__i8)))
      OpenAD_acc_47 = (OpenAD_lin_179*INT((-1_w2f__i8)))
      OpenAD_acc_48 = (OpenAD_lin_181*INT((-1_w2f__i8)))
      OpenAD_acc_49 = (OpenAD_lin_182*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_7,ALAMCM)
      CALL setderiv(OpenAD_prop_8,ALAMCP)
      CALL setderiv(OpenAD_prop_9,ALAMU)
      CALL setderiv(OpenAD_prop_10,LAMCM)
      CALL dec_deriv(OpenAD_prop_10,OpenAD_prop_7)
      CALL setderiv(OpenAD_prop_11,LAMCP)
      CALL dec_deriv(OpenAD_prop_11,OpenAD_prop_8)
      CALL setderiv(OpenAD_prop_12,LAMU)
      CALL dec_deriv(OpenAD_prop_12,OpenAD_prop_9)
      CALL sax(OpenAD_lin_113,PRIML(2),RUL)
      CALL saxpy(OpenAD_lin_114,PRIML(3),RUL)
      CALL sax(OpenAD_lin_115,PRIML(2),RVL)
      CALL saxpy(OpenAD_lin_116,PRIML(4),RVL)
      CALL sax(OpenAD_lin_117,PRIML(2),RWL)
      CALL saxpy(OpenAD_lin_118,PRIML(5),RWL)
      CALL setderiv(DR,PRIMR(2))
      CALL dec_deriv(DR,PRIML(2))
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_lin_123,PRIMR(2),DRU)
      CALL saxpy(OpenAD_lin_124,PRIMR(3),DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_lin_125,PRIMR(2),DRV)
      CALL saxpy(OpenAD_lin_126,PRIMR(4),DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_lin_127,PRIMR(2),DRW)
      CALL saxpy(OpenAD_lin_128,PRIMR(5),DRW)
      CALL sax(5.0D-01,OpenAD_prop_10,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prop_11,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prop_12,ALAMU)
      CALL sax(OpenAD_lin_109,PRIML(1),EL)
      CALL saxpy(OpenAD_lin_110,GM1INV,EL)
      CALL saxpy(OpenAD_lin_111,PRIML(2),EL)
      CALL saxpy(OpenAD_lin_112,THETAL,EL)
      CALL set_neg_deriv(OpenAD_prop_13,UTILDE)
      CALL saxpy(OpenAD_lin_154,CAVE,OpenAD_prop_13)
      CALL saxpy(OpenAD_lin_155,NXHAT,OpenAD_prop_13)
      CALL set_neg_deriv(OpenAD_prop_14,VTILDE)
      CALL saxpy(OpenAD_lin_164,CAVE,OpenAD_prop_14)
      CALL saxpy(OpenAD_lin_165,NYHAT,OpenAD_prop_14)
      CALL set_neg_deriv(OpenAD_prop_15,WTILDE)
      CALL saxpy(OpenAD_lin_174,CAVE,OpenAD_prop_15)
      CALL saxpy(OpenAD_lin_175,NZHAT,OpenAD_prop_15)
      CALL set_neg_deriv(OpenAD_prop_16,EL)
      CALL saxpy(OpenAD_lin_119,PRIMR(1),OpenAD_prop_16)
      CALL saxpy(OpenAD_lin_120,GM1INV,OpenAD_prop_16)
      CALL saxpy(OpenAD_lin_121,PRIMR(2),OpenAD_prop_16)
      CALL saxpy(OpenAD_lin_122,THETAR,OpenAD_prop_16)
      CALL saxpy(OpenAD_lin_139,DR,OpenAD_prop_16)
      CALL saxpy(OpenAD_lin_140,THTAVE,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_33,DRU,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_34,UAVE,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_35,DRV,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_36,VAVE,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_37,DRW,OpenAD_prop_16)
      CALL saxpy(OpenAD_acc_38,WAVE,OpenAD_prop_16)
      CALL sax(OpenAD_lin_141,DRU,NDDRU)
      CALL saxpy(OpenAD_lin_142,NXHAT,NDDRU)
      CALL saxpy(OpenAD_lin_143,DRV,NDDRU)
      CALL saxpy(OpenAD_lin_144,NYHAT,NDDRU)
      CALL saxpy(OpenAD_lin_145,DRW,NDDRU)
      CALL saxpy(OpenAD_lin_146,NZHAT,NDDRU)
      CALL sax(OpenAD_lin_136,OpenAD_prop_16,OMEGA)
      CALL saxpy(OpenAD_acc_31,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_32,CAVE,OMEGA)
      CALL setderiv(OpenAD_prop_17,OMEGA)
      CALL dec_deriv(OpenAD_prop_17,NDDRU)
      CALL saxpy(OpenAD_lin_148,DR,OpenAD_prop_17)
      CALL saxpy(OpenAD_lin_149,UHAT,OpenAD_prop_17)
      CALL setderiv(OpenAD_prop_18,NDDRU)
      CALL inc_deriv(OpenAD_prop_18,OMEGA)
      CALL saxpy(OpenAD_acc_48,DR,OpenAD_prop_18)
      CALL saxpy(OpenAD_acc_49,UHAT,OpenAD_prop_18)
      CALL sax(5.0D-01,OpenAD_prop_17,ALP1)
      CALL sax(5.0D-01,OpenAD_prop_18,ALP5)
      CALL sax(OpenAD_lin_150,DRW,ALP2)
      CALL saxpy(OpenAD_lin_151,NYHAT,ALP2)
      CALL saxpy(OpenAD_lin_152,DR,ALP2)
      CALL saxpy(OpenAD_lin_153,OpenAD_prop_13,ALP2)
      CALL saxpy(OpenAD_lin_156,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_39,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_40,DRV,ALP2)
      CALL saxpy(OpenAD_acc_41,NZHAT,ALP2)
      CALL sax(OpenAD_lin_160,DRU,ALP3)
      CALL saxpy(OpenAD_lin_161,NZHAT,ALP3)
      CALL saxpy(OpenAD_lin_162,DR,ALP3)
      CALL saxpy(OpenAD_lin_163,OpenAD_prop_14,ALP3)
      CALL saxpy(OpenAD_lin_166,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_42,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_43,DRW,ALP3)
      CALL saxpy(OpenAD_acc_44,NXHAT,ALP3)
      CALL sax(OpenAD_lin_170,DRV,ALP4)
      CALL saxpy(OpenAD_lin_171,NXHAT,ALP4)
      CALL saxpy(OpenAD_lin_172,DR,ALP4)
      CALL saxpy(OpenAD_lin_173,OpenAD_prop_15,ALP4)
      CALL saxpy(OpenAD_lin_176,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_46,DRU,ALP4)
      CALL saxpy(OpenAD_acc_47,NYHAT,ALP4)
      OpenAD_Symbol_1 = (ALAMCM%v*ALP1%v)
      OpenAD_lin_183 = ALP1%v
      OpenAD_lin_184 = ALAMCM%v
      ALP1%v = OpenAD_Symbol_1
      OpenAD_Symbol_2 = (ALAMU%v*ALP2%v)
      OpenAD_lin_185 = ALP2%v
      OpenAD_lin_186 = ALAMU%v
      ALP2%v = OpenAD_Symbol_2
      OpenAD_Symbol_3 = (ALAMU%v*ALP3%v)
      OpenAD_lin_187 = ALP3%v
      OpenAD_lin_188 = ALAMU%v
      ALP3%v = OpenAD_Symbol_3
      OpenAD_Symbol_4 = (ALAMU%v*ALP4%v)
      OpenAD_lin_189 = ALP4%v
      OpenAD_lin_190 = ALAMU%v
      ALP4%v = OpenAD_Symbol_4
      OpenAD_Symbol_5 = (ALAMCP%v*ALP5%v)
      OpenAD_lin_191 = ALP5%v
      OpenAD_lin_192 = ALAMCP%v
      ALP5%v = OpenAD_Symbol_5
      ALP15P%v = (ALP1%v+ALP5%v)
      ALP15M%v = (ALP1%v-ALP5%v)
      MU%v = ((ALP15P%v/CAVE%v)+ALP2%v*NXHAT%v+ALP3%v*NYHAT%v+ALP4%v*NZH
     +AT%v)
      OpenAD_lin_193 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_194 = (-(ALP15P%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_195 = NXHAT%v
      OpenAD_lin_196 = ALP2%v
      OpenAD_lin_197 = NYHAT%v
      OpenAD_lin_198 = ALP3%v
      OpenAD_lin_199 = NZHAT%v
      OpenAD_lin_200 = ALP4%v
      OpenAD_tmp_26 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_tmp_26-ALP15M%v*UHAT%v+ALP
     +2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_lin_201 = THTAVE%v
      OpenAD_lin_202 = MU%v
      OpenAD_lin_203 = OpenAD_tmp_26
      OpenAD_lin_205 = CAVE%v
      OpenAD_lin_206 = GM1INV%v
      OpenAD_lin_204 = ALP15P%v
      OpenAD_lin_207 = UHAT%v
      OpenAD_lin_208 = ALP15M%v
      OpenAD_lin_209 = UTILDE%v
      OpenAD_lin_210 = ALP2%v
      OpenAD_lin_211 = VTILDE%v
      OpenAD_lin_212 = ALP3%v
      OpenAD_lin_213 = WTILDE%v
      OpenAD_lin_214 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_lin_215 = NZHAT%v
      OpenAD_lin_216 = ALP3%v
      OpenAD_lin_217 = UAVE%v
      OpenAD_lin_218 = MU%v
      OpenAD_lin_219 = NXHAT%v
      OpenAD_lin_220 = ALP15M%v
      OpenAD_lin_221 = NYHAT%v
      OpenAD_lin_222 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_lin_223 = NXHAT%v
      OpenAD_lin_224 = ALP4%v
      OpenAD_lin_225 = VAVE%v
      OpenAD_lin_226 = MU%v
      OpenAD_lin_227 = NYHAT%v
      OpenAD_lin_228 = ALP15M%v
      OpenAD_lin_229 = NZHAT%v
      OpenAD_lin_230 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_lin_231 = NYHAT%v
      OpenAD_lin_232 = ALP2%v
      OpenAD_lin_233 = WAVE%v
      OpenAD_lin_234 = MU%v
      OpenAD_lin_235 = NZHAT%v
      OpenAD_lin_236 = ALP15M%v
      OpenAD_lin_237 = NXHAT%v
      OpenAD_lin_238 = ALP3%v
      UHATL%v = (PRIML(3)%v*NXHAT%v+PRIML(4)%v*NYHAT%v+PRIML(5)%v*NZHAT%
     +v)
      OpenAD_lin_239 = NXHAT%v
      OpenAD_lin_240 = PRIML(3)%v
      OpenAD_lin_241 = NYHAT%v
      OpenAD_lin_242 = PRIML(4)%v
      OpenAD_lin_243 = NZHAT%v
      OpenAD_lin_244 = PRIML(5)%v
      OpenAD_tmp_28 = (PRIML(1)%v+EL%v)
      OpenAD_tmp_27 = (DSS1%v+UHATL%v*OpenAD_tmp_28)
      FLUX(1)%v = (NSIZE%v*OpenAD_tmp_27)
      OpenAD_lin_245 = OpenAD_tmp_27
      OpenAD_lin_247 = OpenAD_tmp_28
      OpenAD_lin_248 = UHATL%v
      OpenAD_lin_246 = NSIZE%v
      OpenAD_acc_50 = (OpenAD_lin_247*OpenAD_lin_246)
      OpenAD_acc_51 = (OpenAD_lin_248*OpenAD_lin_246)
      OpenAD_acc_52 = (OpenAD_lin_213*OpenAD_lin_246)
      OpenAD_acc_53 = (OpenAD_lin_214*OpenAD_lin_246)
      OpenAD_acc_54 = (OpenAD_lin_211*OpenAD_lin_246)
      OpenAD_acc_55 = (OpenAD_lin_212*OpenAD_lin_246)
      OpenAD_acc_56 = (OpenAD_lin_209*OpenAD_lin_246)
      OpenAD_acc_57 = (OpenAD_lin_210*OpenAD_lin_246)
      OpenAD_acc_58 = (OpenAD_lin_201*OpenAD_lin_246)
      OpenAD_acc_59 = (OpenAD_lin_202*OpenAD_lin_246)
      OpenAD_acc_60 = (OpenAD_lin_203*OpenAD_lin_246)
      OpenAD_acc_61 = (OpenAD_lin_205*OpenAD_lin_204*OpenAD_lin_246)
      OpenAD_acc_62 = (OpenAD_lin_206*OpenAD_lin_204*OpenAD_lin_246)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_lin_246)
      OpenAD_acc_64 = (OpenAD_lin_207*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_208*OpenAD_acc_63)
      OpenAD_acc_66 = (OpenAD_lin_221*INT((-1_w2f__i8)))
      OpenAD_acc_67 = (OpenAD_lin_222*INT((-1_w2f__i8)))
      OpenAD_acc_68 = (OpenAD_lin_229*INT((-1_w2f__i8)))
      OpenAD_acc_69 = (OpenAD_lin_230*INT((-1_w2f__i8)))
      OpenAD_acc_70 = (OpenAD_lin_237*INT((-1_w2f__i8)))
      OpenAD_acc_71 = (OpenAD_lin_238*INT((-1_w2f__i8)))
      OpenAD_acc_72 = (OpenAD_lin_235*INT((-1_w2f__i8)))
      OpenAD_acc_73 = (OpenAD_lin_236*INT((-1_w2f__i8)))
      OpenAD_acc_74 = (OpenAD_lin_227*INT((-1_w2f__i8)))
      OpenAD_acc_75 = (OpenAD_lin_228*INT((-1_w2f__i8)))
      OpenAD_acc_76 = (OpenAD_lin_219*INT((-1_w2f__i8)))
      OpenAD_acc_77 = (OpenAD_lin_220*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_19,ALP1)
      CALL setderiv(OpenAD_prop_20,ALP2)
      CALL setderiv(OpenAD_prop_21,ALP3)
      CALL setderiv(OpenAD_prop_22,ALP4)
      CALL setderiv(OpenAD_prop_23,ALP5)
      CALL sax(OpenAD_lin_183,ALAMCM,ALP1)
      CALL saxpy(OpenAD_lin_184,OpenAD_prop_19,ALP1)
      CALL sax(OpenAD_lin_185,ALAMU,ALP2)
      CALL saxpy(OpenAD_lin_186,OpenAD_prop_20,ALP2)
      CALL sax(OpenAD_lin_187,ALAMU,ALP3)
      CALL saxpy(OpenAD_lin_188,OpenAD_prop_21,ALP3)
      CALL sax(OpenAD_lin_189,ALAMU,ALP4)
      CALL saxpy(OpenAD_lin_190,OpenAD_prop_22,ALP4)
      CALL sax(OpenAD_lin_191,ALAMCP,ALP5)
      CALL saxpy(OpenAD_lin_192,OpenAD_prop_23,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prop_24,PRIML(1))
      CALL inc_deriv(OpenAD_prop_24,EL)
      CALL sax(OpenAD_lin_239,PRIML(3),UHATL)
      CALL saxpy(OpenAD_lin_240,NXHAT,UHATL)
      CALL saxpy(OpenAD_lin_241,PRIML(4),UHATL)
      CALL saxpy(OpenAD_lin_242,NYHAT,UHATL)
      CALL saxpy(OpenAD_lin_243,PRIML(5),UHATL)
      CALL saxpy(OpenAD_lin_244,NZHAT,UHATL)
      CALL sax(OpenAD_lin_193,ALP15P,MU)
      CALL saxpy(OpenAD_lin_194,CAVE,MU)
      CALL saxpy(OpenAD_lin_195,ALP2,MU)
      CALL saxpy(OpenAD_lin_196,NXHAT,MU)
      CALL saxpy(OpenAD_lin_197,ALP3,MU)
      CALL saxpy(OpenAD_lin_198,NYHAT,MU)
      CALL saxpy(OpenAD_lin_199,ALP4,MU)
      CALL saxpy(OpenAD_lin_200,NZHAT,MU)
      CALL setderiv(DSS2,MU)
      CALL sax(OpenAD_lin_217,MU,DSS3)
      CALL saxpy(OpenAD_lin_218,UAVE,DSS3)
      CALL saxpy(OpenAD_acc_66,ALP4,DSS3)
      CALL saxpy(OpenAD_acc_67,NYHAT,DSS3)
      CALL saxpy(OpenAD_lin_215,ALP3,DSS3)
      CALL saxpy(OpenAD_lin_216,NZHAT,DSS3)
      CALL saxpy(OpenAD_acc_76,ALP15M,DSS3)
      CALL saxpy(OpenAD_acc_77,NXHAT,DSS3)
      CALL sax(OpenAD_lin_225,MU,DSS4)
      CALL saxpy(OpenAD_lin_226,VAVE,DSS4)
      CALL saxpy(OpenAD_acc_68,ALP2,DSS4)
      CALL saxpy(OpenAD_acc_69,NZHAT,DSS4)
      CALL saxpy(OpenAD_lin_223,ALP4,DSS4)
      CALL saxpy(OpenAD_lin_224,NXHAT,DSS4)
      CALL saxpy(OpenAD_acc_74,ALP15M,DSS4)
      CALL saxpy(OpenAD_acc_75,NYHAT,DSS4)
      CALL sax(OpenAD_lin_233,MU,DSS5)
      CALL saxpy(OpenAD_lin_234,WAVE,DSS5)
      CALL saxpy(OpenAD_acc_70,ALP3,DSS5)
      CALL saxpy(OpenAD_acc_71,NXHAT,DSS5)
      CALL saxpy(OpenAD_lin_231,ALP2,DSS5)
      CALL saxpy(OpenAD_lin_232,NYHAT,DSS5)
      CALL saxpy(OpenAD_acc_72,ALP15M,DSS5)
      CALL saxpy(OpenAD_acc_73,NZHAT,DSS5)
      CALL sax(OpenAD_lin_245,NSIZE,FLUX(1))
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
      OpenAD_tmp_29 = (DSS2%v+PRIML(2)%v*UHATL%v)
      FLUX(2)%v = (NSIZE%v*OpenAD_tmp_29)
      OpenAD_lin_249 = OpenAD_tmp_29
      OpenAD_lin_251 = UHATL%v
      OpenAD_lin_252 = PRIML(2)%v
      OpenAD_lin_250 = NSIZE%v
      CALL setderiv(OpenAD_prop_25,DSS2)
      CALL saxpy(OpenAD_lin_251,PRIML(2),OpenAD_prop_25)
      CALL saxpy(OpenAD_lin_252,UHATL,OpenAD_prop_25)
      CALL sax(OpenAD_lin_249,NSIZE,FLUX(2))
      CALL saxpy(OpenAD_lin_250,OpenAD_prop_25,FLUX(2))
      OpenAD_tmp_30 = (DSS3%v+PRIML(1)%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX(3)%v = (NSIZE%v*OpenAD_tmp_30)
      OpenAD_lin_253 = OpenAD_tmp_30
      OpenAD_lin_255 = NXHAT%v
      OpenAD_lin_256 = PRIML(1)%v
      OpenAD_lin_257 = UHATL%v
      OpenAD_lin_258 = RUL%v
      OpenAD_lin_254 = NSIZE%v
      CALL setderiv(OpenAD_prop_26,DSS3)
      CALL saxpy(OpenAD_lin_255,PRIML(1),OpenAD_prop_26)
      CALL saxpy(OpenAD_lin_256,NXHAT,OpenAD_prop_26)
      CALL saxpy(OpenAD_lin_257,RUL,OpenAD_prop_26)
      CALL saxpy(OpenAD_lin_258,UHATL,OpenAD_prop_26)
      CALL sax(OpenAD_lin_253,NSIZE,FLUX(3))
      CALL saxpy(OpenAD_lin_254,OpenAD_prop_26,FLUX(3))
      OpenAD_tmp_31 = (DSS4%v+PRIML(1)%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX(4)%v = (NSIZE%v*OpenAD_tmp_31)
      OpenAD_lin_259 = OpenAD_tmp_31
      OpenAD_lin_261 = NYHAT%v
      OpenAD_lin_262 = PRIML(1)%v
      OpenAD_lin_263 = UHATL%v
      OpenAD_lin_264 = RVL%v
      OpenAD_lin_260 = NSIZE%v
      CALL setderiv(OpenAD_prop_27,DSS4)
      CALL saxpy(OpenAD_lin_261,PRIML(1),OpenAD_prop_27)
      CALL saxpy(OpenAD_lin_262,NYHAT,OpenAD_prop_27)
      CALL saxpy(OpenAD_lin_263,RVL,OpenAD_prop_27)
      CALL saxpy(OpenAD_lin_264,UHATL,OpenAD_prop_27)
      CALL sax(OpenAD_lin_259,NSIZE,FLUX(4))
      CALL saxpy(OpenAD_lin_260,OpenAD_prop_27,FLUX(4))
      OpenAD_tmp_32 = (DSS5%v+PRIML(1)%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX(5)%v = (NSIZE%v*OpenAD_tmp_32)
      OpenAD_lin_265 = OpenAD_tmp_32
      OpenAD_lin_267 = NZHAT%v
      OpenAD_lin_268 = PRIML(1)%v
      OpenAD_lin_269 = UHATL%v
      OpenAD_lin_270 = RWL%v
      OpenAD_lin_266 = NSIZE%v
      CALL setderiv(OpenAD_prop_28,DSS5)
      CALL saxpy(OpenAD_lin_267,PRIML(1),OpenAD_prop_28)
      CALL saxpy(OpenAD_lin_268,NZHAT,OpenAD_prop_28)
      CALL saxpy(OpenAD_lin_269,RWL,OpenAD_prop_28)
      CALL saxpy(OpenAD_lin_270,UHATL,OpenAD_prop_28)
      CALL sax(OpenAD_lin_265,NSIZE,FLUX(5))
      CALL saxpy(OpenAD_lin_266,OpenAD_prop_28,FLUX(5))
      END SUBROUTINE
