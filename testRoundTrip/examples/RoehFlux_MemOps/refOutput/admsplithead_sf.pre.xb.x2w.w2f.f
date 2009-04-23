
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
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
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
      REAL(w2f__8) OpenAD_lin_27
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
      REAL(w2f__8) OpenAD_lin_95
      REAL(w2f__8) OpenAD_lin_96
      REAL(w2f__8) OpenAD_lin_97
      REAL(w2f__8) OpenAD_lin_98
      REAL(w2f__8) OpenAD_lin_99
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_10
      TYPE (OpenADTy_active) OpenAD_prop_11
      TYPE (OpenADTy_active) OpenAD_prop_12
      TYPE (OpenADTy_active) OpenAD_prop_13
      TYPE (OpenADTy_active) OpenAD_prop_14
      TYPE (OpenADTy_active) OpenAD_prop_15
      TYPE (OpenADTy_active) OpenAD_prop_16
      TYPE (OpenADTy_active) OpenAD_prop_17
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_5
      TYPE (OpenADTy_active) OpenAD_prop_6
      TYPE (OpenADTy_active) OpenAD_prop_7
      TYPE (OpenADTy_active) OpenAD_prop_8
      TYPE (OpenADTy_active) OpenAD_prop_9
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
      REAL(w2f__8) OpenAD_tmp_4
      REAL(w2f__8) OpenAD_tmp_5
      REAL(w2f__8) OpenAD_tmp_6
      REAL(w2f__8) OpenAD_tmp_7
      REAL(w2f__8) OpenAD_tmp_8
      REAL(w2f__8) OpenAD_tmp_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) NRM1
      TYPE (OpenADTy_active) NRM2
      TYPE (OpenADTy_active) NRM3
      TYPE (OpenADTy_active) PRIML1
      TYPE (OpenADTy_active) PRIML2
      TYPE (OpenADTy_active) PRIML3
      TYPE (OpenADTy_active) PRIML4
      TYPE (OpenADTy_active) PRIML5
      TYPE (OpenADTy_active) PRIMR1
      TYPE (OpenADTy_active) PRIMR2
      TYPE (OpenADTy_active) PRIMR3
      TYPE (OpenADTy_active) PRIMR4
      TYPE (OpenADTy_active) PRIMR5
      TYPE (OpenADTy_active) GAMMA
      TYPE (OpenADTy_active) GM1
      TYPE (OpenADTy_active) GM1INV
      REAL(w2f__8) NLEFIX
      INTENT(IN)  NLEFIX
      REAL(w2f__8) LEFIX
      INTENT(IN)  LEFIX
      REAL(w2f__8) MCHEPS
      INTENT(IN)  MCHEPS
      TYPE (OpenADTy_active) FLUX1
      TYPE (OpenADTy_active) FLUX2
      TYPE (OpenADTy_active) FLUX3
      TYPE (OpenADTy_active) FLUX4
      TYPE (OpenADTy_active) FLUX5
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
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_109
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
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_40
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
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_76
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_80
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
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      __value__(NSIZE) = SIN((__value__(NRM1) ** 2) +(__value__(NRM2)
     >  ** 2) +(__value__(NRM3) ** 2))
      __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
      __value__(NXHAT) = (__value__(NRM1) * __value__(NSIZEI))
      __value__(NYHAT) = (__value__(NRM2) * __value__(NSIZEI))
      __value__(NZHAT) = (__value__(NRM3) * __value__(NSIZEI))
      __value__(ROEL) = (1.0D00 /(SIN(__value__(PRIMR2) / __value__(
     > PRIML2)) + 1.0D00))
      __value__(ROER) = (1.0D00 - __value__(ROEL))
      __value__(THETAL) = (((__value__(PRIML3) ** 2) +(__value__(PRIML4
     > ) ** 2) +(__value__(PRIML5) ** 2)) * 5.0D-01)
      __value__(THETAR) = (((__value__(PRIMR3) ** 2) +(__value__(PRIMR4
     > ) ** 2) +(__value__(PRIMR5) ** 2)) * 5.0D-01)
      __value__(HL) = (__value__(THETAL) +((__value__(PRIML1) *
     >  __value__(GAMMA) * __value__(GM1INV)) / __value__(PRIML2)))
      __value__(HR) = (__value__(THETAR) +((__value__(PRIMR1) *
     >  __value__(GAMMA) * __value__(GM1INV)) / __value__(PRIMR2)))
      __value__(UAVE) = (__value__(PRIML3) * __value__(ROEL) +
     >  __value__(PRIMR3) * __value__(ROER))
      __value__(VAVE) = (__value__(PRIML4) * __value__(ROEL) +
     >  __value__(PRIMR4) * __value__(ROER))
      __value__(WAVE) = (__value__(PRIML5) * __value__(ROEL) +
     >  __value__(PRIMR5) * __value__(ROER))
      __value__(HAVE) = (__value__(HL) * __value__(ROEL) + __value__(HR
     > ) * __value__(ROER))
      __value__(THTAVE) = (((__value__(UAVE) ** 2) +(__value__(VAVE) **
     >  2) +(__value__(WAVE) ** 2)) * 5.0D-01)
      __value__(CAVE) = (__value__(GM1) *(__value__(HAVE) - __value__(
     > THTAVE)))
      __value__(CAVE) = SIN(__value__(CAVE))
      __value__(UHAT) = (__value__(NXHAT) * __value__(UAVE) + __value__
     > (NYHAT) * __value__(VAVE) + __value__(NZHAT) * __value__(WAVE))
      __value__(UTILDE) = (__value__(NYHAT) * __value__(WAVE) -
     >  __value__(NZHAT) * __value__(VAVE))
      __value__(VTILDE) = (__value__(NZHAT) * __value__(UAVE) -
     >  __value__(NXHAT) * __value__(WAVE))
      __value__(WTILDE) = (__value__(NXHAT) * __value__(VAVE) -
     >  __value__(NYHAT) * __value__(UAVE))
      __value__(LAMCM) = (__value__(UHAT) - __value__(CAVE))
      __value__(LAMU) = __value__(UHAT)
      __value__(LAMCP) = (__value__(CAVE) + __value__(UHAT))
      __value__(ALAMCM) = __value__(LAMCM)
      __value__(ALAMCP) = __value__(LAMCP)
      __value__(ALAMU) = __value__(LAMU)
      __value__(ALAMCM) = ((__value__(LAMCM) - __value__(ALAMCM)) *
     >  5.0D-01)
      __value__(ALAMCP) = ((__value__(LAMCP) - __value__(ALAMCP)) *
     >  5.0D-01)
      __value__(ALAMU) = ((__value__(LAMU) - __value__(ALAMU)) *
     >  5.0D-01)
      __value__(EL) = (__value__(PRIML1) * __value__(GM1INV) +
     >  __value__(PRIML2) * __value__(THETAL))
      __value__(RUL) = (__value__(PRIML2) * __value__(PRIML3))
      __value__(RVL) = (__value__(PRIML2) * __value__(PRIML4))
      __value__(RWL) = (__value__(PRIML2) * __value__(PRIML5))
      __value__(ER) = (__value__(PRIMR1) * __value__(GM1INV) +
     >  __value__(PRIMR2) * __value__(THETAR))
      __value__(RUR) = (__value__(PRIMR2) * __value__(PRIMR3))
      __value__(RVR) = (__value__(PRIMR2) * __value__(PRIMR4))
      __value__(RWR) = (__value__(PRIMR2) * __value__(PRIMR5))
      __value__(DE) = (__value__(ER) - __value__(EL))
      __value__(DR) = (__value__(PRIMR2) - __value__(PRIML2))
      __value__(DRU) = (__value__(RUR) - __value__(RUL))
      __value__(DRV) = (__value__(RVR) - __value__(RVL))
      __value__(DRW) = (__value__(RWR) - __value__(RWL))
      __value__(UDDRU) = (__value__(DRU) * __value__(UAVE) + __value__(
     > DRV) * __value__(VAVE) + __value__(DRW) * __value__(WAVE))
      __value__(OMEGA) = ((__value__(GM1) / __value__(CAVE)) *(
     > __value__(DE) + __value__(DR) * __value__(THTAVE) - __value__(
     > UDDRU)))
      __value__(NDDRU) = (__value__(DRU) * __value__(NXHAT) + __value__
     > (DRV) * __value__(NYHAT) + __value__(DRW) * __value__(NZHAT))
      __value__(ALP1) = ((__value__(OMEGA) + __value__(DR) * __value__(
     > UHAT) - __value__(NDDRU)) * 5.0D-01)
      __value__(ALP2) = (__value__(DRW) * __value__(NYHAT) + __value__(
     > DR) *(__value__(CAVE) * __value__(NXHAT) - __value__(UTILDE)) +
     >  __value__(OMEGA) *(- __value__(NXHAT)) - __value__(DRV) *
     >  __value__(NZHAT))
      __value__(ALP3) = (__value__(DRU) * __value__(NZHAT) + __value__(
     > DR) *(__value__(CAVE) * __value__(NYHAT) - __value__(VTILDE)) +
     >  __value__(OMEGA) *(- __value__(NYHAT)) - __value__(DRW) *
     >  __value__(NXHAT))
      __value__(ALP4) = (__value__(DRV) * __value__(NXHAT) + __value__(
     > DR) *(__value__(CAVE) * __value__(NZHAT) - __value__(WTILDE)) +
     >  __value__(OMEGA) *(- __value__(NZHAT)) - __value__(DRU) *
     >  __value__(NYHAT))
      __value__(ALP5) = ((__value__(NDDRU) + __value__(OMEGA) -
     >  __value__(DR) * __value__(UHAT)) * 5.0D-01)
      __value__(ALP1) = (__value__(ALAMCM) * __value__(ALP1))
      __value__(ALP2) = (__value__(ALAMU) * __value__(ALP2))
      __value__(ALP3) = (__value__(ALAMU) * __value__(ALP3))
      __value__(ALP4) = (__value__(ALAMU) * __value__(ALP4))
      __value__(ALP5) = (__value__(ALAMCP) * __value__(ALP5))
      __value__(ALP15P) = (__value__(ALP1) + __value__(ALP5))
      __value__(ALP15M) = (__value__(ALP1) - __value__(ALP5))
      __value__(MU) = ((__value__(ALP15P) / __value__(CAVE)) +
     >  __value__(ALP2) * __value__(NXHAT) + __value__(ALP3) *
     >  __value__(NYHAT) + __value__(ALP4) * __value__(NZHAT))
      __value__(DSS1) = (__value__(MU) * __value__(THTAVE) + __value__(
     > ALP15P) * __value__(GM1INV) * __value__(CAVE) - __value__(ALP15M
     > ) * __value__(UHAT) + __value__(ALP2) * __value__(UTILDE) +
     >  __value__(ALP3) * __value__(VTILDE) + __value__(ALP4) *
     >  __value__(WTILDE))
      __value__(DSS2) = __value__(MU)
      __value__(DSS3) = (__value__(ALP3) * __value__(NZHAT) + __value__
     > (MU) * __value__(UAVE) - __value__(ALP15M) * __value__(NXHAT) -
     >  __value__(ALP4) * __value__(NYHAT))
      __value__(DSS4) = (__value__(ALP4) * __value__(NXHAT) + __value__
     > (MU) * __value__(VAVE) - __value__(ALP15M) * __value__(NYHAT) -
     >  __value__(ALP2) * __value__(NZHAT))
      __value__(DSS5) = (__value__(ALP2) * __value__(NYHAT) + __value__
     > (MU) * __value__(WAVE) - __value__(ALP15M) * __value__(NZHAT) -
     >  __value__(ALP3) * __value__(NXHAT))
      __value__(UHATL) = (__value__(PRIML3) * __value__(NXHAT) +
     >  __value__(PRIML4) * __value__(NYHAT) + __value__(PRIML5) *
     >  __value__(NZHAT))
      __value__(FLUX1) = (__value__(NSIZE) *(__value__(DSS1) +
     >  __value__(UHATL) *(__value__(PRIML1) + __value__(EL))))
      __value__(FLUX2) = (__value__(NSIZE) *(__value__(DSS2) +
     >  __value__(PRIML2) * __value__(UHATL)))
      __value__(FLUX3) = (__value__(NSIZE) *(__value__(DSS3) +
     >  __value__(PRIML1) * __value__(NXHAT) + __value__(RUL) *
     >  __value__(UHATL)))
      __value__(FLUX4) = (__value__(NSIZE) *(__value__(DSS4) +
     >  __value__(PRIML1) * __value__(NYHAT) + __value__(RVL) *
     >  __value__(UHATL)))
      __value__(FLUX5) = (__value__(NSIZE) *(__value__(DSS5) +
     >  __value__(PRIML1) * __value__(NZHAT) + __value__(RWL) *
     >  __value__(UHATL)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = ((__value__(NRM1) ** 2) +(__value__(NRM2) ** 2) +(
     > __value__(NRM3) ** 2))
      __value__(NSIZE) = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = (2 *(__value__(NRM1) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_3 = (2 *(__value__(NRM2) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_5 = (2 *(__value__(NRM3) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
      OpenAD_lin_8 = (-(1.0D00 /(__value__(NSIZE) * __value__(NSIZE))))
      __value__(NXHAT) = (__value__(NRM1) * __value__(NSIZEI))
      OpenAD_lin_9 = __value__(NSIZEI)
      OpenAD_lin_10 = __value__(NRM1)
      __value__(NYHAT) = (__value__(NRM2) * __value__(NSIZEI))
      OpenAD_lin_11 = __value__(NSIZEI)
      OpenAD_lin_12 = __value__(NRM2)
      __value__(NZHAT) = (__value__(NRM3) * __value__(NSIZEI))
      OpenAD_lin_13 = __value__(NSIZEI)
      OpenAD_lin_14 = __value__(NRM3)
      OpenAD_tmp_2 = (__value__(PRIMR2) / __value__(PRIML2))
      OpenAD_tmp_1 = (SIN(OpenAD_tmp_2) + 1.0D00)
      __value__(ROEL) = (1.0D00 / OpenAD_tmp_1)
      OpenAD_lin_19 = (INT(1_w2f__i8) / __value__(PRIML2))
      OpenAD_lin_20 = (-(__value__(PRIMR2) /(__value__(PRIML2) *
     >  __value__(PRIML2))))
      OpenAD_lin_18 = COS(OpenAD_tmp_2)
      OpenAD_lin_16 = (-(1.0D00 /(OpenAD_tmp_1 * OpenAD_tmp_1)))
      __value__(ROER) = (1.0D00 - __value__(ROEL))
      OpenAD_tmp_3 = ((__value__(PRIML3) ** 2) +(__value__(PRIML4) ** 2
     > ) +(__value__(PRIML5) ** 2))
      __value__(THETAL) = (OpenAD_tmp_3 * 5.0D-01)
      OpenAD_lin_23 = (2 *(__value__(PRIML3) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_25 = (2 *(__value__(PRIML4) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_27 = (2 *(__value__(PRIML5) **(2 - INT(1_w2f__i8))))
      OpenAD_tmp_4 = ((__value__(PRIMR3) ** 2) +(__value__(PRIMR4) ** 2
     > ) +(__value__(PRIMR5) ** 2))
      __value__(THETAR) = (OpenAD_tmp_4 * 5.0D-01)
      OpenAD_lin_30 = (2 *(__value__(PRIMR3) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_32 = (2 *(__value__(PRIMR4) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_34 = (2 *(__value__(PRIMR5) **(2 - INT(1_w2f__i8))))
      OpenAD_tmp_6 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_tmp_5 = (__value__(PRIML1) * OpenAD_tmp_6)
      __value__(HL) = (__value__(THETAL) +(OpenAD_tmp_5 / __value__(
     > PRIML2)))
      OpenAD_lin_38 = OpenAD_tmp_6
      OpenAD_lin_40 = __value__(GM1INV)
      OpenAD_lin_41 = __value__(GAMMA)
      OpenAD_lin_39 = __value__(PRIML1)
      OpenAD_lin_36 = (INT(1_w2f__i8) / __value__(PRIML2))
      OpenAD_lin_37 = (-(OpenAD_tmp_5 /(__value__(PRIML2) * __value__(
     > PRIML2))))
      OpenAD_tmp_8 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_tmp_7 = (__value__(PRIMR1) * OpenAD_tmp_8)
      __value__(HR) = (__value__(THETAR) +(OpenAD_tmp_7 / __value__(
     > PRIMR2)))
      OpenAD_lin_44 = OpenAD_tmp_8
      OpenAD_lin_46 = __value__(GM1INV)
      OpenAD_lin_47 = __value__(GAMMA)
      OpenAD_lin_45 = __value__(PRIMR1)
      OpenAD_lin_42 = (INT(1_w2f__i8) / __value__(PRIMR2))
      OpenAD_lin_43 = (-(OpenAD_tmp_7 /(__value__(PRIMR2) * __value__(
     > PRIMR2))))
      __value__(UAVE) = (__value__(PRIML3) * __value__(ROEL) +
     >  __value__(PRIMR3) * __value__(ROER))
      OpenAD_lin_48 = __value__(ROEL)
      OpenAD_lin_49 = __value__(PRIML3)
      OpenAD_lin_50 = __value__(ROER)
      OpenAD_lin_51 = __value__(PRIMR3)
      __value__(VAVE) = (__value__(PRIML4) * __value__(ROEL) +
     >  __value__(PRIMR4) * __value__(ROER))
      OpenAD_lin_52 = __value__(ROEL)
      OpenAD_lin_53 = __value__(PRIML4)
      OpenAD_lin_54 = __value__(ROER)
      OpenAD_lin_55 = __value__(PRIMR4)
      __value__(WAVE) = (__value__(PRIML5) * __value__(ROEL) +
     >  __value__(PRIMR5) * __value__(ROER))
      OpenAD_lin_56 = __value__(ROEL)
      OpenAD_lin_57 = __value__(PRIML5)
      OpenAD_lin_58 = __value__(ROER)
      OpenAD_lin_59 = __value__(PRIMR5)
      __value__(HAVE) = (__value__(HL) * __value__(ROEL) + __value__(HR
     > ) * __value__(ROER))
      OpenAD_lin_60 = __value__(ROEL)
      OpenAD_lin_61 = __value__(HL)
      OpenAD_lin_62 = __value__(ROER)
      OpenAD_lin_63 = __value__(HR)
      OpenAD_tmp_9 = ((__value__(UAVE) ** 2) +(__value__(VAVE) ** 2) +(
     > __value__(WAVE) ** 2))
      __value__(THTAVE) = (OpenAD_tmp_9 * 5.0D-01)
      OpenAD_lin_65 = (2 *(__value__(UAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_67 = (2 *(__value__(VAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_69 = (2 *(__value__(WAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_tmp_10 = (__value__(HAVE) - __value__(THTAVE))
      __value__(CAVE) = (__value__(GM1) * OpenAD_tmp_10)
      OpenAD_lin_71 = OpenAD_tmp_10
      OpenAD_lin_72 = __value__(GM1)
      OpenAD_acc_0 = (OpenAD_lin_45 * OpenAD_lin_42)
      OpenAD_acc_1 = (OpenAD_lin_39 * OpenAD_lin_36)
      OpenAD_acc_2 = (OpenAD_lin_8 * OpenAD_lin_10)
      OpenAD_acc_3 = (OpenAD_lin_8 * OpenAD_lin_12)
      OpenAD_acc_4 = (OpenAD_lin_8 * OpenAD_lin_14)
      OpenAD_acc_5 = (5.0D-01 * INT((-1_w2f__i8)) * OpenAD_lin_72)
      OpenAD_acc_6 = (OpenAD_lin_62 * OpenAD_lin_72)
      OpenAD_acc_7 = (OpenAD_lin_60 * OpenAD_lin_72)
      OpenAD_acc_8 = (OpenAD_lin_16 *(OpenAD_lin_61 * OpenAD_lin_72 +
     >  INT((-1_w2f__i8)) * OpenAD_lin_63 * OpenAD_lin_72))
      OpenAD_acc_9 = (OpenAD_lin_16 *(OpenAD_lin_57 + INT((-1_w2f__i8))
     >  * OpenAD_lin_59))
      OpenAD_acc_10 = (OpenAD_lin_16 *(OpenAD_lin_53 + INT((-1_w2f__i8)
     > ) * OpenAD_lin_55))
      OpenAD_acc_11 = (OpenAD_lin_16 *(OpenAD_lin_49 + INT((-1_w2f__i8)
     > ) * OpenAD_lin_51))
      OpenAD_acc_12 = (OpenAD_lin_19 * OpenAD_lin_18)
      OpenAD_acc_13 = (OpenAD_lin_20 * OpenAD_lin_18)
      OpenAD_acc_14 = (OpenAD_lin_38 * OpenAD_lin_36)
      OpenAD_acc_15 = (OpenAD_lin_40 * OpenAD_acc_1)
      OpenAD_acc_16 = (OpenAD_lin_41 * OpenAD_acc_1)
      OpenAD_acc_17 = (OpenAD_lin_44 * OpenAD_lin_42)
      OpenAD_acc_18 = (OpenAD_lin_46 * OpenAD_acc_0)
      OpenAD_acc_19 = (OpenAD_lin_47 * OpenAD_acc_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_5)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_12)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_25)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_34)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_30)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_2)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_4)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_16)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_17)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_18)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_19)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_50)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_48)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_54)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_52)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_58)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_56)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_69)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_65)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_71)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_5)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_6)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_7)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_8)
      OpenAD_Symbol_0 = SIN(__value__(CAVE))
      OpenAD_lin_73 = COS(__value__(CAVE))
      __value__(CAVE) = OpenAD_Symbol_0
      __value__(UHAT) = (__value__(NXHAT) * __value__(UAVE) + __value__
     > (NYHAT) * __value__(VAVE) + __value__(NZHAT) * __value__(WAVE))
      OpenAD_lin_74 = __value__(UAVE)
      OpenAD_lin_75 = __value__(NXHAT)
      OpenAD_lin_76 = __value__(VAVE)
      OpenAD_lin_77 = __value__(NYHAT)
      OpenAD_lin_78 = __value__(WAVE)
      OpenAD_lin_79 = __value__(NZHAT)
      __value__(UTILDE) = (__value__(NYHAT) * __value__(WAVE) -
     >  __value__(NZHAT) * __value__(VAVE))
      OpenAD_lin_80 = __value__(WAVE)
      OpenAD_lin_81 = __value__(NYHAT)
      OpenAD_lin_82 = __value__(VAVE)
      OpenAD_lin_83 = __value__(NZHAT)
      __value__(VTILDE) = (__value__(NZHAT) * __value__(UAVE) -
     >  __value__(NXHAT) * __value__(WAVE))
      OpenAD_lin_84 = __value__(UAVE)
      OpenAD_lin_85 = __value__(NZHAT)
      OpenAD_lin_86 = __value__(WAVE)
      OpenAD_lin_87 = __value__(NXHAT)
      __value__(WTILDE) = (__value__(NXHAT) * __value__(VAVE) -
     >  __value__(NYHAT) * __value__(UAVE))
      OpenAD_lin_88 = __value__(VAVE)
      OpenAD_lin_89 = __value__(NXHAT)
      OpenAD_lin_90 = __value__(UAVE)
      OpenAD_lin_91 = __value__(NYHAT)
      __value__(LAMCM) = (__value__(UHAT) - __value__(CAVE))
      __value__(LAMU) = __value__(UHAT)
      __value__(LAMCP) = (__value__(CAVE) + __value__(UHAT))
      __value__(ALAMCM) = __value__(LAMCM)
      __value__(ALAMCP) = __value__(LAMCP)
      __value__(ALAMU) = __value__(LAMU)
      OpenAD_acc_20 = (OpenAD_lin_82 * INT((-1_w2f__i8)))
      OpenAD_acc_21 = (OpenAD_lin_83 * INT((-1_w2f__i8)))
      OpenAD_acc_22 = (OpenAD_lin_86 * INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_87 * INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_90 * INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_91 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_73)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_80)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_81)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_20)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_21)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_84)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_85)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_22)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_88)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_24)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_25)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_74)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_76)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_78)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_79)
      OpenAD_tmp_11 = (__value__(LAMCM) - __value__(ALAMCM))
      __value__(ALAMCM) = (OpenAD_tmp_11 * 5.0D-01)
      OpenAD_tmp_12 = (__value__(LAMCP) - __value__(ALAMCP))
      __value__(ALAMCP) = (OpenAD_tmp_12 * 5.0D-01)
      OpenAD_tmp_13 = (__value__(LAMU) - __value__(ALAMU))
      __value__(ALAMU) = (OpenAD_tmp_13 * 5.0D-01)
      __value__(EL) = (__value__(PRIML1) * __value__(GM1INV) +
     >  __value__(PRIML2) * __value__(THETAL))
      OpenAD_lin_95 = __value__(GM1INV)
      OpenAD_lin_96 = __value__(PRIML1)
      OpenAD_lin_97 = __value__(THETAL)
      OpenAD_lin_98 = __value__(PRIML2)
      __value__(RUL) = (__value__(PRIML2) * __value__(PRIML3))
      OpenAD_lin_99 = __value__(PRIML3)
      OpenAD_lin_100 = __value__(PRIML2)
      __value__(RVL) = (__value__(PRIML2) * __value__(PRIML4))
      OpenAD_lin_101 = __value__(PRIML4)
      OpenAD_lin_102 = __value__(PRIML2)
      __value__(RWL) = (__value__(PRIML2) * __value__(PRIML5))
      OpenAD_lin_103 = __value__(PRIML5)
      OpenAD_lin_104 = __value__(PRIML2)
      __value__(ER) = (__value__(PRIMR1) * __value__(GM1INV) +
     >  __value__(PRIMR2) * __value__(THETAR))
      OpenAD_lin_105 = __value__(GM1INV)
      OpenAD_lin_106 = __value__(PRIMR1)
      OpenAD_lin_107 = __value__(THETAR)
      OpenAD_lin_108 = __value__(PRIMR2)
      __value__(RUR) = (__value__(PRIMR2) * __value__(PRIMR3))
      OpenAD_lin_109 = __value__(PRIMR3)
      OpenAD_lin_110 = __value__(PRIMR2)
      __value__(RVR) = (__value__(PRIMR2) * __value__(PRIMR4))
      OpenAD_lin_111 = __value__(PRIMR4)
      OpenAD_lin_112 = __value__(PRIMR2)
      __value__(RWR) = (__value__(PRIMR2) * __value__(PRIMR5))
      OpenAD_lin_113 = __value__(PRIMR5)
      OpenAD_lin_114 = __value__(PRIMR2)
      __value__(DE) = (__value__(ER) - __value__(EL))
      __value__(DR) = (__value__(PRIMR2) - __value__(PRIML2))
      __value__(DRU) = (__value__(RUR) - __value__(RUL))
      __value__(DRV) = (__value__(RVR) - __value__(RVL))
      __value__(DRW) = (__value__(RWR) - __value__(RWL))
      __value__(UDDRU) = (__value__(DRU) * __value__(UAVE) + __value__(
     > DRV) * __value__(VAVE) + __value__(DRW) * __value__(WAVE))
      OpenAD_lin_115 = __value__(UAVE)
      OpenAD_lin_116 = __value__(DRU)
      OpenAD_lin_117 = __value__(VAVE)
      OpenAD_lin_118 = __value__(DRV)
      OpenAD_lin_119 = __value__(WAVE)
      OpenAD_lin_120 = __value__(DRW)
      OpenAD_tmp_14 = (__value__(GM1) / __value__(CAVE))
      OpenAD_tmp_15 = (__value__(DE) + __value__(DR) * __value__(THTAVE
     > ) - __value__(UDDRU))
      __value__(OMEGA) = (OpenAD_tmp_14 * OpenAD_tmp_15)
      OpenAD_lin_123 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_lin_124 = (-(__value__(GM1) /(__value__(CAVE) * __value__(
     > CAVE))))
      OpenAD_lin_121 = OpenAD_tmp_15
      OpenAD_lin_125 = __value__(THTAVE)
      OpenAD_lin_126 = __value__(DR)
      OpenAD_lin_122 = OpenAD_tmp_14
      __value__(NDDRU) = (__value__(DRU) * __value__(NXHAT) + __value__
     > (DRV) * __value__(NYHAT) + __value__(DRW) * __value__(NZHAT))
      OpenAD_lin_127 = __value__(NXHAT)
      OpenAD_lin_128 = __value__(DRU)
      OpenAD_lin_129 = __value__(NYHAT)
      OpenAD_lin_130 = __value__(DRV)
      OpenAD_lin_131 = __value__(NZHAT)
      OpenAD_lin_132 = __value__(DRW)
      OpenAD_tmp_16 = (__value__(OMEGA) + __value__(DR) * __value__(
     > UHAT) - __value__(NDDRU))
      __value__(ALP1) = (OpenAD_tmp_16 * 5.0D-01)
      OpenAD_lin_134 = __value__(UHAT)
      OpenAD_lin_135 = __value__(DR)
      OpenAD_tmp_17 = (__value__(CAVE) * __value__(NXHAT) - __value__(
     > UTILDE))
      OpenAD_tmp_18 = (- __value__(NXHAT))
      __value__(ALP2) = (__value__(DRW) * __value__(NYHAT) + __value__(
     > DR) * OpenAD_tmp_17 + __value__(OMEGA) * OpenAD_tmp_18 -
     >  __value__(DRV) * __value__(NZHAT))
      OpenAD_lin_136 = __value__(NYHAT)
      OpenAD_lin_137 = __value__(DRW)
      OpenAD_lin_138 = OpenAD_tmp_17
      OpenAD_lin_140 = __value__(NXHAT)
      OpenAD_lin_141 = __value__(CAVE)
      OpenAD_lin_139 = __value__(DR)
      OpenAD_lin_142 = OpenAD_tmp_18
      OpenAD_lin_143 = __value__(OMEGA)
      OpenAD_lin_144 = __value__(NZHAT)
      OpenAD_lin_145 = __value__(DRV)
      OpenAD_tmp_19 = (__value__(CAVE) * __value__(NYHAT) - __value__(
     > VTILDE))
      OpenAD_tmp_20 = (- __value__(NYHAT))
      __value__(ALP3) = (__value__(DRU) * __value__(NZHAT) + __value__(
     > DR) * OpenAD_tmp_19 + __value__(OMEGA) * OpenAD_tmp_20 -
     >  __value__(DRW) * __value__(NXHAT))
      OpenAD_lin_146 = __value__(NZHAT)
      OpenAD_lin_147 = __value__(DRU)
      OpenAD_lin_148 = OpenAD_tmp_19
      OpenAD_lin_150 = __value__(NYHAT)
      OpenAD_lin_151 = __value__(CAVE)
      OpenAD_lin_149 = __value__(DR)
      OpenAD_lin_152 = OpenAD_tmp_20
      OpenAD_lin_153 = __value__(OMEGA)
      OpenAD_lin_154 = __value__(NXHAT)
      OpenAD_lin_155 = __value__(DRW)
      OpenAD_tmp_21 = (__value__(CAVE) * __value__(NZHAT) - __value__(
     > WTILDE))
      OpenAD_tmp_22 = (- __value__(NZHAT))
      __value__(ALP4) = (__value__(DRV) * __value__(NXHAT) + __value__(
     > DR) * OpenAD_tmp_21 + __value__(OMEGA) * OpenAD_tmp_22 -
     >  __value__(DRU) * __value__(NYHAT))
      OpenAD_lin_156 = __value__(NXHAT)
      OpenAD_lin_157 = __value__(DRV)
      OpenAD_lin_158 = OpenAD_tmp_21
      OpenAD_lin_160 = __value__(NZHAT)
      OpenAD_lin_161 = __value__(CAVE)
      OpenAD_lin_159 = __value__(DR)
      OpenAD_lin_162 = OpenAD_tmp_22
      OpenAD_lin_163 = __value__(OMEGA)
      OpenAD_lin_164 = __value__(NYHAT)
      OpenAD_lin_165 = __value__(DRU)
      OpenAD_tmp_23 = (__value__(NDDRU) + __value__(OMEGA) - __value__(
     > DR) * __value__(UHAT))
      __value__(ALP5) = (OpenAD_tmp_23 * 5.0D-01)
      OpenAD_lin_167 = __value__(UHAT)
      OpenAD_lin_168 = __value__(DR)
      OpenAD_acc_26 = (OpenAD_lin_123 * OpenAD_lin_121)
      OpenAD_acc_27 = (OpenAD_lin_124 * OpenAD_lin_121)
      OpenAD_acc_28 = (OpenAD_lin_168 *(-5.0D-01))
      OpenAD_acc_29 = (OpenAD_lin_135 * 5.0D-01)
      OpenAD_acc_30 = (INT((-1_w2f__i8)) * OpenAD_lin_122)
      OpenAD_acc_31 = (OpenAD_lin_119 * OpenAD_acc_30)
      OpenAD_acc_32 = (OpenAD_lin_120 * OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_160 * OpenAD_lin_159)
      OpenAD_acc_34 = (OpenAD_lin_161 * OpenAD_lin_159 + INT((
     > -1_w2f__i8)) * OpenAD_lin_163)
      OpenAD_acc_35 = (INT((-1_w2f__i8)) * OpenAD_lin_159)
      OpenAD_acc_36 = (OpenAD_lin_150 * OpenAD_lin_149)
      OpenAD_acc_37 = (OpenAD_lin_151 * OpenAD_lin_149 + INT((
     > -1_w2f__i8)) * OpenAD_lin_153)
      OpenAD_acc_38 = (INT((-1_w2f__i8)) * OpenAD_lin_149)
      OpenAD_acc_39 = (OpenAD_lin_140 * OpenAD_lin_139)
      OpenAD_acc_40 = (OpenAD_lin_141 * OpenAD_lin_139 + INT((
     > -1_w2f__i8)) * OpenAD_lin_143)
      OpenAD_acc_41 = (INT((-1_w2f__i8)) * OpenAD_lin_139)
      OpenAD_acc_42 = (OpenAD_lin_125 * OpenAD_lin_122)
      OpenAD_acc_43 = (OpenAD_lin_126 * OpenAD_lin_122)
      OpenAD_acc_44 = (OpenAD_lin_167 *(-5.0D-01) + OpenAD_acc_42 *
     >  5.0D-01)
      OpenAD_acc_45 = (OpenAD_lin_158 + OpenAD_acc_42 * OpenAD_lin_162)
      OpenAD_acc_46 = (OpenAD_lin_148 + OpenAD_acc_42 * OpenAD_lin_152)
      OpenAD_acc_47 = (OpenAD_lin_138 + OpenAD_acc_42 * OpenAD_lin_142)
      OpenAD_acc_48 = (OpenAD_lin_134 * 5.0D-01 + OpenAD_acc_42 *
     >  5.0D-01)
      OpenAD_acc_49 = (OpenAD_lin_117 * OpenAD_acc_30)
      OpenAD_acc_50 = (OpenAD_lin_118 * OpenAD_acc_30)
      OpenAD_acc_51 = (OpenAD_lin_115 * OpenAD_acc_30)
      OpenAD_acc_52 = (OpenAD_lin_116 * OpenAD_acc_30)
      OpenAD_acc_53 = (OpenAD_lin_164 * INT((-1_w2f__i8)))
      OpenAD_acc_54 = (OpenAD_lin_165 * INT((-1_w2f__i8)))
      OpenAD_acc_55 = (OpenAD_lin_154 * INT((-1_w2f__i8)))
      OpenAD_acc_56 = (OpenAD_lin_155 * INT((-1_w2f__i8)))
      OpenAD_acc_57 = (OpenAD_lin_144 * INT((-1_w2f__i8)))
      OpenAD_acc_58 = (OpenAD_lin_145 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_99)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_100)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_101)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_102)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_103)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_104)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_109)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_110)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_111)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_112)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_113)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_114)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_95)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_96)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_97)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_98)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_105)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_106)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_107)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_108)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_131)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_132)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_129)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_130)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_127)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_128)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_26)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_31)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_122)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_49)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_50)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_51)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_52)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_48)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_44)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_28)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_142)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_47)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_39)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_40)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_41)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_136)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_137)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_57)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_58)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_152)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_46)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_36)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_38)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_146)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_147)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_55)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_56)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_162)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_45)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_33)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_34)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_156)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_157)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_53)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_54)
      OpenAD_Symbol_1 = (__value__(ALAMCM) * __value__(ALP1))
      OpenAD_lin_169 = __value__(ALP1)
      OpenAD_lin_170 = __value__(ALAMCM)
      __value__(ALP1) = OpenAD_Symbol_1
      OpenAD_Symbol_2 = (__value__(ALAMU) * __value__(ALP2))
      OpenAD_lin_171 = __value__(ALP2)
      OpenAD_lin_172 = __value__(ALAMU)
      __value__(ALP2) = OpenAD_Symbol_2
      OpenAD_Symbol_3 = (__value__(ALAMU) * __value__(ALP3))
      OpenAD_lin_173 = __value__(ALP3)
      OpenAD_lin_174 = __value__(ALAMU)
      __value__(ALP3) = OpenAD_Symbol_3
      OpenAD_Symbol_4 = (__value__(ALAMU) * __value__(ALP4))
      OpenAD_lin_175 = __value__(ALP4)
      OpenAD_lin_176 = __value__(ALAMU)
      __value__(ALP4) = OpenAD_Symbol_4
      OpenAD_Symbol_5 = (__value__(ALAMCP) * __value__(ALP5))
      OpenAD_lin_177 = __value__(ALP5)
      OpenAD_lin_178 = __value__(ALAMCP)
      __value__(ALP5) = OpenAD_Symbol_5
      __value__(ALP15P) = (__value__(ALP1) + __value__(ALP5))
      __value__(ALP15M) = (__value__(ALP1) - __value__(ALP5))
      __value__(MU) = ((__value__(ALP15P) / __value__(CAVE)) +
     >  __value__(ALP2) * __value__(NXHAT) + __value__(ALP3) *
     >  __value__(NYHAT) + __value__(ALP4) * __value__(NZHAT))
      OpenAD_lin_179 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_lin_180 = (-(__value__(ALP15P) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_lin_181 = __value__(NXHAT)
      OpenAD_lin_182 = __value__(ALP2)
      OpenAD_lin_183 = __value__(NYHAT)
      OpenAD_lin_184 = __value__(ALP3)
      OpenAD_lin_185 = __value__(NZHAT)
      OpenAD_lin_186 = __value__(ALP4)
      OpenAD_tmp_24 = (__value__(GM1INV) * __value__(CAVE))
      __value__(DSS1) = (__value__(MU) * __value__(THTAVE) + __value__(
     > ALP15P) * OpenAD_tmp_24 - __value__(ALP15M) * __value__(UHAT) +
     >  __value__(ALP2) * __value__(UTILDE) + __value__(ALP3) *
     >  __value__(VTILDE) + __value__(ALP4) * __value__(WTILDE))
      OpenAD_lin_187 = __value__(THTAVE)
      OpenAD_lin_188 = __value__(MU)
      OpenAD_lin_189 = OpenAD_tmp_24
      OpenAD_lin_191 = __value__(CAVE)
      OpenAD_lin_192 = __value__(GM1INV)
      OpenAD_lin_190 = __value__(ALP15P)
      OpenAD_lin_193 = __value__(UHAT)
      OpenAD_lin_194 = __value__(ALP15M)
      OpenAD_lin_195 = __value__(UTILDE)
      OpenAD_lin_196 = __value__(ALP2)
      OpenAD_lin_197 = __value__(VTILDE)
      OpenAD_lin_198 = __value__(ALP3)
      OpenAD_lin_199 = __value__(WTILDE)
      OpenAD_lin_200 = __value__(ALP4)
      __value__(DSS2) = __value__(MU)
      __value__(DSS3) = (__value__(ALP3) * __value__(NZHAT) + __value__
     > (MU) * __value__(UAVE) - __value__(ALP15M) * __value__(NXHAT) -
     >  __value__(ALP4) * __value__(NYHAT))
      OpenAD_lin_201 = __value__(NZHAT)
      OpenAD_lin_202 = __value__(ALP3)
      OpenAD_lin_203 = __value__(UAVE)
      OpenAD_lin_204 = __value__(MU)
      OpenAD_lin_205 = __value__(NXHAT)
      OpenAD_lin_206 = __value__(ALP15M)
      OpenAD_lin_207 = __value__(NYHAT)
      OpenAD_lin_208 = __value__(ALP4)
      __value__(DSS4) = (__value__(ALP4) * __value__(NXHAT) + __value__
     > (MU) * __value__(VAVE) - __value__(ALP15M) * __value__(NYHAT) -
     >  __value__(ALP2) * __value__(NZHAT))
      OpenAD_lin_209 = __value__(NXHAT)
      OpenAD_lin_210 = __value__(ALP4)
      OpenAD_lin_211 = __value__(VAVE)
      OpenAD_lin_212 = __value__(MU)
      OpenAD_lin_213 = __value__(NYHAT)
      OpenAD_lin_214 = __value__(ALP15M)
      OpenAD_lin_215 = __value__(NZHAT)
      OpenAD_lin_216 = __value__(ALP2)
      __value__(DSS5) = (__value__(ALP2) * __value__(NYHAT) + __value__
     > (MU) * __value__(WAVE) - __value__(ALP15M) * __value__(NZHAT) -
     >  __value__(ALP3) * __value__(NXHAT))
      OpenAD_lin_217 = __value__(NYHAT)
      OpenAD_lin_218 = __value__(ALP2)
      OpenAD_lin_219 = __value__(WAVE)
      OpenAD_lin_220 = __value__(MU)
      OpenAD_lin_221 = __value__(NZHAT)
      OpenAD_lin_222 = __value__(ALP15M)
      OpenAD_lin_223 = __value__(NXHAT)
      OpenAD_lin_224 = __value__(ALP3)
      __value__(UHATL) = (__value__(PRIML3) * __value__(NXHAT) +
     >  __value__(PRIML4) * __value__(NYHAT) + __value__(PRIML5) *
     >  __value__(NZHAT))
      OpenAD_lin_225 = __value__(NXHAT)
      OpenAD_lin_226 = __value__(PRIML3)
      OpenAD_lin_227 = __value__(NYHAT)
      OpenAD_lin_228 = __value__(PRIML4)
      OpenAD_lin_229 = __value__(NZHAT)
      OpenAD_lin_230 = __value__(PRIML5)
      OpenAD_tmp_26 = (__value__(PRIML1) + __value__(EL))
      OpenAD_tmp_25 = (__value__(DSS1) + __value__(UHATL) *
     >  OpenAD_tmp_26)
      __value__(FLUX1) = (__value__(NSIZE) * OpenAD_tmp_25)
      OpenAD_lin_231 = OpenAD_tmp_25
      OpenAD_lin_233 = OpenAD_tmp_26
      OpenAD_lin_234 = __value__(UHATL)
      OpenAD_lin_232 = __value__(NSIZE)
      OpenAD_tmp_27 = (__value__(DSS2) + __value__(PRIML2) * __value__(
     > UHATL))
      __value__(FLUX2) = (__value__(NSIZE) * OpenAD_tmp_27)
      OpenAD_lin_235 = OpenAD_tmp_27
      OpenAD_lin_237 = __value__(UHATL)
      OpenAD_lin_238 = __value__(PRIML2)
      OpenAD_lin_236 = __value__(NSIZE)
      OpenAD_tmp_28 = (__value__(DSS3) + __value__(PRIML1) * __value__(
     > NXHAT) + __value__(RUL) * __value__(UHATL))
      __value__(FLUX3) = (__value__(NSIZE) * OpenAD_tmp_28)
      OpenAD_lin_239 = OpenAD_tmp_28
      OpenAD_lin_241 = __value__(NXHAT)
      OpenAD_lin_242 = __value__(PRIML1)
      OpenAD_lin_243 = __value__(UHATL)
      OpenAD_lin_244 = __value__(RUL)
      OpenAD_lin_240 = __value__(NSIZE)
      OpenAD_tmp_29 = (__value__(DSS4) + __value__(PRIML1) * __value__(
     > NYHAT) + __value__(RVL) * __value__(UHATL))
      __value__(FLUX4) = (__value__(NSIZE) * OpenAD_tmp_29)
      OpenAD_lin_245 = OpenAD_tmp_29
      OpenAD_lin_247 = __value__(NYHAT)
      OpenAD_lin_248 = __value__(PRIML1)
      OpenAD_lin_249 = __value__(UHATL)
      OpenAD_lin_250 = __value__(RVL)
      OpenAD_lin_246 = __value__(NSIZE)
      OpenAD_tmp_30 = (__value__(DSS5) + __value__(PRIML1) * __value__(
     > NZHAT) + __value__(RWL) * __value__(UHATL))
      __value__(FLUX5) = (__value__(NSIZE) * OpenAD_tmp_30)
      OpenAD_lin_251 = OpenAD_tmp_30
      OpenAD_lin_253 = __value__(NZHAT)
      OpenAD_lin_254 = __value__(PRIML1)
      OpenAD_lin_255 = __value__(UHATL)
      OpenAD_lin_256 = __value__(RWL)
      OpenAD_lin_252 = __value__(NSIZE)
      OpenAD_acc_59 = (OpenAD_lin_233 * OpenAD_lin_232)
      OpenAD_acc_60 = (OpenAD_lin_234 * OpenAD_lin_232)
      OpenAD_acc_61 = (OpenAD_lin_199 * OpenAD_lin_232)
      OpenAD_acc_62 = (OpenAD_lin_200 * OpenAD_lin_232)
      OpenAD_acc_63 = (INT((-1_w2f__i8)) * OpenAD_lin_252)
      OpenAD_acc_64 = (OpenAD_lin_223 * OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_224 * OpenAD_acc_63)
      OpenAD_acc_66 = (INT((-1_w2f__i8)) * OpenAD_lin_246)
      OpenAD_acc_67 = (OpenAD_lin_215 * OpenAD_acc_66)
      OpenAD_acc_68 = (OpenAD_lin_216 * OpenAD_acc_66)
      OpenAD_acc_69 = (INT((-1_w2f__i8)) * OpenAD_lin_240)
      OpenAD_acc_70 = (OpenAD_lin_207 * OpenAD_acc_69)
      OpenAD_acc_71 = (OpenAD_lin_208 * OpenAD_acc_69)
      OpenAD_acc_72 = (OpenAD_lin_197 * OpenAD_lin_232)
      OpenAD_acc_73 = (OpenAD_lin_198 * OpenAD_lin_232)
      OpenAD_acc_74 = (OpenAD_lin_217 * OpenAD_lin_252)
      OpenAD_acc_75 = (OpenAD_lin_218 * OpenAD_lin_252)
      OpenAD_acc_76 = (OpenAD_lin_209 * OpenAD_lin_246)
      OpenAD_acc_77 = (OpenAD_lin_210 * OpenAD_lin_246)
      OpenAD_acc_78 = (OpenAD_lin_201 * OpenAD_lin_240)
      OpenAD_acc_79 = (OpenAD_lin_202 * OpenAD_lin_240)
      OpenAD_acc_80 = (OpenAD_lin_195 * OpenAD_lin_232)
      OpenAD_acc_81 = (OpenAD_lin_196 * OpenAD_lin_232)
      OpenAD_acc_82 = (OpenAD_lin_219 * OpenAD_lin_252)
      OpenAD_acc_83 = (OpenAD_lin_220 * OpenAD_lin_252)
      OpenAD_acc_84 = (INT((-1_w2f__i8)) * OpenAD_lin_252)
      OpenAD_acc_85 = (OpenAD_lin_221 * OpenAD_acc_84)
      OpenAD_acc_86 = (OpenAD_lin_211 * OpenAD_lin_246)
      OpenAD_acc_87 = (OpenAD_lin_212 * OpenAD_lin_246)
      OpenAD_acc_88 = (INT((-1_w2f__i8)) * OpenAD_lin_246)
      OpenAD_acc_89 = (OpenAD_lin_213 * OpenAD_acc_88)
      OpenAD_acc_90 = (OpenAD_lin_203 * OpenAD_lin_240)
      OpenAD_acc_91 = (OpenAD_lin_204 * OpenAD_lin_240)
      OpenAD_acc_92 = (INT((-1_w2f__i8)) * OpenAD_lin_240)
      OpenAD_acc_93 = (OpenAD_lin_205 * OpenAD_acc_92)
      OpenAD_acc_94 = (OpenAD_lin_187 * OpenAD_lin_232)
      OpenAD_acc_95 = (OpenAD_lin_188 * OpenAD_lin_232)
      OpenAD_acc_96 = (OpenAD_lin_255 * OpenAD_lin_252)
      OpenAD_acc_97 = (OpenAD_lin_256 * OpenAD_lin_252)
      OpenAD_acc_98 = (OpenAD_lin_222 * OpenAD_acc_84 + OpenAD_lin_254
     >  * OpenAD_lin_252)
      OpenAD_acc_99 = (OpenAD_lin_253 * OpenAD_lin_252)
      OpenAD_acc_100 = (OpenAD_lin_249 * OpenAD_lin_246)
      OpenAD_acc_101 = (OpenAD_lin_250 * OpenAD_lin_246)
      OpenAD_acc_102 = (OpenAD_lin_214 * OpenAD_acc_88 + OpenAD_lin_248
     >  * OpenAD_lin_246)
      OpenAD_acc_103 = (OpenAD_lin_247 * OpenAD_lin_246)
      OpenAD_acc_104 = (OpenAD_lin_243 * OpenAD_lin_240)
      OpenAD_acc_105 = (OpenAD_lin_244 * OpenAD_lin_240)
      OpenAD_acc_106 = (OpenAD_lin_206 * OpenAD_acc_92 + OpenAD_lin_242
     >  * OpenAD_lin_240)
      OpenAD_acc_107 = (OpenAD_lin_241 * OpenAD_lin_240)
      OpenAD_acc_108 = (OpenAD_lin_237 * OpenAD_lin_236)
      OpenAD_acc_109 = (OpenAD_lin_238 * OpenAD_lin_236)
      OpenAD_acc_110 = (OpenAD_lin_189 * OpenAD_lin_232)
      OpenAD_acc_111 = (OpenAD_lin_191 * OpenAD_lin_190 *
     >  OpenAD_lin_232)
      OpenAD_acc_112 = (OpenAD_lin_192 * OpenAD_lin_190 *
     >  OpenAD_lin_232)
      OpenAD_acc_113 = (INT((-1_w2f__i8)) * OpenAD_lin_232)
      OpenAD_acc_114 = (OpenAD_lin_193 * OpenAD_acc_113)
      OpenAD_acc_115 = (OpenAD_lin_194 * OpenAD_acc_113)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_169)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_170)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_171)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_172)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_173)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_174)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_175)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_176)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_177)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_178)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_225)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_226)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_227)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_228)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_229)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_230)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_179)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_180)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_181)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_182)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_183)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_184)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_185)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_186)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_235)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_108)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_109)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_236)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_239)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_70)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_71)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_78)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_79)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_90)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_91)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_93)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_106)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_104)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_105)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_107)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_245)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_68)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_76)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_86)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_87)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_102)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_100)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_101)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_103)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_251)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_64)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_65)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_74)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_82)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_83)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_85)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_98)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_96)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_97)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_99)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_231)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_59)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_60)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_61)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_62)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_72)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_73)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_80)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_81)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_94)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_95)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_110)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_111)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_112)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_114)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_115)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_6)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_7)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_8)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_9)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_10)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_11)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_12)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_13)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_14)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_15)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_16)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_17)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_18)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_19)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_20)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_21)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_22)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_23)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_24)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_25)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_26)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_27)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_28)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_29)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_30)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_31)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_32)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_33)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_34)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_35)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_36)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_37)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_38)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_39)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_40)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_41)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_42)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_43)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_44)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_45)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_46)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_47)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_48)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_49)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_50)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_51)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_52)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_53)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_54)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_55)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_56)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_57)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_58)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_59)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_60)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_61)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_62)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_63)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_64)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_65)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_66)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_67)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_68)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_69)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_70)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_71)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_72)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_73)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_74)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_75)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_76)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_77)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_78)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_79)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_80)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_81)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_82)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_83)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_84)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_85)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_6, __deriv__(FLUX1), __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_7, __deriv__(FLUX1), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_8, __deriv__(FLUX1), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_9, __deriv__(FLUX1), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_10, __deriv__(FLUX1), __deriv__(ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_11, __deriv__(FLUX1), __deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_12, __deriv__(FLUX1), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_13, __deriv__(FLUX1), __deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_14, __deriv__(FLUX1), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_15, __deriv__(FLUX1), __deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_16, __deriv__(FLUX1), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_17, __deriv__(FLUX1), __deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_18, __deriv__(FLUX1), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_19, __deriv__(FLUX1), __deriv__(
     > OpenAD_prop_17))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_20, __deriv__(FLUX1), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(FLUX1), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(FLUX5), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(FLUX5), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_24, __deriv__(FLUX5), __deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_25, __deriv__(FLUX5), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_26, __deriv__(FLUX5), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_27, __deriv__(FLUX5), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_28, __deriv__(FLUX5), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_29, __deriv__(FLUX5), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_30, __deriv__(FLUX5), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_31, __deriv__(FLUX5), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_32, __deriv__(FLUX5), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_33, __deriv__(FLUX5), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_34, __deriv__(FLUX4), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_35, __deriv__(FLUX4), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_36, __deriv__(FLUX4), __deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_37, __deriv__(FLUX4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_38, __deriv__(FLUX4), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_39, __deriv__(FLUX4), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_40, __deriv__(FLUX4), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_41, __deriv__(FLUX4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_42, __deriv__(FLUX4), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_43, __deriv__(FLUX4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_44, __deriv__(FLUX4), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_45, __deriv__(FLUX4), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_46, __deriv__(FLUX3), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_47, __deriv__(FLUX3), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_48, __deriv__(FLUX3), __deriv__(RUL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_49, __deriv__(FLUX3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_50, __deriv__(FLUX3), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_51, __deriv__(FLUX3), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_52, __deriv__(FLUX3), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_53, __deriv__(FLUX3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_54, __deriv__(FLUX3), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_55, __deriv__(FLUX3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_56, __deriv__(FLUX3), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_57, __deriv__(FLUX3), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_58, __deriv__(FLUX2), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_59, __deriv__(FLUX2), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_60, __deriv__(FLUX2), __deriv__(PRIML2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_61, __deriv__(FLUX2), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_62, __deriv__(MU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_63, __deriv__(MU), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_64, __deriv__(MU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_65, __deriv__(MU), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_66, __deriv__(MU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_67, __deriv__(MU), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_68, __deriv__(MU), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_69, __deriv__(MU), __deriv__(ALP15P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_70, __deriv__(UHATL), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_71, __deriv__(UHATL), __deriv__(PRIML5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_72, __deriv__(UHATL), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_73, __deriv__(UHATL), __deriv__(PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_74, __deriv__(UHATL), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_75, __deriv__(UHATL), __deriv__(PRIML3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHATL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_17), __deriv__(EL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_17), __deriv__(PRIML1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_17))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(ALP15M), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15M), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15M))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_76, __deriv__(ALP5), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_77, __deriv__(ALP5), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_78, __deriv__(ALP4), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_79, __deriv__(ALP4), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_80, __deriv__(ALP3), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_81, __deriv__(ALP3), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_82, __deriv__(ALP2), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_83, __deriv__(ALP2), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_84, __deriv__(ALP1), __deriv__(
     > OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_85, __deriv__(ALP1), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_16), __deriv__(ALP5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_16))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_15), __deriv__(ALP4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_15))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_14), __deriv__(ALP3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_14))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_13), __deriv__(ALP2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_13))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_86)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_87)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_88)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_89)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_90)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_91)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_92)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_93)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_94)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_95)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_96)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_97)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_98)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_99)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_100)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_101)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_102)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_103)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_104)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_105)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_106)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_107)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_108)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_109)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_110)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_111)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_112)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_113)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_114)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_115)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_116)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_117)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_118)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_119)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_120)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_121)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_122)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_123)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_124)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_125)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_126)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_127)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_128)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_129)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_130)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_131)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_132)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_133)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_134)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_135)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_136)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_137)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_138)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_139)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_140)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_141)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_142)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_143)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_144)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_145)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_146)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_147)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_148)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_149)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_150)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_151)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_152)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_86, __deriv__(ALP4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_87, __deriv__(ALP4), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_88, __deriv__(ALP4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_89, __deriv__(ALP4), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_90, __deriv__(ALP4), __deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_91, __deriv__(ALP4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_92, __deriv__(ALP4), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_93, __deriv__(ALP4), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_94, __deriv__(ALP4), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_95, __deriv__(ALP3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_96, __deriv__(ALP3), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_97, __deriv__(ALP3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_98, __deriv__(ALP3), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_99, __deriv__(ALP3), __deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_100, __deriv__(ALP3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_101, __deriv__(ALP3), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_102, __deriv__(ALP3), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_103, __deriv__(ALP3), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_104, __deriv__(ALP2), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_105, __deriv__(ALP2), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_106, __deriv__(ALP2), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_107, __deriv__(ALP2), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_108, __deriv__(ALP2), __deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_109, __deriv__(ALP2), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_110, __deriv__(ALP2), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_111, __deriv__(ALP2), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_112, __deriv__(ALP2), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_113, __deriv__(ALP5), __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_114, __deriv__(ALP5), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP5), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP5), __deriv__(NDDRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_115, __deriv__(ALP1), __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_116, __deriv__(ALP1), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP1), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-5.0D-01, __deriv__(ALP1), __deriv__(NDDRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_117, __deriv__(OMEGA), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_118, __deriv__(OMEGA), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_119, __deriv__(OMEGA), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_120, __deriv__(OMEGA), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_121, __deriv__(OMEGA), __deriv__(THTAVE)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_122, __deriv__(OMEGA), __deriv__(DE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_123, __deriv__(OMEGA), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_124, __deriv__(OMEGA), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_125, __deriv__(OMEGA), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_126, __deriv__(OMEGA), __deriv__(GM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_127, __deriv__(NDDRU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_128, __deriv__(NDDRU), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_129, __deriv__(NDDRU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_130, __deriv__(NDDRU), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_131, __deriv__(NDDRU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_132, __deriv__(NDDRU), __deriv__(DRW))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NDDRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_133, __deriv__(DE), __deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_134, __deriv__(DE), __deriv__(PRIMR2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_135, __deriv__(DE), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_136, __deriv__(DE), __deriv__(PRIMR1))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DE), __deriv__(EL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_137, __deriv__(EL), __deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_138, __deriv__(EL), __deriv__(PRIML2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_139, __deriv__(EL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_140, __deriv__(EL), __deriv__(PRIML1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(EL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMU), __deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCP), __deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCM), __deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_141, __deriv__(DRW), __deriv__(PRIMR5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_142, __deriv__(DRW), __deriv__(PRIMR2))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRW), __deriv__(RWL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_143, __deriv__(DRV), __deriv__(PRIMR4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_144, __deriv__(DRV), __deriv__(PRIMR2))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRV), __deriv__(RVL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_145, __deriv__(DRU), __deriv__(PRIMR3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_146, __deriv__(DRU), __deriv__(PRIMR2))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRU), __deriv__(RUL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DR), __deriv__(PRIML2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(DR), __deriv__(PRIMR2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_147, __deriv__(RWL), __deriv__(PRIML5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_148, __deriv__(RWL), __deriv__(PRIML2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_149, __deriv__(RVL), __deriv__(PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_150, __deriv__(RVL), __deriv__(PRIML2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_151, __deriv__(RUL), __deriv__(PRIML3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_152, __deriv__(RUL), __deriv__(PRIML2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RUL))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_11), __deriv__(OpenAD_prop_8)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_10), __deriv__(OpenAD_prop_7)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_9), __deriv__(OpenAD_prop_6))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_8))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_7))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_6))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_153)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_154)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_155)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_156)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_157)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_158)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_159)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_160)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_161)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_162)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_163)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_164)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_165)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_166)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_167)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_168)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_169)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_170)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_171)
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALAMU), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMU))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALAMCP), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCP))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALAMCM), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCM))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCP))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMU), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(LAMCM), __deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCM), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_153, __deriv__(UHAT), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_154, __deriv__(UHAT), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_155, __deriv__(UHAT), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_156, __deriv__(UHAT), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_157, __deriv__(UHAT), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_158, __deriv__(UHAT), __deriv__(NXHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_159, __deriv__(WTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_160, __deriv__(WTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_161, __deriv__(WTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_162, __deriv__(WTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_163, __deriv__(VTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_164, __deriv__(VTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_165, __deriv__(VTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_166, __deriv__(VTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_167, __deriv__(UTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_168, __deriv__(UTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_169, __deriv__(UTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_170, __deriv__(UTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_171, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_172)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_173)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_174)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_175)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_176)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_177)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_178)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_179)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_180)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_181)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_182)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_183)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_184)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_185)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_186)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_187)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_188)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_189)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_190)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_191)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_192)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_193)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_194)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_195)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_196)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_197)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_198)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_199)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_200)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_201)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_202)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_203)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_204)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_205)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_206)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_207)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_208)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_209)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_210)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_211)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_212)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_213)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_214)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_172, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_173, __deriv__(CAVE), __deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_174, __deriv__(CAVE), __deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_175, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_176, __deriv__(CAVE), __deriv__(GM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THTAVE), __deriv__(OpenAD_prop_4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_177, __deriv__(OpenAD_prop_4), __deriv__
     > (UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_178, __deriv__(OpenAD_prop_4), __deriv__
     > (VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_179, __deriv__(OpenAD_prop_4), __deriv__
     > (WAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_180, __deriv__(WAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_181, __deriv__(WAVE), __deriv__(PRIML5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_182, __deriv__(WAVE), __deriv__(PRIMR5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_183, __deriv__(VAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_184, __deriv__(VAVE), __deriv__(PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_185, __deriv__(VAVE), __deriv__(PRIMR4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_186, __deriv__(UAVE), __deriv__(PRIML3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_187, __deriv__(UAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_188, __deriv__(UAVE), __deriv__(PRIMR3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_189, __deriv__(HR), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_190, __deriv__(HR), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_191, __deriv__(HR), __deriv__(PRIMR1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_192, __deriv__(HR), __deriv__(PRIMR2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HR), __deriv__(THETAR))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_193, __deriv__(HL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_194, __deriv__(HL), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_195, __deriv__(HL), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_196, __deriv__(HL), __deriv__(PRIML2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HL), __deriv__(THETAL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAR), __deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAL), __deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_197, __deriv__(NZHAT), __deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_198, __deriv__(NZHAT), __deriv__(NRM3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_199, __deriv__(NYHAT), __deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_200, __deriv__(NYHAT), __deriv__(NRM2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_201, __deriv__(NXHAT), __deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_202, __deriv__(NXHAT), __deriv__(NRM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_203, __deriv__(NSIZE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_204, __deriv__(OpenAD_prop_3), __deriv__
     > (PRIMR4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_205, __deriv__(OpenAD_prop_3), __deriv__
     > (PRIMR3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_206, __deriv__(OpenAD_prop_3), __deriv__
     > (PRIMR5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_207, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_208, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIML3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_209, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIML5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_210, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_211, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIMR2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_212, __deriv__(OpenAD_prop_0), __deriv__
     > (NRM2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_213, __deriv__(OpenAD_prop_0), __deriv__
     > (NRM1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_214, __deriv__(OpenAD_prop_0), __deriv__
     > (NRM3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = ((__value__(NRM1) ** 2) +(__value__(NRM2) ** 2) +(
     > __value__(NRM3) ** 2))
      __value__(NSIZE) = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = (2 *(__value__(NRM1) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_3 = (2 *(__value__(NRM2) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_5 = (2 *(__value__(NRM3) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      __value__(NSIZEI) = (1.0D00 / __value__(NSIZE))
      OpenAD_lin_8 = (-(1.0D00 /(__value__(NSIZE) * __value__(NSIZE))))
      __value__(NXHAT) = (__value__(NRM1) * __value__(NSIZEI))
      OpenAD_lin_9 = __value__(NSIZEI)
      OpenAD_lin_10 = __value__(NRM1)
      __value__(NYHAT) = (__value__(NRM2) * __value__(NSIZEI))
      OpenAD_lin_11 = __value__(NSIZEI)
      OpenAD_lin_12 = __value__(NRM2)
      __value__(NZHAT) = (__value__(NRM3) * __value__(NSIZEI))
      OpenAD_lin_13 = __value__(NSIZEI)
      OpenAD_lin_14 = __value__(NRM3)
      OpenAD_tmp_2 = (__value__(PRIMR2) / __value__(PRIML2))
      OpenAD_tmp_1 = (SIN(OpenAD_tmp_2) + 1.0D00)
      __value__(ROEL) = (1.0D00 / OpenAD_tmp_1)
      OpenAD_lin_19 = (INT(1_w2f__i8) / __value__(PRIML2))
      OpenAD_lin_20 = (-(__value__(PRIMR2) /(__value__(PRIML2) *
     >  __value__(PRIML2))))
      OpenAD_lin_18 = COS(OpenAD_tmp_2)
      OpenAD_lin_16 = (-(1.0D00 /(OpenAD_tmp_1 * OpenAD_tmp_1)))
      __value__(ROER) = (1.0D00 - __value__(ROEL))
      OpenAD_tmp_3 = ((__value__(PRIML3) ** 2) +(__value__(PRIML4) ** 2
     > ) +(__value__(PRIML5) ** 2))
      __value__(THETAL) = (OpenAD_tmp_3 * 5.0D-01)
      OpenAD_lin_23 = (2 *(__value__(PRIML3) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_25 = (2 *(__value__(PRIML4) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_27 = (2 *(__value__(PRIML5) **(2 - INT(1_w2f__i8))))
      OpenAD_tmp_4 = ((__value__(PRIMR3) ** 2) +(__value__(PRIMR4) ** 2
     > ) +(__value__(PRIMR5) ** 2))
      __value__(THETAR) = (OpenAD_tmp_4 * 5.0D-01)
      OpenAD_lin_30 = (2 *(__value__(PRIMR3) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_32 = (2 *(__value__(PRIMR4) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_34 = (2 *(__value__(PRIMR5) **(2 - INT(1_w2f__i8))))
      OpenAD_tmp_6 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_tmp_5 = (__value__(PRIML1) * OpenAD_tmp_6)
      __value__(HL) = (__value__(THETAL) +(OpenAD_tmp_5 / __value__(
     > PRIML2)))
      OpenAD_lin_38 = OpenAD_tmp_6
      OpenAD_lin_40 = __value__(GM1INV)
      OpenAD_lin_41 = __value__(GAMMA)
      OpenAD_lin_39 = __value__(PRIML1)
      OpenAD_lin_36 = (INT(1_w2f__i8) / __value__(PRIML2))
      OpenAD_lin_37 = (-(OpenAD_tmp_5 /(__value__(PRIML2) * __value__(
     > PRIML2))))
      OpenAD_tmp_8 = (__value__(GAMMA) * __value__(GM1INV))
      OpenAD_tmp_7 = (__value__(PRIMR1) * OpenAD_tmp_8)
      __value__(HR) = (__value__(THETAR) +(OpenAD_tmp_7 / __value__(
     > PRIMR2)))
      OpenAD_lin_44 = OpenAD_tmp_8
      OpenAD_lin_46 = __value__(GM1INV)
      OpenAD_lin_47 = __value__(GAMMA)
      OpenAD_lin_45 = __value__(PRIMR1)
      OpenAD_lin_42 = (INT(1_w2f__i8) / __value__(PRIMR2))
      OpenAD_lin_43 = (-(OpenAD_tmp_7 /(__value__(PRIMR2) * __value__(
     > PRIMR2))))
      __value__(UAVE) = (__value__(PRIML3) * __value__(ROEL) +
     >  __value__(PRIMR3) * __value__(ROER))
      OpenAD_lin_48 = __value__(ROEL)
      OpenAD_lin_49 = __value__(PRIML3)
      OpenAD_lin_50 = __value__(ROER)
      OpenAD_lin_51 = __value__(PRIMR3)
      __value__(VAVE) = (__value__(PRIML4) * __value__(ROEL) +
     >  __value__(PRIMR4) * __value__(ROER))
      OpenAD_lin_52 = __value__(ROEL)
      OpenAD_lin_53 = __value__(PRIML4)
      OpenAD_lin_54 = __value__(ROER)
      OpenAD_lin_55 = __value__(PRIMR4)
      __value__(WAVE) = (__value__(PRIML5) * __value__(ROEL) +
     >  __value__(PRIMR5) * __value__(ROER))
      OpenAD_lin_56 = __value__(ROEL)
      OpenAD_lin_57 = __value__(PRIML5)
      OpenAD_lin_58 = __value__(ROER)
      OpenAD_lin_59 = __value__(PRIMR5)
      __value__(HAVE) = (__value__(HL) * __value__(ROEL) + __value__(HR
     > ) * __value__(ROER))
      OpenAD_lin_60 = __value__(ROEL)
      OpenAD_lin_61 = __value__(HL)
      OpenAD_lin_62 = __value__(ROER)
      OpenAD_lin_63 = __value__(HR)
      OpenAD_tmp_9 = ((__value__(UAVE) ** 2) +(__value__(VAVE) ** 2) +(
     > __value__(WAVE) ** 2))
      __value__(THTAVE) = (OpenAD_tmp_9 * 5.0D-01)
      OpenAD_lin_65 = (2 *(__value__(UAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_67 = (2 *(__value__(VAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_69 = (2 *(__value__(WAVE) **(2 - INT(1_w2f__i8))))
      OpenAD_tmp_10 = (__value__(HAVE) - __value__(THTAVE))
      __value__(CAVE) = (__value__(GM1) * OpenAD_tmp_10)
      OpenAD_lin_71 = OpenAD_tmp_10
      OpenAD_lin_72 = __value__(GM1)
      OpenAD_acc_0 = (OpenAD_lin_45 * OpenAD_lin_42)
      OpenAD_acc_1 = (OpenAD_lin_39 * OpenAD_lin_36)
      OpenAD_acc_2 = (OpenAD_lin_8 * OpenAD_lin_10)
      OpenAD_acc_3 = (OpenAD_lin_8 * OpenAD_lin_12)
      OpenAD_acc_4 = (OpenAD_lin_8 * OpenAD_lin_14)
      OpenAD_acc_5 = (5.0D-01 * INT((-1_w2f__i8)) * OpenAD_lin_72)
      OpenAD_acc_6 = (OpenAD_lin_62 * OpenAD_lin_72)
      OpenAD_acc_7 = (OpenAD_lin_60 * OpenAD_lin_72)
      OpenAD_acc_8 = (OpenAD_lin_16 *(OpenAD_lin_61 * OpenAD_lin_72 +
     >  INT((-1_w2f__i8)) * OpenAD_lin_63 * OpenAD_lin_72))
      OpenAD_acc_9 = (OpenAD_lin_16 *(OpenAD_lin_57 + INT((-1_w2f__i8))
     >  * OpenAD_lin_59))
      OpenAD_acc_10 = (OpenAD_lin_16 *(OpenAD_lin_53 + INT((-1_w2f__i8)
     > ) * OpenAD_lin_55))
      OpenAD_acc_11 = (OpenAD_lin_16 *(OpenAD_lin_49 + INT((-1_w2f__i8)
     > ) * OpenAD_lin_51))
      OpenAD_acc_12 = (OpenAD_lin_19 * OpenAD_lin_18)
      OpenAD_acc_13 = (OpenAD_lin_20 * OpenAD_lin_18)
      OpenAD_acc_14 = (OpenAD_lin_38 * OpenAD_lin_36)
      OpenAD_acc_15 = (OpenAD_lin_40 * OpenAD_acc_1)
      OpenAD_acc_16 = (OpenAD_lin_41 * OpenAD_acc_1)
      OpenAD_acc_17 = (OpenAD_lin_44 * OpenAD_lin_42)
      OpenAD_acc_18 = (OpenAD_lin_46 * OpenAD_acc_0)
      OpenAD_acc_19 = (OpenAD_lin_47 * OpenAD_acc_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_5)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_12)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_25)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_34)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_30)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_2)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_4)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_16)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_17)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_18)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_19)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_50)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_11)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_48)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_54)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_52)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_58)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_56)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_69)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_65)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_71)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_5)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_6)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_7)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_8)
      OpenAD_Symbol_0 = SIN(__value__(CAVE))
      OpenAD_lin_73 = COS(__value__(CAVE))
      __value__(CAVE) = OpenAD_Symbol_0
      __value__(UHAT) = (__value__(NXHAT) * __value__(UAVE) + __value__
     > (NYHAT) * __value__(VAVE) + __value__(NZHAT) * __value__(WAVE))
      OpenAD_lin_74 = __value__(UAVE)
      OpenAD_lin_75 = __value__(NXHAT)
      OpenAD_lin_76 = __value__(VAVE)
      OpenAD_lin_77 = __value__(NYHAT)
      OpenAD_lin_78 = __value__(WAVE)
      OpenAD_lin_79 = __value__(NZHAT)
      __value__(UTILDE) = (__value__(NYHAT) * __value__(WAVE) -
     >  __value__(NZHAT) * __value__(VAVE))
      OpenAD_lin_80 = __value__(WAVE)
      OpenAD_lin_81 = __value__(NYHAT)
      OpenAD_lin_82 = __value__(VAVE)
      OpenAD_lin_83 = __value__(NZHAT)
      __value__(VTILDE) = (__value__(NZHAT) * __value__(UAVE) -
     >  __value__(NXHAT) * __value__(WAVE))
      OpenAD_lin_84 = __value__(UAVE)
      OpenAD_lin_85 = __value__(NZHAT)
      OpenAD_lin_86 = __value__(WAVE)
      OpenAD_lin_87 = __value__(NXHAT)
      __value__(WTILDE) = (__value__(NXHAT) * __value__(VAVE) -
     >  __value__(NYHAT) * __value__(UAVE))
      OpenAD_lin_88 = __value__(VAVE)
      OpenAD_lin_89 = __value__(NXHAT)
      OpenAD_lin_90 = __value__(UAVE)
      OpenAD_lin_91 = __value__(NYHAT)
      __value__(LAMCM) = (__value__(UHAT) - __value__(CAVE))
      __value__(LAMU) = __value__(UHAT)
      __value__(LAMCP) = (__value__(CAVE) + __value__(UHAT))
      __value__(ALAMCM) = __value__(LAMCM)
      __value__(ALAMCP) = __value__(LAMCP)
      __value__(ALAMU) = __value__(LAMU)
      OpenAD_acc_20 = (OpenAD_lin_82 * INT((-1_w2f__i8)))
      OpenAD_acc_21 = (OpenAD_lin_83 * INT((-1_w2f__i8)))
      OpenAD_acc_22 = (OpenAD_lin_86 * INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_87 * INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_90 * INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_91 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_73)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_80)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_81)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_20)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_21)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_84)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_85)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_22)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_88)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_24)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_25)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_74)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_76)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_78)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_79)
      OpenAD_tmp_11 = (__value__(LAMCM) - __value__(ALAMCM))
      __value__(ALAMCM) = (OpenAD_tmp_11 * 5.0D-01)
      OpenAD_tmp_12 = (__value__(LAMCP) - __value__(ALAMCP))
      __value__(ALAMCP) = (OpenAD_tmp_12 * 5.0D-01)
      OpenAD_tmp_13 = (__value__(LAMU) - __value__(ALAMU))
      __value__(ALAMU) = (OpenAD_tmp_13 * 5.0D-01)
      __value__(EL) = (__value__(PRIML1) * __value__(GM1INV) +
     >  __value__(PRIML2) * __value__(THETAL))
      OpenAD_lin_95 = __value__(GM1INV)
      OpenAD_lin_96 = __value__(PRIML1)
      OpenAD_lin_97 = __value__(THETAL)
      OpenAD_lin_98 = __value__(PRIML2)
      __value__(RUL) = (__value__(PRIML2) * __value__(PRIML3))
      OpenAD_lin_99 = __value__(PRIML3)
      OpenAD_lin_100 = __value__(PRIML2)
      __value__(RVL) = (__value__(PRIML2) * __value__(PRIML4))
      OpenAD_lin_101 = __value__(PRIML4)
      OpenAD_lin_102 = __value__(PRIML2)
      __value__(RWL) = (__value__(PRIML2) * __value__(PRIML5))
      OpenAD_lin_103 = __value__(PRIML5)
      OpenAD_lin_104 = __value__(PRIML2)
      __value__(ER) = (__value__(PRIMR1) * __value__(GM1INV) +
     >  __value__(PRIMR2) * __value__(THETAR))
      OpenAD_lin_105 = __value__(GM1INV)
      OpenAD_lin_106 = __value__(PRIMR1)
      OpenAD_lin_107 = __value__(THETAR)
      OpenAD_lin_108 = __value__(PRIMR2)
      __value__(RUR) = (__value__(PRIMR2) * __value__(PRIMR3))
      OpenAD_lin_109 = __value__(PRIMR3)
      OpenAD_lin_110 = __value__(PRIMR2)
      __value__(RVR) = (__value__(PRIMR2) * __value__(PRIMR4))
      OpenAD_lin_111 = __value__(PRIMR4)
      OpenAD_lin_112 = __value__(PRIMR2)
      __value__(RWR) = (__value__(PRIMR2) * __value__(PRIMR5))
      OpenAD_lin_113 = __value__(PRIMR5)
      OpenAD_lin_114 = __value__(PRIMR2)
      __value__(DE) = (__value__(ER) - __value__(EL))
      __value__(DR) = (__value__(PRIMR2) - __value__(PRIML2))
      __value__(DRU) = (__value__(RUR) - __value__(RUL))
      __value__(DRV) = (__value__(RVR) - __value__(RVL))
      __value__(DRW) = (__value__(RWR) - __value__(RWL))
      __value__(UDDRU) = (__value__(DRU) * __value__(UAVE) + __value__(
     > DRV) * __value__(VAVE) + __value__(DRW) * __value__(WAVE))
      OpenAD_lin_115 = __value__(UAVE)
      OpenAD_lin_116 = __value__(DRU)
      OpenAD_lin_117 = __value__(VAVE)
      OpenAD_lin_118 = __value__(DRV)
      OpenAD_lin_119 = __value__(WAVE)
      OpenAD_lin_120 = __value__(DRW)
      OpenAD_tmp_14 = (__value__(GM1) / __value__(CAVE))
      OpenAD_tmp_15 = (__value__(DE) + __value__(DR) * __value__(THTAVE
     > ) - __value__(UDDRU))
      __value__(OMEGA) = (OpenAD_tmp_14 * OpenAD_tmp_15)
      OpenAD_lin_123 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_lin_124 = (-(__value__(GM1) /(__value__(CAVE) * __value__(
     > CAVE))))
      OpenAD_lin_121 = OpenAD_tmp_15
      OpenAD_lin_125 = __value__(THTAVE)
      OpenAD_lin_126 = __value__(DR)
      OpenAD_lin_122 = OpenAD_tmp_14
      __value__(NDDRU) = (__value__(DRU) * __value__(NXHAT) + __value__
     > (DRV) * __value__(NYHAT) + __value__(DRW) * __value__(NZHAT))
      OpenAD_lin_127 = __value__(NXHAT)
      OpenAD_lin_128 = __value__(DRU)
      OpenAD_lin_129 = __value__(NYHAT)
      OpenAD_lin_130 = __value__(DRV)
      OpenAD_lin_131 = __value__(NZHAT)
      OpenAD_lin_132 = __value__(DRW)
      OpenAD_tmp_16 = (__value__(OMEGA) + __value__(DR) * __value__(
     > UHAT) - __value__(NDDRU))
      __value__(ALP1) = (OpenAD_tmp_16 * 5.0D-01)
      OpenAD_lin_134 = __value__(UHAT)
      OpenAD_lin_135 = __value__(DR)
      OpenAD_tmp_17 = (__value__(CAVE) * __value__(NXHAT) - __value__(
     > UTILDE))
      OpenAD_tmp_18 = (- __value__(NXHAT))
      __value__(ALP2) = (__value__(DRW) * __value__(NYHAT) + __value__(
     > DR) * OpenAD_tmp_17 + __value__(OMEGA) * OpenAD_tmp_18 -
     >  __value__(DRV) * __value__(NZHAT))
      OpenAD_lin_136 = __value__(NYHAT)
      OpenAD_lin_137 = __value__(DRW)
      OpenAD_lin_138 = OpenAD_tmp_17
      OpenAD_lin_140 = __value__(NXHAT)
      OpenAD_lin_141 = __value__(CAVE)
      OpenAD_lin_139 = __value__(DR)
      OpenAD_lin_142 = OpenAD_tmp_18
      OpenAD_lin_143 = __value__(OMEGA)
      OpenAD_lin_144 = __value__(NZHAT)
      OpenAD_lin_145 = __value__(DRV)
      OpenAD_tmp_19 = (__value__(CAVE) * __value__(NYHAT) - __value__(
     > VTILDE))
      OpenAD_tmp_20 = (- __value__(NYHAT))
      __value__(ALP3) = (__value__(DRU) * __value__(NZHAT) + __value__(
     > DR) * OpenAD_tmp_19 + __value__(OMEGA) * OpenAD_tmp_20 -
     >  __value__(DRW) * __value__(NXHAT))
      OpenAD_lin_146 = __value__(NZHAT)
      OpenAD_lin_147 = __value__(DRU)
      OpenAD_lin_148 = OpenAD_tmp_19
      OpenAD_lin_150 = __value__(NYHAT)
      OpenAD_lin_151 = __value__(CAVE)
      OpenAD_lin_149 = __value__(DR)
      OpenAD_lin_152 = OpenAD_tmp_20
      OpenAD_lin_153 = __value__(OMEGA)
      OpenAD_lin_154 = __value__(NXHAT)
      OpenAD_lin_155 = __value__(DRW)
      OpenAD_tmp_21 = (__value__(CAVE) * __value__(NZHAT) - __value__(
     > WTILDE))
      OpenAD_tmp_22 = (- __value__(NZHAT))
      __value__(ALP4) = (__value__(DRV) * __value__(NXHAT) + __value__(
     > DR) * OpenAD_tmp_21 + __value__(OMEGA) * OpenAD_tmp_22 -
     >  __value__(DRU) * __value__(NYHAT))
      OpenAD_lin_156 = __value__(NXHAT)
      OpenAD_lin_157 = __value__(DRV)
      OpenAD_lin_158 = OpenAD_tmp_21
      OpenAD_lin_160 = __value__(NZHAT)
      OpenAD_lin_161 = __value__(CAVE)
      OpenAD_lin_159 = __value__(DR)
      OpenAD_lin_162 = OpenAD_tmp_22
      OpenAD_lin_163 = __value__(OMEGA)
      OpenAD_lin_164 = __value__(NYHAT)
      OpenAD_lin_165 = __value__(DRU)
      OpenAD_tmp_23 = (__value__(NDDRU) + __value__(OMEGA) - __value__(
     > DR) * __value__(UHAT))
      __value__(ALP5) = (OpenAD_tmp_23 * 5.0D-01)
      OpenAD_lin_167 = __value__(UHAT)
      OpenAD_lin_168 = __value__(DR)
      OpenAD_acc_26 = (OpenAD_lin_123 * OpenAD_lin_121)
      OpenAD_acc_27 = (OpenAD_lin_124 * OpenAD_lin_121)
      OpenAD_acc_28 = (OpenAD_lin_168 *(-5.0D-01))
      OpenAD_acc_29 = (OpenAD_lin_135 * 5.0D-01)
      OpenAD_acc_30 = (INT((-1_w2f__i8)) * OpenAD_lin_122)
      OpenAD_acc_31 = (OpenAD_lin_119 * OpenAD_acc_30)
      OpenAD_acc_32 = (OpenAD_lin_120 * OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_160 * OpenAD_lin_159)
      OpenAD_acc_34 = (OpenAD_lin_161 * OpenAD_lin_159 + INT((
     > -1_w2f__i8)) * OpenAD_lin_163)
      OpenAD_acc_35 = (INT((-1_w2f__i8)) * OpenAD_lin_159)
      OpenAD_acc_36 = (OpenAD_lin_150 * OpenAD_lin_149)
      OpenAD_acc_37 = (OpenAD_lin_151 * OpenAD_lin_149 + INT((
     > -1_w2f__i8)) * OpenAD_lin_153)
      OpenAD_acc_38 = (INT((-1_w2f__i8)) * OpenAD_lin_149)
      OpenAD_acc_39 = (OpenAD_lin_140 * OpenAD_lin_139)
      OpenAD_acc_40 = (OpenAD_lin_141 * OpenAD_lin_139 + INT((
     > -1_w2f__i8)) * OpenAD_lin_143)
      OpenAD_acc_41 = (INT((-1_w2f__i8)) * OpenAD_lin_139)
      OpenAD_acc_42 = (OpenAD_lin_125 * OpenAD_lin_122)
      OpenAD_acc_43 = (OpenAD_lin_126 * OpenAD_lin_122)
      OpenAD_acc_44 = (OpenAD_lin_167 *(-5.0D-01) + OpenAD_acc_42 *
     >  5.0D-01)
      OpenAD_acc_45 = (OpenAD_lin_158 + OpenAD_acc_42 * OpenAD_lin_162)
      OpenAD_acc_46 = (OpenAD_lin_148 + OpenAD_acc_42 * OpenAD_lin_152)
      OpenAD_acc_47 = (OpenAD_lin_138 + OpenAD_acc_42 * OpenAD_lin_142)
      OpenAD_acc_48 = (OpenAD_lin_134 * 5.0D-01 + OpenAD_acc_42 *
     >  5.0D-01)
      OpenAD_acc_49 = (OpenAD_lin_117 * OpenAD_acc_30)
      OpenAD_acc_50 = (OpenAD_lin_118 * OpenAD_acc_30)
      OpenAD_acc_51 = (OpenAD_lin_115 * OpenAD_acc_30)
      OpenAD_acc_52 = (OpenAD_lin_116 * OpenAD_acc_30)
      OpenAD_acc_53 = (OpenAD_lin_164 * INT((-1_w2f__i8)))
      OpenAD_acc_54 = (OpenAD_lin_165 * INT((-1_w2f__i8)))
      OpenAD_acc_55 = (OpenAD_lin_154 * INT((-1_w2f__i8)))
      OpenAD_acc_56 = (OpenAD_lin_155 * INT((-1_w2f__i8)))
      OpenAD_acc_57 = (OpenAD_lin_144 * INT((-1_w2f__i8)))
      OpenAD_acc_58 = (OpenAD_lin_145 * INT((-1_w2f__i8)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_99)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_100)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_101)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_102)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_103)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_104)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_109)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_110)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_111)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_112)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_113)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_114)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_95)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_96)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_97)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_98)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_105)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_106)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_107)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_108)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_131)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_132)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_129)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_130)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_127)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_128)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_26)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_27)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_31)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_122)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_43)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_49)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_50)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_51)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_52)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_48)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_44)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_28)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_142)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_47)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_39)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_40)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_41)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_136)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_137)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_57)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_58)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_152)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_46)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_36)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_37)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_38)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_146)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_147)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_55)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_56)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_162)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_45)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_33)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_34)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_156)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_157)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_53)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_54)
      OpenAD_Symbol_1 = (__value__(ALAMCM) * __value__(ALP1))
      OpenAD_lin_169 = __value__(ALP1)
      OpenAD_lin_170 = __value__(ALAMCM)
      __value__(ALP1) = OpenAD_Symbol_1
      OpenAD_Symbol_2 = (__value__(ALAMU) * __value__(ALP2))
      OpenAD_lin_171 = __value__(ALP2)
      OpenAD_lin_172 = __value__(ALAMU)
      __value__(ALP2) = OpenAD_Symbol_2
      OpenAD_Symbol_3 = (__value__(ALAMU) * __value__(ALP3))
      OpenAD_lin_173 = __value__(ALP3)
      OpenAD_lin_174 = __value__(ALAMU)
      __value__(ALP3) = OpenAD_Symbol_3
      OpenAD_Symbol_4 = (__value__(ALAMU) * __value__(ALP4))
      OpenAD_lin_175 = __value__(ALP4)
      OpenAD_lin_176 = __value__(ALAMU)
      __value__(ALP4) = OpenAD_Symbol_4
      OpenAD_Symbol_5 = (__value__(ALAMCP) * __value__(ALP5))
      OpenAD_lin_177 = __value__(ALP5)
      OpenAD_lin_178 = __value__(ALAMCP)
      __value__(ALP5) = OpenAD_Symbol_5
      __value__(ALP15P) = (__value__(ALP1) + __value__(ALP5))
      __value__(ALP15M) = (__value__(ALP1) - __value__(ALP5))
      __value__(MU) = ((__value__(ALP15P) / __value__(CAVE)) +
     >  __value__(ALP2) * __value__(NXHAT) + __value__(ALP3) *
     >  __value__(NYHAT) + __value__(ALP4) * __value__(NZHAT))
      OpenAD_lin_179 = (INT(1_w2f__i8) / __value__(CAVE))
      OpenAD_lin_180 = (-(__value__(ALP15P) /(__value__(CAVE) *
     >  __value__(CAVE))))
      OpenAD_lin_181 = __value__(NXHAT)
      OpenAD_lin_182 = __value__(ALP2)
      OpenAD_lin_183 = __value__(NYHAT)
      OpenAD_lin_184 = __value__(ALP3)
      OpenAD_lin_185 = __value__(NZHAT)
      OpenAD_lin_186 = __value__(ALP4)
      OpenAD_tmp_24 = (__value__(GM1INV) * __value__(CAVE))
      __value__(DSS1) = (__value__(MU) * __value__(THTAVE) + __value__(
     > ALP15P) * OpenAD_tmp_24 - __value__(ALP15M) * __value__(UHAT) +
     >  __value__(ALP2) * __value__(UTILDE) + __value__(ALP3) *
     >  __value__(VTILDE) + __value__(ALP4) * __value__(WTILDE))
      OpenAD_lin_187 = __value__(THTAVE)
      OpenAD_lin_188 = __value__(MU)
      OpenAD_lin_189 = OpenAD_tmp_24
      OpenAD_lin_191 = __value__(CAVE)
      OpenAD_lin_192 = __value__(GM1INV)
      OpenAD_lin_190 = __value__(ALP15P)
      OpenAD_lin_193 = __value__(UHAT)
      OpenAD_lin_194 = __value__(ALP15M)
      OpenAD_lin_195 = __value__(UTILDE)
      OpenAD_lin_196 = __value__(ALP2)
      OpenAD_lin_197 = __value__(VTILDE)
      OpenAD_lin_198 = __value__(ALP3)
      OpenAD_lin_199 = __value__(WTILDE)
      OpenAD_lin_200 = __value__(ALP4)
      __value__(DSS2) = __value__(MU)
      __value__(DSS3) = (__value__(ALP3) * __value__(NZHAT) + __value__
     > (MU) * __value__(UAVE) - __value__(ALP15M) * __value__(NXHAT) -
     >  __value__(ALP4) * __value__(NYHAT))
      OpenAD_lin_201 = __value__(NZHAT)
      OpenAD_lin_202 = __value__(ALP3)
      OpenAD_lin_203 = __value__(UAVE)
      OpenAD_lin_204 = __value__(MU)
      OpenAD_lin_205 = __value__(NXHAT)
      OpenAD_lin_206 = __value__(ALP15M)
      OpenAD_lin_207 = __value__(NYHAT)
      OpenAD_lin_208 = __value__(ALP4)
      __value__(DSS4) = (__value__(ALP4) * __value__(NXHAT) + __value__
     > (MU) * __value__(VAVE) - __value__(ALP15M) * __value__(NYHAT) -
     >  __value__(ALP2) * __value__(NZHAT))
      OpenAD_lin_209 = __value__(NXHAT)
      OpenAD_lin_210 = __value__(ALP4)
      OpenAD_lin_211 = __value__(VAVE)
      OpenAD_lin_212 = __value__(MU)
      OpenAD_lin_213 = __value__(NYHAT)
      OpenAD_lin_214 = __value__(ALP15M)
      OpenAD_lin_215 = __value__(NZHAT)
      OpenAD_lin_216 = __value__(ALP2)
      __value__(DSS5) = (__value__(ALP2) * __value__(NYHAT) + __value__
     > (MU) * __value__(WAVE) - __value__(ALP15M) * __value__(NZHAT) -
     >  __value__(ALP3) * __value__(NXHAT))
      OpenAD_lin_217 = __value__(NYHAT)
      OpenAD_lin_218 = __value__(ALP2)
      OpenAD_lin_219 = __value__(WAVE)
      OpenAD_lin_220 = __value__(MU)
      OpenAD_lin_221 = __value__(NZHAT)
      OpenAD_lin_222 = __value__(ALP15M)
      OpenAD_lin_223 = __value__(NXHAT)
      OpenAD_lin_224 = __value__(ALP3)
      __value__(UHATL) = (__value__(PRIML3) * __value__(NXHAT) +
     >  __value__(PRIML4) * __value__(NYHAT) + __value__(PRIML5) *
     >  __value__(NZHAT))
      OpenAD_lin_225 = __value__(NXHAT)
      OpenAD_lin_226 = __value__(PRIML3)
      OpenAD_lin_227 = __value__(NYHAT)
      OpenAD_lin_228 = __value__(PRIML4)
      OpenAD_lin_229 = __value__(NZHAT)
      OpenAD_lin_230 = __value__(PRIML5)
      OpenAD_tmp_26 = (__value__(PRIML1) + __value__(EL))
      OpenAD_tmp_25 = (__value__(DSS1) + __value__(UHATL) *
     >  OpenAD_tmp_26)
      __value__(FLUX1) = (__value__(NSIZE) * OpenAD_tmp_25)
      OpenAD_lin_231 = OpenAD_tmp_25
      OpenAD_lin_233 = OpenAD_tmp_26
      OpenAD_lin_234 = __value__(UHATL)
      OpenAD_lin_232 = __value__(NSIZE)
      OpenAD_tmp_27 = (__value__(DSS2) + __value__(PRIML2) * __value__(
     > UHATL))
      __value__(FLUX2) = (__value__(NSIZE) * OpenAD_tmp_27)
      OpenAD_lin_235 = OpenAD_tmp_27
      OpenAD_lin_237 = __value__(UHATL)
      OpenAD_lin_238 = __value__(PRIML2)
      OpenAD_lin_236 = __value__(NSIZE)
      OpenAD_tmp_28 = (__value__(DSS3) + __value__(PRIML1) * __value__(
     > NXHAT) + __value__(RUL) * __value__(UHATL))
      __value__(FLUX3) = (__value__(NSIZE) * OpenAD_tmp_28)
      OpenAD_lin_239 = OpenAD_tmp_28
      OpenAD_lin_241 = __value__(NXHAT)
      OpenAD_lin_242 = __value__(PRIML1)
      OpenAD_lin_243 = __value__(UHATL)
      OpenAD_lin_244 = __value__(RUL)
      OpenAD_lin_240 = __value__(NSIZE)
      OpenAD_tmp_29 = (__value__(DSS4) + __value__(PRIML1) * __value__(
     > NYHAT) + __value__(RVL) * __value__(UHATL))
      __value__(FLUX4) = (__value__(NSIZE) * OpenAD_tmp_29)
      OpenAD_lin_245 = OpenAD_tmp_29
      OpenAD_lin_247 = __value__(NYHAT)
      OpenAD_lin_248 = __value__(PRIML1)
      OpenAD_lin_249 = __value__(UHATL)
      OpenAD_lin_250 = __value__(RVL)
      OpenAD_lin_246 = __value__(NSIZE)
      OpenAD_tmp_30 = (__value__(DSS5) + __value__(PRIML1) * __value__(
     > NZHAT) + __value__(RWL) * __value__(UHATL))
      __value__(FLUX5) = (__value__(NSIZE) * OpenAD_tmp_30)
      OpenAD_lin_251 = OpenAD_tmp_30
      OpenAD_lin_253 = __value__(NZHAT)
      OpenAD_lin_254 = __value__(PRIML1)
      OpenAD_lin_255 = __value__(UHATL)
      OpenAD_lin_256 = __value__(RWL)
      OpenAD_lin_252 = __value__(NSIZE)
      OpenAD_acc_59 = (OpenAD_lin_233 * OpenAD_lin_232)
      OpenAD_acc_60 = (OpenAD_lin_234 * OpenAD_lin_232)
      OpenAD_acc_61 = (OpenAD_lin_199 * OpenAD_lin_232)
      OpenAD_acc_62 = (OpenAD_lin_200 * OpenAD_lin_232)
      OpenAD_acc_63 = (INT((-1_w2f__i8)) * OpenAD_lin_252)
      OpenAD_acc_64 = (OpenAD_lin_223 * OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_224 * OpenAD_acc_63)
      OpenAD_acc_66 = (INT((-1_w2f__i8)) * OpenAD_lin_246)
      OpenAD_acc_67 = (OpenAD_lin_215 * OpenAD_acc_66)
      OpenAD_acc_68 = (OpenAD_lin_216 * OpenAD_acc_66)
      OpenAD_acc_69 = (INT((-1_w2f__i8)) * OpenAD_lin_240)
      OpenAD_acc_70 = (OpenAD_lin_207 * OpenAD_acc_69)
      OpenAD_acc_71 = (OpenAD_lin_208 * OpenAD_acc_69)
      OpenAD_acc_72 = (OpenAD_lin_197 * OpenAD_lin_232)
      OpenAD_acc_73 = (OpenAD_lin_198 * OpenAD_lin_232)
      OpenAD_acc_74 = (OpenAD_lin_217 * OpenAD_lin_252)
      OpenAD_acc_75 = (OpenAD_lin_218 * OpenAD_lin_252)
      OpenAD_acc_76 = (OpenAD_lin_209 * OpenAD_lin_246)
      OpenAD_acc_77 = (OpenAD_lin_210 * OpenAD_lin_246)
      OpenAD_acc_78 = (OpenAD_lin_201 * OpenAD_lin_240)
      OpenAD_acc_79 = (OpenAD_lin_202 * OpenAD_lin_240)
      OpenAD_acc_80 = (OpenAD_lin_195 * OpenAD_lin_232)
      OpenAD_acc_81 = (OpenAD_lin_196 * OpenAD_lin_232)
      OpenAD_acc_82 = (OpenAD_lin_219 * OpenAD_lin_252)
      OpenAD_acc_83 = (OpenAD_lin_220 * OpenAD_lin_252)
      OpenAD_acc_84 = (INT((-1_w2f__i8)) * OpenAD_lin_252)
      OpenAD_acc_85 = (OpenAD_lin_221 * OpenAD_acc_84)
      OpenAD_acc_86 = (OpenAD_lin_211 * OpenAD_lin_246)
      OpenAD_acc_87 = (OpenAD_lin_212 * OpenAD_lin_246)
      OpenAD_acc_88 = (INT((-1_w2f__i8)) * OpenAD_lin_246)
      OpenAD_acc_89 = (OpenAD_lin_213 * OpenAD_acc_88)
      OpenAD_acc_90 = (OpenAD_lin_203 * OpenAD_lin_240)
      OpenAD_acc_91 = (OpenAD_lin_204 * OpenAD_lin_240)
      OpenAD_acc_92 = (INT((-1_w2f__i8)) * OpenAD_lin_240)
      OpenAD_acc_93 = (OpenAD_lin_205 * OpenAD_acc_92)
      OpenAD_acc_94 = (OpenAD_lin_187 * OpenAD_lin_232)
      OpenAD_acc_95 = (OpenAD_lin_188 * OpenAD_lin_232)
      OpenAD_acc_96 = (OpenAD_lin_255 * OpenAD_lin_252)
      OpenAD_acc_97 = (OpenAD_lin_256 * OpenAD_lin_252)
      OpenAD_acc_98 = (OpenAD_lin_222 * OpenAD_acc_84 + OpenAD_lin_254
     >  * OpenAD_lin_252)
      OpenAD_acc_99 = (OpenAD_lin_253 * OpenAD_lin_252)
      OpenAD_acc_100 = (OpenAD_lin_249 * OpenAD_lin_246)
      OpenAD_acc_101 = (OpenAD_lin_250 * OpenAD_lin_246)
      OpenAD_acc_102 = (OpenAD_lin_214 * OpenAD_acc_88 + OpenAD_lin_248
     >  * OpenAD_lin_246)
      OpenAD_acc_103 = (OpenAD_lin_247 * OpenAD_lin_246)
      OpenAD_acc_104 = (OpenAD_lin_243 * OpenAD_lin_240)
      OpenAD_acc_105 = (OpenAD_lin_244 * OpenAD_lin_240)
      OpenAD_acc_106 = (OpenAD_lin_206 * OpenAD_acc_92 + OpenAD_lin_242
     >  * OpenAD_lin_240)
      OpenAD_acc_107 = (OpenAD_lin_241 * OpenAD_lin_240)
      OpenAD_acc_108 = (OpenAD_lin_237 * OpenAD_lin_236)
      OpenAD_acc_109 = (OpenAD_lin_238 * OpenAD_lin_236)
      OpenAD_acc_110 = (OpenAD_lin_189 * OpenAD_lin_232)
      OpenAD_acc_111 = (OpenAD_lin_191 * OpenAD_lin_190 *
     >  OpenAD_lin_232)
      OpenAD_acc_112 = (OpenAD_lin_192 * OpenAD_lin_190 *
     >  OpenAD_lin_232)
      OpenAD_acc_113 = (INT((-1_w2f__i8)) * OpenAD_lin_232)
      OpenAD_acc_114 = (OpenAD_lin_193 * OpenAD_acc_113)
      OpenAD_acc_115 = (OpenAD_lin_194 * OpenAD_acc_113)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_169)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_170)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_171)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_172)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_173)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_174)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_175)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_176)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_177)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_178)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_225)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_226)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_227)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_228)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_229)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_230)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_179)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_180)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_181)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_182)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_183)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_184)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_185)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_186)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_235)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_108)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_109)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_236)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_239)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_70)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_71)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_78)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_79)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_90)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_91)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_93)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_106)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_104)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_105)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_107)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_245)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_67)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_68)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_76)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_77)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_86)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_87)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_102)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_100)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_101)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_103)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_251)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_64)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_65)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_74)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_75)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_82)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_83)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_85)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_98)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_96)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_97)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_99)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_231)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_59)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_60)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_61)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_62)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_72)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_73)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_80)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_81)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_94)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_95)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_110)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_111)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_112)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_114)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_115)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_6)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_7)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_8)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_9)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_10)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_11)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_12)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_13)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_14)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_15)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_16)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_17)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_18)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_19)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_20)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_21)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_22)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_23)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_24)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_25)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_26)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_27)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_28)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_29)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_30)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_31)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_32)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_33)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_34)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_35)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_36)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_37)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_38)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_39)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_40)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_41)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_42)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_43)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_44)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_45)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_46)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_47)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_48)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_49)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_50)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_51)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_52)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_53)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_54)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_55)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_56)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_57)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_58)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_59)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_60)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_61)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_62)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_63)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_64)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_65)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_66)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_67)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_68)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_69)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_70)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_71)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_72)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_73)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_74)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_75)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_76)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_77)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_78)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_79)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_80)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_81)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_82)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_83)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_84)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_85)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_6, __deriv__(FLUX1), __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_7, __deriv__(FLUX1), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_8, __deriv__(FLUX1), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_9, __deriv__(FLUX1), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_10, __deriv__(FLUX1), __deriv__(ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_11, __deriv__(FLUX1), __deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_12, __deriv__(FLUX1), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_13, __deriv__(FLUX1), __deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_14, __deriv__(FLUX1), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_15, __deriv__(FLUX1), __deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_16, __deriv__(FLUX1), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_17, __deriv__(FLUX1), __deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_18, __deriv__(FLUX1), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_19, __deriv__(FLUX1), __deriv__(
     > OpenAD_prop_17))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_20, __deriv__(FLUX1), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(FLUX1), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(FLUX5), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(FLUX5), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_24, __deriv__(FLUX5), __deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_25, __deriv__(FLUX5), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_26, __deriv__(FLUX5), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_27, __deriv__(FLUX5), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_28, __deriv__(FLUX5), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_29, __deriv__(FLUX5), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_30, __deriv__(FLUX5), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_31, __deriv__(FLUX5), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_32, __deriv__(FLUX5), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_33, __deriv__(FLUX5), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_34, __deriv__(FLUX4), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_35, __deriv__(FLUX4), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_36, __deriv__(FLUX4), __deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_37, __deriv__(FLUX4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_38, __deriv__(FLUX4), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_39, __deriv__(FLUX4), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_40, __deriv__(FLUX4), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_41, __deriv__(FLUX4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_42, __deriv__(FLUX4), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_43, __deriv__(FLUX4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_44, __deriv__(FLUX4), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_45, __deriv__(FLUX4), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_46, __deriv__(FLUX3), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_47, __deriv__(FLUX3), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_48, __deriv__(FLUX3), __deriv__(RUL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_49, __deriv__(FLUX3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_50, __deriv__(FLUX3), __deriv__(ALP15M))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_51, __deriv__(FLUX3), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_52, __deriv__(FLUX3), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_53, __deriv__(FLUX3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_54, __deriv__(FLUX3), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_55, __deriv__(FLUX3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_56, __deriv__(FLUX3), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_57, __deriv__(FLUX3), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_58, __deriv__(FLUX2), __deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_59, __deriv__(FLUX2), __deriv__(UHATL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_60, __deriv__(FLUX2), __deriv__(PRIML2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_61, __deriv__(FLUX2), __deriv__(NSIZE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(FLUX2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_62, __deriv__(MU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_63, __deriv__(MU), __deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_64, __deriv__(MU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_65, __deriv__(MU), __deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_66, __deriv__(MU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_67, __deriv__(MU), __deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_68, __deriv__(MU), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_69, __deriv__(MU), __deriv__(ALP15P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(MU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_70, __deriv__(UHATL), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_71, __deriv__(UHATL), __deriv__(PRIML5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_72, __deriv__(UHATL), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_73, __deriv__(UHATL), __deriv__(PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_74, __deriv__(UHATL), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_75, __deriv__(UHATL), __deriv__(PRIML3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHATL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_17), __deriv__(EL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_17), __deriv__(PRIML1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_17))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(ALP15M), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15M), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15M))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP5))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALP15P), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP15P))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_76, __deriv__(ALP5), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_77, __deriv__(ALP5), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_78, __deriv__(ALP4), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_79, __deriv__(ALP4), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_80, __deriv__(ALP3), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_81, __deriv__(ALP3), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_82, __deriv__(ALP2), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_83, __deriv__(ALP2), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_84, __deriv__(ALP1), __deriv__(
     > OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_85, __deriv__(ALP1), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_16), __deriv__(ALP5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_16))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_15), __deriv__(ALP4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_15))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_14), __deriv__(ALP3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_14))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_13), __deriv__(ALP2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_13))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(ALP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_86)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_87)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_88)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_89)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_90)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_91)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_92)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_93)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_94)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_95)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_96)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_97)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_98)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_99)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_100)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_101)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_102)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_103)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_104)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_105)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_106)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_107)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_108)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_109)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_110)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_111)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_112)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_113)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_114)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_115)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_116)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_117)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_118)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_119)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_120)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_121)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_122)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_123)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_124)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_125)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_126)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_127)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_128)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_129)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_130)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_131)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_132)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_133)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_134)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_135)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_136)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_137)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_138)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_139)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_140)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_141)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_142)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_143)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_144)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_145)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_146)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_147)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_148)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_149)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_150)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_151)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_152)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_86, __deriv__(ALP4), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_87, __deriv__(ALP4), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_88, __deriv__(ALP4), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_89, __deriv__(ALP4), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_90, __deriv__(ALP4), __deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_91, __deriv__(ALP4), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_92, __deriv__(ALP4), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_93, __deriv__(ALP4), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_94, __deriv__(ALP4), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_95, __deriv__(ALP3), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_96, __deriv__(ALP3), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_97, __deriv__(ALP3), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_98, __deriv__(ALP3), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_99, __deriv__(ALP3), __deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_100, __deriv__(ALP3), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_101, __deriv__(ALP3), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_102, __deriv__(ALP3), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_103, __deriv__(ALP3), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_104, __deriv__(ALP2), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_105, __deriv__(ALP2), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_106, __deriv__(ALP2), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_107, __deriv__(ALP2), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_108, __deriv__(ALP2), __deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_109, __deriv__(ALP2), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_110, __deriv__(ALP2), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_111, __deriv__(ALP2), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_112, __deriv__(ALP2), __deriv__(OMEGA))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_113, __deriv__(ALP5), __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_114, __deriv__(ALP5), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP5), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP5), __deriv__(NDDRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_115, __deriv__(ALP1), __deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_116, __deriv__(ALP1), __deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALP1), __deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-5.0D-01, __deriv__(ALP1), __deriv__(NDDRU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALP1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_117, __deriv__(OMEGA), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_118, __deriv__(OMEGA), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_119, __deriv__(OMEGA), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_120, __deriv__(OMEGA), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_121, __deriv__(OMEGA), __deriv__(THTAVE)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_122, __deriv__(OMEGA), __deriv__(DE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_123, __deriv__(OMEGA), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_124, __deriv__(OMEGA), __deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_125, __deriv__(OMEGA), __deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_126, __deriv__(OMEGA), __deriv__(GM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OMEGA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_127, __deriv__(NDDRU), __deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_128, __deriv__(NDDRU), __deriv__(DRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_129, __deriv__(NDDRU), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_130, __deriv__(NDDRU), __deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_131, __deriv__(NDDRU), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_132, __deriv__(NDDRU), __deriv__(DRW))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NDDRU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_133, __deriv__(DE), __deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_134, __deriv__(DE), __deriv__(PRIMR2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_135, __deriv__(DE), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_136, __deriv__(DE), __deriv__(PRIMR1))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DE), __deriv__(EL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_137, __deriv__(EL), __deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_138, __deriv__(EL), __deriv__(PRIML2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_139, __deriv__(EL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_140, __deriv__(EL), __deriv__(PRIML1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(EL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMU), __deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMU))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCP), __deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(ALAMCM), __deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_141, __deriv__(DRW), __deriv__(PRIMR5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_142, __deriv__(DRW), __deriv__(PRIMR2))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRW), __deriv__(RWL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRW))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_143, __deriv__(DRV), __deriv__(PRIMR4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_144, __deriv__(DRV), __deriv__(PRIMR2))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRV), __deriv__(RVL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_145, __deriv__(DRU), __deriv__(PRIMR3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_146, __deriv__(DRU), __deriv__(PRIMR2))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DRU), __deriv__(RUL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DRU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(DR), __deriv__(PRIML2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(DR), __deriv__(PRIMR2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_147, __deriv__(RWL), __deriv__(PRIML5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_148, __deriv__(RWL), __deriv__(PRIML2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RWL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_149, __deriv__(RVL), __deriv__(PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_150, __deriv__(RVL), __deriv__(PRIML2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RVL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_151, __deriv__(RUL), __deriv__(PRIML3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_152, __deriv__(RUL), __deriv__(PRIML2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(RUL))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_11), __deriv__(OpenAD_prop_8)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_10), __deriv__(OpenAD_prop_7)
     > )
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(OpenAD_prop_9), __deriv__(OpenAD_prop_6))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(ALAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_8))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(ALAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_7))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(ALAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_6))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_153)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_154)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_155)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_156)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_157)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_158)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_159)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_160)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_161)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_162)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_163)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_164)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_165)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_166)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_167)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_168)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_169)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_170)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_171)
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALAMU), __deriv__(LAMU))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMU))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALAMCP), __deriv__(LAMCP))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCP))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(ALAMCM), __deriv__(LAMCM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(ALAMCM))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(UHAT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCP), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCP))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMU), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMU))
C     $OpenAD$ INLINE DecDeriv(subst,subst)
      CALL DecDeriv(__deriv__(LAMCM), __deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(LAMCM), __deriv__(UHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAMCM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_153, __deriv__(UHAT), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_154, __deriv__(UHAT), __deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_155, __deriv__(UHAT), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_156, __deriv__(UHAT), __deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_157, __deriv__(UHAT), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_158, __deriv__(UHAT), __deriv__(NXHAT))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_159, __deriv__(WTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_160, __deriv__(WTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_161, __deriv__(WTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_162, __deriv__(WTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_163, __deriv__(VTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_164, __deriv__(VTILDE), __deriv__(NXHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_165, __deriv__(VTILDE), __deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_166, __deriv__(VTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_167, __deriv__(UTILDE), __deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_168, __deriv__(UTILDE), __deriv__(NZHAT)
     > )
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_169, __deriv__(UTILDE), __deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_170, __deriv__(UTILDE), __deriv__(NYHAT)
     > )
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UTILDE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_171, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(CAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_172)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_173)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_174)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_175)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_176)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_177)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_178)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_179)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_180)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_181)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_182)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_183)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_184)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_185)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_186)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_187)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_188)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_189)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_190)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_191)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_192)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_193)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_194)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_195)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_196)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_197)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_198)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_199)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_200)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_201)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_202)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_203)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_204)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_205)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_206)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_207)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_208)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_209)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_210)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_211)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_212)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_213)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_214)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_172, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_173, __deriv__(CAVE), __deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_174, __deriv__(CAVE), __deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_175, __deriv__(CAVE), __deriv__(
     > OpenAD_prop_4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_176, __deriv__(CAVE), __deriv__(GM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(CAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THTAVE), __deriv__(OpenAD_prop_4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THTAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_177, __deriv__(OpenAD_prop_4), __deriv__
     > (UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_178, __deriv__(OpenAD_prop_4), __deriv__
     > (VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_179, __deriv__(OpenAD_prop_4), __deriv__
     > (WAVE))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_180, __deriv__(WAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_181, __deriv__(WAVE), __deriv__(PRIML5))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_182, __deriv__(WAVE), __deriv__(PRIMR5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(WAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_183, __deriv__(VAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_184, __deriv__(VAVE), __deriv__(PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_185, __deriv__(VAVE), __deriv__(PRIMR4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(VAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_186, __deriv__(UAVE), __deriv__(PRIML3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_187, __deriv__(UAVE), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_188, __deriv__(UAVE), __deriv__(PRIMR3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UAVE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_189, __deriv__(HR), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_190, __deriv__(HR), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_191, __deriv__(HR), __deriv__(PRIMR1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_192, __deriv__(HR), __deriv__(PRIMR2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HR), __deriv__(THETAR))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_193, __deriv__(HL), __deriv__(GM1INV))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_194, __deriv__(HL), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_195, __deriv__(HL), __deriv__(PRIML1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_196, __deriv__(HL), __deriv__(PRIML2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(HL), __deriv__(THETAL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(HL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAR), __deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAR))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(5.0D-01, __deriv__(THETAL), __deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(THETAL))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_197, __deriv__(NZHAT), __deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_198, __deriv__(NZHAT), __deriv__(NRM3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NZHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_199, __deriv__(NYHAT), __deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_200, __deriv__(NYHAT), __deriv__(NRM2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NYHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_201, __deriv__(NXHAT), __deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_202, __deriv__(NXHAT), __deriv__(NRM1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NXHAT))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_203, __deriv__(NSIZE), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NSIZE))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_204, __deriv__(OpenAD_prop_3), __deriv__
     > (PRIMR4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_205, __deriv__(OpenAD_prop_3), __deriv__
     > (PRIMR3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_206, __deriv__(OpenAD_prop_3), __deriv__
     > (PRIMR5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_207, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIML4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_208, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIML3))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_209, __deriv__(OpenAD_prop_2), __deriv__
     > (PRIML5))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_210, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIML2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_211, __deriv__(OpenAD_prop_1), __deriv__
     > (PRIMR2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_212, __deriv__(OpenAD_prop_0), __deriv__
     > (NRM2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_213, __deriv__(OpenAD_prop_0), __deriv__
     > (NRM1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_214, __deriv__(OpenAD_prop_0), __deriv__
     > (NRM3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
