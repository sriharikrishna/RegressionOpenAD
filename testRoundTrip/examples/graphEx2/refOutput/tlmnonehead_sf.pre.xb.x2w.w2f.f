
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X01, X02, X03, X04, X05, X06, Y01, Y02, Y03, Y04,
     >  Y05, Y06, Y07, Y08, Y09, Y10, Y11, Y12, Y13, Y14, Y15, Y16, Y17
     > , Y18, Y19, Y20, Y21, Y22, Y23, Y24, Y25, Y26, Y27, Y28)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_234
      REAL(w2f__8) OpenAD_Symbol_79
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
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_9
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
      TYPE (OpenADTy_active) OpenAD_prop_18
      TYPE (OpenADTy_active) OpenAD_prop_19
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_20
      TYPE (OpenADTy_active) OpenAD_prop_21
      TYPE (OpenADTy_active) OpenAD_prop_22
      TYPE (OpenADTy_active) OpenAD_prop_23
      TYPE (OpenADTy_active) OpenAD_prop_24
      TYPE (OpenADTy_active) OpenAD_prop_25
      TYPE (OpenADTy_active) OpenAD_prop_26
      TYPE (OpenADTy_active) OpenAD_prop_27
      TYPE (OpenADTy_active) OpenAD_prop_28
      TYPE (OpenADTy_active) OpenAD_prop_29
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_30
      TYPE (OpenADTy_active) OpenAD_prop_31
      TYPE (OpenADTy_active) OpenAD_prop_32
      TYPE (OpenADTy_active) OpenAD_prop_33
      TYPE (OpenADTy_active) OpenAD_prop_34
      TYPE (OpenADTy_active) OpenAD_prop_35
      TYPE (OpenADTy_active) OpenAD_prop_36
      TYPE (OpenADTy_active) OpenAD_prop_37
      TYPE (OpenADTy_active) OpenAD_prop_38
      TYPE (OpenADTy_active) OpenAD_prop_39
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_40
      TYPE (OpenADTy_active) OpenAD_prop_41
      TYPE (OpenADTy_active) OpenAD_prop_42
      TYPE (OpenADTy_active) OpenAD_prop_43
      TYPE (OpenADTy_active) OpenAD_prop_44
      TYPE (OpenADTy_active) OpenAD_prop_45
      TYPE (OpenADTy_active) OpenAD_prop_46
      TYPE (OpenADTy_active) OpenAD_prop_47
      TYPE (OpenADTy_active) OpenAD_prop_48
      TYPE (OpenADTy_active) OpenAD_prop_49
      TYPE (OpenADTy_active) OpenAD_prop_5
      TYPE (OpenADTy_active) OpenAD_prop_6
      TYPE (OpenADTy_active) OpenAD_prop_7
      TYPE (OpenADTy_active) OpenAD_prop_8
      TYPE (OpenADTy_active) OpenAD_prop_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X01
      INTENT(IN)  X01
      TYPE (OpenADTy_active) X02
      INTENT(IN)  X02
      TYPE (OpenADTy_active) X03
      INTENT(IN)  X03
      TYPE (OpenADTy_active) X04
      INTENT(IN)  X04
      TYPE (OpenADTy_active) X05
      INTENT(IN)  X05
      TYPE (OpenADTy_active) X06
      INTENT(IN)  X06
      TYPE (OpenADTy_active) Y01
      INTENT(OUT)  Y01
      TYPE (OpenADTy_active) Y02
      INTENT(OUT)  Y02
      TYPE (OpenADTy_active) Y03
      INTENT(OUT)  Y03
      TYPE (OpenADTy_active) Y04
      INTENT(OUT)  Y04
      TYPE (OpenADTy_active) Y05
      INTENT(OUT)  Y05
      TYPE (OpenADTy_active) Y06
      INTENT(OUT)  Y06
      TYPE (OpenADTy_active) Y07
      INTENT(OUT)  Y07
      TYPE (OpenADTy_active) Y08
      INTENT(OUT)  Y08
      TYPE (OpenADTy_active) Y09
      INTENT(OUT)  Y09
      TYPE (OpenADTy_active) Y10
      INTENT(OUT)  Y10
      TYPE (OpenADTy_active) Y11
      INTENT(OUT)  Y11
      TYPE (OpenADTy_active) Y12
      INTENT(OUT)  Y12
      TYPE (OpenADTy_active) Y13
      INTENT(OUT)  Y13
      TYPE (OpenADTy_active) Y14
      INTENT(OUT)  Y14
      TYPE (OpenADTy_active) Y15
      INTENT(OUT)  Y15
      TYPE (OpenADTy_active) Y16
      INTENT(OUT)  Y16
      TYPE (OpenADTy_active) Y17
      INTENT(OUT)  Y17
      TYPE (OpenADTy_active) Y18
      INTENT(OUT)  Y18
      TYPE (OpenADTy_active) Y19
      INTENT(OUT)  Y19
      TYPE (OpenADTy_active) Y20
      INTENT(OUT)  Y20
      TYPE (OpenADTy_active) Y21
      INTENT(OUT)  Y21
      TYPE (OpenADTy_active) Y22
      INTENT(OUT)  Y22
      TYPE (OpenADTy_active) Y23
      INTENT(OUT)  Y23
      TYPE (OpenADTy_active) Y24
      INTENT(OUT)  Y24
      TYPE (OpenADTy_active) Y25
      INTENT(OUT)  Y25
      TYPE (OpenADTy_active) Y26
      INTENT(OUT)  Y26
      TYPE (OpenADTy_active) Y27
      INTENT(OUT)  Y27
      TYPE (OpenADTy_active) Y28
      INTENT(OUT)  Y28
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) AB
      TYPE (OpenADTy_active) ADJ_M0
      TYPE (OpenADTy_active) ADJ_M1
      TYPE (OpenADTy_active) ADJ_M2
      TYPE (OpenADTy_active) ADJ_M3
      REAL(w2f__8) B
      REAL(w2f__8) BM1
      TYPE (OpenADTy_active) D00
      TYPE (OpenADTy_active) D01
      TYPE (OpenADTy_active) D03
      TYPE (OpenADTy_active) D11
      TYPE (OpenADTy_active) D12
      TYPE (OpenADTy_active) F
      REAL(w2f__8) FOUR3RD
      TYPE (OpenADTy_active) G
      TYPE (OpenADTy_active) GG
      TYPE (OpenADTy_active) G_OBJ0
      TYPE (OpenADTy_active) G_OBJ1
      TYPE (OpenADTy_active) G_OBJ2
      TYPE (OpenADTy_active) G_OBJ3
      TYPE (OpenADTy_active) G_OBJ4
      TYPE (OpenADTy_active) G_OBJ5
      TYPE (OpenADTy_active) H_OBJ0
      TYPE (OpenADTy_active) H_OBJ1
      TYPE (OpenADTy_active) H_OBJ10
      TYPE (OpenADTy_active) H_OBJ11
      TYPE (OpenADTy_active) H_OBJ12
      TYPE (OpenADTy_active) H_OBJ13
      TYPE (OpenADTy_active) H_OBJ14
      TYPE (OpenADTy_active) H_OBJ15
      TYPE (OpenADTy_active) H_OBJ16
      TYPE (OpenADTy_active) H_OBJ17
      TYPE (OpenADTy_active) H_OBJ18
      TYPE (OpenADTy_active) H_OBJ19
      TYPE (OpenADTy_active) H_OBJ2
      TYPE (OpenADTy_active) H_OBJ20
      TYPE (OpenADTy_active) H_OBJ3
      TYPE (OpenADTy_active) H_OBJ4
      TYPE (OpenADTy_active) H_OBJ5
      TYPE (OpenADTy_active) H_OBJ6
      TYPE (OpenADTy_active) H_OBJ7
      TYPE (OpenADTy_active) H_OBJ8
      TYPE (OpenADTy_active) H_OBJ9
      TYPE (OpenADTy_active) LOC1
      TYPE (OpenADTy_active) LOC2
      TYPE (OpenADTy_active) M00
      TYPE (OpenADTy_active) M01
      TYPE (OpenADTy_active) M02
      TYPE (OpenADTy_active) M03
      TYPE (OpenADTy_active) M11
      TYPE (OpenADTy_active) M12
      TYPE (OpenADTy_active) M13
      TYPE (OpenADTy_active) M22
      TYPE (OpenADTy_active) M23
      TYPE (OpenADTy_active) M33
      TYPE (OpenADTy_active) MATR0
      TYPE (OpenADTy_active) MATR1
      TYPE (OpenADTy_active) MATR2
      TYPE (OpenADTy_active) MATR3
      TYPE (OpenADTy_active) OBJ
      TYPE (OpenADTy_active) R00
      TYPE (OpenADTy_active) R02
      TYPE (OpenADTy_active) R03
      TYPE (OpenADTy_active) R11
      TYPE (OpenADTy_active) R12
      TYPE (OpenADTy_active) R13
      REAL(w2f__8) R22
      REAL(w2f__8) R33
      REAL(w2f__8) SQRT3
      REAL(w2f__8) THIRD
      REAL(w2f__8) TSQRT3
      REAL(w2f__8) TWO3RD
      REAL(w2f__8) TWOSQRT3
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_112
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_122
      REAL(w2f__8) OpenAD_Symbol_123
      REAL(w2f__8) OpenAD_Symbol_124
      REAL(w2f__8) OpenAD_Symbol_125
      REAL(w2f__8) OpenAD_Symbol_126
      REAL(w2f__8) OpenAD_Symbol_127
      REAL(w2f__8) OpenAD_Symbol_128
      REAL(w2f__8) OpenAD_Symbol_129
      REAL(w2f__8) OpenAD_Symbol_130
      REAL(w2f__8) OpenAD_Symbol_131
      REAL(w2f__8) OpenAD_Symbol_132
      REAL(w2f__8) OpenAD_Symbol_133
      REAL(w2f__8) OpenAD_Symbol_134
      REAL(w2f__8) OpenAD_Symbol_135
      REAL(w2f__8) OpenAD_Symbol_136
      REAL(w2f__8) OpenAD_Symbol_137
      REAL(w2f__8) OpenAD_Symbol_138
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_140
      REAL(w2f__8) OpenAD_Symbol_142
      REAL(w2f__8) OpenAD_Symbol_146
      REAL(w2f__8) OpenAD_Symbol_147
      REAL(w2f__8) OpenAD_Symbol_149
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_150
      REAL(w2f__8) OpenAD_Symbol_152
      REAL(w2f__8) OpenAD_Symbol_154
      REAL(w2f__8) OpenAD_Symbol_155
      REAL(w2f__8) OpenAD_Symbol_157
      REAL(w2f__8) OpenAD_Symbol_159
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_161
      REAL(w2f__8) OpenAD_Symbol_163
      REAL(w2f__8) OpenAD_Symbol_164
      REAL(w2f__8) OpenAD_Symbol_165
      REAL(w2f__8) OpenAD_Symbol_166
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
      REAL(w2f__8) OpenAD_Symbol_183
      REAL(w2f__8) OpenAD_Symbol_185
      REAL(w2f__8) OpenAD_Symbol_186
      REAL(w2f__8) OpenAD_Symbol_187
      REAL(w2f__8) OpenAD_Symbol_188
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_190
      REAL(w2f__8) OpenAD_Symbol_191
      REAL(w2f__8) OpenAD_Symbol_193
      REAL(w2f__8) OpenAD_Symbol_194
      REAL(w2f__8) OpenAD_Symbol_195
      REAL(w2f__8) OpenAD_Symbol_196
      REAL(w2f__8) OpenAD_Symbol_197
      REAL(w2f__8) OpenAD_Symbol_199
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_200
      REAL(w2f__8) OpenAD_Symbol_202
      REAL(w2f__8) OpenAD_Symbol_203
      REAL(w2f__8) OpenAD_Symbol_204
      REAL(w2f__8) OpenAD_Symbol_205
      REAL(w2f__8) OpenAD_Symbol_206
      REAL(w2f__8) OpenAD_Symbol_207
      REAL(w2f__8) OpenAD_Symbol_208
      REAL(w2f__8) OpenAD_Symbol_209
      REAL(w2f__8) OpenAD_Symbol_21
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
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_230
      REAL(w2f__8) OpenAD_Symbol_235
      REAL(w2f__8) OpenAD_Symbol_236
      REAL(w2f__8) OpenAD_Symbol_237
      REAL(w2f__8) OpenAD_Symbol_238
      REAL(w2f__8) OpenAD_Symbol_239
      REAL(w2f__8) OpenAD_Symbol_24
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
      REAL(w2f__8) OpenAD_Symbol_258
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_260
      REAL(w2f__8) OpenAD_Symbol_261
      REAL(w2f__8) OpenAD_Symbol_262
      REAL(w2f__8) OpenAD_Symbol_263
      REAL(w2f__8) OpenAD_Symbol_266
      REAL(w2f__8) OpenAD_Symbol_267
      REAL(w2f__8) OpenAD_Symbol_269
      REAL(w2f__8) OpenAD_Symbol_271
      REAL(w2f__8) OpenAD_Symbol_272
      REAL(w2f__8) OpenAD_Symbol_273
      REAL(w2f__8) OpenAD_Symbol_274
      REAL(w2f__8) OpenAD_Symbol_277
      REAL(w2f__8) OpenAD_Symbol_278
      REAL(w2f__8) OpenAD_Symbol_279
      REAL(w2f__8) OpenAD_Symbol_28
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
      REAL(w2f__8) OpenAD_Symbol_290
      REAL(w2f__8) OpenAD_Symbol_291
      REAL(w2f__8) OpenAD_Symbol_292
      REAL(w2f__8) OpenAD_Symbol_293
      REAL(w2f__8) OpenAD_Symbol_295
      REAL(w2f__8) OpenAD_Symbol_297
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_301
      REAL(w2f__8) OpenAD_Symbol_302
      REAL(w2f__8) OpenAD_Symbol_304
      REAL(w2f__8) OpenAD_Symbol_305
      REAL(w2f__8) OpenAD_Symbol_307
      REAL(w2f__8) OpenAD_Symbol_309
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_54
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
      REAL(w2f__8) OpenAD_Symbol_75
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
C$OPENAD INDEPENDENT(X01)
C$OPENAD INDEPENDENT(X02)
C$OPENAD INDEPENDENT(X03)
C$OPENAD INDEPENDENT(X04)
C$OPENAD INDEPENDENT(X05)
C$OPENAD INDEPENDENT(X06)
C$OPENAD DEPENDENT(Y01)
C$OPENAD DEPENDENT(Y02)
C$OPENAD DEPENDENT(Y03)
C$OPENAD DEPENDENT(Y04)
C$OPENAD DEPENDENT(Y05)
C$OPENAD DEPENDENT(Y06)
C$OPENAD DEPENDENT(Y07)
C$OPENAD DEPENDENT(Y08)
C$OPENAD DEPENDENT(Y09)
C$OPENAD DEPENDENT(Y10)
C$OPENAD DEPENDENT(Y11)
C$OPENAD DEPENDENT(Y12)
C$OPENAD DEPENDENT(Y13)
C$OPENAD DEPENDENT(Y14)
C$OPENAD DEPENDENT(Y15)
C$OPENAD DEPENDENT(Y16)
C$OPENAD DEPENDENT(Y17)
C$OPENAD DEPENDENT(Y18)
C$OPENAD DEPENDENT(Y19)
C$OPENAD DEPENDENT(Y20)
C$OPENAD DEPENDENT(Y21)
C$OPENAD DEPENDENT(Y22)
C$OPENAD DEPENDENT(Y23)
C$OPENAD DEPENDENT(Y24)
C$OPENAD DEPENDENT(Y25)
C$OPENAD DEPENDENT(Y26)
C$OPENAD DEPENDENT(Y27)
C$OPENAD DEPENDENT(Y28)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      B = (-1.0D00)
      AB = (A * B)
      SQRT3 = 5.77350258827209472656D-01
      TSQRT3 = 1.15470051765441894531D00
      TWOSQRT3 = 1.15470051765441894531D00
      THIRD = 3.33333343267440795898D-01
      TWO3RD = 6.66666686534881591797D-01
      FOUR3RD = 1.33333337306976318359D00
      BM1 = (-2.0D00)
      __value__(MATR0) = (__value__(X02) - __value__(X01))
      OpenAD_Symbol_0 = (__value__(X03) * 2.0D00 - __value__(X02) -
     >  __value__(X01))
      __value__(MATR1) = (SQRT3 * OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
      __value__(MATR2) = (__value__(X05) - __value__(X04))
      OpenAD_Symbol_4 = (__value__(X06) * 2.0D00 - __value__(X05) -
     >  __value__(X04))
      __value__(MATR3) = (SQRT3 * OpenAD_Symbol_4)
      OpenAD_Symbol_6 = SQRT3
      __value__(M03) = (__value__(MATR0) * __value__(MATR3))
      OpenAD_Symbol_8 = __value__(MATR3)
      OpenAD_Symbol_9 = __value__(MATR0)
      __value__(M12) = (__value__(MATR1) * __value__(MATR2))
      OpenAD_Symbol_10 = __value__(MATR2)
      OpenAD_Symbol_11 = __value__(MATR1)
      __value__(G) = (__value__(M03) - __value__(M12))
      __value__(D00) = (__value__(M03) * 2.0D00)
      __value__(D11) = (__value__(M12) * 2.0D00)
      __value__(M00) = (__value__(MATR0) * __value__(MATR0))
      OpenAD_Symbol_14 = __value__(MATR0)
      OpenAD_Symbol_15 = __value__(MATR0)
      __value__(M11) = (__value__(MATR1) * __value__(MATR1))
      OpenAD_Symbol_16 = __value__(MATR1)
      OpenAD_Symbol_17 = __value__(MATR1)
      __value__(M22) = (__value__(MATR2) * __value__(MATR2))
      OpenAD_Symbol_18 = __value__(MATR2)
      OpenAD_Symbol_19 = __value__(MATR2)
      __value__(M33) = (__value__(MATR3) * __value__(MATR3))
      OpenAD_Symbol_20 = __value__(MATR3)
      OpenAD_Symbol_21 = __value__(MATR3)
      __value__(D12) = (__value__(M00) * __value__(M33))
      OpenAD_Symbol_22 = __value__(M33)
      OpenAD_Symbol_23 = __value__(M00)
      __value__(D03) = (__value__(M11) * __value__(M22))
      OpenAD_Symbol_24 = __value__(M22)
      OpenAD_Symbol_25 = __value__(M11)
      __value__(F) = (__value__(D03) + __value__(D12))
      OpenAD_Symbol_26 = (1.0D00 / __value__(G))
      __value__(LOC1) = (A * OpenAD_Symbol_26)
      OpenAD_Symbol_30 = (-(1.0D00 /(__value__(G) * __value__(G))))
      OpenAD_Symbol_28 = A
      __value__(OBJ) = (__value__(F) * __value__(LOC1))
      OpenAD_Symbol_31 = __value__(LOC1)
      OpenAD_Symbol_32 = __value__(F)
      OpenAD_Symbol_36 = (__value__(G) * __value__(G))
      OpenAD_Symbol_33 = (1.0D00 / OpenAD_Symbol_36)
      __value__(LOC2) = (AB * OpenAD_Symbol_33)
      OpenAD_Symbol_39 = __value__(G)
      OpenAD_Symbol_40 = __value__(G)
      OpenAD_Symbol_38 = (-(1.0D00 /(OpenAD_Symbol_36 *
     >  OpenAD_Symbol_36)))
      OpenAD_Symbol_35 = AB
      OpenAD_Symbol_41 = (AB * B)
      OpenAD_Symbol_48 = (__value__(G) * __value__(G))
      OpenAD_Symbol_45 = (__value__(G) * OpenAD_Symbol_48)
      OpenAD_Symbol_42 = (1.0D00 / OpenAD_Symbol_45)
      __value__(GG) = (OpenAD_Symbol_41 * OpenAD_Symbol_42)
      OpenAD_Symbol_49 = OpenAD_Symbol_48
      OpenAD_Symbol_51 = __value__(G)
      OpenAD_Symbol_52 = __value__(G)
      OpenAD_Symbol_50 = __value__(G)
      OpenAD_Symbol_47 = (-(1.0D00 /(OpenAD_Symbol_45 *
     >  OpenAD_Symbol_45)))
      OpenAD_Symbol_44 = OpenAD_Symbol_41
      OpenAD_acc_0 = (OpenAD_Symbol_30 * OpenAD_Symbol_28)
      OpenAD_acc_1 = (OpenAD_Symbol_14 + OpenAD_Symbol_15)
      OpenAD_acc_2 = (OpenAD_Symbol_16 + OpenAD_Symbol_17)
      OpenAD_acc_3 = (OpenAD_Symbol_18 + OpenAD_Symbol_19)
      OpenAD_acc_4 = (OpenAD_Symbol_20 + OpenAD_Symbol_21)
      OpenAD_acc_5 = ((OpenAD_Symbol_49 +(OpenAD_Symbol_51 +
     >  OpenAD_Symbol_52) * OpenAD_Symbol_50) * OpenAD_Symbol_47 *
     >  OpenAD_Symbol_44)
      OpenAD_acc_6 = ((OpenAD_Symbol_39 + OpenAD_Symbol_40) *
     >  OpenAD_Symbol_38 * OpenAD_Symbol_35)
      CALL setderiv(__deriv__(MATR0), __deriv__(X02))
      CALL dec_deriv(__deriv__(MATR0), __deriv__(X01))
      CALL setderiv(__deriv__(MATR2), __deriv__(X05))
      CALL dec_deriv(__deriv__(MATR2), __deriv__(X04))
      CALL sax(OpenAD_acc_1, __deriv__(MATR0), __deriv__(M00))
      CALL sax(OpenAD_acc_3, __deriv__(MATR2), __deriv__(M22))
      CALL set_neg_deriv(__deriv__(OpenAD_prop_0), __deriv__(X01))
      CALL dec_deriv(__deriv__(OpenAD_prop_0), __deriv__(X02))
      CALL saxpy(2.0D00, __deriv__(X03), __deriv__(OpenAD_prop_0))
      CALL set_neg_deriv(__deriv__(OpenAD_prop_1), __deriv__(X04))
      CALL dec_deriv(__deriv__(OpenAD_prop_1), __deriv__(X05))
      CALL saxpy(2.0D00, __deriv__(X06), __deriv__(OpenAD_prop_1))
      CALL sax(OpenAD_Symbol_2, __deriv__(OpenAD_prop_0), __deriv__(
     > MATR1))
      CALL sax(OpenAD_Symbol_6, __deriv__(OpenAD_prop_1), __deriv__(
     > MATR3))
      CALL sax(OpenAD_Symbol_8, __deriv__(MATR0), __deriv__(M03))
      CALL saxpy(OpenAD_Symbol_9, __deriv__(MATR3), __deriv__(M03))
      CALL sax(OpenAD_Symbol_10, __deriv__(MATR1), __deriv__(M12))
      CALL saxpy(OpenAD_Symbol_11, __deriv__(MATR2), __deriv__(M12))
      CALL setderiv(__deriv__(G), __deriv__(M03))
      CALL dec_deriv(__deriv__(G), __deriv__(M12))
      CALL sax(2.0D00, __deriv__(M03), __deriv__(D00))
      CALL sax(2.0D00, __deriv__(M12), __deriv__(D11))
      CALL sax(OpenAD_acc_2, __deriv__(MATR1), __deriv__(M11))
      CALL sax(OpenAD_acc_4, __deriv__(MATR3), __deriv__(M33))
      CALL sax(OpenAD_Symbol_22, __deriv__(M00), __deriv__(D12))
      CALL saxpy(OpenAD_Symbol_23, __deriv__(M33), __deriv__(D12))
      CALL sax(OpenAD_Symbol_24, __deriv__(M11), __deriv__(D03))
      CALL saxpy(OpenAD_Symbol_25, __deriv__(M22), __deriv__(D03))
      CALL setderiv(__deriv__(F), __deriv__(D03))
      CALL inc_deriv(__deriv__(F), __deriv__(D12))
      CALL sax(OpenAD_acc_0, __deriv__(G), __deriv__(LOC1))
      CALL sax(OpenAD_Symbol_31, __deriv__(F), __deriv__(OBJ))
      CALL saxpy(OpenAD_Symbol_32, __deriv__(LOC1), __deriv__(OBJ))
      CALL sax(OpenAD_acc_6, __deriv__(G), __deriv__(LOC2))
      CALL sax(OpenAD_acc_5, __deriv__(G), __deriv__(GG))
      __value__(G) = (__value__(F) * __value__(LOC2))
      OpenAD_Symbol_53 = __value__(LOC2)
      OpenAD_Symbol_54 = __value__(F)
      __value__(F) = (__value__(LOC1) * 2.0D00)
      __value__(ADJ_M0) = (__value__(F) * __value__(MATR0) + __value__(
     > G) * __value__(MATR3))
      OpenAD_Symbol_56 = __value__(MATR0)
      OpenAD_Symbol_57 = __value__(F)
      OpenAD_Symbol_58 = __value__(MATR3)
      OpenAD_Symbol_59 = __value__(G)
      __value__(ADJ_M1) = (__value__(F) * __value__(MATR1) - __value__(
     > G) * __value__(MATR2))
      OpenAD_Symbol_60 = __value__(MATR1)
      OpenAD_Symbol_61 = __value__(F)
      OpenAD_Symbol_62 = __value__(MATR2)
      OpenAD_Symbol_63 = __value__(G)
      __value__(ADJ_M2) = (__value__(F) * __value__(MATR2) - __value__(
     > G) * __value__(MATR1))
      OpenAD_Symbol_64 = __value__(MATR2)
      OpenAD_Symbol_65 = __value__(F)
      OpenAD_Symbol_66 = __value__(MATR1)
      OpenAD_Symbol_67 = __value__(G)
      __value__(ADJ_M3) = (__value__(F) * __value__(MATR3) + __value__(
     > G) * __value__(MATR0))
      OpenAD_Symbol_68 = __value__(MATR3)
      OpenAD_Symbol_69 = __value__(F)
      OpenAD_Symbol_70 = __value__(MATR0)
      OpenAD_Symbol_71 = __value__(G)
      __value__(LOC1) = (__value__(ADJ_M1) * SQRT3)
      OpenAD_Symbol_72 = SQRT3
      __value__(G_OBJ0) = (-(__value__(ADJ_M0) + __value__(LOC1)))
      __value__(G_OBJ1) = (__value__(ADJ_M0) - __value__(LOC1))
      __value__(G_OBJ2) = (__value__(LOC1) * 2.0D00)
      OpenAD_acc_7 = (2.0D00 * OpenAD_Symbol_56)
      OpenAD_acc_8 = (2.0D00 * OpenAD_Symbol_60)
      OpenAD_acc_9 = (OpenAD_Symbol_62 * INT((-1_w2f__i8)))
      OpenAD_acc_10 = (OpenAD_Symbol_63 * INT((-1_w2f__i8)))
      OpenAD_acc_11 = (2.0D00 * OpenAD_Symbol_64)
      OpenAD_acc_12 = (OpenAD_Symbol_66 * INT((-1_w2f__i8)))
      OpenAD_acc_13 = (OpenAD_Symbol_67 * INT((-1_w2f__i8)))
      OpenAD_acc_14 = (2.0D00 * OpenAD_Symbol_68)
      CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(LOC1))
      CALL sax(OpenAD_Symbol_53, __deriv__(F), __deriv__(G))
      CALL saxpy(OpenAD_Symbol_54, __deriv__(LOC2), __deriv__(G))
      CALL sax(OpenAD_Symbol_57, __deriv__(MATR0), __deriv__(ADJ_M0))
      CALL saxpy(OpenAD_acc_7, __deriv__(OpenAD_prop_2), __deriv__(
     > ADJ_M0))
      CALL saxpy(OpenAD_Symbol_58, __deriv__(G), __deriv__(ADJ_M0))
      CALL saxpy(OpenAD_Symbol_59, __deriv__(MATR3), __deriv__(ADJ_M0))
      CALL sax(OpenAD_Symbol_61, __deriv__(MATR1), __deriv__(ADJ_M1))
      CALL saxpy(OpenAD_acc_8, __deriv__(OpenAD_prop_2), __deriv__(
     > ADJ_M1))
      CALL saxpy(OpenAD_acc_9, __deriv__(G), __deriv__(ADJ_M1))
      CALL saxpy(OpenAD_acc_10, __deriv__(MATR2), __deriv__(ADJ_M1))
      CALL sax(OpenAD_Symbol_65, __deriv__(MATR2), __deriv__(ADJ_M2))
      CALL saxpy(OpenAD_acc_11, __deriv__(OpenAD_prop_2), __deriv__(
     > ADJ_M2))
      CALL saxpy(OpenAD_acc_12, __deriv__(G), __deriv__(ADJ_M2))
      CALL saxpy(OpenAD_acc_13, __deriv__(MATR1), __deriv__(ADJ_M2))
      CALL sax(OpenAD_Symbol_69, __deriv__(MATR3), __deriv__(ADJ_M3))
      CALL saxpy(OpenAD_acc_14, __deriv__(OpenAD_prop_2), __deriv__(
     > ADJ_M3))
      CALL saxpy(OpenAD_Symbol_70, __deriv__(G), __deriv__(ADJ_M3))
      CALL saxpy(OpenAD_Symbol_71, __deriv__(MATR0), __deriv__(ADJ_M3))
      CALL sax(OpenAD_Symbol_72, __deriv__(ADJ_M1), __deriv__(LOC1))
      CALL setderiv(__deriv__(G_OBJ1), __deriv__(ADJ_M0))
      CALL dec_deriv(__deriv__(G_OBJ1), __deriv__(LOC1))
      CALL sax(2.0D00, __deriv__(LOC1), __deriv__(G_OBJ2))
      CALL set_neg_deriv(__deriv__(G_OBJ0), __deriv__(ADJ_M0))
      CALL dec_deriv(__deriv__(G_OBJ0), __deriv__(LOC1))
      __value__(LOC1) = (__value__(ADJ_M3) * SQRT3)
      OpenAD_Symbol_75 = SQRT3
      __value__(G_OBJ3) = (-(__value__(ADJ_M2) + __value__(LOC1)))
      __value__(G_OBJ4) = (__value__(ADJ_M2) - __value__(LOC1))
      __value__(G_OBJ5) = (__value__(LOC1) * 2.0D00)
      OpenAD_Symbol_79 = (__value__(LOC2) * 2.0D00)
      __value__(LOC2) = OpenAD_Symbol_79
      __value__(R00) = (__value__(D00) * __value__(LOC2) + __value__(GG
     > ) * __value__(M33))
      OpenAD_Symbol_80 = __value__(LOC2)
      OpenAD_Symbol_81 = __value__(D00)
      OpenAD_Symbol_82 = __value__(M33)
      OpenAD_Symbol_83 = __value__(GG)
      __value__(R11) = (__value__(D11) * __value__(LOC2) + __value__(GG
     > ) * __value__(M22))
      OpenAD_Symbol_84 = __value__(LOC2)
      OpenAD_Symbol_85 = __value__(D11)
      OpenAD_Symbol_86 = __value__(M22)
      OpenAD_Symbol_87 = __value__(GG)
      R22 = (__value__(D11) * __value__(LOC2) + __value__(GG) *
     >  __value__(M11))
      R33 = (__value__(D00) * __value__(LOC2) + __value__(GG) *
     >  __value__(M00))
      __value__(M01) = (__value__(MATR0) * __value__(MATR1))
      OpenAD_Symbol_88 = __value__(MATR1)
      OpenAD_Symbol_89 = __value__(MATR0)
      __value__(M02) = (__value__(MATR0) * __value__(MATR2))
      OpenAD_Symbol_90 = __value__(MATR2)
      OpenAD_Symbol_91 = __value__(MATR0)
      __value__(M12) = (__value__(MATR1) * __value__(MATR2))
      OpenAD_Symbol_92 = __value__(MATR2)
      OpenAD_Symbol_93 = __value__(MATR1)
      __value__(M13) = (__value__(MATR1) * __value__(MATR3))
      OpenAD_Symbol_94 = __value__(MATR3)
      OpenAD_Symbol_95 = __value__(MATR1)
      __value__(M23) = (__value__(MATR2) * __value__(MATR3))
      OpenAD_Symbol_96 = __value__(MATR3)
      OpenAD_Symbol_97 = __value__(MATR2)
      OpenAD_Symbol_98 = (__value__(M02) + __value__(M13))
      __value__(D01) = (__value__(LOC2) * OpenAD_Symbol_98)
      OpenAD_Symbol_99 = OpenAD_Symbol_98
      OpenAD_Symbol_100 = __value__(LOC2)
      CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(LOC2))
      CALL sax(OpenAD_Symbol_75, __deriv__(ADJ_M3), __deriv__(LOC1))
      CALL setderiv(__deriv__(G_OBJ4), __deriv__(ADJ_M2))
      CALL dec_deriv(__deriv__(G_OBJ4), __deriv__(LOC1))
      CALL sax(2.0D00, __deriv__(LOC1), __deriv__(G_OBJ5))
      CALL sax(2.0D00, __deriv__(OpenAD_prop_3), __deriv__(LOC2))
      CALL sax(OpenAD_Symbol_88, __deriv__(MATR0), __deriv__(M01))
      CALL saxpy(OpenAD_Symbol_89, __deriv__(MATR1), __deriv__(M01))
      CALL sax(OpenAD_Symbol_90, __deriv__(MATR0), __deriv__(M02))
      CALL saxpy(OpenAD_Symbol_91, __deriv__(MATR2), __deriv__(M02))
      CALL sax(OpenAD_Symbol_92, __deriv__(MATR1), __deriv__(M12))
      CALL saxpy(OpenAD_Symbol_93, __deriv__(MATR2), __deriv__(M12))
      CALL sax(OpenAD_Symbol_94, __deriv__(MATR1), __deriv__(M13))
      CALL saxpy(OpenAD_Symbol_95, __deriv__(MATR3), __deriv__(M13))
      CALL sax(OpenAD_Symbol_96, __deriv__(MATR2), __deriv__(M23))
      CALL saxpy(OpenAD_Symbol_97, __deriv__(MATR3), __deriv__(M23))
      CALL setderiv(__deriv__(OpenAD_prop_4), __deriv__(M02))
      CALL inc_deriv(__deriv__(OpenAD_prop_4), __deriv__(M13))
      CALL set_neg_deriv(__deriv__(G_OBJ3), __deriv__(ADJ_M2))
      CALL dec_deriv(__deriv__(G_OBJ3), __deriv__(LOC1))
      CALL sax(OpenAD_Symbol_80, __deriv__(D00), __deriv__(R00))
      CALL saxpy(OpenAD_Symbol_81, __deriv__(LOC2), __deriv__(R00))
      CALL saxpy(OpenAD_Symbol_82, __deriv__(GG), __deriv__(R00))
      CALL saxpy(OpenAD_Symbol_83, __deriv__(M33), __deriv__(R00))
      CALL sax(OpenAD_Symbol_84, __deriv__(D11), __deriv__(R11))
      CALL saxpy(OpenAD_Symbol_85, __deriv__(LOC2), __deriv__(R11))
      CALL saxpy(OpenAD_Symbol_86, __deriv__(GG), __deriv__(R11))
      CALL saxpy(OpenAD_Symbol_87, __deriv__(M22), __deriv__(R11))
      CALL sax(OpenAD_Symbol_99, __deriv__(LOC2), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_100, __deriv__(OpenAD_prop_4), __deriv__
     > (D01))
      __value__(LOC1) = (__value__(R11) * THIRD)
      OpenAD_Symbol_101 = THIRD
      OpenAD_Symbol_103 = (__value__(D01) + __value__(GG) * __value__(
     > M23))
      __value__(F) = (TWOSQRT3 * OpenAD_Symbol_103)
      OpenAD_Symbol_106 = __value__(M23)
      OpenAD_Symbol_107 = __value__(GG)
      OpenAD_Symbol_105 = TWOSQRT3
      __value__(G) = (__value__(LOC1) + __value__(R00))
      __value__(H_OBJ1) = (__value__(LOC1) - __value__(R00))
      __value__(H_OBJ0) = (__value__(F) + __value__(G))
      __value__(H_OBJ3) = (__value__(G) - __value__(F))
      CALL sax(OpenAD_Symbol_101, __deriv__(R11), __deriv__(LOC1))
      CALL setderiv(__deriv__(G), __deriv__(LOC1))
      CALL inc_deriv(__deriv__(G), __deriv__(R00))
      CALL setderiv(__deriv__(H_OBJ1), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ1), __deriv__(R00))
      CALL setderiv(__deriv__(OpenAD_prop_5), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_106, __deriv__(GG), __deriv__(
     > OpenAD_prop_5))
      CALL saxpy(OpenAD_Symbol_107, __deriv__(M23), __deriv__(
     > OpenAD_prop_5))
      CALL sax(OpenAD_Symbol_105, __deriv__(OpenAD_prop_5), __deriv__(F
     > ))
      CALL setderiv(__deriv__(H_OBJ0), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ0), __deriv__(G))
      CALL setderiv(__deriv__(H_OBJ3), __deriv__(G))
      CALL dec_deriv(__deriv__(H_OBJ3), __deriv__(F))
      __value__(LOC1) = (-(__value__(R11) * TWO3RD))
      OpenAD_Symbol_108 = TWO3RD
      __value__(H_OBJ2) = (__value__(LOC1) - __value__(F))
      __value__(H_OBJ4) = (__value__(F) + __value__(LOC1))
      __value__(H_OBJ5) = (FOUR3RD * __value__(R11))
      OpenAD_Symbol_111 = FOUR3RD
      OpenAD_acc_15 = (OpenAD_Symbol_108 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_111, __deriv__(R11), __deriv__(H_OBJ5))
      CALL sax(OpenAD_acc_15, __deriv__(R11), __deriv__(LOC1))
      CALL setderiv(__deriv__(H_OBJ2), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ2), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ4), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ4), __deriv__(LOC1))
      __value__(LOC1) = (__value__(R00) * THIRD)
      OpenAD_Symbol_112 = THIRD
      OpenAD_Symbol_114 = (__value__(D01) + __value__(GG) * __value__(
     > M01))
      __value__(F) = (TWOSQRT3 * OpenAD_Symbol_114)
      OpenAD_Symbol_117 = __value__(M01)
      OpenAD_Symbol_118 = __value__(GG)
      OpenAD_Symbol_116 = TWOSQRT3
      __value__(G) = (__value__(LOC1) + __value__(R11))
      __value__(H_OBJ16) = (__value__(LOC1) - __value__(R11))
      __value__(H_OBJ15) = (__value__(F) + __value__(G))
      __value__(H_OBJ18) = (__value__(G) - __value__(F))
      CALL sax(OpenAD_Symbol_112, __deriv__(R00), __deriv__(LOC1))
      CALL setderiv(__deriv__(G), __deriv__(LOC1))
      CALL inc_deriv(__deriv__(G), __deriv__(R11))
      CALL setderiv(__deriv__(H_OBJ16), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ16), __deriv__(R11))
      CALL setderiv(__deriv__(OpenAD_prop_6), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_117, __deriv__(GG), __deriv__(
     > OpenAD_prop_6))
      CALL saxpy(OpenAD_Symbol_118, __deriv__(M01), __deriv__(
     > OpenAD_prop_6))
      CALL sax(OpenAD_Symbol_116, __deriv__(OpenAD_prop_6), __deriv__(F
     > ))
      CALL setderiv(__deriv__(H_OBJ15), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ15), __deriv__(G))
      CALL setderiv(__deriv__(H_OBJ18), __deriv__(G))
      CALL dec_deriv(__deriv__(H_OBJ18), __deriv__(F))
      __value__(LOC1) = (-(__value__(R00) * TWO3RD))
      OpenAD_Symbol_119 = TWO3RD
      __value__(H_OBJ17) = (__value__(LOC1) - __value__(F))
      __value__(H_OBJ19) = (__value__(F) + __value__(LOC1))
      __value__(H_OBJ20) = (FOUR3RD * __value__(R00))
      OpenAD_Symbol_122 = FOUR3RD
      OpenAD_acc_16 = (OpenAD_Symbol_119 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_122, __deriv__(R00), __deriv__(H_OBJ20))
      CALL sax(OpenAD_acc_16, __deriv__(R00), __deriv__(LOC1))
      CALL setderiv(__deriv__(H_OBJ17), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ17), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ19), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ19), __deriv__(LOC1))
      OpenAD_Symbol_123 = (__value__(M01) + __value__(M23))
      __value__(LOC1) = (__value__(LOC2) * OpenAD_Symbol_123)
      OpenAD_Symbol_124 = OpenAD_Symbol_123
      OpenAD_Symbol_125 = __value__(LOC2)
      __value__(R13) = (__value__(LOC1) + __value__(GG) * __value__(M02
     > ))
      OpenAD_Symbol_126 = __value__(M02)
      OpenAD_Symbol_127 = __value__(GG)
      __value__(R02) = (__value__(LOC1) + __value__(GG) * __value__(M13
     > ))
      OpenAD_Symbol_128 = __value__(M13)
      OpenAD_Symbol_129 = __value__(GG)
      __value__(R03) = (__value__(D03) * __value__(LOC2) + __value__(GG
     > ) * __value__(M03))
      OpenAD_Symbol_130 = __value__(LOC2)
      OpenAD_Symbol_131 = __value__(D03)
      OpenAD_Symbol_132 = __value__(M03)
      OpenAD_Symbol_133 = __value__(GG)
      __value__(R12) = (__value__(D12) * __value__(LOC2) + __value__(GG
     > ) * __value__(M12))
      OpenAD_Symbol_134 = __value__(LOC2)
      OpenAD_Symbol_135 = __value__(D12)
      OpenAD_Symbol_136 = __value__(M12)
      OpenAD_Symbol_137 = __value__(GG)
      __value__(G) = (-(__value__(R13) * TWO3RD))
      OpenAD_Symbol_138 = TWO3RD
      __value__(F) = (__value__(R03) * TWOSQRT3)
      OpenAD_Symbol_140 = TWOSQRT3
      __value__(H_OBJ8) = (__value__(G) - __value__(F))
      __value__(H_OBJ11) = (__value__(F) + __value__(G))
      OpenAD_acc_17 = (OpenAD_Symbol_138 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_prop_7), __deriv__(M01))
      CALL inc_deriv(__deriv__(OpenAD_prop_7), __deriv__(M23))
      CALL sax(OpenAD_Symbol_124, __deriv__(LOC2), __deriv__(LOC1))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(OpenAD_prop_7), __deriv__
     > (LOC1))
      CALL setderiv(__deriv__(R13), __deriv__(LOC1))
      CALL saxpy(OpenAD_Symbol_126, __deriv__(GG), __deriv__(R13))
      CALL saxpy(OpenAD_Symbol_127, __deriv__(M02), __deriv__(R13))
      CALL setderiv(__deriv__(R02), __deriv__(LOC1))
      CALL saxpy(OpenAD_Symbol_128, __deriv__(GG), __deriv__(R02))
      CALL saxpy(OpenAD_Symbol_129, __deriv__(M13), __deriv__(R02))
      CALL sax(OpenAD_Symbol_130, __deriv__(D03), __deriv__(R03))
      CALL saxpy(OpenAD_Symbol_131, __deriv__(LOC2), __deriv__(R03))
      CALL saxpy(OpenAD_Symbol_132, __deriv__(GG), __deriv__(R03))
      CALL saxpy(OpenAD_Symbol_133, __deriv__(M03), __deriv__(R03))
      CALL sax(OpenAD_Symbol_134, __deriv__(D12), __deriv__(R12))
      CALL saxpy(OpenAD_Symbol_135, __deriv__(LOC2), __deriv__(R12))
      CALL saxpy(OpenAD_Symbol_136, __deriv__(GG), __deriv__(R12))
      CALL saxpy(OpenAD_Symbol_137, __deriv__(M12), __deriv__(R12))
      CALL sax(OpenAD_Symbol_140, __deriv__(R03), __deriv__(F))
      CALL sax(OpenAD_acc_17, __deriv__(R13), __deriv__(G))
      CALL setderiv(__deriv__(H_OBJ8), __deriv__(G))
      CALL dec_deriv(__deriv__(H_OBJ8), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ11), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ11), __deriv__(G))
      __value__(F) = (__value__(R12) * TWOSQRT3)
      OpenAD_Symbol_142 = TWOSQRT3
      __value__(H_OBJ12) = (__value__(G) - __value__(F))
      __value__(H_OBJ13) = (__value__(F) + __value__(G))
      __value__(H_OBJ14) = (__value__(R13) * 1.2D+01)
      __value__(G) = (FOUR3RD * __value__(R02))
      OpenAD_Symbol_146 = FOUR3RD
      CALL setderiv(__deriv__(OpenAD_prop_8), __deriv__(G))
      CALL sax(OpenAD_Symbol_142, __deriv__(R12), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ12), __deriv__(OpenAD_prop_8))
      CALL dec_deriv(__deriv__(H_OBJ12), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ13), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ13), __deriv__(OpenAD_prop_8))
      CALL sax(1.2D+01, __deriv__(R13), __deriv__(H_OBJ14))
      CALL sax(OpenAD_Symbol_146, __deriv__(R02), __deriv__(G))
      OpenAD_Symbol_147 = (__value__(R03) + __value__(R12))
      __value__(F) = (SQRT3 * OpenAD_Symbol_147)
      OpenAD_Symbol_149 = SQRT3
      __value__(H_OBJ10) = (__value__(G) - __value__(F))
      __value__(H_OBJ6) = (__value__(F) + __value__(G))
      __value__(G) = (__value__(R02) * TWO3RD)
      OpenAD_Symbol_150 = TWO3RD
      CALL setderiv(__deriv__(OpenAD_prop_9), __deriv__(G))
      CALL setderiv(__deriv__(OpenAD_prop_10), __deriv__(R03))
      CALL inc_deriv(__deriv__(OpenAD_prop_10), __deriv__(R12))
      CALL sax(OpenAD_Symbol_150, __deriv__(R02), __deriv__(G))
      CALL sax(OpenAD_Symbol_149, __deriv__(OpenAD_prop_10), __deriv__(
     > F))
      CALL setderiv(__deriv__(H_OBJ10), __deriv__(OpenAD_prop_9))
      CALL dec_deriv(__deriv__(H_OBJ10), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ6), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ6), __deriv__(OpenAD_prop_9))
      OpenAD_Symbol_152 = (__value__(R03) - __value__(R12))
      __value__(F) = (SQRT3 * OpenAD_Symbol_152)
      OpenAD_Symbol_154 = SQRT3
      __value__(H_OBJ9) = (__value__(G) - __value__(F))
      __value__(H_OBJ7) = (__value__(F) + __value__(G))
      __value__(MATR0) = (__value__(G_OBJ1) - __value__(G_OBJ0))
      OpenAD_Symbol_155 = (__value__(G_OBJ2) * 2.0D00 - __value__(
     > G_OBJ1) - __value__(G_OBJ2))
      __value__(MATR1) = (SQRT3 * OpenAD_Symbol_155)
      OpenAD_Symbol_157 = SQRT3
      __value__(MATR2) = (__value__(G_OBJ4) - __value__(G_OBJ3))
      OpenAD_Symbol_159 = (__value__(G_OBJ5) * 2.0D00 - __value__(
     > G_OBJ4) - __value__(G_OBJ3))
      __value__(MATR3) = (SQRT3 * OpenAD_Symbol_159)
      OpenAD_Symbol_161 = SQRT3
      __value__(M03) = (__value__(MATR0) * __value__(MATR3))
      OpenAD_Symbol_163 = __value__(MATR3)
      OpenAD_Symbol_164 = __value__(MATR0)
      __value__(M12) = (__value__(MATR1) * __value__(MATR2))
      OpenAD_Symbol_165 = __value__(MATR2)
      OpenAD_Symbol_166 = __value__(MATR1)
      __value__(G) = (__value__(M03) - __value__(M12))
      __value__(D00) = (__value__(M03) * 2.0D00)
      __value__(D11) = (__value__(M12) * 2.0D00)
      __value__(M00) = (__value__(MATR0) * __value__(MATR0))
      OpenAD_Symbol_169 = __value__(MATR0)
      OpenAD_Symbol_170 = __value__(MATR0)
      __value__(M11) = (__value__(MATR1) * __value__(MATR1))
      OpenAD_Symbol_171 = __value__(MATR1)
      OpenAD_Symbol_172 = __value__(MATR1)
      __value__(M22) = (__value__(MATR2) * __value__(MATR2))
      OpenAD_Symbol_173 = __value__(MATR2)
      OpenAD_Symbol_174 = __value__(MATR2)
      __value__(M33) = (__value__(MATR3) * __value__(MATR3))
      OpenAD_Symbol_175 = __value__(MATR3)
      OpenAD_Symbol_176 = __value__(MATR3)
      __value__(D12) = (__value__(M00) * __value__(M33))
      OpenAD_Symbol_177 = __value__(M33)
      OpenAD_Symbol_178 = __value__(M00)
      __value__(D03) = (__value__(M11) * __value__(M22))
      OpenAD_Symbol_179 = __value__(M22)
      OpenAD_Symbol_180 = __value__(M11)
      OpenAD_acc_18 = (OpenAD_Symbol_169 + OpenAD_Symbol_170)
      OpenAD_acc_19 = (OpenAD_Symbol_171 + OpenAD_Symbol_172)
      OpenAD_acc_20 = (OpenAD_Symbol_173 + OpenAD_Symbol_174)
      OpenAD_acc_21 = (OpenAD_Symbol_175 + OpenAD_Symbol_176)
      CALL setderiv(__deriv__(OpenAD_prop_11), __deriv__(G))
      CALL setderiv(__deriv__(OpenAD_prop_12), __deriv__(R03))
      CALL dec_deriv(__deriv__(OpenAD_prop_12), __deriv__(R12))
      CALL setderiv(__deriv__(MATR0), __deriv__(G_OBJ1))
      CALL dec_deriv(__deriv__(MATR0), __deriv__(G_OBJ0))
      CALL setderiv(__deriv__(MATR2), __deriv__(G_OBJ4))
      CALL dec_deriv(__deriv__(MATR2), __deriv__(G_OBJ3))
      CALL sax(OpenAD_acc_18, __deriv__(MATR0), __deriv__(M00))
      CALL sax(OpenAD_acc_20, __deriv__(MATR2), __deriv__(M22))
      CALL sax(OpenAD_Symbol_154, __deriv__(OpenAD_prop_12), __deriv__(
     > F))
      CALL setderiv(__deriv__(H_OBJ9), __deriv__(OpenAD_prop_11))
      CALL dec_deriv(__deriv__(H_OBJ9), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ7), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ7), __deriv__(OpenAD_prop_11))
      CALL set_neg_deriv(__deriv__(OpenAD_prop_13), __deriv__(G_OBJ1))
      CALL saxpy(1.0D00, __deriv__(G_OBJ2), __deriv__(OpenAD_prop_13))
      CALL set_neg_deriv(__deriv__(OpenAD_prop_14), __deriv__(G_OBJ3))
      CALL dec_deriv(__deriv__(OpenAD_prop_14), __deriv__(G_OBJ4))
      CALL saxpy(2.0D00, __deriv__(G_OBJ5), __deriv__(OpenAD_prop_14))
      CALL sax(OpenAD_Symbol_157, __deriv__(OpenAD_prop_13), __deriv__(
     > MATR1))
      CALL sax(OpenAD_Symbol_161, __deriv__(OpenAD_prop_14), __deriv__(
     > MATR3))
      CALL sax(OpenAD_Symbol_163, __deriv__(MATR0), __deriv__(M03))
      CALL saxpy(OpenAD_Symbol_164, __deriv__(MATR3), __deriv__(M03))
      CALL sax(OpenAD_Symbol_165, __deriv__(MATR1), __deriv__(M12))
      CALL saxpy(OpenAD_Symbol_166, __deriv__(MATR2), __deriv__(M12))
      CALL setderiv(__deriv__(G), __deriv__(M03))
      CALL dec_deriv(__deriv__(G), __deriv__(M12))
      CALL sax(2.0D00, __deriv__(M03), __deriv__(D00))
      CALL sax(2.0D00, __deriv__(M12), __deriv__(D11))
      CALL sax(OpenAD_acc_19, __deriv__(MATR1), __deriv__(M11))
      CALL sax(OpenAD_acc_21, __deriv__(MATR3), __deriv__(M33))
      CALL sax(OpenAD_Symbol_177, __deriv__(M00), __deriv__(D12))
      CALL saxpy(OpenAD_Symbol_178, __deriv__(M33), __deriv__(D12))
      CALL sax(OpenAD_Symbol_179, __deriv__(M11), __deriv__(D03))
      CALL saxpy(OpenAD_Symbol_180, __deriv__(M22), __deriv__(D03))
      __value__(F) = (__value__(D03) + __value__(D12))
      OpenAD_Symbol_181 = (1.0D00 / __value__(G))
      __value__(LOC1) = (A * OpenAD_Symbol_181)
      OpenAD_Symbol_185 = (-(1.0D00 /(__value__(G) * __value__(G))))
      OpenAD_Symbol_183 = A
      __value__(OBJ) = (__value__(F) * __value__(LOC1))
      OpenAD_Symbol_186 = __value__(LOC1)
      OpenAD_Symbol_187 = __value__(F)
      OpenAD_Symbol_191 = (__value__(G) * __value__(G))
      OpenAD_Symbol_188 = (1.0D00 / OpenAD_Symbol_191)
      __value__(LOC2) = (AB * OpenAD_Symbol_188)
      OpenAD_Symbol_194 = __value__(G)
      OpenAD_Symbol_195 = __value__(G)
      OpenAD_Symbol_193 = (-(1.0D00 /(OpenAD_Symbol_191 *
     >  OpenAD_Symbol_191)))
      OpenAD_Symbol_190 = AB
      OpenAD_Symbol_196 = (AB * B)
      OpenAD_Symbol_203 = (__value__(G) * __value__(G))
      OpenAD_Symbol_200 = (__value__(G) * OpenAD_Symbol_203)
      OpenAD_Symbol_197 = (1.0D00 / OpenAD_Symbol_200)
      __value__(GG) = (OpenAD_Symbol_196 * OpenAD_Symbol_197)
      OpenAD_Symbol_204 = OpenAD_Symbol_203
      OpenAD_Symbol_206 = __value__(G)
      OpenAD_Symbol_207 = __value__(G)
      OpenAD_Symbol_205 = __value__(G)
      OpenAD_Symbol_202 = (-(1.0D00 /(OpenAD_Symbol_200 *
     >  OpenAD_Symbol_200)))
      OpenAD_Symbol_199 = OpenAD_Symbol_196
      __value__(G) = (__value__(F) * __value__(LOC2))
      OpenAD_Symbol_208 = __value__(LOC2)
      OpenAD_Symbol_209 = __value__(F)
      OpenAD_acc_22 = (OpenAD_Symbol_185 * OpenAD_Symbol_183)
      OpenAD_acc_23 = ((OpenAD_Symbol_204 +(OpenAD_Symbol_206 +
     >  OpenAD_Symbol_207) * OpenAD_Symbol_205) * OpenAD_Symbol_202 *
     >  OpenAD_Symbol_199)
      OpenAD_acc_24 = ((OpenAD_Symbol_194 + OpenAD_Symbol_195) *
     >  OpenAD_Symbol_193 * OpenAD_Symbol_190)
      CALL setderiv(__deriv__(OpenAD_prop_15), __deriv__(G))
      CALL setderiv(__deriv__(F), __deriv__(D03))
      CALL inc_deriv(__deriv__(F), __deriv__(D12))
      CALL sax(OpenAD_acc_22, __deriv__(OpenAD_prop_15), __deriv__(LOC1
     > ))
      CALL sax(OpenAD_Symbol_186, __deriv__(F), __deriv__(OBJ))
      CALL saxpy(OpenAD_Symbol_187, __deriv__(LOC1), __deriv__(OBJ))
      CALL sax(OpenAD_acc_24, __deriv__(OpenAD_prop_15), __deriv__(LOC2
     > ))
      CALL sax(OpenAD_Symbol_208, __deriv__(F), __deriv__(G))
      CALL saxpy(OpenAD_Symbol_209, __deriv__(LOC2), __deriv__(G))
      CALL sax(OpenAD_acc_23, __deriv__(OpenAD_prop_15), __deriv__(GG))
      __value__(F) = (__value__(LOC1) * 2.0D00)
      __value__(ADJ_M0) = (__value__(F) * __value__(MATR0) + __value__(
     > G) * __value__(MATR3))
      OpenAD_Symbol_211 = __value__(MATR0)
      OpenAD_Symbol_212 = __value__(F)
      OpenAD_Symbol_213 = __value__(MATR3)
      OpenAD_Symbol_214 = __value__(G)
      __value__(ADJ_M1) = (__value__(F) * __value__(MATR1) - __value__(
     > G) * __value__(MATR2))
      OpenAD_Symbol_215 = __value__(MATR1)
      OpenAD_Symbol_216 = __value__(F)
      OpenAD_Symbol_217 = __value__(MATR2)
      OpenAD_Symbol_218 = __value__(G)
      __value__(ADJ_M2) = (__value__(F) * __value__(MATR2) - __value__(
     > G) * __value__(MATR1))
      OpenAD_Symbol_219 = __value__(MATR2)
      OpenAD_Symbol_220 = __value__(F)
      OpenAD_Symbol_221 = __value__(MATR1)
      OpenAD_Symbol_222 = __value__(G)
      __value__(ADJ_M3) = (__value__(F) * __value__(MATR3) + __value__(
     > G) * __value__(MATR0))
      OpenAD_Symbol_223 = __value__(MATR3)
      OpenAD_Symbol_224 = __value__(F)
      OpenAD_Symbol_225 = __value__(MATR0)
      OpenAD_Symbol_226 = __value__(G)
      __value__(LOC1) = (__value__(ADJ_M1) * SQRT3)
      OpenAD_Symbol_227 = SQRT3
      __value__(G_OBJ0) = (__value__(G_OBJ0) - __value__(ADJ_M0) -
     >  __value__(LOC1))
      __value__(G_OBJ1) = (__value__(ADJ_M0) + __value__(G_OBJ1) -
     >  __value__(LOC1))
      __value__(G_OBJ2) = (__value__(G_OBJ1) + __value__(LOC1) * 2.0D00
     > )
      OpenAD_acc_25 = (2.0D00 * OpenAD_Symbol_211)
      OpenAD_acc_26 = (2.0D00 * OpenAD_Symbol_215)
      OpenAD_acc_27 = (OpenAD_Symbol_217 * INT((-1_w2f__i8)))
      OpenAD_acc_28 = (OpenAD_Symbol_218 * INT((-1_w2f__i8)))
      OpenAD_acc_29 = (2.0D00 * OpenAD_Symbol_219)
      OpenAD_acc_30 = (OpenAD_Symbol_221 * INT((-1_w2f__i8)))
      OpenAD_acc_31 = (OpenAD_Symbol_222 * INT((-1_w2f__i8)))
      OpenAD_acc_32 = (2.0D00 * OpenAD_Symbol_223)
      CALL setderiv(__deriv__(OpenAD_prop_16), __deriv__(LOC1))
      CALL setderiv(__deriv__(OpenAD_prop_17), __deriv__(G_OBJ0))
      CALL setderiv(__deriv__(OpenAD_prop_18), __deriv__(G_OBJ1))
      CALL sax(OpenAD_Symbol_212, __deriv__(MATR0), __deriv__(ADJ_M0))
      CALL saxpy(OpenAD_acc_25, __deriv__(OpenAD_prop_16), __deriv__(
     > ADJ_M0))
      CALL saxpy(OpenAD_Symbol_213, __deriv__(G), __deriv__(ADJ_M0))
      CALL saxpy(OpenAD_Symbol_214, __deriv__(MATR3), __deriv__(ADJ_M0)
     > )
      CALL sax(OpenAD_Symbol_216, __deriv__(MATR1), __deriv__(ADJ_M1))
      CALL saxpy(OpenAD_acc_26, __deriv__(OpenAD_prop_16), __deriv__(
     > ADJ_M1))
      CALL saxpy(OpenAD_acc_27, __deriv__(G), __deriv__(ADJ_M1))
      CALL saxpy(OpenAD_acc_28, __deriv__(MATR2), __deriv__(ADJ_M1))
      CALL sax(OpenAD_Symbol_220, __deriv__(MATR2), __deriv__(ADJ_M2))
      CALL saxpy(OpenAD_acc_29, __deriv__(OpenAD_prop_16), __deriv__(
     > ADJ_M2))
      CALL saxpy(OpenAD_acc_30, __deriv__(G), __deriv__(ADJ_M2))
      CALL saxpy(OpenAD_acc_31, __deriv__(MATR1), __deriv__(ADJ_M2))
      CALL sax(OpenAD_Symbol_224, __deriv__(MATR3), __deriv__(ADJ_M3))
      CALL saxpy(OpenAD_acc_32, __deriv__(OpenAD_prop_16), __deriv__(
     > ADJ_M3))
      CALL saxpy(OpenAD_Symbol_225, __deriv__(G), __deriv__(ADJ_M3))
      CALL saxpy(OpenAD_Symbol_226, __deriv__(MATR0), __deriv__(ADJ_M3)
     > )
      CALL sax(OpenAD_Symbol_227, __deriv__(ADJ_M1), __deriv__(LOC1))
      CALL setderiv(__deriv__(G_OBJ0), __deriv__(OpenAD_prop_17))
      CALL dec_deriv(__deriv__(G_OBJ0), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(G_OBJ0), __deriv__(ADJ_M0))
      CALL setderiv(__deriv__(G_OBJ1), __deriv__(ADJ_M0))
      CALL inc_deriv(__deriv__(G_OBJ1), __deriv__(OpenAD_prop_18))
      CALL dec_deriv(__deriv__(G_OBJ1), __deriv__(LOC1))
      CALL setderiv(__deriv__(G_OBJ2), __deriv__(G_OBJ1))
      CALL saxpy(2.0D00, __deriv__(LOC1), __deriv__(G_OBJ2))
      __value__(LOC1) = (__value__(ADJ_M3) * SQRT3)
      OpenAD_Symbol_230 = SQRT3
      __value__(G_OBJ3) = (__value__(G_OBJ3) - __value__(ADJ_M2) -
     >  __value__(LOC1))
      __value__(G_OBJ4) = (__value__(ADJ_M2) + __value__(G_OBJ4) -
     >  __value__(LOC1))
      __value__(G_OBJ5) = (__value__(G_OBJ5) + __value__(LOC1) * 2.0D00
     > )
      OpenAD_Symbol_234 = (__value__(LOC2) * 2.0D00)
      __value__(LOC2) = OpenAD_Symbol_234
      __value__(R00) = (__value__(D00) * __value__(LOC2) + __value__(GG
     > ) * __value__(M33))
      OpenAD_Symbol_235 = __value__(LOC2)
      OpenAD_Symbol_236 = __value__(D00)
      OpenAD_Symbol_237 = __value__(M33)
      OpenAD_Symbol_238 = __value__(GG)
      __value__(R11) = (__value__(D11) * __value__(LOC2) + __value__(GG
     > ) * __value__(M22))
      OpenAD_Symbol_239 = __value__(LOC2)
      OpenAD_Symbol_240 = __value__(D11)
      OpenAD_Symbol_241 = __value__(M22)
      OpenAD_Symbol_242 = __value__(GG)
      R22 = (__value__(D11) * __value__(LOC2) + __value__(GG) *
     >  __value__(M11))
      R33 = (__value__(D00) * __value__(LOC2) + __value__(GG) *
     >  __value__(M00))
      __value__(M01) = (__value__(MATR0) * __value__(MATR1))
      OpenAD_Symbol_243 = __value__(MATR1)
      OpenAD_Symbol_244 = __value__(MATR0)
      __value__(M02) = (__value__(MATR0) * __value__(MATR2))
      OpenAD_Symbol_245 = __value__(MATR2)
      OpenAD_Symbol_246 = __value__(MATR0)
      __value__(M12) = (__value__(MATR1) * __value__(MATR2))
      OpenAD_Symbol_247 = __value__(MATR2)
      OpenAD_Symbol_248 = __value__(MATR1)
      __value__(M13) = (__value__(MATR1) * __value__(MATR3))
      OpenAD_Symbol_249 = __value__(MATR3)
      OpenAD_Symbol_250 = __value__(MATR1)
      __value__(M23) = (__value__(MATR2) * __value__(MATR3))
      OpenAD_Symbol_251 = __value__(MATR3)
      OpenAD_Symbol_252 = __value__(MATR2)
      OpenAD_Symbol_253 = (__value__(M02) + __value__(M13))
      __value__(D01) = (__value__(LOC2) * OpenAD_Symbol_253)
      OpenAD_Symbol_254 = OpenAD_Symbol_253
      OpenAD_Symbol_255 = __value__(LOC2)
      CALL setderiv(__deriv__(OpenAD_prop_19), __deriv__(G_OBJ3))
      CALL setderiv(__deriv__(OpenAD_prop_20), __deriv__(G_OBJ4))
      CALL setderiv(__deriv__(OpenAD_prop_21), __deriv__(G_OBJ5))
      CALL setderiv(__deriv__(OpenAD_prop_22), __deriv__(LOC2))
      CALL sax(OpenAD_Symbol_230, __deriv__(ADJ_M3), __deriv__(LOC1))
      CALL sax(2.0D00, __deriv__(OpenAD_prop_22), __deriv__(LOC2))
      CALL sax(OpenAD_Symbol_243, __deriv__(MATR0), __deriv__(M01))
      CALL saxpy(OpenAD_Symbol_244, __deriv__(MATR1), __deriv__(M01))
      CALL sax(OpenAD_Symbol_245, __deriv__(MATR0), __deriv__(M02))
      CALL saxpy(OpenAD_Symbol_246, __deriv__(MATR2), __deriv__(M02))
      CALL sax(OpenAD_Symbol_247, __deriv__(MATR1), __deriv__(M12))
      CALL saxpy(OpenAD_Symbol_248, __deriv__(MATR2), __deriv__(M12))
      CALL sax(OpenAD_Symbol_249, __deriv__(MATR1), __deriv__(M13))
      CALL saxpy(OpenAD_Symbol_250, __deriv__(MATR3), __deriv__(M13))
      CALL sax(OpenAD_Symbol_251, __deriv__(MATR2), __deriv__(M23))
      CALL saxpy(OpenAD_Symbol_252, __deriv__(MATR3), __deriv__(M23))
      CALL setderiv(__deriv__(OpenAD_prop_23), __deriv__(M02))
      CALL inc_deriv(__deriv__(OpenAD_prop_23), __deriv__(M13))
      CALL setderiv(__deriv__(G_OBJ3), __deriv__(OpenAD_prop_19))
      CALL dec_deriv(__deriv__(G_OBJ3), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(G_OBJ3), __deriv__(ADJ_M2))
      CALL setderiv(__deriv__(G_OBJ4), __deriv__(ADJ_M2))
      CALL inc_deriv(__deriv__(G_OBJ4), __deriv__(OpenAD_prop_20))
      CALL dec_deriv(__deriv__(G_OBJ4), __deriv__(LOC1))
      CALL setderiv(__deriv__(G_OBJ5), __deriv__(OpenAD_prop_21))
      CALL saxpy(2.0D00, __deriv__(LOC1), __deriv__(G_OBJ5))
      CALL sax(OpenAD_Symbol_235, __deriv__(D00), __deriv__(R00))
      CALL saxpy(OpenAD_Symbol_236, __deriv__(LOC2), __deriv__(R00))
      CALL saxpy(OpenAD_Symbol_237, __deriv__(GG), __deriv__(R00))
      CALL saxpy(OpenAD_Symbol_238, __deriv__(M33), __deriv__(R00))
      CALL sax(OpenAD_Symbol_239, __deriv__(D11), __deriv__(R11))
      CALL saxpy(OpenAD_Symbol_240, __deriv__(LOC2), __deriv__(R11))
      CALL saxpy(OpenAD_Symbol_241, __deriv__(GG), __deriv__(R11))
      CALL saxpy(OpenAD_Symbol_242, __deriv__(M22), __deriv__(R11))
      CALL sax(OpenAD_Symbol_254, __deriv__(LOC2), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_255, __deriv__(OpenAD_prop_23),
     >  __deriv__(D01))
      __value__(LOC1) = (__value__(R11) * THIRD)
      OpenAD_Symbol_256 = THIRD
      OpenAD_Symbol_258 = (__value__(D01) + __value__(GG) * __value__(
     > M23))
      __value__(F) = (TWOSQRT3 * OpenAD_Symbol_258)
      OpenAD_Symbol_261 = __value__(M23)
      OpenAD_Symbol_262 = __value__(GG)
      OpenAD_Symbol_260 = TWOSQRT3
      __value__(G) = (__value__(LOC1) + __value__(R00))
      __value__(H_OBJ1) = (__value__(H_OBJ1) + __value__(LOC1) -
     >  __value__(R00))
      __value__(H_OBJ0) = (__value__(F) + __value__(G) + __value__(
     > H_OBJ0))
      __value__(H_OBJ3) = (__value__(G) + __value__(H_OBJ3) - __value__
     > (F))
      CALL setderiv(__deriv__(OpenAD_prop_24), __deriv__(H_OBJ1))
      CALL setderiv(__deriv__(OpenAD_prop_25), __deriv__(H_OBJ0))
      CALL setderiv(__deriv__(OpenAD_prop_26), __deriv__(H_OBJ3))
      CALL sax(OpenAD_Symbol_256, __deriv__(R11), __deriv__(LOC1))
      CALL setderiv(__deriv__(G), __deriv__(LOC1))
      CALL inc_deriv(__deriv__(G), __deriv__(R00))
      CALL setderiv(__deriv__(OpenAD_prop_27), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_261, __deriv__(GG), __deriv__(
     > OpenAD_prop_27))
      CALL saxpy(OpenAD_Symbol_262, __deriv__(M23), __deriv__(
     > OpenAD_prop_27))
      CALL setderiv(__deriv__(H_OBJ1), __deriv__(OpenAD_prop_24))
      CALL inc_deriv(__deriv__(H_OBJ1), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ1), __deriv__(R00))
      CALL sax(OpenAD_Symbol_260, __deriv__(OpenAD_prop_27), __deriv__(
     > F))
      CALL setderiv(__deriv__(H_OBJ0), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ0), __deriv__(G))
      CALL inc_deriv(__deriv__(H_OBJ0), __deriv__(OpenAD_prop_25))
      CALL setderiv(__deriv__(H_OBJ3), __deriv__(G))
      CALL inc_deriv(__deriv__(H_OBJ3), __deriv__(OpenAD_prop_26))
      CALL dec_deriv(__deriv__(H_OBJ3), __deriv__(F))
      __value__(LOC1) = (-(__value__(R11) * TWO3RD))
      OpenAD_Symbol_263 = TWO3RD
      __value__(H_OBJ2) = (__value__(H_OBJ2) + __value__(LOC1) -
     >  __value__(F))
      __value__(H_OBJ4) = (__value__(F) + __value__(H_OBJ4) + __value__
     > (LOC1))
      __value__(H_OBJ5) = (__value__(H_OBJ5) + FOUR3RD * __value__(R11)
     > )
      OpenAD_Symbol_266 = FOUR3RD
      OpenAD_acc_33 = (OpenAD_Symbol_263 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_prop_28), __deriv__(H_OBJ2))
      CALL setderiv(__deriv__(OpenAD_prop_29), __deriv__(H_OBJ4))
      CALL setderiv(__deriv__(OpenAD_prop_30), __deriv__(H_OBJ5))
      CALL sax(OpenAD_acc_33, __deriv__(R11), __deriv__(LOC1))
      CALL setderiv(__deriv__(H_OBJ5), __deriv__(OpenAD_prop_30))
      CALL saxpy(OpenAD_Symbol_266, __deriv__(R11), __deriv__(H_OBJ5))
      CALL setderiv(__deriv__(H_OBJ2), __deriv__(OpenAD_prop_28))
      CALL inc_deriv(__deriv__(H_OBJ2), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ2), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ4), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ4), __deriv__(OpenAD_prop_29))
      CALL inc_deriv(__deriv__(H_OBJ4), __deriv__(LOC1))
      __value__(LOC1) = (__value__(R00) * THIRD)
      OpenAD_Symbol_267 = THIRD
      OpenAD_Symbol_269 = (__value__(D01) + __value__(GG) * __value__(
     > M01))
      __value__(F) = (TWOSQRT3 * OpenAD_Symbol_269)
      OpenAD_Symbol_272 = __value__(M01)
      OpenAD_Symbol_273 = __value__(GG)
      OpenAD_Symbol_271 = TWOSQRT3
      __value__(G) = (__value__(LOC1) + __value__(R11))
      __value__(H_OBJ16) = (__value__(H_OBJ16) + __value__(LOC1) -
     >  __value__(R11))
      __value__(H_OBJ15) = (__value__(F) + __value__(G) + __value__(
     > H_OBJ15))
      __value__(H_OBJ18) = (__value__(G) + __value__(H_OBJ18) -
     >  __value__(F))
      CALL setderiv(__deriv__(OpenAD_prop_31), __deriv__(H_OBJ16))
      CALL setderiv(__deriv__(OpenAD_prop_32), __deriv__(H_OBJ15))
      CALL setderiv(__deriv__(OpenAD_prop_33), __deriv__(H_OBJ18))
      CALL sax(OpenAD_Symbol_267, __deriv__(R00), __deriv__(LOC1))
      CALL setderiv(__deriv__(G), __deriv__(LOC1))
      CALL inc_deriv(__deriv__(G), __deriv__(R11))
      CALL setderiv(__deriv__(OpenAD_prop_34), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_272, __deriv__(GG), __deriv__(
     > OpenAD_prop_34))
      CALL saxpy(OpenAD_Symbol_273, __deriv__(M01), __deriv__(
     > OpenAD_prop_34))
      CALL setderiv(__deriv__(H_OBJ16), __deriv__(OpenAD_prop_31))
      CALL inc_deriv(__deriv__(H_OBJ16), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ16), __deriv__(R11))
      CALL sax(OpenAD_Symbol_271, __deriv__(OpenAD_prop_34), __deriv__(
     > F))
      CALL setderiv(__deriv__(H_OBJ15), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ15), __deriv__(G))
      CALL inc_deriv(__deriv__(H_OBJ15), __deriv__(OpenAD_prop_32))
      CALL setderiv(__deriv__(H_OBJ18), __deriv__(G))
      CALL inc_deriv(__deriv__(H_OBJ18), __deriv__(OpenAD_prop_33))
      CALL dec_deriv(__deriv__(H_OBJ18), __deriv__(F))
      __value__(LOC1) = (-(__value__(R00) * TWO3RD))
      OpenAD_Symbol_274 = TWO3RD
      __value__(H_OBJ17) = (__value__(H_OBJ17) + __value__(LOC1) -
     >  __value__(F))
      __value__(H_OBJ19) = (__value__(F) + __value__(H_OBJ19) +
     >  __value__(LOC1))
      __value__(H_OBJ20) = (__value__(H_OBJ20) + FOUR3RD * __value__(
     > R00))
      OpenAD_Symbol_277 = FOUR3RD
      OpenAD_acc_34 = (OpenAD_Symbol_274 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_prop_35), __deriv__(H_OBJ17))
      CALL setderiv(__deriv__(OpenAD_prop_36), __deriv__(H_OBJ19))
      CALL setderiv(__deriv__(OpenAD_prop_37), __deriv__(H_OBJ20))
      CALL sax(OpenAD_acc_34, __deriv__(R00), __deriv__(LOC1))
      CALL setderiv(__deriv__(H_OBJ20), __deriv__(OpenAD_prop_37))
      CALL saxpy(OpenAD_Symbol_277, __deriv__(R00), __deriv__(H_OBJ20))
      CALL setderiv(__deriv__(H_OBJ17), __deriv__(OpenAD_prop_35))
      CALL inc_deriv(__deriv__(H_OBJ17), __deriv__(LOC1))
      CALL dec_deriv(__deriv__(H_OBJ17), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ19), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ19), __deriv__(OpenAD_prop_36))
      CALL inc_deriv(__deriv__(H_OBJ19), __deriv__(LOC1))
      OpenAD_Symbol_278 = (__value__(M01) + __value__(M23))
      __value__(LOC1) = (__value__(LOC2) * OpenAD_Symbol_278)
      OpenAD_Symbol_279 = OpenAD_Symbol_278
      OpenAD_Symbol_280 = __value__(LOC2)
      __value__(R13) = (__value__(LOC1) + __value__(GG) * __value__(M02
     > ))
      OpenAD_Symbol_281 = __value__(M02)
      OpenAD_Symbol_282 = __value__(GG)
      __value__(R02) = (__value__(LOC1) + __value__(GG) * __value__(M13
     > ))
      OpenAD_Symbol_283 = __value__(M13)
      OpenAD_Symbol_284 = __value__(GG)
      __value__(R03) = (__value__(D03) * __value__(LOC2) + __value__(GG
     > ) * __value__(M03))
      OpenAD_Symbol_285 = __value__(LOC2)
      OpenAD_Symbol_286 = __value__(D03)
      OpenAD_Symbol_287 = __value__(M03)
      OpenAD_Symbol_288 = __value__(GG)
      __value__(R12) = (__value__(D12) * __value__(LOC2) + __value__(GG
     > ) * __value__(M12))
      OpenAD_Symbol_289 = __value__(LOC2)
      OpenAD_Symbol_290 = __value__(D12)
      OpenAD_Symbol_291 = __value__(M12)
      OpenAD_Symbol_292 = __value__(GG)
      __value__(G) = (-(__value__(R13) * TWO3RD))
      OpenAD_Symbol_293 = TWO3RD
      __value__(F) = (__value__(R03) * TWOSQRT3)
      OpenAD_Symbol_295 = TWOSQRT3
      __value__(H_OBJ8) = (__value__(G) + __value__(H_OBJ8) - __value__
     > (F))
      __value__(H_OBJ11) = (__value__(F) + __value__(G) + __value__(
     > H_OBJ11))
      OpenAD_acc_35 = (OpenAD_Symbol_293 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_prop_38), __deriv__(H_OBJ8))
      CALL setderiv(__deriv__(OpenAD_prop_39), __deriv__(H_OBJ11))
      CALL setderiv(__deriv__(OpenAD_prop_40), __deriv__(M01))
      CALL inc_deriv(__deriv__(OpenAD_prop_40), __deriv__(M23))
      CALL sax(OpenAD_Symbol_279, __deriv__(LOC2), __deriv__(LOC1))
      CALL saxpy(OpenAD_Symbol_280, __deriv__(OpenAD_prop_40),
     >  __deriv__(LOC1))
      CALL setderiv(__deriv__(R13), __deriv__(LOC1))
      CALL saxpy(OpenAD_Symbol_281, __deriv__(GG), __deriv__(R13))
      CALL saxpy(OpenAD_Symbol_282, __deriv__(M02), __deriv__(R13))
      CALL setderiv(__deriv__(R02), __deriv__(LOC1))
      CALL saxpy(OpenAD_Symbol_283, __deriv__(GG), __deriv__(R02))
      CALL saxpy(OpenAD_Symbol_284, __deriv__(M13), __deriv__(R02))
      CALL sax(OpenAD_Symbol_285, __deriv__(D03), __deriv__(R03))
      CALL saxpy(OpenAD_Symbol_286, __deriv__(LOC2), __deriv__(R03))
      CALL saxpy(OpenAD_Symbol_287, __deriv__(GG), __deriv__(R03))
      CALL saxpy(OpenAD_Symbol_288, __deriv__(M03), __deriv__(R03))
      CALL sax(OpenAD_Symbol_289, __deriv__(D12), __deriv__(R12))
      CALL saxpy(OpenAD_Symbol_290, __deriv__(LOC2), __deriv__(R12))
      CALL saxpy(OpenAD_Symbol_291, __deriv__(GG), __deriv__(R12))
      CALL saxpy(OpenAD_Symbol_292, __deriv__(M12), __deriv__(R12))
      CALL sax(OpenAD_Symbol_295, __deriv__(R03), __deriv__(F))
      CALL sax(OpenAD_acc_35, __deriv__(R13), __deriv__(G))
      CALL setderiv(__deriv__(H_OBJ8), __deriv__(G))
      CALL inc_deriv(__deriv__(H_OBJ8), __deriv__(OpenAD_prop_38))
      CALL dec_deriv(__deriv__(H_OBJ8), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ11), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ11), __deriv__(G))
      CALL inc_deriv(__deriv__(H_OBJ11), __deriv__(OpenAD_prop_39))
      __value__(F) = (__value__(R12) * TWOSQRT3)
      OpenAD_Symbol_297 = TWOSQRT3
      __value__(H_OBJ12) = (__value__(G) + __value__(H_OBJ12) -
     >  __value__(F))
      __value__(H_OBJ13) = (__value__(F) + __value__(G) + __value__(
     > H_OBJ13))
      __value__(H_OBJ14) = (__value__(H_OBJ14) + __value__(R13) *
     >  1.2D+01)
      __value__(G) = (FOUR3RD * __value__(R02))
      OpenAD_Symbol_301 = FOUR3RD
      CALL setderiv(__deriv__(OpenAD_prop_41), __deriv__(G))
      CALL setderiv(__deriv__(OpenAD_prop_42), __deriv__(H_OBJ12))
      CALL setderiv(__deriv__(OpenAD_prop_43), __deriv__(H_OBJ13))
      CALL setderiv(__deriv__(OpenAD_prop_44), __deriv__(H_OBJ14))
      CALL sax(OpenAD_Symbol_297, __deriv__(R12), __deriv__(F))
      CALL sax(OpenAD_Symbol_301, __deriv__(R02), __deriv__(G))
      CALL setderiv(__deriv__(H_OBJ12), __deriv__(OpenAD_prop_41))
      CALL inc_deriv(__deriv__(H_OBJ12), __deriv__(OpenAD_prop_42))
      CALL dec_deriv(__deriv__(H_OBJ12), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ13), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ13), __deriv__(OpenAD_prop_41))
      CALL inc_deriv(__deriv__(H_OBJ13), __deriv__(OpenAD_prop_43))
      CALL setderiv(__deriv__(H_OBJ14), __deriv__(OpenAD_prop_44))
      CALL saxpy(1.2D+01, __deriv__(R13), __deriv__(H_OBJ14))
      OpenAD_Symbol_302 = (__value__(R03) + __value__(R12))
      __value__(F) = (SQRT3 * OpenAD_Symbol_302)
      OpenAD_Symbol_304 = SQRT3
      __value__(H_OBJ10) = (__value__(G) + __value__(H_OBJ10) -
     >  __value__(F))
      __value__(H_OBJ6) = (__value__(F) + __value__(G) + __value__(
     > H_OBJ6))
      __value__(G) = (__value__(R02) * TWO3RD)
      OpenAD_Symbol_305 = TWO3RD
      CALL setderiv(__deriv__(OpenAD_prop_45), __deriv__(G))
      CALL setderiv(__deriv__(OpenAD_prop_46), __deriv__(H_OBJ10))
      CALL setderiv(__deriv__(OpenAD_prop_47), __deriv__(H_OBJ6))
      CALL setderiv(__deriv__(OpenAD_prop_48), __deriv__(R03))
      CALL inc_deriv(__deriv__(OpenAD_prop_48), __deriv__(R12))
      CALL sax(OpenAD_Symbol_305, __deriv__(R02), __deriv__(G))
      CALL sax(OpenAD_Symbol_304, __deriv__(OpenAD_prop_48), __deriv__(
     > F))
      CALL setderiv(__deriv__(H_OBJ10), __deriv__(OpenAD_prop_45))
      CALL inc_deriv(__deriv__(H_OBJ10), __deriv__(OpenAD_prop_46))
      CALL dec_deriv(__deriv__(H_OBJ10), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ6), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ6), __deriv__(OpenAD_prop_45))
      CALL inc_deriv(__deriv__(H_OBJ6), __deriv__(OpenAD_prop_47))
      OpenAD_Symbol_307 = (__value__(R03) - __value__(R12))
      __value__(F) = (SQRT3 * OpenAD_Symbol_307)
      OpenAD_Symbol_309 = SQRT3
      __value__(H_OBJ9) = (__value__(G) + __value__(H_OBJ9) - __value__
     > (F))
      __value__(H_OBJ7) = (__value__(F) + __value__(G) + __value__(
     > H_OBJ7))
      __value__(Y01) = __value__(OBJ)
      __value__(Y02) = __value__(G_OBJ0)
      __value__(Y03) = __value__(G_OBJ1)
      __value__(Y04) = __value__(G_OBJ2)
      __value__(Y05) = __value__(G_OBJ3)
      __value__(Y06) = __value__(G_OBJ4)
      __value__(Y07) = __value__(G_OBJ5)
      __value__(Y08) = __value__(H_OBJ0)
      __value__(Y09) = __value__(H_OBJ1)
      __value__(Y10) = __value__(H_OBJ2)
      __value__(Y11) = __value__(H_OBJ3)
      __value__(Y12) = __value__(H_OBJ4)
      __value__(Y13) = __value__(H_OBJ5)
      __value__(Y14) = __value__(H_OBJ6)
      __value__(Y15) = __value__(H_OBJ7)
      __value__(Y16) = __value__(H_OBJ8)
      __value__(Y17) = __value__(H_OBJ9)
      __value__(Y18) = __value__(H_OBJ10)
      __value__(Y19) = __value__(H_OBJ11)
      __value__(Y20) = __value__(H_OBJ12)
      __value__(Y21) = __value__(H_OBJ13)
      __value__(Y22) = __value__(H_OBJ14)
      __value__(Y23) = __value__(H_OBJ15)
      __value__(Y24) = __value__(H_OBJ16)
      __value__(Y25) = __value__(H_OBJ17)
      __value__(Y26) = __value__(H_OBJ18)
      __value__(Y27) = __value__(H_OBJ19)
      __value__(Y28) = __value__(H_OBJ20)
      CALL setderiv(__deriv__(OpenAD_prop_49), __deriv__(R03))
      CALL dec_deriv(__deriv__(OpenAD_prop_49), __deriv__(R12))
      CALL setderiv(__deriv__(Y01), __deriv__(OBJ))
      CALL setderiv(__deriv__(Y02), __deriv__(G_OBJ0))
      CALL setderiv(__deriv__(Y03), __deriv__(G_OBJ1))
      CALL setderiv(__deriv__(Y04), __deriv__(G_OBJ2))
      CALL setderiv(__deriv__(Y05), __deriv__(G_OBJ3))
      CALL setderiv(__deriv__(Y06), __deriv__(G_OBJ4))
      CALL setderiv(__deriv__(Y07), __deriv__(G_OBJ5))
      CALL setderiv(__deriv__(Y08), __deriv__(H_OBJ0))
      CALL setderiv(__deriv__(Y09), __deriv__(H_OBJ1))
      CALL setderiv(__deriv__(Y10), __deriv__(H_OBJ2))
      CALL setderiv(__deriv__(Y11), __deriv__(H_OBJ3))
      CALL setderiv(__deriv__(Y12), __deriv__(H_OBJ4))
      CALL setderiv(__deriv__(Y13), __deriv__(H_OBJ5))
      CALL setderiv(__deriv__(Y14), __deriv__(H_OBJ6))
      CALL setderiv(__deriv__(Y16), __deriv__(H_OBJ8))
      CALL setderiv(__deriv__(Y18), __deriv__(H_OBJ10))
      CALL setderiv(__deriv__(Y19), __deriv__(H_OBJ11))
      CALL setderiv(__deriv__(Y20), __deriv__(H_OBJ12))
      CALL setderiv(__deriv__(Y21), __deriv__(H_OBJ13))
      CALL setderiv(__deriv__(Y22), __deriv__(H_OBJ14))
      CALL setderiv(__deriv__(Y23), __deriv__(H_OBJ15))
      CALL setderiv(__deriv__(Y24), __deriv__(H_OBJ16))
      CALL setderiv(__deriv__(Y25), __deriv__(H_OBJ17))
      CALL setderiv(__deriv__(Y26), __deriv__(H_OBJ18))
      CALL setderiv(__deriv__(Y27), __deriv__(H_OBJ19))
      CALL setderiv(__deriv__(Y28), __deriv__(H_OBJ20))
      CALL sax(OpenAD_Symbol_309, __deriv__(OpenAD_prop_49), __deriv__(
     > F))
      CALL setderiv(__deriv__(Y15), __deriv__(F))
      CALL inc_deriv(__deriv__(Y15), __deriv__(G))
      CALL inc_deriv(__deriv__(Y15), __deriv__(H_OBJ7))
      CALL setderiv(__deriv__(Y17), __deriv__(G))
      CALL inc_deriv(__deriv__(Y17), __deriv__(H_OBJ9))
      CALL dec_deriv(__deriv__(Y17), __deriv__(F))
      END SUBROUTINE
