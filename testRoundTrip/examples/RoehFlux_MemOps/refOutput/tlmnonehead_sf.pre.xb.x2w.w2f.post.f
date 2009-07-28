      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine ad_roehf5(NRM1,NRM2,NRM3,PRIML1,PRIML2,PRIML3,PRIML4,PR
     +IML5,PRIMR1,PRIMR2,PRIMR3,PRIMR4,PRIMR5,GAMMA,GM1,GM1INV,NLEFIX,LE
     +FIX,MCHEPS,FLUX1,FLUX2,FLUX3,FLUX4,FLUX5)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_Symbol_1
      real(w2f__8) :: OpenAD_Symbol_2
      real(w2f__8) :: OpenAD_Symbol_3
      real(w2f__8) :: OpenAD_Symbol_4
      real(w2f__8) :: OpenAD_Symbol_5
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_acc_10
      real(w2f__8) :: OpenAD_acc_100
      real(w2f__8) :: OpenAD_acc_101
      real(w2f__8) :: OpenAD_acc_102
      real(w2f__8) :: OpenAD_acc_103
      real(w2f__8) :: OpenAD_acc_104
      real(w2f__8) :: OpenAD_acc_105
      real(w2f__8) :: OpenAD_acc_106
      real(w2f__8) :: OpenAD_acc_107
      real(w2f__8) :: OpenAD_acc_108
      real(w2f__8) :: OpenAD_acc_109
      real(w2f__8) :: OpenAD_acc_11
      real(w2f__8) :: OpenAD_acc_110
      real(w2f__8) :: OpenAD_acc_111
      real(w2f__8) :: OpenAD_acc_112
      real(w2f__8) :: OpenAD_acc_113
      real(w2f__8) :: OpenAD_acc_114
      real(w2f__8) :: OpenAD_acc_115
      real(w2f__8) :: OpenAD_acc_12
      real(w2f__8) :: OpenAD_acc_13
      real(w2f__8) :: OpenAD_acc_14
      real(w2f__8) :: OpenAD_acc_15
      real(w2f__8) :: OpenAD_acc_16
      real(w2f__8) :: OpenAD_acc_17
      real(w2f__8) :: OpenAD_acc_18
      real(w2f__8) :: OpenAD_acc_19
      real(w2f__8) :: OpenAD_acc_2
      real(w2f__8) :: OpenAD_acc_20
      real(w2f__8) :: OpenAD_acc_21
      real(w2f__8) :: OpenAD_acc_22
      real(w2f__8) :: OpenAD_acc_23
      real(w2f__8) :: OpenAD_acc_24
      real(w2f__8) :: OpenAD_acc_25
      real(w2f__8) :: OpenAD_acc_26
      real(w2f__8) :: OpenAD_acc_27
      real(w2f__8) :: OpenAD_acc_28
      real(w2f__8) :: OpenAD_acc_29
      real(w2f__8) :: OpenAD_acc_3
      real(w2f__8) :: OpenAD_acc_30
      real(w2f__8) :: OpenAD_acc_31
      real(w2f__8) :: OpenAD_acc_32
      real(w2f__8) :: OpenAD_acc_33
      real(w2f__8) :: OpenAD_acc_34
      real(w2f__8) :: OpenAD_acc_35
      real(w2f__8) :: OpenAD_acc_36
      real(w2f__8) :: OpenAD_acc_37
      real(w2f__8) :: OpenAD_acc_38
      real(w2f__8) :: OpenAD_acc_39
      real(w2f__8) :: OpenAD_acc_4
      real(w2f__8) :: OpenAD_acc_40
      real(w2f__8) :: OpenAD_acc_41
      real(w2f__8) :: OpenAD_acc_42
      real(w2f__8) :: OpenAD_acc_43
      real(w2f__8) :: OpenAD_acc_44
      real(w2f__8) :: OpenAD_acc_45
      real(w2f__8) :: OpenAD_acc_46
      real(w2f__8) :: OpenAD_acc_47
      real(w2f__8) :: OpenAD_acc_48
      real(w2f__8) :: OpenAD_acc_49
      real(w2f__8) :: OpenAD_acc_5
      real(w2f__8) :: OpenAD_acc_50
      real(w2f__8) :: OpenAD_acc_51
      real(w2f__8) :: OpenAD_acc_52
      real(w2f__8) :: OpenAD_acc_53
      real(w2f__8) :: OpenAD_acc_54
      real(w2f__8) :: OpenAD_acc_55
      real(w2f__8) :: OpenAD_acc_56
      real(w2f__8) :: OpenAD_acc_57
      real(w2f__8) :: OpenAD_acc_58
      real(w2f__8) :: OpenAD_acc_59
      real(w2f__8) :: OpenAD_acc_6
      real(w2f__8) :: OpenAD_acc_60
      real(w2f__8) :: OpenAD_acc_61
      real(w2f__8) :: OpenAD_acc_62
      real(w2f__8) :: OpenAD_acc_63
      real(w2f__8) :: OpenAD_acc_64
      real(w2f__8) :: OpenAD_acc_65
      real(w2f__8) :: OpenAD_acc_66
      real(w2f__8) :: OpenAD_acc_67
      real(w2f__8) :: OpenAD_acc_68
      real(w2f__8) :: OpenAD_acc_69
      real(w2f__8) :: OpenAD_acc_7
      real(w2f__8) :: OpenAD_acc_70
      real(w2f__8) :: OpenAD_acc_71
      real(w2f__8) :: OpenAD_acc_72
      real(w2f__8) :: OpenAD_acc_73
      real(w2f__8) :: OpenAD_acc_74
      real(w2f__8) :: OpenAD_acc_75
      real(w2f__8) :: OpenAD_acc_76
      real(w2f__8) :: OpenAD_acc_77
      real(w2f__8) :: OpenAD_acc_78
      real(w2f__8) :: OpenAD_acc_79
      real(w2f__8) :: OpenAD_acc_8
      real(w2f__8) :: OpenAD_acc_80
      real(w2f__8) :: OpenAD_acc_81
      real(w2f__8) :: OpenAD_acc_82
      real(w2f__8) :: OpenAD_acc_83
      real(w2f__8) :: OpenAD_acc_84
      real(w2f__8) :: OpenAD_acc_85
      real(w2f__8) :: OpenAD_acc_86
      real(w2f__8) :: OpenAD_acc_87
      real(w2f__8) :: OpenAD_acc_88
      real(w2f__8) :: OpenAD_acc_89
      real(w2f__8) :: OpenAD_acc_9
      real(w2f__8) :: OpenAD_acc_90
      real(w2f__8) :: OpenAD_acc_91
      real(w2f__8) :: OpenAD_acc_92
      real(w2f__8) :: OpenAD_acc_93
      real(w2f__8) :: OpenAD_acc_94
      real(w2f__8) :: OpenAD_acc_95
      real(w2f__8) :: OpenAD_acc_96
      real(w2f__8) :: OpenAD_acc_97
      real(w2f__8) :: OpenAD_acc_98
      real(w2f__8) :: OpenAD_acc_99
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_10
      real(w2f__8) :: OpenAD_lin_100
      real(w2f__8) :: OpenAD_lin_101
      real(w2f__8) :: OpenAD_lin_102
      real(w2f__8) :: OpenAD_lin_103
      real(w2f__8) :: OpenAD_lin_104
      real(w2f__8) :: OpenAD_lin_105
      real(w2f__8) :: OpenAD_lin_106
      real(w2f__8) :: OpenAD_lin_107
      real(w2f__8) :: OpenAD_lin_108
      real(w2f__8) :: OpenAD_lin_109
      real(w2f__8) :: OpenAD_lin_11
      real(w2f__8) :: OpenAD_lin_110
      real(w2f__8) :: OpenAD_lin_111
      real(w2f__8) :: OpenAD_lin_112
      real(w2f__8) :: OpenAD_lin_113
      real(w2f__8) :: OpenAD_lin_114
      real(w2f__8) :: OpenAD_lin_115
      real(w2f__8) :: OpenAD_lin_116
      real(w2f__8) :: OpenAD_lin_117
      real(w2f__8) :: OpenAD_lin_118
      real(w2f__8) :: OpenAD_lin_119
      real(w2f__8) :: OpenAD_lin_12
      real(w2f__8) :: OpenAD_lin_120
      real(w2f__8) :: OpenAD_lin_121
      real(w2f__8) :: OpenAD_lin_122
      real(w2f__8) :: OpenAD_lin_123
      real(w2f__8) :: OpenAD_lin_124
      real(w2f__8) :: OpenAD_lin_125
      real(w2f__8) :: OpenAD_lin_126
      real(w2f__8) :: OpenAD_lin_127
      real(w2f__8) :: OpenAD_lin_128
      real(w2f__8) :: OpenAD_lin_129
      real(w2f__8) :: OpenAD_lin_13
      real(w2f__8) :: OpenAD_lin_130
      real(w2f__8) :: OpenAD_lin_131
      real(w2f__8) :: OpenAD_lin_132
      real(w2f__8) :: OpenAD_lin_134
      real(w2f__8) :: OpenAD_lin_135
      real(w2f__8) :: OpenAD_lin_136
      real(w2f__8) :: OpenAD_lin_137
      real(w2f__8) :: OpenAD_lin_138
      real(w2f__8) :: OpenAD_lin_139
      real(w2f__8) :: OpenAD_lin_14
      real(w2f__8) :: OpenAD_lin_140
      real(w2f__8) :: OpenAD_lin_141
      real(w2f__8) :: OpenAD_lin_142
      real(w2f__8) :: OpenAD_lin_143
      real(w2f__8) :: OpenAD_lin_144
      real(w2f__8) :: OpenAD_lin_145
      real(w2f__8) :: OpenAD_lin_146
      real(w2f__8) :: OpenAD_lin_147
      real(w2f__8) :: OpenAD_lin_148
      real(w2f__8) :: OpenAD_lin_149
      real(w2f__8) :: OpenAD_lin_150
      real(w2f__8) :: OpenAD_lin_151
      real(w2f__8) :: OpenAD_lin_152
      real(w2f__8) :: OpenAD_lin_153
      real(w2f__8) :: OpenAD_lin_154
      real(w2f__8) :: OpenAD_lin_155
      real(w2f__8) :: OpenAD_lin_156
      real(w2f__8) :: OpenAD_lin_157
      real(w2f__8) :: OpenAD_lin_158
      real(w2f__8) :: OpenAD_lin_159
      real(w2f__8) :: OpenAD_lin_16
      real(w2f__8) :: OpenAD_lin_160
      real(w2f__8) :: OpenAD_lin_161
      real(w2f__8) :: OpenAD_lin_162
      real(w2f__8) :: OpenAD_lin_163
      real(w2f__8) :: OpenAD_lin_164
      real(w2f__8) :: OpenAD_lin_165
      real(w2f__8) :: OpenAD_lin_167
      real(w2f__8) :: OpenAD_lin_168
      real(w2f__8) :: OpenAD_lin_169
      real(w2f__8) :: OpenAD_lin_170
      real(w2f__8) :: OpenAD_lin_171
      real(w2f__8) :: OpenAD_lin_172
      real(w2f__8) :: OpenAD_lin_173
      real(w2f__8) :: OpenAD_lin_174
      real(w2f__8) :: OpenAD_lin_175
      real(w2f__8) :: OpenAD_lin_176
      real(w2f__8) :: OpenAD_lin_177
      real(w2f__8) :: OpenAD_lin_178
      real(w2f__8) :: OpenAD_lin_179
      real(w2f__8) :: OpenAD_lin_18
      real(w2f__8) :: OpenAD_lin_180
      real(w2f__8) :: OpenAD_lin_181
      real(w2f__8) :: OpenAD_lin_182
      real(w2f__8) :: OpenAD_lin_183
      real(w2f__8) :: OpenAD_lin_184
      real(w2f__8) :: OpenAD_lin_185
      real(w2f__8) :: OpenAD_lin_186
      real(w2f__8) :: OpenAD_lin_187
      real(w2f__8) :: OpenAD_lin_188
      real(w2f__8) :: OpenAD_lin_189
      real(w2f__8) :: OpenAD_lin_19
      real(w2f__8) :: OpenAD_lin_190
      real(w2f__8) :: OpenAD_lin_191
      real(w2f__8) :: OpenAD_lin_192
      real(w2f__8) :: OpenAD_lin_193
      real(w2f__8) :: OpenAD_lin_194
      real(w2f__8) :: OpenAD_lin_195
      real(w2f__8) :: OpenAD_lin_196
      real(w2f__8) :: OpenAD_lin_197
      real(w2f__8) :: OpenAD_lin_198
      real(w2f__8) :: OpenAD_lin_199
      real(w2f__8) :: OpenAD_lin_20
      real(w2f__8) :: OpenAD_lin_200
      real(w2f__8) :: OpenAD_lin_201
      real(w2f__8) :: OpenAD_lin_202
      real(w2f__8) :: OpenAD_lin_203
      real(w2f__8) :: OpenAD_lin_204
      real(w2f__8) :: OpenAD_lin_205
      real(w2f__8) :: OpenAD_lin_206
      real(w2f__8) :: OpenAD_lin_207
      real(w2f__8) :: OpenAD_lin_208
      real(w2f__8) :: OpenAD_lin_209
      real(w2f__8) :: OpenAD_lin_210
      real(w2f__8) :: OpenAD_lin_211
      real(w2f__8) :: OpenAD_lin_212
      real(w2f__8) :: OpenAD_lin_213
      real(w2f__8) :: OpenAD_lin_214
      real(w2f__8) :: OpenAD_lin_215
      real(w2f__8) :: OpenAD_lin_216
      real(w2f__8) :: OpenAD_lin_217
      real(w2f__8) :: OpenAD_lin_218
      real(w2f__8) :: OpenAD_lin_219
      real(w2f__8) :: OpenAD_lin_220
      real(w2f__8) :: OpenAD_lin_221
      real(w2f__8) :: OpenAD_lin_222
      real(w2f__8) :: OpenAD_lin_223
      real(w2f__8) :: OpenAD_lin_224
      real(w2f__8) :: OpenAD_lin_225
      real(w2f__8) :: OpenAD_lin_226
      real(w2f__8) :: OpenAD_lin_227
      real(w2f__8) :: OpenAD_lin_228
      real(w2f__8) :: OpenAD_lin_229
      real(w2f__8) :: OpenAD_lin_23
      real(w2f__8) :: OpenAD_lin_230
      real(w2f__8) :: OpenAD_lin_231
      real(w2f__8) :: OpenAD_lin_232
      real(w2f__8) :: OpenAD_lin_233
      real(w2f__8) :: OpenAD_lin_234
      real(w2f__8) :: OpenAD_lin_235
      real(w2f__8) :: OpenAD_lin_236
      real(w2f__8) :: OpenAD_lin_237
      real(w2f__8) :: OpenAD_lin_238
      real(w2f__8) :: OpenAD_lin_239
      real(w2f__8) :: OpenAD_lin_240
      real(w2f__8) :: OpenAD_lin_241
      real(w2f__8) :: OpenAD_lin_242
      real(w2f__8) :: OpenAD_lin_243
      real(w2f__8) :: OpenAD_lin_244
      real(w2f__8) :: OpenAD_lin_245
      real(w2f__8) :: OpenAD_lin_246
      real(w2f__8) :: OpenAD_lin_247
      real(w2f__8) :: OpenAD_lin_248
      real(w2f__8) :: OpenAD_lin_249
      real(w2f__8) :: OpenAD_lin_25
      real(w2f__8) :: OpenAD_lin_250
      real(w2f__8) :: OpenAD_lin_251
      real(w2f__8) :: OpenAD_lin_252
      real(w2f__8) :: OpenAD_lin_253
      real(w2f__8) :: OpenAD_lin_254
      real(w2f__8) :: OpenAD_lin_255
      real(w2f__8) :: OpenAD_lin_256
      real(w2f__8) :: OpenAD_lin_27
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_30
      real(w2f__8) :: OpenAD_lin_32
      real(w2f__8) :: OpenAD_lin_34
      real(w2f__8) :: OpenAD_lin_36
      real(w2f__8) :: OpenAD_lin_37
      real(w2f__8) :: OpenAD_lin_38
      real(w2f__8) :: OpenAD_lin_39
      real(w2f__8) :: OpenAD_lin_40
      real(w2f__8) :: OpenAD_lin_41
      real(w2f__8) :: OpenAD_lin_42
      real(w2f__8) :: OpenAD_lin_43
      real(w2f__8) :: OpenAD_lin_44
      real(w2f__8) :: OpenAD_lin_45
      real(w2f__8) :: OpenAD_lin_46
      real(w2f__8) :: OpenAD_lin_47
      real(w2f__8) :: OpenAD_lin_48
      real(w2f__8) :: OpenAD_lin_49
      real(w2f__8) :: OpenAD_lin_5
      real(w2f__8) :: OpenAD_lin_50
      real(w2f__8) :: OpenAD_lin_51
      real(w2f__8) :: OpenAD_lin_52
      real(w2f__8) :: OpenAD_lin_53
      real(w2f__8) :: OpenAD_lin_54
      real(w2f__8) :: OpenAD_lin_55
      real(w2f__8) :: OpenAD_lin_56
      real(w2f__8) :: OpenAD_lin_57
      real(w2f__8) :: OpenAD_lin_58
      real(w2f__8) :: OpenAD_lin_59
      real(w2f__8) :: OpenAD_lin_60
      real(w2f__8) :: OpenAD_lin_61
      real(w2f__8) :: OpenAD_lin_62
      real(w2f__8) :: OpenAD_lin_63
      real(w2f__8) :: OpenAD_lin_65
      real(w2f__8) :: OpenAD_lin_67
      real(w2f__8) :: OpenAD_lin_69
      real(w2f__8) :: OpenAD_lin_71
      real(w2f__8) :: OpenAD_lin_72
      real(w2f__8) :: OpenAD_lin_73
      real(w2f__8) :: OpenAD_lin_74
      real(w2f__8) :: OpenAD_lin_75
      real(w2f__8) :: OpenAD_lin_76
      real(w2f__8) :: OpenAD_lin_77
      real(w2f__8) :: OpenAD_lin_78
      real(w2f__8) :: OpenAD_lin_79
      real(w2f__8) :: OpenAD_lin_8
      real(w2f__8) :: OpenAD_lin_80
      real(w2f__8) :: OpenAD_lin_81
      real(w2f__8) :: OpenAD_lin_82
      real(w2f__8) :: OpenAD_lin_83
      real(w2f__8) :: OpenAD_lin_84
      real(w2f__8) :: OpenAD_lin_85
      real(w2f__8) :: OpenAD_lin_86
      real(w2f__8) :: OpenAD_lin_87
      real(w2f__8) :: OpenAD_lin_88
      real(w2f__8) :: OpenAD_lin_89
      real(w2f__8) :: OpenAD_lin_9
      real(w2f__8) :: OpenAD_lin_90
      real(w2f__8) :: OpenAD_lin_91
      real(w2f__8) :: OpenAD_lin_95
      real(w2f__8) :: OpenAD_lin_96
      real(w2f__8) :: OpenAD_lin_97
      real(w2f__8) :: OpenAD_lin_98
      real(w2f__8) :: OpenAD_lin_99
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
      real(w2f__8) :: OpenAD_tmp_0
      real(w2f__8) :: OpenAD_tmp_1
      real(w2f__8) :: OpenAD_tmp_10
      real(w2f__8) :: OpenAD_tmp_11
      real(w2f__8) :: OpenAD_tmp_12
      real(w2f__8) :: OpenAD_tmp_13
      real(w2f__8) :: OpenAD_tmp_14
      real(w2f__8) :: OpenAD_tmp_15
      real(w2f__8) :: OpenAD_tmp_16
      real(w2f__8) :: OpenAD_tmp_17
      real(w2f__8) :: OpenAD_tmp_18
      real(w2f__8) :: OpenAD_tmp_19
      real(w2f__8) :: OpenAD_tmp_2
      real(w2f__8) :: OpenAD_tmp_20
      real(w2f__8) :: OpenAD_tmp_21
      real(w2f__8) :: OpenAD_tmp_22
      real(w2f__8) :: OpenAD_tmp_23
      real(w2f__8) :: OpenAD_tmp_24
      real(w2f__8) :: OpenAD_tmp_25
      real(w2f__8) :: OpenAD_tmp_26
      real(w2f__8) :: OpenAD_tmp_27
      real(w2f__8) :: OpenAD_tmp_28
      real(w2f__8) :: OpenAD_tmp_29
      real(w2f__8) :: OpenAD_tmp_3
      real(w2f__8) :: OpenAD_tmp_30
      real(w2f__8) :: OpenAD_tmp_4
      real(w2f__8) :: OpenAD_tmp_5
      real(w2f__8) :: OpenAD_tmp_6
      real(w2f__8) :: OpenAD_tmp_7
      real(w2f__8) :: OpenAD_tmp_8
      real(w2f__8) :: OpenAD_tmp_9
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
      real(w2f__8) :: NLEFIX
      INTENT(IN)  NLEFIX
      real(w2f__8) :: LEFIX
      INTENT(IN)  LEFIX
      real(w2f__8) :: MCHEPS
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
      real(w2f__4) :: HALF
      parameter (HALF=5.0E-01)
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
      real(w2f__4) :: ONE
      parameter (ONE=1.0)
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
      real(w2f__4) :: ZERO
      parameter (ZERO=0.0)
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
      OpenAD_tmp_0 = ((NRM1%v**2)+(NRM2%v**2)+(NRM3%v**2))
      NSIZE%v = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = (2*(NRM1%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_3 = (2*(NRM2%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_5 = (2*(NRM3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      NSIZEI%v = (1.0D00/NSIZE%v)
      OpenAD_lin_8 = (-(1.0D00/(NSIZE%v*NSIZE%v)))
      NXHAT%v = (NRM1%v*NSIZEI%v)
      OpenAD_lin_9 = NSIZEI%v
      OpenAD_lin_10 = NRM1%v
      NYHAT%v = (NRM2%v*NSIZEI%v)
      OpenAD_lin_11 = NSIZEI%v
      OpenAD_lin_12 = NRM2%v
      NZHAT%v = (NRM3%v*NSIZEI%v)
      OpenAD_lin_13 = NSIZEI%v
      OpenAD_lin_14 = NRM3%v
      OpenAD_tmp_2 = (PRIMR2%v/PRIML2%v)
      OpenAD_tmp_1 = (SIN(OpenAD_tmp_2)+1.0D00)
      ROEL%v = (1.0D00/OpenAD_tmp_1)
      OpenAD_lin_19 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_lin_20 = (-(PRIMR2%v/(PRIML2%v*PRIML2%v)))
      OpenAD_lin_18 = COS(OpenAD_tmp_2)
      OpenAD_lin_16 = (-(1.0D00/(OpenAD_tmp_1*OpenAD_tmp_1)))
      ROER%v = (1.0D00-ROEL%v)
      OpenAD_tmp_3 = ((PRIML3%v**2)+(PRIML4%v**2)+(PRIML5%v**2))
      THETAL%v = (OpenAD_tmp_3*5.0D-01)
      OpenAD_lin_23 = (2*(PRIML3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_25 = (2*(PRIML4%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_27 = (2*(PRIML5%v**(2-INT(1_w2f__i8))))
      OpenAD_tmp_4 = ((PRIMR3%v**2)+(PRIMR4%v**2)+(PRIMR5%v**2))
      THETAR%v = (OpenAD_tmp_4*5.0D-01)
      OpenAD_lin_30 = (2*(PRIMR3%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_32 = (2*(PRIMR4%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_34 = (2*(PRIMR5%v**(2-INT(1_w2f__i8))))
      OpenAD_tmp_6 = (GAMMA%v*GM1INV%v)
      OpenAD_tmp_5 = (PRIML1%v*OpenAD_tmp_6)
      HL%v = (THETAL%v+(OpenAD_tmp_5/PRIML2%v))
      OpenAD_lin_38 = OpenAD_tmp_6
      OpenAD_lin_40 = GM1INV%v
      OpenAD_lin_41 = GAMMA%v
      OpenAD_lin_39 = PRIML1%v
      OpenAD_lin_36 = (INT(1_w2f__i8)/PRIML2%v)
      OpenAD_lin_37 = (-(OpenAD_tmp_5/(PRIML2%v*PRIML2%v)))
      OpenAD_tmp_8 = (GAMMA%v*GM1INV%v)
      OpenAD_tmp_7 = (PRIMR1%v*OpenAD_tmp_8)
      HR%v = (THETAR%v+(OpenAD_tmp_7/PRIMR2%v))
      OpenAD_lin_44 = OpenAD_tmp_8
      OpenAD_lin_46 = GM1INV%v
      OpenAD_lin_47 = GAMMA%v
      OpenAD_lin_45 = PRIMR1%v
      OpenAD_lin_42 = (INT(1_w2f__i8)/PRIMR2%v)
      OpenAD_lin_43 = (-(OpenAD_tmp_7/(PRIMR2%v*PRIMR2%v)))
      UAVE%v = (PRIML3%v*ROEL%v+PRIMR3%v*ROER%v)
      OpenAD_lin_48 = ROEL%v
      OpenAD_lin_49 = PRIML3%v
      OpenAD_lin_50 = ROER%v
      OpenAD_lin_51 = PRIMR3%v
      VAVE%v = (PRIML4%v*ROEL%v+PRIMR4%v*ROER%v)
      OpenAD_lin_52 = ROEL%v
      OpenAD_lin_53 = PRIML4%v
      OpenAD_lin_54 = ROER%v
      OpenAD_lin_55 = PRIMR4%v
      WAVE%v = (PRIML5%v*ROEL%v+PRIMR5%v*ROER%v)
      OpenAD_lin_56 = ROEL%v
      OpenAD_lin_57 = PRIML5%v
      OpenAD_lin_58 = ROER%v
      OpenAD_lin_59 = PRIMR5%v
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
      OpenAD_acc_0 = (OpenAD_lin_45*OpenAD_lin_42)
      OpenAD_acc_1 = (OpenAD_lin_39*OpenAD_lin_36)
      OpenAD_acc_2 = (OpenAD_lin_8*OpenAD_lin_10)
      OpenAD_acc_3 = (OpenAD_lin_8*OpenAD_lin_12)
      OpenAD_acc_4 = (OpenAD_lin_8*OpenAD_lin_14)
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
      OpenAD_acc_15 = (OpenAD_lin_40*OpenAD_acc_1)
      OpenAD_acc_16 = (OpenAD_lin_41*OpenAD_acc_1)
      OpenAD_acc_17 = (OpenAD_lin_44*OpenAD_lin_42)
      OpenAD_acc_18 = (OpenAD_lin_46*OpenAD_acc_0)
      OpenAD_acc_19 = (OpenAD_lin_47*OpenAD_acc_0)
      CALL sax(OpenAD_lin_5,NRM3,OpenAD_prop_0)
      CALL saxpy(OpenAD_lin_1,NRM1,OpenAD_prop_0)
      CALL saxpy(OpenAD_lin_3,NRM2,OpenAD_prop_0)
      CALL sax(OpenAD_acc_12,PRIMR2,OpenAD_prop_1)
      CALL saxpy(OpenAD_acc_13,PRIML2,OpenAD_prop_1)
      CALL sax(OpenAD_lin_27,PRIML5,OpenAD_prop_2)
      CALL saxpy(OpenAD_lin_23,PRIML3,OpenAD_prop_2)
      CALL saxpy(OpenAD_lin_25,PRIML4,OpenAD_prop_2)
      CALL sax(OpenAD_lin_34,PRIMR5,OpenAD_prop_3)
      CALL saxpy(OpenAD_lin_30,PRIMR3,OpenAD_prop_3)
      CALL saxpy(OpenAD_lin_32,PRIMR4,OpenAD_prop_3)
      CALL sax(OpenAD_lin_0,OpenAD_prop_0,NSIZE)
      CALL sax(OpenAD_lin_9,NRM1,NXHAT)
      CALL saxpy(OpenAD_acc_2,NSIZE,NXHAT)
      CALL sax(OpenAD_lin_11,NRM2,NYHAT)
      CALL saxpy(OpenAD_acc_3,NSIZE,NYHAT)
      CALL sax(OpenAD_lin_13,NRM3,NZHAT)
      CALL saxpy(OpenAD_acc_4,NSIZE,NZHAT)
      CALL sax(5.0D-01,OpenAD_prop_2,THETAL)
      CALL sax(5.0D-01,OpenAD_prop_3,THETAR)
      CALL setderiv(HL,THETAL)
      CALL saxpy(OpenAD_lin_37,PRIML2,HL)
      CALL saxpy(OpenAD_acc_14,PRIML1,HL)
      CALL saxpy(OpenAD_acc_15,GAMMA,HL)
      CALL saxpy(OpenAD_acc_16,GM1INV,HL)
      CALL setderiv(HR,THETAR)
      CALL saxpy(OpenAD_lin_43,PRIMR2,HR)
      CALL saxpy(OpenAD_acc_17,PRIMR1,HR)
      CALL saxpy(OpenAD_acc_18,GAMMA,HR)
      CALL saxpy(OpenAD_acc_19,GM1INV,HR)
      CALL sax(OpenAD_lin_50,PRIMR3,UAVE)
      CALL saxpy(OpenAD_acc_11,OpenAD_prop_1,UAVE)
      CALL saxpy(OpenAD_lin_48,PRIML3,UAVE)
      CALL sax(OpenAD_lin_54,PRIMR4,VAVE)
      CALL saxpy(OpenAD_lin_52,PRIML4,VAVE)
      CALL saxpy(OpenAD_acc_10,OpenAD_prop_1,VAVE)
      CALL sax(OpenAD_lin_58,PRIMR5,WAVE)
      CALL saxpy(OpenAD_lin_56,PRIML5,WAVE)
      CALL saxpy(OpenAD_acc_9,OpenAD_prop_1,WAVE)
      CALL sax(OpenAD_lin_69,WAVE,OpenAD_prop_4)
      CALL saxpy(OpenAD_lin_67,VAVE,OpenAD_prop_4)
      CALL saxpy(OpenAD_lin_65,UAVE,OpenAD_prop_4)
      CALL sax(5.0D-01,OpenAD_prop_4,THTAVE)
      CALL sax(OpenAD_lin_71,GM1,CAVE)
      CALL saxpy(OpenAD_acc_5,OpenAD_prop_4,CAVE)
      CALL saxpy(OpenAD_acc_6,HR,CAVE)
      CALL saxpy(OpenAD_acc_7,HL,CAVE)
      CALL saxpy(OpenAD_acc_8,OpenAD_prop_1,CAVE)
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
      ALAMCM%v = LAMCM%v
      ALAMCP%v = LAMCP%v
      ALAMU%v = LAMU%v
      OpenAD_acc_20 = (OpenAD_lin_82*INT((-1_w2f__i8)))
      OpenAD_acc_21 = (OpenAD_lin_83*INT((-1_w2f__i8)))
      OpenAD_acc_22 = (OpenAD_lin_86*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_lin_87*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_lin_90*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_lin_91*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_5,CAVE)
      CALL sax(OpenAD_lin_73,OpenAD_prop_5,CAVE)
      CALL sax(OpenAD_lin_80,NYHAT,UTILDE)
      CALL saxpy(OpenAD_lin_81,WAVE,UTILDE)
      CALL saxpy(OpenAD_acc_20,NZHAT,UTILDE)
      CALL saxpy(OpenAD_acc_21,VAVE,UTILDE)
      CALL sax(OpenAD_lin_84,NZHAT,VTILDE)
      CALL saxpy(OpenAD_lin_85,UAVE,VTILDE)
      CALL saxpy(OpenAD_acc_22,NXHAT,VTILDE)
      CALL saxpy(OpenAD_acc_23,WAVE,VTILDE)
      CALL sax(OpenAD_lin_88,NXHAT,WTILDE)
      CALL saxpy(OpenAD_lin_89,VAVE,WTILDE)
      CALL saxpy(OpenAD_acc_24,NYHAT,WTILDE)
      CALL saxpy(OpenAD_acc_25,UAVE,WTILDE)
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
      CALL setderiv(ALAMCM,LAMCM)
      CALL setderiv(ALAMCP,LAMCP)
      CALL setderiv(ALAMU,LAMU)
      OpenAD_tmp_11 = (LAMCM%v-ALAMCM%v)
      ALAMCM%v = (OpenAD_tmp_11*5.0D-01)
      OpenAD_tmp_12 = (LAMCP%v-ALAMCP%v)
      ALAMCP%v = (OpenAD_tmp_12*5.0D-01)
      OpenAD_tmp_13 = (LAMU%v-ALAMU%v)
      ALAMU%v = (OpenAD_tmp_13*5.0D-01)
      EL%v = (PRIML1%v*GM1INV%v+PRIML2%v*THETAL%v)
      OpenAD_lin_95 = GM1INV%v
      OpenAD_lin_96 = PRIML1%v
      OpenAD_lin_97 = THETAL%v
      OpenAD_lin_98 = PRIML2%v
      RUL%v = (PRIML2%v*PRIML3%v)
      OpenAD_lin_99 = PRIML3%v
      OpenAD_lin_100 = PRIML2%v
      RVL%v = (PRIML2%v*PRIML4%v)
      OpenAD_lin_101 = PRIML4%v
      OpenAD_lin_102 = PRIML2%v
      RWL%v = (PRIML2%v*PRIML5%v)
      OpenAD_lin_103 = PRIML5%v
      OpenAD_lin_104 = PRIML2%v
      ER%v = (PRIMR1%v*GM1INV%v+PRIMR2%v*THETAR%v)
      OpenAD_lin_105 = GM1INV%v
      OpenAD_lin_106 = PRIMR1%v
      OpenAD_lin_107 = THETAR%v
      OpenAD_lin_108 = PRIMR2%v
      RUR%v = (PRIMR2%v*PRIMR3%v)
      OpenAD_lin_109 = PRIMR3%v
      OpenAD_lin_110 = PRIMR2%v
      RVR%v = (PRIMR2%v*PRIMR4%v)
      OpenAD_lin_111 = PRIMR4%v
      OpenAD_lin_112 = PRIMR2%v
      RWR%v = (PRIMR2%v*PRIMR5%v)
      OpenAD_lin_113 = PRIMR5%v
      OpenAD_lin_114 = PRIMR2%v
      DE%v = (ER%v-EL%v)
      DR%v = (PRIMR2%v-PRIML2%v)
      DRU%v = (RUR%v-RUL%v)
      DRV%v = (RVR%v-RVL%v)
      DRW%v = (RWR%v-RWL%v)
      UDDRU%v = (DRU%v*UAVE%v+DRV%v*VAVE%v+DRW%v*WAVE%v)
      OpenAD_lin_115 = UAVE%v
      OpenAD_lin_116 = DRU%v
      OpenAD_lin_117 = VAVE%v
      OpenAD_lin_118 = DRV%v
      OpenAD_lin_119 = WAVE%v
      OpenAD_lin_120 = DRW%v
      OpenAD_tmp_14 = (GM1%v/CAVE%v)
      OpenAD_tmp_15 = (DE%v+DR%v*THTAVE%v-UDDRU%v)
      OMEGA%v = (OpenAD_tmp_14*OpenAD_tmp_15)
      OpenAD_lin_123 = (INT(1_w2f__i8)/CAVE%v)
      OpenAD_lin_124 = (-(GM1%v/(CAVE%v*CAVE%v)))
      OpenAD_lin_121 = OpenAD_tmp_15
      OpenAD_lin_125 = THTAVE%v
      OpenAD_lin_126 = DR%v
      OpenAD_lin_122 = OpenAD_tmp_14
      NDDRU%v = (DRU%v*NXHAT%v+DRV%v*NYHAT%v+DRW%v*NZHAT%v)
      OpenAD_lin_127 = NXHAT%v
      OpenAD_lin_128 = DRU%v
      OpenAD_lin_129 = NYHAT%v
      OpenAD_lin_130 = DRV%v
      OpenAD_lin_131 = NZHAT%v
      OpenAD_lin_132 = DRW%v
      OpenAD_tmp_16 = (OMEGA%v+DR%v*UHAT%v-NDDRU%v)
      ALP1%v = (OpenAD_tmp_16*5.0D-01)
      OpenAD_lin_134 = UHAT%v
      OpenAD_lin_135 = DR%v
      OpenAD_tmp_17 = (CAVE%v*NXHAT%v-UTILDE%v)
      OpenAD_tmp_18 = (-NXHAT%v)
      ALP2%v = (DRW%v*NYHAT%v+DR%v*OpenAD_tmp_17+OMEGA%v*OpenAD_tmp_18-D
     +RV%v*NZHAT%v)
      OpenAD_lin_136 = NYHAT%v
      OpenAD_lin_137 = DRW%v
      OpenAD_lin_138 = OpenAD_tmp_17
      OpenAD_lin_140 = NXHAT%v
      OpenAD_lin_141 = CAVE%v
      OpenAD_lin_139 = DR%v
      OpenAD_lin_142 = OpenAD_tmp_18
      OpenAD_lin_143 = OMEGA%v
      OpenAD_lin_144 = NZHAT%v
      OpenAD_lin_145 = DRV%v
      OpenAD_tmp_19 = (CAVE%v*NYHAT%v-VTILDE%v)
      OpenAD_tmp_20 = (-NYHAT%v)
      ALP3%v = (DRU%v*NZHAT%v+DR%v*OpenAD_tmp_19+OMEGA%v*OpenAD_tmp_20-D
     +RW%v*NXHAT%v)
      OpenAD_lin_146 = NZHAT%v
      OpenAD_lin_147 = DRU%v
      OpenAD_lin_148 = OpenAD_tmp_19
      OpenAD_lin_150 = NYHAT%v
      OpenAD_lin_151 = CAVE%v
      OpenAD_lin_149 = DR%v
      OpenAD_lin_152 = OpenAD_tmp_20
      OpenAD_lin_153 = OMEGA%v
      OpenAD_lin_154 = NXHAT%v
      OpenAD_lin_155 = DRW%v
      OpenAD_tmp_21 = (CAVE%v*NZHAT%v-WTILDE%v)
      OpenAD_tmp_22 = (-NZHAT%v)
      ALP4%v = (DRV%v*NXHAT%v+DR%v*OpenAD_tmp_21+OMEGA%v*OpenAD_tmp_22-D
     +RU%v*NYHAT%v)
      OpenAD_lin_156 = NXHAT%v
      OpenAD_lin_157 = DRV%v
      OpenAD_lin_158 = OpenAD_tmp_21
      OpenAD_lin_160 = NZHAT%v
      OpenAD_lin_161 = CAVE%v
      OpenAD_lin_159 = DR%v
      OpenAD_lin_162 = OpenAD_tmp_22
      OpenAD_lin_163 = OMEGA%v
      OpenAD_lin_164 = NYHAT%v
      OpenAD_lin_165 = DRU%v
      OpenAD_tmp_23 = (NDDRU%v+OMEGA%v-DR%v*UHAT%v)
      ALP5%v = (OpenAD_tmp_23*5.0D-01)
      OpenAD_lin_167 = UHAT%v
      OpenAD_lin_168 = DR%v
      OpenAD_acc_26 = (OpenAD_lin_123*OpenAD_lin_121)
      OpenAD_acc_27 = (OpenAD_lin_124*OpenAD_lin_121)
      OpenAD_acc_28 = (OpenAD_lin_168*(-5.0D-01))
      OpenAD_acc_29 = (OpenAD_lin_135*5.0D-01)
      OpenAD_acc_30 = (INT((-1_w2f__i8))*OpenAD_lin_122)
      OpenAD_acc_31 = (OpenAD_lin_119*OpenAD_acc_30)
      OpenAD_acc_32 = (OpenAD_lin_120*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_160*OpenAD_lin_159)
      OpenAD_acc_34 = (OpenAD_lin_161*OpenAD_lin_159+INT((-1_w2f__i8))*O
     +penAD_lin_163)
      OpenAD_acc_35 = (INT((-1_w2f__i8))*OpenAD_lin_159)
      OpenAD_acc_36 = (OpenAD_lin_150*OpenAD_lin_149)
      OpenAD_acc_37 = (OpenAD_lin_151*OpenAD_lin_149+INT((-1_w2f__i8))*O
     +penAD_lin_153)
      OpenAD_acc_38 = (INT((-1_w2f__i8))*OpenAD_lin_149)
      OpenAD_acc_39 = (OpenAD_lin_140*OpenAD_lin_139)
      OpenAD_acc_40 = (OpenAD_lin_141*OpenAD_lin_139+INT((-1_w2f__i8))*O
     +penAD_lin_143)
      OpenAD_acc_41 = (INT((-1_w2f__i8))*OpenAD_lin_139)
      OpenAD_acc_42 = (OpenAD_lin_125*OpenAD_lin_122)
      OpenAD_acc_43 = (OpenAD_lin_126*OpenAD_lin_122)
      OpenAD_acc_44 = (OpenAD_lin_167*(-5.0D-01)+OpenAD_acc_42*5.0D-01)
      OpenAD_acc_45 = (OpenAD_lin_158+OpenAD_acc_42*OpenAD_lin_162)
      OpenAD_acc_46 = (OpenAD_lin_148+OpenAD_acc_42*OpenAD_lin_152)
      OpenAD_acc_47 = (OpenAD_lin_138+OpenAD_acc_42*OpenAD_lin_142)
      OpenAD_acc_48 = (OpenAD_lin_134*5.0D-01+OpenAD_acc_42*5.0D-01)
      OpenAD_acc_49 = (OpenAD_lin_117*OpenAD_acc_30)
      OpenAD_acc_50 = (OpenAD_lin_118*OpenAD_acc_30)
      OpenAD_acc_51 = (OpenAD_lin_115*OpenAD_acc_30)
      OpenAD_acc_52 = (OpenAD_lin_116*OpenAD_acc_30)
      OpenAD_acc_53 = (OpenAD_lin_164*INT((-1_w2f__i8)))
      OpenAD_acc_54 = (OpenAD_lin_165*INT((-1_w2f__i8)))
      OpenAD_acc_55 = (OpenAD_lin_154*INT((-1_w2f__i8)))
      OpenAD_acc_56 = (OpenAD_lin_155*INT((-1_w2f__i8)))
      OpenAD_acc_57 = (OpenAD_lin_144*INT((-1_w2f__i8)))
      OpenAD_acc_58 = (OpenAD_lin_145*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_6,ALAMCM)
      CALL setderiv(OpenAD_prop_7,ALAMCP)
      CALL setderiv(OpenAD_prop_8,ALAMU)
      CALL setderiv(OpenAD_prop_9,LAMCM)
      CALL dec_deriv(OpenAD_prop_9,OpenAD_prop_6)
      CALL setderiv(OpenAD_prop_10,LAMCP)
      CALL dec_deriv(OpenAD_prop_10,OpenAD_prop_7)
      CALL setderiv(OpenAD_prop_11,LAMU)
      CALL dec_deriv(OpenAD_prop_11,OpenAD_prop_8)
      CALL sax(OpenAD_lin_99,PRIML2,RUL)
      CALL saxpy(OpenAD_lin_100,PRIML3,RUL)
      CALL sax(OpenAD_lin_101,PRIML2,RVL)
      CALL saxpy(OpenAD_lin_102,PRIML4,RVL)
      CALL sax(OpenAD_lin_103,PRIML2,RWL)
      CALL saxpy(OpenAD_lin_104,PRIML5,RWL)
      CALL setderiv(DR,PRIMR2)
      CALL dec_deriv(DR,PRIML2)
      CALL set_neg_deriv(DRU,RUL)
      CALL saxpy(OpenAD_lin_109,PRIMR2,DRU)
      CALL saxpy(OpenAD_lin_110,PRIMR3,DRU)
      CALL set_neg_deriv(DRV,RVL)
      CALL saxpy(OpenAD_lin_111,PRIMR2,DRV)
      CALL saxpy(OpenAD_lin_112,PRIMR4,DRV)
      CALL set_neg_deriv(DRW,RWL)
      CALL saxpy(OpenAD_lin_113,PRIMR2,DRW)
      CALL saxpy(OpenAD_lin_114,PRIMR5,DRW)
      CALL sax(5.0D-01,OpenAD_prop_9,ALAMCM)
      CALL sax(5.0D-01,OpenAD_prop_10,ALAMCP)
      CALL sax(5.0D-01,OpenAD_prop_11,ALAMU)
      CALL sax(OpenAD_lin_95,PRIML1,EL)
      CALL saxpy(OpenAD_lin_96,GM1INV,EL)
      CALL saxpy(OpenAD_lin_97,PRIML2,EL)
      CALL saxpy(OpenAD_lin_98,THETAL,EL)
      CALL set_neg_deriv(DE,EL)
      CALL saxpy(OpenAD_lin_105,PRIMR1,DE)
      CALL saxpy(OpenAD_lin_106,GM1INV,DE)
      CALL saxpy(OpenAD_lin_107,PRIMR2,DE)
      CALL saxpy(OpenAD_lin_108,THETAR,DE)
      CALL sax(OpenAD_lin_131,DRW,NDDRU)
      CALL saxpy(OpenAD_lin_132,NZHAT,NDDRU)
      CALL saxpy(OpenAD_lin_129,DRV,NDDRU)
      CALL saxpy(OpenAD_lin_130,NYHAT,NDDRU)
      CALL saxpy(OpenAD_lin_127,DRU,NDDRU)
      CALL saxpy(OpenAD_lin_128,NXHAT,NDDRU)
      CALL sax(OpenAD_acc_26,GM1,OMEGA)
      CALL saxpy(OpenAD_acc_27,CAVE,OMEGA)
      CALL saxpy(OpenAD_acc_31,DRW,OMEGA)
      CALL saxpy(OpenAD_acc_32,WAVE,OMEGA)
      CALL saxpy(OpenAD_lin_122,DE,OMEGA)
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
      CALL sax(OpenAD_lin_142,OMEGA,ALP2)
      CALL saxpy(OpenAD_acc_47,DR,ALP2)
      CALL saxpy(OpenAD_acc_39,CAVE,ALP2)
      CALL saxpy(OpenAD_acc_40,NXHAT,ALP2)
      CALL saxpy(OpenAD_acc_41,UTILDE,ALP2)
      CALL saxpy(OpenAD_lin_136,DRW,ALP2)
      CALL saxpy(OpenAD_lin_137,NYHAT,ALP2)
      CALL saxpy(OpenAD_acc_57,DRV,ALP2)
      CALL saxpy(OpenAD_acc_58,NZHAT,ALP2)
      CALL sax(OpenAD_lin_152,OMEGA,ALP3)
      CALL saxpy(OpenAD_acc_46,DR,ALP3)
      CALL saxpy(OpenAD_acc_36,CAVE,ALP3)
      CALL saxpy(OpenAD_acc_37,NYHAT,ALP3)
      CALL saxpy(OpenAD_acc_38,VTILDE,ALP3)
      CALL saxpy(OpenAD_lin_146,DRU,ALP3)
      CALL saxpy(OpenAD_lin_147,NZHAT,ALP3)
      CALL saxpy(OpenAD_acc_55,DRW,ALP3)
      CALL saxpy(OpenAD_acc_56,NXHAT,ALP3)
      CALL sax(OpenAD_lin_162,OMEGA,ALP4)
      CALL saxpy(OpenAD_acc_45,DR,ALP4)
      CALL saxpy(OpenAD_acc_33,CAVE,ALP4)
      CALL saxpy(OpenAD_acc_34,NZHAT,ALP4)
      CALL saxpy(OpenAD_acc_35,WTILDE,ALP4)
      CALL saxpy(OpenAD_lin_156,DRV,ALP4)
      CALL saxpy(OpenAD_lin_157,NXHAT,ALP4)
      CALL saxpy(OpenAD_acc_53,DRU,ALP4)
      CALL saxpy(OpenAD_acc_54,NYHAT,ALP4)
      OpenAD_Symbol_1 = (ALAMCM%v*ALP1%v)
      OpenAD_lin_169 = ALP1%v
      OpenAD_lin_170 = ALAMCM%v
      ALP1%v = OpenAD_Symbol_1
      OpenAD_Symbol_2 = (ALAMU%v*ALP2%v)
      OpenAD_lin_171 = ALP2%v
      OpenAD_lin_172 = ALAMU%v
      ALP2%v = OpenAD_Symbol_2
      OpenAD_Symbol_3 = (ALAMU%v*ALP3%v)
      OpenAD_lin_173 = ALP3%v
      OpenAD_lin_174 = ALAMU%v
      ALP3%v = OpenAD_Symbol_3
      OpenAD_Symbol_4 = (ALAMU%v*ALP4%v)
      OpenAD_lin_175 = ALP4%v
      OpenAD_lin_176 = ALAMU%v
      ALP4%v = OpenAD_Symbol_4
      OpenAD_Symbol_5 = (ALAMCP%v*ALP5%v)
      OpenAD_lin_177 = ALP5%v
      OpenAD_lin_178 = ALAMCP%v
      ALP5%v = OpenAD_Symbol_5
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
      OpenAD_tmp_24 = (GM1INV%v*CAVE%v)
      DSS1%v = (MU%v*THTAVE%v+ALP15P%v*OpenAD_tmp_24-ALP15M%v*UHAT%v+ALP
     +2%v*UTILDE%v+ALP3%v*VTILDE%v+ALP4%v*WTILDE%v)
      OpenAD_lin_187 = THTAVE%v
      OpenAD_lin_188 = MU%v
      OpenAD_lin_189 = OpenAD_tmp_24
      OpenAD_lin_191 = CAVE%v
      OpenAD_lin_192 = GM1INV%v
      OpenAD_lin_190 = ALP15P%v
      OpenAD_lin_193 = UHAT%v
      OpenAD_lin_194 = ALP15M%v
      OpenAD_lin_195 = UTILDE%v
      OpenAD_lin_196 = ALP2%v
      OpenAD_lin_197 = VTILDE%v
      OpenAD_lin_198 = ALP3%v
      OpenAD_lin_199 = WTILDE%v
      OpenAD_lin_200 = ALP4%v
      DSS2%v = MU%v
      DSS3%v = (ALP3%v*NZHAT%v+MU%v*UAVE%v-ALP15M%v*NXHAT%v-ALP4%v*NYHAT
     +%v)
      OpenAD_lin_201 = NZHAT%v
      OpenAD_lin_202 = ALP3%v
      OpenAD_lin_203 = UAVE%v
      OpenAD_lin_204 = MU%v
      OpenAD_lin_205 = NXHAT%v
      OpenAD_lin_206 = ALP15M%v
      OpenAD_lin_207 = NYHAT%v
      OpenAD_lin_208 = ALP4%v
      DSS4%v = (ALP4%v*NXHAT%v+MU%v*VAVE%v-ALP15M%v*NYHAT%v-ALP2%v*NZHAT
     +%v)
      OpenAD_lin_209 = NXHAT%v
      OpenAD_lin_210 = ALP4%v
      OpenAD_lin_211 = VAVE%v
      OpenAD_lin_212 = MU%v
      OpenAD_lin_213 = NYHAT%v
      OpenAD_lin_214 = ALP15M%v
      OpenAD_lin_215 = NZHAT%v
      OpenAD_lin_216 = ALP2%v
      DSS5%v = (ALP2%v*NYHAT%v+MU%v*WAVE%v-ALP15M%v*NZHAT%v-ALP3%v*NXHAT
     +%v)
      OpenAD_lin_217 = NYHAT%v
      OpenAD_lin_218 = ALP2%v
      OpenAD_lin_219 = WAVE%v
      OpenAD_lin_220 = MU%v
      OpenAD_lin_221 = NZHAT%v
      OpenAD_lin_222 = ALP15M%v
      OpenAD_lin_223 = NXHAT%v
      OpenAD_lin_224 = ALP3%v
      UHATL%v = (PRIML3%v*NXHAT%v+PRIML4%v*NYHAT%v+PRIML5%v*NZHAT%v)
      OpenAD_lin_225 = NXHAT%v
      OpenAD_lin_226 = PRIML3%v
      OpenAD_lin_227 = NYHAT%v
      OpenAD_lin_228 = PRIML4%v
      OpenAD_lin_229 = NZHAT%v
      OpenAD_lin_230 = PRIML5%v
      OpenAD_tmp_26 = (PRIML1%v+EL%v)
      OpenAD_tmp_25 = (DSS1%v+UHATL%v*OpenAD_tmp_26)
      FLUX1%v = (NSIZE%v*OpenAD_tmp_25)
      OpenAD_lin_231 = OpenAD_tmp_25
      OpenAD_lin_233 = OpenAD_tmp_26
      OpenAD_lin_234 = UHATL%v
      OpenAD_lin_232 = NSIZE%v
      OpenAD_tmp_27 = (DSS2%v+PRIML2%v*UHATL%v)
      FLUX2%v = (NSIZE%v*OpenAD_tmp_27)
      OpenAD_lin_235 = OpenAD_tmp_27
      OpenAD_lin_237 = UHATL%v
      OpenAD_lin_238 = PRIML2%v
      OpenAD_lin_236 = NSIZE%v
      OpenAD_tmp_28 = (DSS3%v+PRIML1%v*NXHAT%v+RUL%v*UHATL%v)
      FLUX3%v = (NSIZE%v*OpenAD_tmp_28)
      OpenAD_lin_239 = OpenAD_tmp_28
      OpenAD_lin_241 = NXHAT%v
      OpenAD_lin_242 = PRIML1%v
      OpenAD_lin_243 = UHATL%v
      OpenAD_lin_244 = RUL%v
      OpenAD_lin_240 = NSIZE%v
      OpenAD_tmp_29 = (DSS4%v+PRIML1%v*NYHAT%v+RVL%v*UHATL%v)
      FLUX4%v = (NSIZE%v*OpenAD_tmp_29)
      OpenAD_lin_245 = OpenAD_tmp_29
      OpenAD_lin_247 = NYHAT%v
      OpenAD_lin_248 = PRIML1%v
      OpenAD_lin_249 = UHATL%v
      OpenAD_lin_250 = RVL%v
      OpenAD_lin_246 = NSIZE%v
      OpenAD_tmp_30 = (DSS5%v+PRIML1%v*NZHAT%v+RWL%v*UHATL%v)
      FLUX5%v = (NSIZE%v*OpenAD_tmp_30)
      OpenAD_lin_251 = OpenAD_tmp_30
      OpenAD_lin_253 = NZHAT%v
      OpenAD_lin_254 = PRIML1%v
      OpenAD_lin_255 = UHATL%v
      OpenAD_lin_256 = RWL%v
      OpenAD_lin_252 = NSIZE%v
      OpenAD_acc_59 = (OpenAD_lin_233*OpenAD_lin_232)
      OpenAD_acc_60 = (OpenAD_lin_234*OpenAD_lin_232)
      OpenAD_acc_61 = (OpenAD_lin_199*OpenAD_lin_232)
      OpenAD_acc_62 = (OpenAD_lin_200*OpenAD_lin_232)
      OpenAD_acc_63 = (INT((-1_w2f__i8))*OpenAD_lin_252)
      OpenAD_acc_64 = (OpenAD_lin_223*OpenAD_acc_63)
      OpenAD_acc_65 = (OpenAD_lin_224*OpenAD_acc_63)
      OpenAD_acc_66 = (INT((-1_w2f__i8))*OpenAD_lin_246)
      OpenAD_acc_67 = (OpenAD_lin_215*OpenAD_acc_66)
      OpenAD_acc_68 = (OpenAD_lin_216*OpenAD_acc_66)
      OpenAD_acc_69 = (INT((-1_w2f__i8))*OpenAD_lin_240)
      OpenAD_acc_70 = (OpenAD_lin_207*OpenAD_acc_69)
      OpenAD_acc_71 = (OpenAD_lin_208*OpenAD_acc_69)
      OpenAD_acc_72 = (OpenAD_lin_197*OpenAD_lin_232)
      OpenAD_acc_73 = (OpenAD_lin_198*OpenAD_lin_232)
      OpenAD_acc_74 = (OpenAD_lin_217*OpenAD_lin_252)
      OpenAD_acc_75 = (OpenAD_lin_218*OpenAD_lin_252)
      OpenAD_acc_76 = (OpenAD_lin_209*OpenAD_lin_246)
      OpenAD_acc_77 = (OpenAD_lin_210*OpenAD_lin_246)
      OpenAD_acc_78 = (OpenAD_lin_201*OpenAD_lin_240)
      OpenAD_acc_79 = (OpenAD_lin_202*OpenAD_lin_240)
      OpenAD_acc_80 = (OpenAD_lin_195*OpenAD_lin_232)
      OpenAD_acc_81 = (OpenAD_lin_196*OpenAD_lin_232)
      OpenAD_acc_82 = (OpenAD_lin_219*OpenAD_lin_252)
      OpenAD_acc_83 = (OpenAD_lin_220*OpenAD_lin_252)
      OpenAD_acc_84 = (INT((-1_w2f__i8))*OpenAD_lin_252)
      OpenAD_acc_85 = (OpenAD_lin_221*OpenAD_acc_84)
      OpenAD_acc_86 = (OpenAD_lin_211*OpenAD_lin_246)
      OpenAD_acc_87 = (OpenAD_lin_212*OpenAD_lin_246)
      OpenAD_acc_88 = (INT((-1_w2f__i8))*OpenAD_lin_246)
      OpenAD_acc_89 = (OpenAD_lin_213*OpenAD_acc_88)
      OpenAD_acc_90 = (OpenAD_lin_203*OpenAD_lin_240)
      OpenAD_acc_91 = (OpenAD_lin_204*OpenAD_lin_240)
      OpenAD_acc_92 = (INT((-1_w2f__i8))*OpenAD_lin_240)
      OpenAD_acc_93 = (OpenAD_lin_205*OpenAD_acc_92)
      OpenAD_acc_94 = (OpenAD_lin_187*OpenAD_lin_232)
      OpenAD_acc_95 = (OpenAD_lin_188*OpenAD_lin_232)
      OpenAD_acc_96 = (OpenAD_lin_255*OpenAD_lin_252)
      OpenAD_acc_97 = (OpenAD_lin_256*OpenAD_lin_252)
      OpenAD_acc_98 = (OpenAD_lin_222*OpenAD_acc_84+OpenAD_lin_254*OpenA
     +D_lin_252)
      OpenAD_acc_99 = (OpenAD_lin_253*OpenAD_lin_252)
      OpenAD_acc_100 = (OpenAD_lin_249*OpenAD_lin_246)
      OpenAD_acc_101 = (OpenAD_lin_250*OpenAD_lin_246)
      OpenAD_acc_102 = (OpenAD_lin_214*OpenAD_acc_88+OpenAD_lin_248*Open
     +AD_lin_246)
      OpenAD_acc_103 = (OpenAD_lin_247*OpenAD_lin_246)
      OpenAD_acc_104 = (OpenAD_lin_243*OpenAD_lin_240)
      OpenAD_acc_105 = (OpenAD_lin_244*OpenAD_lin_240)
      OpenAD_acc_106 = (OpenAD_lin_206*OpenAD_acc_92+OpenAD_lin_242*Open
     +AD_lin_240)
      OpenAD_acc_107 = (OpenAD_lin_241*OpenAD_lin_240)
      OpenAD_acc_108 = (OpenAD_lin_237*OpenAD_lin_236)
      OpenAD_acc_109 = (OpenAD_lin_238*OpenAD_lin_236)
      OpenAD_acc_110 = (OpenAD_lin_189*OpenAD_lin_232)
      OpenAD_acc_111 = (OpenAD_lin_191*OpenAD_lin_190*OpenAD_lin_232)
      OpenAD_acc_112 = (OpenAD_lin_192*OpenAD_lin_190*OpenAD_lin_232)
      OpenAD_acc_113 = (INT((-1_w2f__i8))*OpenAD_lin_232)
      OpenAD_acc_114 = (OpenAD_lin_193*OpenAD_acc_113)
      OpenAD_acc_115 = (OpenAD_lin_194*OpenAD_acc_113)
      CALL setderiv(OpenAD_prop_12,ALP1)
      CALL setderiv(OpenAD_prop_13,ALP2)
      CALL setderiv(OpenAD_prop_14,ALP3)
      CALL setderiv(OpenAD_prop_15,ALP4)
      CALL setderiv(OpenAD_prop_16,ALP5)
      CALL sax(OpenAD_lin_169,ALAMCM,ALP1)
      CALL saxpy(OpenAD_lin_170,OpenAD_prop_12,ALP1)
      CALL sax(OpenAD_lin_171,ALAMU,ALP2)
      CALL saxpy(OpenAD_lin_172,OpenAD_prop_13,ALP2)
      CALL sax(OpenAD_lin_173,ALAMU,ALP3)
      CALL saxpy(OpenAD_lin_174,OpenAD_prop_14,ALP3)
      CALL sax(OpenAD_lin_175,ALAMU,ALP4)
      CALL saxpy(OpenAD_lin_176,OpenAD_prop_15,ALP4)
      CALL sax(OpenAD_lin_177,ALAMCP,ALP5)
      CALL saxpy(OpenAD_lin_178,OpenAD_prop_16,ALP5)
      CALL setderiv(ALP15P,ALP1)
      CALL inc_deriv(ALP15P,ALP5)
      CALL setderiv(ALP15M,ALP1)
      CALL dec_deriv(ALP15M,ALP5)
      CALL setderiv(OpenAD_prop_17,PRIML1)
      CALL inc_deriv(OpenAD_prop_17,EL)
      CALL sax(OpenAD_lin_225,PRIML3,UHATL)
      CALL saxpy(OpenAD_lin_226,NXHAT,UHATL)
      CALL saxpy(OpenAD_lin_227,PRIML4,UHATL)
      CALL saxpy(OpenAD_lin_228,NYHAT,UHATL)
      CALL saxpy(OpenAD_lin_229,PRIML5,UHATL)
      CALL saxpy(OpenAD_lin_230,NZHAT,UHATL)
      CALL sax(OpenAD_lin_179,ALP15P,MU)
      CALL saxpy(OpenAD_lin_180,CAVE,MU)
      CALL saxpy(OpenAD_lin_181,ALP2,MU)
      CALL saxpy(OpenAD_lin_182,NXHAT,MU)
      CALL saxpy(OpenAD_lin_183,ALP3,MU)
      CALL saxpy(OpenAD_lin_184,NYHAT,MU)
      CALL saxpy(OpenAD_lin_185,ALP4,MU)
      CALL saxpy(OpenAD_lin_186,NZHAT,MU)
      CALL sax(OpenAD_lin_235,NSIZE,FLUX2)
      CALL saxpy(OpenAD_acc_108,PRIML2,FLUX2)
      CALL saxpy(OpenAD_acc_109,UHATL,FLUX2)
      CALL saxpy(OpenAD_lin_236,MU,FLUX2)
      CALL sax(OpenAD_lin_239,NSIZE,FLUX3)
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
      CALL sax(OpenAD_lin_245,NSIZE,FLUX4)
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
      CALL sax(OpenAD_lin_251,NSIZE,FLUX5)
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
      CALL sax(OpenAD_lin_231,NSIZE,FLUX1)
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
