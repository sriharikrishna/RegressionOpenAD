
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
      SUBROUTINE head(X01, X02, X03, X04, X05, X06, X07, X08, X09, X10, 
     +X11, X12, X13, X14, X15, X16, X17, X18, X19, Y1, Y2, Y3, Y4, Y5 )
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
      type(active) :: X01
      INTENT(IN) X01
      type(active) :: X02
      INTENT(IN) X02
      type(active) :: X03
      INTENT(IN) X03
      type(active) :: X04
      INTENT(IN) X04
      type(active) :: X05
      INTENT(IN) X05
      type(active) :: X06
      INTENT(IN) X06
      type(active) :: X07
      INTENT(IN) X07
      type(active) :: X08
      INTENT(IN) X08
      type(active) :: X09
      INTENT(IN) X09
      type(active) :: X10
      INTENT(IN) X10
      type(active) :: X11
      INTENT(IN) X11
      type(active) :: X12
      INTENT(IN) X12
      type(active) :: X13
      INTENT(IN) X13
      type(active) :: X14
      INTENT(IN) X14
      type(active) :: X15
      INTENT(IN) X15
      type(active) :: X16
      INTENT(IN) X16
      REAL(w2f__8) X17
      INTENT(IN) X17
      REAL(w2f__8) X18
      INTENT(IN) X18
      REAL(w2f__8) X19
      INTENT(IN) X19
      type(active) :: Y1
      INTENT(OUT) Y1
      type(active) :: Y2
      INTENT(OUT) Y2
      type(active) :: Y3
      INTENT(OUT) Y3
      type(active) :: Y4
      INTENT(OUT) Y4
      type(active) :: Y5
      INTENT(OUT) Y5
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__4) HALF
      PARAMETER ( HALF = 5.0E-01)
      REAL(w2f__4) ONE
      PARAMETER ( ONE = 1.0)
      type(active) :: T01
      type(active) :: T02
      type(active) :: T03
      type(active) :: T04
      type(active) :: T05
      type(active) :: T06
      type(active) :: T07
      type(active) :: T08
      type(active) :: T09
      type(active) :: T10
      type(active) :: T11
      type(active) :: T12
      type(active) :: T13
      type(active) :: T14
      type(active) :: T15
      type(active) :: T16
      type(active) :: T17
      type(active) :: T18
      type(active) :: T19
      type(active) :: T20
      type(active) :: T21
      type(active) :: T22
      type(active) :: T23
      type(active) :: T24
      type(active) :: T25
      type(active) :: T26
      type(active) :: T27
      type(active) :: T28
      type(active) :: T29
      type(active) :: T30
      type(active) :: T31
      type(active) :: T32
      type(active) :: T33
      type(active) :: T34
      type(active) :: T35
      type(active) :: T36
      type(active) :: T37
      type(active) :: T38
      type(active) :: T39
      type(active) :: T40
      type(active) :: T41
      type(active) :: T42
      type(active) :: T43
      type(active) :: T44
      type(active) :: T45
      type(active) :: T46
      type(active) :: T47
      type(active) :: T48
      type(active) :: T49
      type(active) :: T50
      type(active) :: T51
      type(active) :: T52
      type(active) :: T53
      type(active) :: T54
      type(active) :: T55
      type(active) :: T56
      type(active) :: T57
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
C$OPENAD INDEPENDENT(X01)
C$OPENAD INDEPENDENT(X02)
C$OPENAD INDEPENDENT(X03)
C$OPENAD INDEPENDENT(X04)
C$OPENAD INDEPENDENT(X05)
C$OPENAD INDEPENDENT(X06)
C$OPENAD INDEPENDENT(X07)
C$OPENAD INDEPENDENT(X08)
C$OPENAD INDEPENDENT(X09)
C$OPENAD INDEPENDENT(X10)
C$OPENAD INDEPENDENT(X11)
C$OPENAD INDEPENDENT(X12)
C$OPENAD INDEPENDENT(X13)
C$OPENAD INDEPENDENT(X14)
C$OPENAD INDEPENDENT(X15)
C$OPENAD INDEPENDENT(X16)
C$OPENAD INDEPENDENT(X17)
C$OPENAD INDEPENDENT(X18)
C$OPENAD INDEPENDENT(X19)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C$OPENAD DEPENDENT(Y3)
C$OPENAD DEPENDENT(Y4)
C$OPENAD DEPENDENT(Y5)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = ((X01%v**2)+(X02%v**2)+(X03%v**2))
      T01%v = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = (2*(X01%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2*(X02%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_6 = (2*(X03%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      T02%v = (1.0D00/T01%v)
      OpenAD_Symbol_9 = (-(1.0D00/(T01%v*T01%v)))
      T03%v = (X01%v*T02%v)
      OpenAD_Symbol_10 = T02%v
      OpenAD_Symbol_11 = X01%v
      T04%v = (X02%v*T02%v)
      OpenAD_Symbol_12 = T02%v
      OpenAD_Symbol_13 = X02%v
      T05%v = (X03%v*T02%v)
      OpenAD_Symbol_14 = T02%v
      OpenAD_Symbol_15 = X03%v
      OpenAD_Symbol_20 = (X10%v/X05%v)
      OpenAD_Symbol_16 = (SIN(OpenAD_Symbol_20)+1.0D00)
      T06%v = (1.0D00/OpenAD_Symbol_16)
      OpenAD_Symbol_22 = (INT(1_w2f__i8)/X05%v)
      OpenAD_Symbol_23 = (-(X10%v/(X05%v*X05%v)))
      OpenAD_Symbol_21 = COS(OpenAD_Symbol_20)
      OpenAD_Symbol_18 = (-(1.0D00/(OpenAD_Symbol_16*OpenAD_Symbol_16)))
      T07%v = (1.0D00-T06%v)
      OpenAD_Symbol_25 = ((X06%v**2)+(X07%v**2)+(X08%v**2))
      T08%v = (OpenAD_Symbol_25*5.0D-01)
      OpenAD_Symbol_27 = (2*(X06%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_29 = (2*(X07%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_31 = (2*(X08%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_33 = ((X11%v**2)+(X12%v**2)+(X13%v**2))
      T09%v = (OpenAD_Symbol_33*5.0D-01)
      OpenAD_Symbol_35 = (2*(X11%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_37 = (2*(X12%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_39 = (2*(X13%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_44 = (X14%v*X16%v)
      OpenAD_Symbol_41 = (X04%v*OpenAD_Symbol_44)
      T10%v = (T08%v+(OpenAD_Symbol_41/X05%v))
      OpenAD_Symbol_45 = OpenAD_Symbol_44
      OpenAD_Symbol_47 = X16%v
      OpenAD_Symbol_48 = X14%v
      OpenAD_Symbol_46 = X04%v
      OpenAD_Symbol_42 = (INT(1_w2f__i8)/X05%v)
      OpenAD_Symbol_43 = (-(OpenAD_Symbol_41/(X05%v*X05%v)))
      OpenAD_Symbol_52 = (X14%v*X16%v)
      OpenAD_Symbol_49 = (X09%v*OpenAD_Symbol_52)
      T11%v = (T09%v+(OpenAD_Symbol_49/X10%v))
      OpenAD_Symbol_53 = OpenAD_Symbol_52
      OpenAD_Symbol_55 = X16%v
      OpenAD_Symbol_56 = X14%v
      OpenAD_Symbol_54 = X09%v
      OpenAD_Symbol_50 = (INT(1_w2f__i8)/X10%v)
      OpenAD_Symbol_51 = (-(OpenAD_Symbol_49/(X10%v*X10%v)))
      T12%v = (X06%v*T06%v+X11%v*T07%v)
      OpenAD_Symbol_57 = T06%v
      OpenAD_Symbol_58 = X06%v
      OpenAD_Symbol_59 = T07%v
      OpenAD_Symbol_60 = X11%v
      T13%v = (X07%v*T06%v+X12%v*T07%v)
      OpenAD_Symbol_61 = T06%v
      OpenAD_Symbol_62 = X07%v
      OpenAD_Symbol_63 = T07%v
      OpenAD_Symbol_64 = X12%v
      T14%v = (X08%v*T06%v+X13%v*T07%v)
      OpenAD_Symbol_65 = T06%v
      OpenAD_Symbol_66 = X08%v
      OpenAD_Symbol_67 = T07%v
      OpenAD_Symbol_68 = X13%v
      T15%v = (T06%v*T10%v+T07%v*T11%v)
      OpenAD_Symbol_69 = T10%v
      OpenAD_Symbol_70 = T06%v
      OpenAD_Symbol_71 = T11%v
      OpenAD_Symbol_72 = T07%v
      OpenAD_Symbol_73 = ((T12%v**2)+(T13%v**2)+(T14%v**2))
      T18%v = (OpenAD_Symbol_73*5.0D-01)
      OpenAD_Symbol_75 = (2*(T12%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_77 = (2*(T13%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_79 = (2*(T14%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_81 = (T15%v-T18%v)
      T16%v = (X15%v*OpenAD_Symbol_81)
      OpenAD_Symbol_82 = OpenAD_Symbol_81
      OpenAD_Symbol_83 = X15%v
      OpenAD_acc_0 = (OpenAD_Symbol_54*OpenAD_Symbol_50)
      OpenAD_acc_1 = (OpenAD_Symbol_46*OpenAD_Symbol_42)
      OpenAD_acc_2 = (OpenAD_Symbol_9*OpenAD_Symbol_11)
      OpenAD_acc_3 = (OpenAD_Symbol_9*OpenAD_Symbol_13)
      OpenAD_acc_4 = (OpenAD_Symbol_9*OpenAD_Symbol_15)
      OpenAD_acc_5 = (5.0D-01*INT((-1_w2f__i8))*OpenAD_Symbol_83)
      OpenAD_acc_6 = (OpenAD_Symbol_72*OpenAD_Symbol_83)
      OpenAD_acc_7 = (OpenAD_Symbol_70*OpenAD_Symbol_83)
      OpenAD_acc_8 = (OpenAD_Symbol_18*(OpenAD_Symbol_69*OpenAD_Symbol_8
     +3+INT((-1_w2f__i8))*OpenAD_Symbol_71*OpenAD_Symbol_83))
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
      CALL sax(OpenAD_Symbol_6,X03,OpenAD_prop_0)
      CALL saxpy(OpenAD_Symbol_2,X01,OpenAD_prop_0)
      CALL saxpy(OpenAD_Symbol_4,X02,OpenAD_prop_0)
      CALL sax(OpenAD_acc_12,X10,OpenAD_prop_1)
      CALL saxpy(OpenAD_acc_13,X05,OpenAD_prop_1)
      CALL sax(OpenAD_Symbol_31,X08,OpenAD_prop_2)
      CALL saxpy(OpenAD_Symbol_27,X06,OpenAD_prop_2)
      CALL saxpy(OpenAD_Symbol_29,X07,OpenAD_prop_2)
      CALL sax(OpenAD_Symbol_39,X13,OpenAD_prop_3)
      CALL saxpy(OpenAD_Symbol_35,X11,OpenAD_prop_3)
      CALL saxpy(OpenAD_Symbol_37,X12,OpenAD_prop_3)
      CALL sax(OpenAD_Symbol_1,OpenAD_prop_0,T01)
      CALL sax(OpenAD_Symbol_10,X01,T03)
      CALL saxpy(OpenAD_acc_2,T01,T03)
      CALL sax(OpenAD_Symbol_12,X02,T04)
      CALL saxpy(OpenAD_acc_3,T01,T04)
      CALL sax(OpenAD_Symbol_14,X03,T05)
      CALL saxpy(OpenAD_acc_4,T01,T05)
      CALL sax(5.0D-01,OpenAD_prop_2,T08)
      CALL sax(5.0D-01,OpenAD_prop_3,T09)
      CALL setderiv(T10,T08)
      CALL saxpy(OpenAD_Symbol_43,X05,T10)
      CALL saxpy(OpenAD_acc_14,X04,T10)
      CALL saxpy(OpenAD_acc_15,X14,T10)
      CALL saxpy(OpenAD_acc_16,X16,T10)
      CALL setderiv(T11,T09)
      CALL saxpy(OpenAD_Symbol_51,X10,T11)
      CALL saxpy(OpenAD_acc_17,X09,T11)
      CALL saxpy(OpenAD_acc_18,X14,T11)
      CALL saxpy(OpenAD_acc_19,X16,T11)
      CALL sax(OpenAD_Symbol_59,X11,T12)
      CALL saxpy(OpenAD_acc_11,OpenAD_prop_1,T12)
      CALL saxpy(OpenAD_Symbol_57,X06,T12)
      CALL sax(OpenAD_Symbol_63,X12,T13)
      CALL saxpy(OpenAD_Symbol_61,X07,T13)
      CALL saxpy(OpenAD_acc_10,OpenAD_prop_1,T13)
      CALL sax(OpenAD_Symbol_67,X13,T14)
      CALL saxpy(OpenAD_Symbol_65,X08,T14)
      CALL saxpy(OpenAD_acc_9,OpenAD_prop_1,T14)
      CALL sax(OpenAD_Symbol_79,T14,OpenAD_prop_4)
      CALL saxpy(OpenAD_Symbol_77,T13,OpenAD_prop_4)
      CALL saxpy(OpenAD_Symbol_75,T12,OpenAD_prop_4)
      CALL sax(5.0D-01,OpenAD_prop_4,T18)
      CALL sax(OpenAD_Symbol_82,X15,T16)
      CALL saxpy(OpenAD_acc_5,OpenAD_prop_4,T16)
      CALL saxpy(OpenAD_acc_6,T11,T16)
      CALL saxpy(OpenAD_acc_7,T10,T16)
      CALL saxpy(OpenAD_acc_8,OpenAD_prop_1,T16)
      OpenAD_Symbol_85 = SIN(T16%v)
      OpenAD_Symbol_84 = COS(T16%v)
      T16%v = OpenAD_Symbol_85
      T17%v = (T03%v*T12%v+T04%v*T13%v+T05%v*T14%v)
      OpenAD_Symbol_86 = T12%v
      OpenAD_Symbol_87 = T03%v
      OpenAD_Symbol_88 = T13%v
      OpenAD_Symbol_89 = T04%v
      OpenAD_Symbol_90 = T14%v
      OpenAD_Symbol_91 = T05%v
      T19%v = (T04%v*T14%v-T05%v*T13%v)
      OpenAD_Symbol_92 = T14%v
      OpenAD_Symbol_93 = T04%v
      OpenAD_Symbol_94 = T13%v
      OpenAD_Symbol_95 = T05%v
      T20%v = (T05%v*T12%v-T03%v*T14%v)
      OpenAD_Symbol_96 = T12%v
      OpenAD_Symbol_97 = T05%v
      OpenAD_Symbol_98 = T14%v
      OpenAD_Symbol_99 = T03%v
      T21%v = (T03%v*T13%v-T04%v*T12%v)
      OpenAD_Symbol_100 = T13%v
      OpenAD_Symbol_101 = T03%v
      OpenAD_Symbol_102 = T12%v
      OpenAD_Symbol_103 = T04%v
      T22%v = (T17%v-T16%v)
      T24%v = T17%v
      T23%v = (T16%v+T17%v)
      T25%v = T22%v
      T26%v = T23%v
      T27%v = T24%v
      OpenAD_acc_20 = (OpenAD_Symbol_94*INT((-1_w2f__i8)))
      OpenAD_acc_21 = (OpenAD_Symbol_95*INT((-1_w2f__i8)))
      OpenAD_acc_22 = (OpenAD_Symbol_98*INT((-1_w2f__i8)))
      OpenAD_acc_23 = (OpenAD_Symbol_99*INT((-1_w2f__i8)))
      OpenAD_acc_24 = (OpenAD_Symbol_102*INT((-1_w2f__i8)))
      OpenAD_acc_25 = (OpenAD_Symbol_103*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_5,T16)
      CALL sax(OpenAD_Symbol_84,OpenAD_prop_5,T16)
      CALL sax(OpenAD_Symbol_92,T04,T19)
      CALL saxpy(OpenAD_Symbol_93,T14,T19)
      CALL saxpy(OpenAD_acc_20,T05,T19)
      CALL saxpy(OpenAD_acc_21,T13,T19)
      CALL sax(OpenAD_Symbol_96,T05,T20)
      CALL saxpy(OpenAD_Symbol_97,T12,T20)
      CALL saxpy(OpenAD_acc_22,T03,T20)
      CALL saxpy(OpenAD_acc_23,T14,T20)
      CALL sax(OpenAD_Symbol_100,T03,T21)
      CALL saxpy(OpenAD_Symbol_101,T13,T21)
      CALL saxpy(OpenAD_acc_24,T04,T21)
      CALL saxpy(OpenAD_acc_25,T12,T21)
      CALL sax(OpenAD_Symbol_86,T03,T17)
      CALL saxpy(OpenAD_Symbol_87,T12,T17)
      CALL saxpy(OpenAD_Symbol_88,T04,T17)
      CALL saxpy(OpenAD_Symbol_89,T13,T17)
      CALL saxpy(OpenAD_Symbol_90,T05,T17)
      CALL saxpy(OpenAD_Symbol_91,T14,T17)
      CALL setderiv(T22,T17)
      CALL dec_deriv(T22,T16)
      CALL setderiv(T24,T17)
      CALL setderiv(T23,T16)
      CALL inc_deriv(T23,T17)
      CALL setderiv(T25,T22)
      CALL setderiv(T26,T23)
      CALL setderiv(T27,T24)
      OpenAD_Symbol_104 = (T22%v-T25%v)
      T25%v = (OpenAD_Symbol_104*5.0D-01)
      OpenAD_Symbol_106 = (T23%v-T26%v)
      T26%v = (OpenAD_Symbol_106*5.0D-01)
      OpenAD_Symbol_108 = (T24%v-T27%v)
      T27%v = (OpenAD_Symbol_108*5.0D-01)
      T28%v = (X04%v*X16%v+X05%v*T08%v)
      OpenAD_Symbol_110 = X16%v
      OpenAD_Symbol_111 = X04%v
      OpenAD_Symbol_112 = T08%v
      OpenAD_Symbol_113 = X05%v
      T29%v = (X05%v*X06%v)
      OpenAD_Symbol_114 = X06%v
      OpenAD_Symbol_115 = X05%v
      T30%v = (X05%v*X07%v)
      OpenAD_Symbol_116 = X07%v
      OpenAD_Symbol_117 = X05%v
      T31%v = (X05%v*X08%v)
      OpenAD_Symbol_118 = X08%v
      OpenAD_Symbol_119 = X05%v
      T32%v = (X09%v*X16%v+X10%v*T09%v)
      OpenAD_Symbol_120 = X16%v
      OpenAD_Symbol_121 = X09%v
      OpenAD_Symbol_122 = T09%v
      OpenAD_Symbol_123 = X10%v
      T33%v = (X10%v*X11%v)
      OpenAD_Symbol_124 = X11%v
      OpenAD_Symbol_125 = X10%v
      T34%v = (X10%v*X12%v)
      OpenAD_Symbol_126 = X12%v
      OpenAD_Symbol_127 = X10%v
      T35%v = (X10%v*X13%v)
      OpenAD_Symbol_128 = X13%v
      OpenAD_Symbol_129 = X10%v
      T36%v = (T32%v-T28%v)
      T37%v = (X10%v-X05%v)
      T38%v = (T33%v-T29%v)
      T39%v = (T34%v-T30%v)
      T40%v = (T35%v-T31%v)
      T46%v = (T12%v*T38%v+T13%v*T39%v+T14%v*T40%v)
      OpenAD_Symbol_130 = T38%v
      OpenAD_Symbol_131 = T12%v
      OpenAD_Symbol_132 = T39%v
      OpenAD_Symbol_133 = T13%v
      OpenAD_Symbol_134 = T40%v
      OpenAD_Symbol_135 = T14%v
      OpenAD_Symbol_136 = (X15%v/T16%v)
      OpenAD_Symbol_137 = (T36%v+T18%v*T37%v-T46%v)
      T47%v = (OpenAD_Symbol_136*OpenAD_Symbol_137)
      OpenAD_Symbol_140 = (INT(1_w2f__i8)/T16%v)
      OpenAD_Symbol_141 = (-(X15%v/(T16%v*T16%v)))
      OpenAD_Symbol_138 = OpenAD_Symbol_137
      OpenAD_Symbol_142 = T37%v
      OpenAD_Symbol_143 = T18%v
      OpenAD_Symbol_139 = OpenAD_Symbol_136
      T48%v = (T03%v*T38%v+T04%v*T39%v+T05%v*T40%v)
      OpenAD_Symbol_144 = T38%v
      OpenAD_Symbol_145 = T03%v
      OpenAD_Symbol_146 = T39%v
      OpenAD_Symbol_147 = T04%v
      OpenAD_Symbol_148 = T40%v
      OpenAD_Symbol_149 = T05%v
      OpenAD_Symbol_150 = (T47%v+T17%v*T37%v-T48%v)
      T41%v = (OpenAD_Symbol_150*5.0D-01)
      OpenAD_Symbol_152 = T37%v
      OpenAD_Symbol_153 = T17%v
      OpenAD_Symbol_156 = (T03%v*T16%v-T19%v)
      OpenAD_Symbol_161 = (-T03%v)
      T42%v = (T04%v*T40%v+T37%v*OpenAD_Symbol_156+T47%v*OpenAD_Symbol_1
     +61-T05%v*T39%v)
      OpenAD_Symbol_154 = T40%v
      OpenAD_Symbol_155 = T04%v
      OpenAD_Symbol_157 = OpenAD_Symbol_156
      OpenAD_Symbol_159 = T16%v
      OpenAD_Symbol_160 = T03%v
      OpenAD_Symbol_158 = T37%v
      OpenAD_Symbol_162 = OpenAD_Symbol_161
      OpenAD_Symbol_163 = T47%v
      OpenAD_Symbol_164 = T39%v
      OpenAD_Symbol_165 = T05%v
      OpenAD_Symbol_168 = (T04%v*T16%v-T20%v)
      OpenAD_Symbol_173 = (-T04%v)
      T43%v = (T05%v*T38%v+T37%v*OpenAD_Symbol_168+T47%v*OpenAD_Symbol_1
     +73-T03%v*T40%v)
      OpenAD_Symbol_166 = T38%v
      OpenAD_Symbol_167 = T05%v
      OpenAD_Symbol_169 = OpenAD_Symbol_168
      OpenAD_Symbol_171 = T16%v
      OpenAD_Symbol_172 = T04%v
      OpenAD_Symbol_170 = T37%v
      OpenAD_Symbol_174 = OpenAD_Symbol_173
      OpenAD_Symbol_175 = T47%v
      OpenAD_Symbol_176 = T40%v
      OpenAD_Symbol_177 = T03%v
      OpenAD_Symbol_180 = (T05%v*T16%v-T21%v)
      OpenAD_Symbol_185 = (-T05%v)
      T44%v = (T03%v*T39%v+T37%v*OpenAD_Symbol_180+T47%v*OpenAD_Symbol_1
     +85-T04%v*T38%v)
      OpenAD_Symbol_178 = T39%v
      OpenAD_Symbol_179 = T03%v
      OpenAD_Symbol_181 = OpenAD_Symbol_180
      OpenAD_Symbol_183 = T16%v
      OpenAD_Symbol_184 = T05%v
      OpenAD_Symbol_182 = T37%v
      OpenAD_Symbol_186 = OpenAD_Symbol_185
      OpenAD_Symbol_187 = T47%v
      OpenAD_Symbol_188 = T38%v
      OpenAD_Symbol_189 = T04%v
      OpenAD_Symbol_190 = (T48%v+T47%v-T17%v*T37%v)
      T45%v = (OpenAD_Symbol_190*5.0D-01)
      OpenAD_Symbol_192 = T37%v
      OpenAD_Symbol_193 = T17%v
      OpenAD_acc_26 = (OpenAD_Symbol_140*OpenAD_Symbol_138)
      OpenAD_acc_27 = (OpenAD_Symbol_141*OpenAD_Symbol_138)
      OpenAD_acc_28 = (OpenAD_Symbol_192*(-5.0D-01))
      OpenAD_acc_29 = (OpenAD_Symbol_152*5.0D-01)
      OpenAD_acc_30 = (INT((-1_w2f__i8))*OpenAD_Symbol_139)
      OpenAD_acc_31 = (OpenAD_Symbol_134*OpenAD_acc_30)
      OpenAD_acc_32 = (OpenAD_Symbol_135*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_Symbol_184*OpenAD_Symbol_182)
      OpenAD_acc_34 = (OpenAD_Symbol_183*OpenAD_Symbol_182+INT((-1_w2f__
     +i8))*OpenAD_Symbol_187)
      OpenAD_acc_35 = (INT((-1_w2f__i8))*OpenAD_Symbol_182)
      OpenAD_acc_36 = (OpenAD_Symbol_172*OpenAD_Symbol_170)
      OpenAD_acc_37 = (OpenAD_Symbol_171*OpenAD_Symbol_170+INT((-1_w2f__
     +i8))*OpenAD_Symbol_175)
      OpenAD_acc_38 = (INT((-1_w2f__i8))*OpenAD_Symbol_170)
      OpenAD_acc_39 = (OpenAD_Symbol_160*OpenAD_Symbol_158)
      OpenAD_acc_40 = (OpenAD_Symbol_159*OpenAD_Symbol_158+INT((-1_w2f__
     +i8))*OpenAD_Symbol_163)
      OpenAD_acc_41 = (INT((-1_w2f__i8))*OpenAD_Symbol_158)
      OpenAD_acc_42 = (OpenAD_Symbol_142*OpenAD_Symbol_139)
      OpenAD_acc_43 = (OpenAD_Symbol_143*OpenAD_Symbol_139)
      OpenAD_acc_44 = (OpenAD_Symbol_193*(-5.0D-01)+OpenAD_acc_43*5.0D-0
     +1)
      OpenAD_acc_45 = (OpenAD_Symbol_181+OpenAD_acc_43*OpenAD_Symbol_186
     +)
      OpenAD_acc_46 = (OpenAD_Symbol_169+OpenAD_acc_43*OpenAD_Symbol_174
     +)
      OpenAD_acc_47 = (OpenAD_Symbol_157+OpenAD_acc_43*OpenAD_Symbol_162
     +)
      OpenAD_acc_48 = (OpenAD_Symbol_153*5.0D-01+OpenAD_acc_43*5.0D-01)
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
      CALL setderiv(OpenAD_prop_6,T25)
      CALL setderiv(OpenAD_prop_7,T26)
      CALL setderiv(OpenAD_prop_8,T27)
      CALL setderiv(OpenAD_prop_9,T22)
      CALL dec_deriv(OpenAD_prop_9,OpenAD_prop_6)
      CALL setderiv(OpenAD_prop_10,T23)
      CALL dec_deriv(OpenAD_prop_10,OpenAD_prop_7)
      CALL setderiv(OpenAD_prop_11,T24)
      CALL dec_deriv(OpenAD_prop_11,OpenAD_prop_8)
      CALL sax(OpenAD_Symbol_114,X05,T29)
      CALL saxpy(OpenAD_Symbol_115,X06,T29)
      CALL sax(OpenAD_Symbol_116,X05,T30)
      CALL saxpy(OpenAD_Symbol_117,X07,T30)
      CALL sax(OpenAD_Symbol_118,X05,T31)
      CALL saxpy(OpenAD_Symbol_119,X08,T31)
      CALL setderiv(T37,X10)
      CALL dec_deriv(T37,X05)
      CALL set_neg_deriv(T38,T29)
      CALL saxpy(OpenAD_Symbol_124,X10,T38)
      CALL saxpy(OpenAD_Symbol_125,X11,T38)
      CALL set_neg_deriv(T39,T30)
      CALL saxpy(OpenAD_Symbol_126,X10,T39)
      CALL saxpy(OpenAD_Symbol_127,X12,T39)
      CALL set_neg_deriv(T40,T31)
      CALL saxpy(OpenAD_Symbol_128,X10,T40)
      CALL saxpy(OpenAD_Symbol_129,X13,T40)
      CALL sax(5.0D-01,OpenAD_prop_9,T25)
      CALL sax(5.0D-01,OpenAD_prop_10,T26)
      CALL sax(5.0D-01,OpenAD_prop_11,T27)
      CALL sax(OpenAD_Symbol_110,X04,T28)
      CALL saxpy(OpenAD_Symbol_111,X16,T28)
      CALL saxpy(OpenAD_Symbol_112,X05,T28)
      CALL saxpy(OpenAD_Symbol_113,T08,T28)
      CALL set_neg_deriv(T36,T28)
      CALL saxpy(OpenAD_Symbol_120,X09,T36)
      CALL saxpy(OpenAD_Symbol_121,X16,T36)
      CALL saxpy(OpenAD_Symbol_122,X10,T36)
      CALL saxpy(OpenAD_Symbol_123,T09,T36)
      CALL sax(OpenAD_Symbol_148,T05,T48)
      CALL saxpy(OpenAD_Symbol_149,T40,T48)
      CALL saxpy(OpenAD_Symbol_146,T04,T48)
      CALL saxpy(OpenAD_Symbol_147,T39,T48)
      CALL saxpy(OpenAD_Symbol_144,T03,T48)
      CALL saxpy(OpenAD_Symbol_145,T38,T48)
      CALL sax(OpenAD_acc_26,X15,T47)
      CALL saxpy(OpenAD_acc_27,T16,T47)
      CALL saxpy(OpenAD_acc_31,T14,T47)
      CALL saxpy(OpenAD_acc_32,T40,T47)
      CALL saxpy(OpenAD_Symbol_139,T36,T47)
      CALL saxpy(OpenAD_acc_42,T18,T47)
      CALL saxpy(OpenAD_acc_49,T13,T47)
      CALL saxpy(OpenAD_acc_50,T39,T47)
      CALL saxpy(OpenAD_acc_51,T12,T47)
      CALL saxpy(OpenAD_acc_52,T38,T47)
      CALL sax(-5.0D-01,T48,T41)
      CALL saxpy(5.0D-01,T47,T41)
      CALL saxpy(OpenAD_acc_29,T17,T41)
      CALL saxpy(OpenAD_acc_48,T37,T41)
      CALL sax(5.0D-01,T48,T45)
      CALL saxpy(5.0D-01,T47,T45)
      CALL saxpy(OpenAD_acc_28,T17,T45)
      CALL saxpy(OpenAD_acc_44,T37,T45)
      CALL sax(OpenAD_Symbol_162,T47,T42)
      CALL saxpy(OpenAD_acc_47,T37,T42)
      CALL saxpy(OpenAD_acc_40,T03,T42)
      CALL saxpy(OpenAD_acc_39,T16,T42)
      CALL saxpy(OpenAD_acc_41,T19,T42)
      CALL saxpy(OpenAD_Symbol_154,T04,T42)
      CALL saxpy(OpenAD_Symbol_155,T40,T42)
      CALL saxpy(OpenAD_acc_57,T05,T42)
      CALL saxpy(OpenAD_acc_58,T39,T42)
      CALL sax(OpenAD_Symbol_174,T47,T43)
      CALL saxpy(OpenAD_acc_46,T37,T43)
      CALL saxpy(OpenAD_acc_37,T04,T43)
      CALL saxpy(OpenAD_acc_36,T16,T43)
      CALL saxpy(OpenAD_acc_38,T20,T43)
      CALL saxpy(OpenAD_Symbol_166,T05,T43)
      CALL saxpy(OpenAD_Symbol_167,T38,T43)
      CALL saxpy(OpenAD_acc_55,T03,T43)
      CALL saxpy(OpenAD_acc_56,T40,T43)
      CALL sax(OpenAD_Symbol_186,T47,T44)
      CALL saxpy(OpenAD_acc_45,T37,T44)
      CALL saxpy(OpenAD_acc_34,T05,T44)
      CALL saxpy(OpenAD_acc_33,T16,T44)
      CALL saxpy(OpenAD_acc_35,T21,T44)
      CALL saxpy(OpenAD_Symbol_178,T03,T44)
      CALL saxpy(OpenAD_Symbol_179,T39,T44)
      CALL saxpy(OpenAD_acc_53,T04,T44)
      CALL saxpy(OpenAD_acc_54,T38,T44)
      OpenAD_Symbol_196 = (T25%v*T41%v)
      OpenAD_Symbol_194 = T41%v
      OpenAD_Symbol_195 = T25%v
      T41%v = OpenAD_Symbol_196
      OpenAD_Symbol_199 = (T27%v*T42%v)
      OpenAD_Symbol_197 = T42%v
      OpenAD_Symbol_198 = T27%v
      T42%v = OpenAD_Symbol_199
      OpenAD_Symbol_202 = (T27%v*T43%v)
      OpenAD_Symbol_200 = T43%v
      OpenAD_Symbol_201 = T27%v
      T43%v = OpenAD_Symbol_202
      OpenAD_Symbol_205 = (T27%v*T44%v)
      OpenAD_Symbol_203 = T44%v
      OpenAD_Symbol_204 = T27%v
      T44%v = OpenAD_Symbol_205
      OpenAD_Symbol_208 = (T26%v*T45%v)
      OpenAD_Symbol_206 = T45%v
      OpenAD_Symbol_207 = T26%v
      T45%v = OpenAD_Symbol_208
      T49%v = (T41%v+T45%v)
      T50%v = (T41%v-T45%v)
      T56%v = ((T49%v/T16%v)+T03%v*T42%v+T04%v*T43%v+T05%v*T44%v)
      OpenAD_Symbol_209 = (INT(1_w2f__i8)/T16%v)
      OpenAD_Symbol_210 = (-(T49%v/(T16%v*T16%v)))
      OpenAD_Symbol_211 = T42%v
      OpenAD_Symbol_212 = T03%v
      OpenAD_Symbol_213 = T43%v
      OpenAD_Symbol_214 = T04%v
      OpenAD_Symbol_215 = T44%v
      OpenAD_Symbol_216 = T05%v
      OpenAD_Symbol_219 = (X16%v*T16%v)
      T51%v = (T18%v*T56%v+T49%v*OpenAD_Symbol_219-T17%v*T50%v+T19%v*T42
     +%v+T20%v*T43%v+T21%v*T44%v)
      OpenAD_Symbol_217 = T56%v
      OpenAD_Symbol_218 = T18%v
      OpenAD_Symbol_220 = OpenAD_Symbol_219
      OpenAD_Symbol_222 = T16%v
      OpenAD_Symbol_223 = X16%v
      OpenAD_Symbol_221 = T49%v
      OpenAD_Symbol_224 = T50%v
      OpenAD_Symbol_225 = T17%v
      OpenAD_Symbol_226 = T42%v
      OpenAD_Symbol_227 = T19%v
      OpenAD_Symbol_228 = T43%v
      OpenAD_Symbol_229 = T20%v
      OpenAD_Symbol_230 = T44%v
      OpenAD_Symbol_231 = T21%v
      T52%v = T56%v
      T53%v = (T05%v*T43%v+T12%v*T56%v-T03%v*T50%v-T04%v*T44%v)
      OpenAD_Symbol_232 = T43%v
      OpenAD_Symbol_233 = T05%v
      OpenAD_Symbol_234 = T56%v
      OpenAD_Symbol_235 = T12%v
      OpenAD_Symbol_236 = T50%v
      OpenAD_Symbol_237 = T03%v
      OpenAD_Symbol_238 = T44%v
      OpenAD_Symbol_239 = T04%v
      T54%v = (T03%v*T44%v+T13%v*T56%v-T04%v*T50%v-T05%v*T42%v)
      OpenAD_Symbol_240 = T44%v
      OpenAD_Symbol_241 = T03%v
      OpenAD_Symbol_242 = T56%v
      OpenAD_Symbol_243 = T13%v
      OpenAD_Symbol_244 = T50%v
      OpenAD_Symbol_245 = T04%v
      OpenAD_Symbol_246 = T42%v
      OpenAD_Symbol_247 = T05%v
      T55%v = (T04%v*T42%v+T14%v*T56%v-T05%v*T50%v-T03%v*T43%v)
      OpenAD_Symbol_248 = T42%v
      OpenAD_Symbol_249 = T04%v
      OpenAD_Symbol_250 = T56%v
      OpenAD_Symbol_251 = T14%v
      OpenAD_Symbol_252 = T50%v
      OpenAD_Symbol_253 = T05%v
      OpenAD_Symbol_254 = T43%v
      OpenAD_Symbol_255 = T03%v
      T57%v = (X06%v*T03%v+X07%v*T04%v+X08%v*T05%v)
      OpenAD_Symbol_256 = T03%v
      OpenAD_Symbol_257 = X06%v
      OpenAD_Symbol_258 = T04%v
      OpenAD_Symbol_259 = X07%v
      OpenAD_Symbol_260 = T05%v
      OpenAD_Symbol_261 = X08%v
      OpenAD_Symbol_265 = (X04%v+T28%v)
      OpenAD_Symbol_262 = (T51%v+T57%v*OpenAD_Symbol_265)
      Y1%v = (T01%v*OpenAD_Symbol_262)
      OpenAD_Symbol_263 = OpenAD_Symbol_262
      OpenAD_Symbol_266 = OpenAD_Symbol_265
      OpenAD_Symbol_267 = T57%v
      OpenAD_Symbol_264 = T01%v
      OpenAD_Symbol_268 = (T52%v+X05%v*T57%v)
      Y2%v = (T01%v*OpenAD_Symbol_268)
      OpenAD_Symbol_269 = OpenAD_Symbol_268
      OpenAD_Symbol_271 = T57%v
      OpenAD_Symbol_272 = X05%v
      OpenAD_Symbol_270 = T01%v
      OpenAD_Symbol_273 = (T53%v+X04%v*T03%v+T29%v*T57%v)
      Y3%v = (T01%v*OpenAD_Symbol_273)
      OpenAD_Symbol_274 = OpenAD_Symbol_273
      OpenAD_Symbol_276 = T03%v
      OpenAD_Symbol_277 = X04%v
      OpenAD_Symbol_278 = T57%v
      OpenAD_Symbol_279 = T29%v
      OpenAD_Symbol_275 = T01%v
      OpenAD_Symbol_280 = (T54%v+X04%v*T04%v+T30%v*T57%v)
      Y4%v = (T01%v*OpenAD_Symbol_280)
      OpenAD_Symbol_281 = OpenAD_Symbol_280
      OpenAD_Symbol_283 = T04%v
      OpenAD_Symbol_284 = X04%v
      OpenAD_Symbol_285 = T57%v
      OpenAD_Symbol_286 = T30%v
      OpenAD_Symbol_282 = T01%v
      OpenAD_Symbol_287 = (T55%v+X04%v*T05%v+T31%v*T57%v)
      Y5%v = (T01%v*OpenAD_Symbol_287)
      OpenAD_Symbol_288 = OpenAD_Symbol_287
      OpenAD_Symbol_290 = T05%v
      OpenAD_Symbol_291 = X04%v
      OpenAD_Symbol_292 = T57%v
      OpenAD_Symbol_293 = T31%v
      OpenAD_Symbol_289 = T01%v
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
      OpenAD_acc_85 = (OpenAD_Symbol_253*OpenAD_acc_84)
      OpenAD_acc_86 = (OpenAD_Symbol_242*OpenAD_Symbol_282)
      OpenAD_acc_87 = (OpenAD_Symbol_243*OpenAD_Symbol_282)
      OpenAD_acc_88 = (INT((-1_w2f__i8))*OpenAD_Symbol_282)
      OpenAD_acc_89 = (OpenAD_Symbol_245*OpenAD_acc_88)
      OpenAD_acc_90 = (OpenAD_Symbol_234*OpenAD_Symbol_275)
      OpenAD_acc_91 = (OpenAD_Symbol_235*OpenAD_Symbol_275)
      OpenAD_acc_92 = (INT((-1_w2f__i8))*OpenAD_Symbol_275)
      OpenAD_acc_93 = (OpenAD_Symbol_237*OpenAD_acc_92)
      OpenAD_acc_94 = (OpenAD_Symbol_217*OpenAD_Symbol_264)
      OpenAD_acc_95 = (OpenAD_Symbol_218*OpenAD_Symbol_264)
      OpenAD_acc_96 = (OpenAD_Symbol_292*OpenAD_Symbol_289)
      OpenAD_acc_97 = (OpenAD_Symbol_293*OpenAD_Symbol_289)
      OpenAD_acc_98 = (OpenAD_Symbol_252*OpenAD_acc_84+OpenAD_Symbol_291
     +*OpenAD_Symbol_289)
      OpenAD_acc_99 = (OpenAD_Symbol_290*OpenAD_Symbol_289)
      OpenAD_acc_100 = (OpenAD_Symbol_285*OpenAD_Symbol_282)
      OpenAD_acc_101 = (OpenAD_Symbol_286*OpenAD_Symbol_282)
      OpenAD_acc_102 = (OpenAD_Symbol_244*OpenAD_acc_88+OpenAD_Symbol_28
     +4*OpenAD_Symbol_282)
      OpenAD_acc_103 = (OpenAD_Symbol_283*OpenAD_Symbol_282)
      OpenAD_acc_104 = (OpenAD_Symbol_278*OpenAD_Symbol_275)
      OpenAD_acc_105 = (OpenAD_Symbol_279*OpenAD_Symbol_275)
      OpenAD_acc_106 = (OpenAD_Symbol_236*OpenAD_acc_92+OpenAD_Symbol_27
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
      CALL setderiv(OpenAD_prop_12,T41)
      CALL setderiv(OpenAD_prop_13,T42)
      CALL setderiv(OpenAD_prop_14,T43)
      CALL setderiv(OpenAD_prop_15,T44)
      CALL setderiv(OpenAD_prop_16,T45)
      CALL sax(OpenAD_Symbol_194,T25,T41)
      CALL saxpy(OpenAD_Symbol_195,OpenAD_prop_12,T41)
      CALL sax(OpenAD_Symbol_197,T27,T42)
      CALL saxpy(OpenAD_Symbol_198,OpenAD_prop_13,T42)
      CALL sax(OpenAD_Symbol_200,T27,T43)
      CALL saxpy(OpenAD_Symbol_201,OpenAD_prop_14,T43)
      CALL sax(OpenAD_Symbol_203,T27,T44)
      CALL saxpy(OpenAD_Symbol_204,OpenAD_prop_15,T44)
      CALL sax(OpenAD_Symbol_206,T26,T45)
      CALL saxpy(OpenAD_Symbol_207,OpenAD_prop_16,T45)
      CALL setderiv(T49,T41)
      CALL inc_deriv(T49,T45)
      CALL setderiv(T50,T41)
      CALL dec_deriv(T50,T45)
      CALL setderiv(OpenAD_prop_17,X04)
      CALL inc_deriv(OpenAD_prop_17,T28)
      CALL sax(OpenAD_Symbol_256,X06,T57)
      CALL saxpy(OpenAD_Symbol_257,T03,T57)
      CALL saxpy(OpenAD_Symbol_258,X07,T57)
      CALL saxpy(OpenAD_Symbol_259,T04,T57)
      CALL saxpy(OpenAD_Symbol_260,X08,T57)
      CALL saxpy(OpenAD_Symbol_261,T05,T57)
      CALL sax(OpenAD_Symbol_209,T49,T56)
      CALL saxpy(OpenAD_Symbol_210,T16,T56)
      CALL saxpy(OpenAD_Symbol_211,T03,T56)
      CALL saxpy(OpenAD_Symbol_212,T42,T56)
      CALL saxpy(OpenAD_Symbol_213,T04,T56)
      CALL saxpy(OpenAD_Symbol_214,T43,T56)
      CALL saxpy(OpenAD_Symbol_215,T05,T56)
      CALL saxpy(OpenAD_Symbol_216,T44,T56)
      CALL sax(OpenAD_Symbol_269,T01,Y2)
      CALL saxpy(OpenAD_acc_108,X05,Y2)
      CALL saxpy(OpenAD_acc_109,T57,Y2)
      CALL saxpy(OpenAD_Symbol_270,T56,Y2)
      CALL sax(OpenAD_Symbol_274,T01,Y3)
      CALL saxpy(OpenAD_acc_70,T04,Y3)
      CALL saxpy(OpenAD_acc_71,T44,Y3)
      CALL saxpy(OpenAD_acc_78,T05,Y3)
      CALL saxpy(OpenAD_acc_79,T43,Y3)
      CALL saxpy(OpenAD_acc_90,T12,Y3)
      CALL saxpy(OpenAD_acc_91,T56,Y3)
      CALL saxpy(OpenAD_acc_106,T03,Y3)
      CALL saxpy(OpenAD_acc_93,T50,Y3)
      CALL saxpy(OpenAD_acc_104,T29,Y3)
      CALL saxpy(OpenAD_acc_105,T57,Y3)
      CALL saxpy(OpenAD_acc_107,X04,Y3)
      CALL sax(OpenAD_Symbol_281,T01,Y4)
      CALL saxpy(OpenAD_acc_67,T05,Y4)
      CALL saxpy(OpenAD_acc_68,T42,Y4)
      CALL saxpy(OpenAD_acc_76,T03,Y4)
      CALL saxpy(OpenAD_acc_77,T44,Y4)
      CALL saxpy(OpenAD_acc_86,T13,Y4)
      CALL saxpy(OpenAD_acc_87,T56,Y4)
      CALL saxpy(OpenAD_acc_102,T04,Y4)
      CALL saxpy(OpenAD_acc_89,T50,Y4)
      CALL saxpy(OpenAD_acc_100,T30,Y4)
      CALL saxpy(OpenAD_acc_101,T57,Y4)
      CALL saxpy(OpenAD_acc_103,X04,Y4)
      CALL sax(OpenAD_Symbol_288,T01,Y5)
      CALL saxpy(OpenAD_acc_64,T03,Y5)
      CALL saxpy(OpenAD_acc_65,T43,Y5)
      CALL saxpy(OpenAD_acc_74,T04,Y5)
      CALL saxpy(OpenAD_acc_75,T42,Y5)
      CALL saxpy(OpenAD_acc_82,T14,Y5)
      CALL saxpy(OpenAD_acc_83,T56,Y5)
      CALL saxpy(OpenAD_acc_98,T05,Y5)
      CALL saxpy(OpenAD_acc_85,T50,Y5)
      CALL saxpy(OpenAD_acc_96,T31,Y5)
      CALL saxpy(OpenAD_acc_97,T57,Y5)
      CALL saxpy(OpenAD_acc_99,X04,Y5)
      CALL sax(OpenAD_Symbol_263,T01,Y1)
      CALL saxpy(OpenAD_acc_59,T57,Y1)
      CALL saxpy(OpenAD_acc_60,OpenAD_prop_17,Y1)
      CALL saxpy(OpenAD_acc_61,T21,Y1)
      CALL saxpy(OpenAD_acc_62,T44,Y1)
      CALL saxpy(OpenAD_acc_72,T20,Y1)
      CALL saxpy(OpenAD_acc_73,T43,Y1)
      CALL saxpy(OpenAD_acc_80,T19,Y1)
      CALL saxpy(OpenAD_acc_81,T42,Y1)
      CALL saxpy(OpenAD_acc_94,T18,Y1)
      CALL saxpy(OpenAD_acc_95,T56,Y1)
      CALL saxpy(OpenAD_acc_110,T49,Y1)
      CALL saxpy(OpenAD_acc_111,X16,Y1)
      CALL saxpy(OpenAD_acc_112,T16,Y1)
      CALL saxpy(OpenAD_acc_114,T17,Y1)
      CALL saxpy(OpenAD_acc_115,T50,Y1)
      END SUBROUTINE
