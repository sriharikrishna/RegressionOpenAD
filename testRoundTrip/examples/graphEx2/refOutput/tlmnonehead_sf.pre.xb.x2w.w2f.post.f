
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
      SUBROUTINE head(X01, X02, X03, X04, X05, X06, Y01, Y02, Y03, Y04, 
     +Y05, Y06, Y07, Y08, Y09, Y10, Y11, Y12, Y13, Y14, Y15, Y16, Y17 , 
     +Y18, Y19, Y20, Y21, Y22, Y23, Y24, Y25, Y26, Y27, Y28)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_234
      REAL(w2f__8) OpenAD_Symbol_79
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
      type(active) :: OpenAD_prop_32
      type(active) :: OpenAD_prop_33
      type(active) :: OpenAD_prop_34
      type(active) :: OpenAD_prop_35
      type(active) :: OpenAD_prop_36
      type(active) :: OpenAD_prop_37
      type(active) :: OpenAD_prop_38
      type(active) :: OpenAD_prop_39
      type(active) :: OpenAD_prop_4
      type(active) :: OpenAD_prop_40
      type(active) :: OpenAD_prop_41
      type(active) :: OpenAD_prop_42
      type(active) :: OpenAD_prop_43
      type(active) :: OpenAD_prop_44
      type(active) :: OpenAD_prop_45
      type(active) :: OpenAD_prop_46
      type(active) :: OpenAD_prop_47
      type(active) :: OpenAD_prop_48
      type(active) :: OpenAD_prop_49
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
      type(active) :: Y01
      INTENT(OUT) Y01
      type(active) :: Y02
      INTENT(OUT) Y02
      type(active) :: Y03
      INTENT(OUT) Y03
      type(active) :: Y04
      INTENT(OUT) Y04
      type(active) :: Y05
      INTENT(OUT) Y05
      type(active) :: Y06
      INTENT(OUT) Y06
      type(active) :: Y07
      INTENT(OUT) Y07
      type(active) :: Y08
      INTENT(OUT) Y08
      type(active) :: Y09
      INTENT(OUT) Y09
      type(active) :: Y10
      INTENT(OUT) Y10
      type(active) :: Y11
      INTENT(OUT) Y11
      type(active) :: Y12
      INTENT(OUT) Y12
      type(active) :: Y13
      INTENT(OUT) Y13
      type(active) :: Y14
      INTENT(OUT) Y14
      type(active) :: Y15
      INTENT(OUT) Y15
      type(active) :: Y16
      INTENT(OUT) Y16
      type(active) :: Y17
      INTENT(OUT) Y17
      type(active) :: Y18
      INTENT(OUT) Y18
      type(active) :: Y19
      INTENT(OUT) Y19
      type(active) :: Y20
      INTENT(OUT) Y20
      type(active) :: Y21
      INTENT(OUT) Y21
      type(active) :: Y22
      INTENT(OUT) Y22
      type(active) :: Y23
      INTENT(OUT) Y23
      type(active) :: Y24
      INTENT(OUT) Y24
      type(active) :: Y25
      INTENT(OUT) Y25
      type(active) :: Y26
      INTENT(OUT) Y26
      type(active) :: Y27
      INTENT(OUT) Y27
      type(active) :: Y28
      INTENT(OUT) Y28
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) AB
      type(active) :: ADJ_M0
      type(active) :: ADJ_M1
      type(active) :: ADJ_M2
      type(active) :: ADJ_M3
      REAL(w2f__8) B
      REAL(w2f__8) BM1
      type(active) :: D00
      type(active) :: D01
      type(active) :: D03
      type(active) :: D11
      type(active) :: D12
      type(active) :: F
      REAL(w2f__8) FOUR3RD
      type(active) :: G
      type(active) :: GG
      type(active) :: G_OBJ0
      type(active) :: G_OBJ1
      type(active) :: G_OBJ2
      type(active) :: G_OBJ3
      type(active) :: G_OBJ4
      type(active) :: G_OBJ5
      type(active) :: H_OBJ0
      type(active) :: H_OBJ1
      type(active) :: H_OBJ10
      type(active) :: H_OBJ11
      type(active) :: H_OBJ12
      type(active) :: H_OBJ13
      type(active) :: H_OBJ14
      type(active) :: H_OBJ15
      type(active) :: H_OBJ16
      type(active) :: H_OBJ17
      type(active) :: H_OBJ18
      type(active) :: H_OBJ19
      type(active) :: H_OBJ2
      type(active) :: H_OBJ20
      type(active) :: H_OBJ3
      type(active) :: H_OBJ4
      type(active) :: H_OBJ5
      type(active) :: H_OBJ6
      type(active) :: H_OBJ7
      type(active) :: H_OBJ8
      type(active) :: H_OBJ9
      type(active) :: LOC1
      type(active) :: LOC2
      type(active) :: M00
      type(active) :: M01
      type(active) :: M02
      type(active) :: M03
      type(active) :: M11
      type(active) :: M12
      type(active) :: M13
      type(active) :: M22
      type(active) :: M23
      type(active) :: M33
      type(active) :: MATR0
      type(active) :: MATR1
      type(active) :: MATR2
      type(active) :: MATR3
      type(active) :: OBJ
      type(active) :: R00
      type(active) :: R02
      type(active) :: R03
      type(active) :: R11
      type(active) :: R12
      type(active) :: R13
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
      REAL(w2f__8) OpenAD_Symbol_310
      REAL(w2f__8) OpenAD_Symbol_311
      REAL(w2f__8) OpenAD_Symbol_312
      REAL(w2f__8) OpenAD_Symbol_313
      REAL(w2f__8) OpenAD_Symbol_314
      REAL(w2f__8) OpenAD_Symbol_315
      REAL(w2f__8) OpenAD_Symbol_316
      REAL(w2f__8) OpenAD_Symbol_317
      REAL(w2f__8) OpenAD_Symbol_318
      REAL(w2f__8) OpenAD_Symbol_319
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_320
      REAL(w2f__8) OpenAD_Symbol_321
      REAL(w2f__8) OpenAD_Symbol_322
      REAL(w2f__8) OpenAD_Symbol_323
      REAL(w2f__8) OpenAD_Symbol_324
      REAL(w2f__8) OpenAD_Symbol_325
      REAL(w2f__8) OpenAD_Symbol_326
      REAL(w2f__8) OpenAD_Symbol_327
      REAL(w2f__8) OpenAD_Symbol_328
      REAL(w2f__8) OpenAD_Symbol_329
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_330
      REAL(w2f__8) OpenAD_Symbol_331
      REAL(w2f__8) OpenAD_Symbol_332
      REAL(w2f__8) OpenAD_Symbol_333
      REAL(w2f__8) OpenAD_Symbol_334
      REAL(w2f__8) OpenAD_Symbol_335
      REAL(w2f__8) OpenAD_Symbol_336
      REAL(w2f__8) OpenAD_Symbol_337
      REAL(w2f__8) OpenAD_Symbol_338
      REAL(w2f__8) OpenAD_Symbol_339
      REAL(w2f__8) OpenAD_Symbol_340
      REAL(w2f__8) OpenAD_Symbol_341
      REAL(w2f__8) OpenAD_Symbol_342
      REAL(w2f__8) OpenAD_Symbol_343
      REAL(w2f__8) OpenAD_Symbol_344
      REAL(w2f__8) OpenAD_Symbol_345
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
      MATR0%v = (X02%v-X01%v)
      OpenAD_Symbol_0 = (X03%v*2.0D00-X02%v-X01%v)
      MATR1%v = (SQRT3*OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
      MATR2%v = (X05%v-X04%v)
      OpenAD_Symbol_4 = (X06%v*2.0D00-X05%v-X04%v)
      MATR3%v = (SQRT3*OpenAD_Symbol_4)
      OpenAD_Symbol_6 = SQRT3
      M03%v = (MATR0%v*MATR3%v)
      OpenAD_Symbol_8 = MATR3%v
      OpenAD_Symbol_9 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_Symbol_10 = MATR2%v
      OpenAD_Symbol_11 = MATR1%v
      G%v = (M03%v-M12%v)
      D00%v = (M03%v*2.0D00)
      D11%v = (M12%v*2.0D00)
      M00%v = (MATR0%v*MATR0%v)
      OpenAD_Symbol_14 = MATR0%v
      OpenAD_Symbol_15 = MATR0%v
      M11%v = (MATR1%v*MATR1%v)
      OpenAD_Symbol_16 = MATR1%v
      OpenAD_Symbol_17 = MATR1%v
      M22%v = (MATR2%v*MATR2%v)
      OpenAD_Symbol_18 = MATR2%v
      OpenAD_Symbol_19 = MATR2%v
      M33%v = (MATR3%v*MATR3%v)
      OpenAD_Symbol_20 = MATR3%v
      OpenAD_Symbol_21 = MATR3%v
      D12%v = (M00%v*M33%v)
      OpenAD_Symbol_22 = M33%v
      OpenAD_Symbol_23 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_Symbol_24 = M22%v
      OpenAD_Symbol_25 = M11%v
      F%v = (D03%v+D12%v)
      OpenAD_Symbol_26 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_Symbol_26)
      OpenAD_Symbol_30 = (-(1.0D00/(G%v*G%v)))
      OpenAD_Symbol_28 = A
      OBJ%v = (F%v*LOC1%v)
      OpenAD_Symbol_31 = LOC1%v
      OpenAD_Symbol_32 = F%v
      OpenAD_Symbol_36 = (G%v*G%v)
      OpenAD_Symbol_33 = (1.0D00/OpenAD_Symbol_36)
      LOC2%v = (AB*OpenAD_Symbol_33)
      OpenAD_Symbol_39 = G%v
      OpenAD_Symbol_40 = G%v
      OpenAD_Symbol_38 = (-(1.0D00/(OpenAD_Symbol_36*OpenAD_Symbol_36)))
      OpenAD_Symbol_35 = AB
      OpenAD_Symbol_41 = (AB*B)
      OpenAD_Symbol_48 = (G%v*G%v)
      OpenAD_Symbol_45 = (G%v*OpenAD_Symbol_48)
      OpenAD_Symbol_42 = (1.0D00/OpenAD_Symbol_45)
      GG%v = (OpenAD_Symbol_41*OpenAD_Symbol_42)
      OpenAD_Symbol_49 = OpenAD_Symbol_48
      OpenAD_Symbol_51 = G%v
      OpenAD_Symbol_52 = G%v
      OpenAD_Symbol_50 = G%v
      OpenAD_Symbol_47 = (-(1.0D00/(OpenAD_Symbol_45*OpenAD_Symbol_45)))
      OpenAD_Symbol_44 = OpenAD_Symbol_41
      OpenAD_Symbol_310 = (OpenAD_Symbol_30*OpenAD_Symbol_28)
      OpenAD_Symbol_311 = (OpenAD_Symbol_14+OpenAD_Symbol_15)
      OpenAD_Symbol_312 = (OpenAD_Symbol_16+OpenAD_Symbol_17)
      OpenAD_Symbol_313 = (OpenAD_Symbol_18+OpenAD_Symbol_19)
      OpenAD_Symbol_314 = (OpenAD_Symbol_20+OpenAD_Symbol_21)
      OpenAD_Symbol_315 = ((OpenAD_Symbol_49+(OpenAD_Symbol_51+OpenAD_Sy
     +mbol_52)*OpenAD_Symbol_50)*OpenAD_Symbol_47*OpenAD_Symbol_44)
      OpenAD_Symbol_316 = ((OpenAD_Symbol_39+OpenAD_Symbol_40)*OpenAD_Sy
     +mbol_38*OpenAD_Symbol_35)
      CALL setderiv(MATR0,X02)
      CALL dec_deriv(MATR0,X01)
      CALL setderiv(MATR2,X05)
      CALL dec_deriv(MATR2,X04)
      CALL sax(OpenAD_Symbol_311,MATR0,M00)
      CALL sax(OpenAD_Symbol_313,MATR2,M22)
      CALL set_neg_deriv(OpenAD_prop_0,X01)
      CALL dec_deriv(OpenAD_prop_0,X02)
      CALL saxpy(2.0D00,X03,OpenAD_prop_0)
      CALL set_neg_deriv(OpenAD_prop_1,X04)
      CALL dec_deriv(OpenAD_prop_1,X05)
      CALL saxpy(2.0D00,X06,OpenAD_prop_1)
      CALL sax(OpenAD_Symbol_2,OpenAD_prop_0,MATR1)
      CALL sax(OpenAD_Symbol_6,OpenAD_prop_1,MATR3)
      CALL sax(OpenAD_Symbol_8,MATR0,M03)
      CALL saxpy(OpenAD_Symbol_9,MATR3,M03)
      CALL sax(OpenAD_Symbol_10,MATR1,M12)
      CALL saxpy(OpenAD_Symbol_11,MATR2,M12)
      CALL setderiv(G,M03)
      CALL dec_deriv(G,M12)
      CALL sax(2.0D00,M03,D00)
      CALL sax(2.0D00,M12,D11)
      CALL sax(OpenAD_Symbol_312,MATR1,M11)
      CALL sax(OpenAD_Symbol_314,MATR3,M33)
      CALL sax(OpenAD_Symbol_22,M00,D12)
      CALL saxpy(OpenAD_Symbol_23,M33,D12)
      CALL sax(OpenAD_Symbol_24,M11,D03)
      CALL saxpy(OpenAD_Symbol_25,M22,D03)
      CALL setderiv(F,D03)
      CALL inc_deriv(F,D12)
      CALL sax(OpenAD_Symbol_310,G,LOC1)
      CALL sax(OpenAD_Symbol_31,F,OBJ)
      CALL saxpy(OpenAD_Symbol_32,LOC1,OBJ)
      CALL sax(OpenAD_Symbol_316,G,LOC2)
      CALL sax(OpenAD_Symbol_315,G,GG)
      G%v = (F%v*LOC2%v)
      OpenAD_Symbol_53 = LOC2%v
      OpenAD_Symbol_54 = F%v
      F%v = (LOC1%v*2.0D00)
      ADJ_M0%v = (F%v*MATR0%v+G%v*MATR3%v)
      OpenAD_Symbol_56 = MATR0%v
      OpenAD_Symbol_57 = F%v
      OpenAD_Symbol_58 = MATR3%v
      OpenAD_Symbol_59 = G%v
      ADJ_M1%v = (F%v*MATR1%v-G%v*MATR2%v)
      OpenAD_Symbol_60 = MATR1%v
      OpenAD_Symbol_61 = F%v
      OpenAD_Symbol_62 = MATR2%v
      OpenAD_Symbol_63 = G%v
      ADJ_M2%v = (F%v*MATR2%v-G%v*MATR1%v)
      OpenAD_Symbol_64 = MATR2%v
      OpenAD_Symbol_65 = F%v
      OpenAD_Symbol_66 = MATR1%v
      OpenAD_Symbol_67 = G%v
      ADJ_M3%v = (F%v*MATR3%v+G%v*MATR0%v)
      OpenAD_Symbol_68 = MATR3%v
      OpenAD_Symbol_69 = F%v
      OpenAD_Symbol_70 = MATR0%v
      OpenAD_Symbol_71 = G%v
      LOC1%v = (ADJ_M1%v*SQRT3)
      OpenAD_Symbol_72 = SQRT3
      G_OBJ0%v = (-(ADJ_M0%v+LOC1%v))
      G_OBJ1%v = (ADJ_M0%v-LOC1%v)
      G_OBJ2%v = (LOC1%v*2.0D00)
      OpenAD_Symbol_317 = (2.0D00*OpenAD_Symbol_56)
      OpenAD_Symbol_318 = (2.0D00*OpenAD_Symbol_60)
      OpenAD_Symbol_319 = (OpenAD_Symbol_62*INT((-1_w2f__i8)))
      OpenAD_Symbol_320 = (OpenAD_Symbol_63*INT((-1_w2f__i8)))
      OpenAD_Symbol_321 = (2.0D00*OpenAD_Symbol_64)
      OpenAD_Symbol_322 = (OpenAD_Symbol_66*INT((-1_w2f__i8)))
      OpenAD_Symbol_323 = (OpenAD_Symbol_67*INT((-1_w2f__i8)))
      OpenAD_Symbol_324 = (2.0D00*OpenAD_Symbol_68)
      CALL setderiv(OpenAD_prop_2,LOC1)
      CALL sax(OpenAD_Symbol_53,F,G)
      CALL saxpy(OpenAD_Symbol_54,LOC2,G)
      CALL sax(OpenAD_Symbol_57,MATR0,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_317,OpenAD_prop_2,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_58,G,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_59,MATR3,ADJ_M0)
      CALL sax(OpenAD_Symbol_61,MATR1,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_318,OpenAD_prop_2,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_319,G,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_320,MATR2,ADJ_M1)
      CALL sax(OpenAD_Symbol_65,MATR2,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_321,OpenAD_prop_2,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_322,G,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_323,MATR1,ADJ_M2)
      CALL sax(OpenAD_Symbol_69,MATR3,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_324,OpenAD_prop_2,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_70,G,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_71,MATR0,ADJ_M3)
      CALL sax(OpenAD_Symbol_72,ADJ_M1,LOC1)
      CALL setderiv(G_OBJ1,ADJ_M0)
      CALL dec_deriv(G_OBJ1,LOC1)
      CALL sax(2.0D00,LOC1,G_OBJ2)
      CALL set_neg_deriv(G_OBJ0,ADJ_M0)
      CALL dec_deriv(G_OBJ0,LOC1)
      LOC1%v = (ADJ_M3%v*SQRT3)
      OpenAD_Symbol_75 = SQRT3
      G_OBJ3%v = (-(ADJ_M2%v+LOC1%v))
      G_OBJ4%v = (ADJ_M2%v-LOC1%v)
      G_OBJ5%v = (LOC1%v*2.0D00)
      OpenAD_Symbol_79 = (LOC2%v*2.0D00)
      LOC2%v = OpenAD_Symbol_79
      R00%v = (D00%v*LOC2%v+GG%v*M33%v)
      OpenAD_Symbol_80 = LOC2%v
      OpenAD_Symbol_81 = D00%v
      OpenAD_Symbol_82 = M33%v
      OpenAD_Symbol_83 = GG%v
      R11%v = (D11%v*LOC2%v+GG%v*M22%v)
      OpenAD_Symbol_84 = LOC2%v
      OpenAD_Symbol_85 = D11%v
      OpenAD_Symbol_86 = M22%v
      OpenAD_Symbol_87 = GG%v
      R22 = (D11%v*LOC2%v+GG%v*M11%v)
      R33 = (D00%v*LOC2%v+GG%v*M00%v)
      M01%v = (MATR0%v*MATR1%v)
      OpenAD_Symbol_88 = MATR1%v
      OpenAD_Symbol_89 = MATR0%v
      M02%v = (MATR0%v*MATR2%v)
      OpenAD_Symbol_90 = MATR2%v
      OpenAD_Symbol_91 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_Symbol_92 = MATR2%v
      OpenAD_Symbol_93 = MATR1%v
      M13%v = (MATR1%v*MATR3%v)
      OpenAD_Symbol_94 = MATR3%v
      OpenAD_Symbol_95 = MATR1%v
      M23%v = (MATR2%v*MATR3%v)
      OpenAD_Symbol_96 = MATR3%v
      OpenAD_Symbol_97 = MATR2%v
      OpenAD_Symbol_98 = (M02%v+M13%v)
      D01%v = (LOC2%v*OpenAD_Symbol_98)
      OpenAD_Symbol_99 = OpenAD_Symbol_98
      OpenAD_Symbol_100 = LOC2%v
      CALL setderiv(OpenAD_prop_3,LOC2)
      CALL sax(OpenAD_Symbol_75,ADJ_M3,LOC1)
      CALL setderiv(G_OBJ4,ADJ_M2)
      CALL dec_deriv(G_OBJ4,LOC1)
      CALL sax(2.0D00,LOC1,G_OBJ5)
      CALL sax(2.0D00,OpenAD_prop_3,LOC2)
      CALL sax(OpenAD_Symbol_88,MATR0,M01)
      CALL saxpy(OpenAD_Symbol_89,MATR1,M01)
      CALL sax(OpenAD_Symbol_90,MATR0,M02)
      CALL saxpy(OpenAD_Symbol_91,MATR2,M02)
      CALL sax(OpenAD_Symbol_92,MATR1,M12)
      CALL saxpy(OpenAD_Symbol_93,MATR2,M12)
      CALL sax(OpenAD_Symbol_94,MATR1,M13)
      CALL saxpy(OpenAD_Symbol_95,MATR3,M13)
      CALL sax(OpenAD_Symbol_96,MATR2,M23)
      CALL saxpy(OpenAD_Symbol_97,MATR3,M23)
      CALL setderiv(OpenAD_prop_4,M02)
      CALL inc_deriv(OpenAD_prop_4,M13)
      CALL set_neg_deriv(G_OBJ3,ADJ_M2)
      CALL dec_deriv(G_OBJ3,LOC1)
      CALL sax(OpenAD_Symbol_80,D00,R00)
      CALL saxpy(OpenAD_Symbol_81,LOC2,R00)
      CALL saxpy(OpenAD_Symbol_82,GG,R00)
      CALL saxpy(OpenAD_Symbol_83,M33,R00)
      CALL sax(OpenAD_Symbol_84,D11,R11)
      CALL saxpy(OpenAD_Symbol_85,LOC2,R11)
      CALL saxpy(OpenAD_Symbol_86,GG,R11)
      CALL saxpy(OpenAD_Symbol_87,M22,R11)
      CALL sax(OpenAD_Symbol_99,LOC2,D01)
      CALL saxpy(OpenAD_Symbol_100,OpenAD_prop_4,D01)
      LOC1%v = (R11%v*THIRD)
      OpenAD_Symbol_101 = THIRD
      OpenAD_Symbol_103 = (D01%v+GG%v*M23%v)
      F%v = (TWOSQRT3*OpenAD_Symbol_103)
      OpenAD_Symbol_106 = M23%v
      OpenAD_Symbol_107 = GG%v
      OpenAD_Symbol_105 = TWOSQRT3
      G%v = (LOC1%v+R00%v)
      H_OBJ1%v = (LOC1%v-R00%v)
      H_OBJ0%v = (F%v+G%v)
      H_OBJ3%v = (G%v-F%v)
      CALL sax(OpenAD_Symbol_101,R11,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R00)
      CALL setderiv(H_OBJ1,LOC1)
      CALL dec_deriv(H_OBJ1,R00)
      CALL setderiv(OpenAD_prop_5,D01)
      CALL saxpy(OpenAD_Symbol_106,GG,OpenAD_prop_5)
      CALL saxpy(OpenAD_Symbol_107,M23,OpenAD_prop_5)
      CALL sax(OpenAD_Symbol_105,OpenAD_prop_5,F)
      CALL setderiv(H_OBJ0,F)
      CALL inc_deriv(H_OBJ0,G)
      CALL setderiv(H_OBJ3,G)
      CALL dec_deriv(H_OBJ3,F)
      LOC1%v = (-(R11%v*TWO3RD))
      OpenAD_Symbol_108 = TWO3RD
      H_OBJ2%v = (LOC1%v-F%v)
      H_OBJ4%v = (F%v+LOC1%v)
      H_OBJ5%v = (FOUR3RD*R11%v)
      OpenAD_Symbol_111 = FOUR3RD
      OpenAD_Symbol_325 = (OpenAD_Symbol_108*INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_111,R11,H_OBJ5)
      CALL sax(OpenAD_Symbol_325,R11,LOC1)
      CALL setderiv(H_OBJ2,LOC1)
      CALL dec_deriv(H_OBJ2,F)
      CALL setderiv(H_OBJ4,F)
      CALL inc_deriv(H_OBJ4,LOC1)
      LOC1%v = (R00%v*THIRD)
      OpenAD_Symbol_112 = THIRD
      OpenAD_Symbol_114 = (D01%v+GG%v*M01%v)
      F%v = (TWOSQRT3*OpenAD_Symbol_114)
      OpenAD_Symbol_117 = M01%v
      OpenAD_Symbol_118 = GG%v
      OpenAD_Symbol_116 = TWOSQRT3
      G%v = (LOC1%v+R11%v)
      H_OBJ16%v = (LOC1%v-R11%v)
      H_OBJ15%v = (F%v+G%v)
      H_OBJ18%v = (G%v-F%v)
      CALL sax(OpenAD_Symbol_112,R00,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R11)
      CALL setderiv(H_OBJ16,LOC1)
      CALL dec_deriv(H_OBJ16,R11)
      CALL setderiv(OpenAD_prop_6,D01)
      CALL saxpy(OpenAD_Symbol_117,GG,OpenAD_prop_6)
      CALL saxpy(OpenAD_Symbol_118,M01,OpenAD_prop_6)
      CALL sax(OpenAD_Symbol_116,OpenAD_prop_6,F)
      CALL setderiv(H_OBJ15,F)
      CALL inc_deriv(H_OBJ15,G)
      CALL setderiv(H_OBJ18,G)
      CALL dec_deriv(H_OBJ18,F)
      LOC1%v = (-(R00%v*TWO3RD))
      OpenAD_Symbol_119 = TWO3RD
      H_OBJ17%v = (LOC1%v-F%v)
      H_OBJ19%v = (F%v+LOC1%v)
      H_OBJ20%v = (FOUR3RD*R00%v)
      OpenAD_Symbol_122 = FOUR3RD
      OpenAD_Symbol_326 = (OpenAD_Symbol_119*INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_122,R00,H_OBJ20)
      CALL sax(OpenAD_Symbol_326,R00,LOC1)
      CALL setderiv(H_OBJ17,LOC1)
      CALL dec_deriv(H_OBJ17,F)
      CALL setderiv(H_OBJ19,F)
      CALL inc_deriv(H_OBJ19,LOC1)
      OpenAD_Symbol_123 = (M01%v+M23%v)
      LOC1%v = (LOC2%v*OpenAD_Symbol_123)
      OpenAD_Symbol_124 = OpenAD_Symbol_123
      OpenAD_Symbol_125 = LOC2%v
      R13%v = (LOC1%v+GG%v*M02%v)
      OpenAD_Symbol_126 = M02%v
      OpenAD_Symbol_127 = GG%v
      R02%v = (LOC1%v+GG%v*M13%v)
      OpenAD_Symbol_128 = M13%v
      OpenAD_Symbol_129 = GG%v
      R03%v = (D03%v*LOC2%v+GG%v*M03%v)
      OpenAD_Symbol_130 = LOC2%v
      OpenAD_Symbol_131 = D03%v
      OpenAD_Symbol_132 = M03%v
      OpenAD_Symbol_133 = GG%v
      R12%v = (D12%v*LOC2%v+GG%v*M12%v)
      OpenAD_Symbol_134 = LOC2%v
      OpenAD_Symbol_135 = D12%v
      OpenAD_Symbol_136 = M12%v
      OpenAD_Symbol_137 = GG%v
      G%v = (-(R13%v*TWO3RD))
      OpenAD_Symbol_138 = TWO3RD
      F%v = (R03%v*TWOSQRT3)
      OpenAD_Symbol_140 = TWOSQRT3
      H_OBJ8%v = (G%v-F%v)
      H_OBJ11%v = (F%v+G%v)
      OpenAD_Symbol_327 = (OpenAD_Symbol_138*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_7,M01)
      CALL inc_deriv(OpenAD_prop_7,M23)
      CALL sax(OpenAD_Symbol_124,LOC2,LOC1)
      CALL saxpy(OpenAD_Symbol_125,OpenAD_prop_7,LOC1)
      CALL setderiv(R13,LOC1)
      CALL saxpy(OpenAD_Symbol_126,GG,R13)
      CALL saxpy(OpenAD_Symbol_127,M02,R13)
      CALL setderiv(R02,LOC1)
      CALL saxpy(OpenAD_Symbol_128,GG,R02)
      CALL saxpy(OpenAD_Symbol_129,M13,R02)
      CALL sax(OpenAD_Symbol_130,D03,R03)
      CALL saxpy(OpenAD_Symbol_131,LOC2,R03)
      CALL saxpy(OpenAD_Symbol_132,GG,R03)
      CALL saxpy(OpenAD_Symbol_133,M03,R03)
      CALL sax(OpenAD_Symbol_134,D12,R12)
      CALL saxpy(OpenAD_Symbol_135,LOC2,R12)
      CALL saxpy(OpenAD_Symbol_136,GG,R12)
      CALL saxpy(OpenAD_Symbol_137,M12,R12)
      CALL sax(OpenAD_Symbol_140,R03,F)
      CALL sax(OpenAD_Symbol_327,R13,G)
      CALL setderiv(H_OBJ8,G)
      CALL dec_deriv(H_OBJ8,F)
      CALL setderiv(H_OBJ11,F)
      CALL inc_deriv(H_OBJ11,G)
      F%v = (R12%v*TWOSQRT3)
      OpenAD_Symbol_142 = TWOSQRT3
      H_OBJ12%v = (G%v-F%v)
      H_OBJ13%v = (F%v+G%v)
      H_OBJ14%v = (R13%v*1.2D+01)
      G%v = (FOUR3RD*R02%v)
      OpenAD_Symbol_146 = FOUR3RD
      CALL setderiv(OpenAD_prop_8,G)
      CALL sax(OpenAD_Symbol_142,R12,F)
      CALL setderiv(H_OBJ12,OpenAD_prop_8)
      CALL dec_deriv(H_OBJ12,F)
      CALL setderiv(H_OBJ13,F)
      CALL inc_deriv(H_OBJ13,OpenAD_prop_8)
      CALL sax(1.2D+01,R13,H_OBJ14)
      CALL sax(OpenAD_Symbol_146,R02,G)
      OpenAD_Symbol_147 = (R03%v+R12%v)
      F%v = (SQRT3*OpenAD_Symbol_147)
      OpenAD_Symbol_149 = SQRT3
      H_OBJ10%v = (G%v-F%v)
      H_OBJ6%v = (F%v+G%v)
      G%v = (R02%v*TWO3RD)
      OpenAD_Symbol_150 = TWO3RD
      CALL setderiv(OpenAD_prop_9,G)
      CALL setderiv(OpenAD_prop_10,R03)
      CALL inc_deriv(OpenAD_prop_10,R12)
      CALL sax(OpenAD_Symbol_150,R02,G)
      CALL sax(OpenAD_Symbol_149,OpenAD_prop_10,F)
      CALL setderiv(H_OBJ10,OpenAD_prop_9)
      CALL dec_deriv(H_OBJ10,F)
      CALL setderiv(H_OBJ6,F)
      CALL inc_deriv(H_OBJ6,OpenAD_prop_9)
      OpenAD_Symbol_152 = (R03%v-R12%v)
      F%v = (SQRT3*OpenAD_Symbol_152)
      OpenAD_Symbol_154 = SQRT3
      H_OBJ9%v = (G%v-F%v)
      H_OBJ7%v = (F%v+G%v)
      MATR0%v = (G_OBJ1%v-G_OBJ0%v)
      OpenAD_Symbol_155 = (G_OBJ2%v*2.0D00-G_OBJ1%v-G_OBJ2%v)
      MATR1%v = (SQRT3*OpenAD_Symbol_155)
      OpenAD_Symbol_157 = SQRT3
      MATR2%v = (G_OBJ4%v-G_OBJ3%v)
      OpenAD_Symbol_159 = (G_OBJ5%v*2.0D00-G_OBJ4%v-G_OBJ3%v)
      MATR3%v = (SQRT3*OpenAD_Symbol_159)
      OpenAD_Symbol_161 = SQRT3
      M03%v = (MATR0%v*MATR3%v)
      OpenAD_Symbol_163 = MATR3%v
      OpenAD_Symbol_164 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_Symbol_165 = MATR2%v
      OpenAD_Symbol_166 = MATR1%v
      G%v = (M03%v-M12%v)
      D00%v = (M03%v*2.0D00)
      D11%v = (M12%v*2.0D00)
      M00%v = (MATR0%v*MATR0%v)
      OpenAD_Symbol_169 = MATR0%v
      OpenAD_Symbol_170 = MATR0%v
      M11%v = (MATR1%v*MATR1%v)
      OpenAD_Symbol_171 = MATR1%v
      OpenAD_Symbol_172 = MATR1%v
      M22%v = (MATR2%v*MATR2%v)
      OpenAD_Symbol_173 = MATR2%v
      OpenAD_Symbol_174 = MATR2%v
      M33%v = (MATR3%v*MATR3%v)
      OpenAD_Symbol_175 = MATR3%v
      OpenAD_Symbol_176 = MATR3%v
      D12%v = (M00%v*M33%v)
      OpenAD_Symbol_177 = M33%v
      OpenAD_Symbol_178 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_Symbol_179 = M22%v
      OpenAD_Symbol_180 = M11%v
      OpenAD_Symbol_328 = (OpenAD_Symbol_169+OpenAD_Symbol_170)
      OpenAD_Symbol_329 = (OpenAD_Symbol_171+OpenAD_Symbol_172)
      OpenAD_Symbol_330 = (OpenAD_Symbol_173+OpenAD_Symbol_174)
      OpenAD_Symbol_331 = (OpenAD_Symbol_175+OpenAD_Symbol_176)
      CALL setderiv(OpenAD_prop_11,G)
      CALL setderiv(OpenAD_prop_12,R03)
      CALL dec_deriv(OpenAD_prop_12,R12)
      CALL setderiv(MATR0,G_OBJ1)
      CALL dec_deriv(MATR0,G_OBJ0)
      CALL setderiv(MATR2,G_OBJ4)
      CALL dec_deriv(MATR2,G_OBJ3)
      CALL sax(OpenAD_Symbol_328,MATR0,M00)
      CALL sax(OpenAD_Symbol_330,MATR2,M22)
      CALL sax(OpenAD_Symbol_154,OpenAD_prop_12,F)
      CALL setderiv(H_OBJ9,OpenAD_prop_11)
      CALL dec_deriv(H_OBJ9,F)
      CALL setderiv(H_OBJ7,F)
      CALL inc_deriv(H_OBJ7,OpenAD_prop_11)
      CALL set_neg_deriv(OpenAD_prop_13,G_OBJ1)
      CALL saxpy(1.0D00,G_OBJ2,OpenAD_prop_13)
      CALL set_neg_deriv(OpenAD_prop_14,G_OBJ3)
      CALL dec_deriv(OpenAD_prop_14,G_OBJ4)
      CALL saxpy(2.0D00,G_OBJ5,OpenAD_prop_14)
      CALL sax(OpenAD_Symbol_157,OpenAD_prop_13,MATR1)
      CALL sax(OpenAD_Symbol_161,OpenAD_prop_14,MATR3)
      CALL sax(OpenAD_Symbol_163,MATR0,M03)
      CALL saxpy(OpenAD_Symbol_164,MATR3,M03)
      CALL sax(OpenAD_Symbol_165,MATR1,M12)
      CALL saxpy(OpenAD_Symbol_166,MATR2,M12)
      CALL setderiv(G,M03)
      CALL dec_deriv(G,M12)
      CALL sax(2.0D00,M03,D00)
      CALL sax(2.0D00,M12,D11)
      CALL sax(OpenAD_Symbol_329,MATR1,M11)
      CALL sax(OpenAD_Symbol_331,MATR3,M33)
      CALL sax(OpenAD_Symbol_177,M00,D12)
      CALL saxpy(OpenAD_Symbol_178,M33,D12)
      CALL sax(OpenAD_Symbol_179,M11,D03)
      CALL saxpy(OpenAD_Symbol_180,M22,D03)
      F%v = (D03%v+D12%v)
      OpenAD_Symbol_181 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_Symbol_181)
      OpenAD_Symbol_185 = (-(1.0D00/(G%v*G%v)))
      OpenAD_Symbol_183 = A
      OBJ%v = (F%v*LOC1%v)
      OpenAD_Symbol_186 = LOC1%v
      OpenAD_Symbol_187 = F%v
      OpenAD_Symbol_191 = (G%v*G%v)
      OpenAD_Symbol_188 = (1.0D00/OpenAD_Symbol_191)
      LOC2%v = (AB*OpenAD_Symbol_188)
      OpenAD_Symbol_194 = G%v
      OpenAD_Symbol_195 = G%v
      OpenAD_Symbol_193 = (-(1.0D00/(OpenAD_Symbol_191*OpenAD_Symbol_191
     +)))
      OpenAD_Symbol_190 = AB
      OpenAD_Symbol_196 = (AB*B)
      OpenAD_Symbol_203 = (G%v*G%v)
      OpenAD_Symbol_200 = (G%v*OpenAD_Symbol_203)
      OpenAD_Symbol_197 = (1.0D00/OpenAD_Symbol_200)
      GG%v = (OpenAD_Symbol_196*OpenAD_Symbol_197)
      OpenAD_Symbol_204 = OpenAD_Symbol_203
      OpenAD_Symbol_206 = G%v
      OpenAD_Symbol_207 = G%v
      OpenAD_Symbol_205 = G%v
      OpenAD_Symbol_202 = (-(1.0D00/(OpenAD_Symbol_200*OpenAD_Symbol_200
     +)))
      OpenAD_Symbol_199 = OpenAD_Symbol_196
      G%v = (F%v*LOC2%v)
      OpenAD_Symbol_208 = LOC2%v
      OpenAD_Symbol_209 = F%v
      OpenAD_Symbol_332 = (OpenAD_Symbol_185*OpenAD_Symbol_183)
      OpenAD_Symbol_333 = ((OpenAD_Symbol_204+(OpenAD_Symbol_206+OpenAD_
     +Symbol_207)*OpenAD_Symbol_205)*OpenAD_Symbol_202*OpenAD_Symbol_199
     +)
      OpenAD_Symbol_334 = ((OpenAD_Symbol_194+OpenAD_Symbol_195)*OpenAD_
     +Symbol_193*OpenAD_Symbol_190)
      CALL setderiv(OpenAD_prop_15,G)
      CALL setderiv(F,D03)
      CALL inc_deriv(F,D12)
      CALL sax(OpenAD_Symbol_332,OpenAD_prop_15,LOC1)
      CALL sax(OpenAD_Symbol_186,F,OBJ)
      CALL saxpy(OpenAD_Symbol_187,LOC1,OBJ)
      CALL sax(OpenAD_Symbol_334,OpenAD_prop_15,LOC2)
      CALL sax(OpenAD_Symbol_208,F,G)
      CALL saxpy(OpenAD_Symbol_209,LOC2,G)
      CALL sax(OpenAD_Symbol_333,OpenAD_prop_15,GG)
      F%v = (LOC1%v*2.0D00)
      ADJ_M0%v = (F%v*MATR0%v+G%v*MATR3%v)
      OpenAD_Symbol_211 = MATR0%v
      OpenAD_Symbol_212 = F%v
      OpenAD_Symbol_213 = MATR3%v
      OpenAD_Symbol_214 = G%v
      ADJ_M1%v = (F%v*MATR1%v-G%v*MATR2%v)
      OpenAD_Symbol_215 = MATR1%v
      OpenAD_Symbol_216 = F%v
      OpenAD_Symbol_217 = MATR2%v
      OpenAD_Symbol_218 = G%v
      ADJ_M2%v = (F%v*MATR2%v-G%v*MATR1%v)
      OpenAD_Symbol_219 = MATR2%v
      OpenAD_Symbol_220 = F%v
      OpenAD_Symbol_221 = MATR1%v
      OpenAD_Symbol_222 = G%v
      ADJ_M3%v = (F%v*MATR3%v+G%v*MATR0%v)
      OpenAD_Symbol_223 = MATR3%v
      OpenAD_Symbol_224 = F%v
      OpenAD_Symbol_225 = MATR0%v
      OpenAD_Symbol_226 = G%v
      LOC1%v = (ADJ_M1%v*SQRT3)
      OpenAD_Symbol_227 = SQRT3
      G_OBJ0%v = (G_OBJ0%v-ADJ_M0%v-LOC1%v)
      G_OBJ1%v = (ADJ_M0%v+G_OBJ1%v-LOC1%v)
      G_OBJ2%v = (G_OBJ1%v+LOC1%v*2.0D00)
      OpenAD_Symbol_335 = (2.0D00*OpenAD_Symbol_211)
      OpenAD_Symbol_336 = (2.0D00*OpenAD_Symbol_215)
      OpenAD_Symbol_337 = (OpenAD_Symbol_217*INT((-1_w2f__i8)))
      OpenAD_Symbol_338 = (OpenAD_Symbol_218*INT((-1_w2f__i8)))
      OpenAD_Symbol_339 = (2.0D00*OpenAD_Symbol_219)
      OpenAD_Symbol_340 = (OpenAD_Symbol_221*INT((-1_w2f__i8)))
      OpenAD_Symbol_341 = (OpenAD_Symbol_222*INT((-1_w2f__i8)))
      OpenAD_Symbol_342 = (2.0D00*OpenAD_Symbol_223)
      CALL setderiv(OpenAD_prop_16,LOC1)
      CALL setderiv(OpenAD_prop_17,G_OBJ0)
      CALL setderiv(OpenAD_prop_18,G_OBJ1)
      CALL sax(OpenAD_Symbol_212,MATR0,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_335,OpenAD_prop_16,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_213,G,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_214,MATR3,ADJ_M0)
      CALL sax(OpenAD_Symbol_216,MATR1,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_336,OpenAD_prop_16,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_337,G,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_338,MATR2,ADJ_M1)
      CALL sax(OpenAD_Symbol_220,MATR2,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_339,OpenAD_prop_16,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_340,G,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_341,MATR1,ADJ_M2)
      CALL sax(OpenAD_Symbol_224,MATR3,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_342,OpenAD_prop_16,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_225,G,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_226,MATR0,ADJ_M3)
      CALL sax(OpenAD_Symbol_227,ADJ_M1,LOC1)
      CALL setderiv(G_OBJ0,OpenAD_prop_17)
      CALL dec_deriv(G_OBJ0,LOC1)
      CALL dec_deriv(G_OBJ0,ADJ_M0)
      CALL setderiv(G_OBJ1,ADJ_M0)
      CALL inc_deriv(G_OBJ1,OpenAD_prop_18)
      CALL dec_deriv(G_OBJ1,LOC1)
      CALL setderiv(G_OBJ2,G_OBJ1)
      CALL saxpy(2.0D00,LOC1,G_OBJ2)
      LOC1%v = (ADJ_M3%v*SQRT3)
      OpenAD_Symbol_230 = SQRT3
      G_OBJ3%v = (G_OBJ3%v-ADJ_M2%v-LOC1%v)
      G_OBJ4%v = (ADJ_M2%v+G_OBJ4%v-LOC1%v)
      G_OBJ5%v = (G_OBJ5%v+LOC1%v*2.0D00)
      OpenAD_Symbol_234 = (LOC2%v*2.0D00)
      LOC2%v = OpenAD_Symbol_234
      R00%v = (D00%v*LOC2%v+GG%v*M33%v)
      OpenAD_Symbol_235 = LOC2%v
      OpenAD_Symbol_236 = D00%v
      OpenAD_Symbol_237 = M33%v
      OpenAD_Symbol_238 = GG%v
      R11%v = (D11%v*LOC2%v+GG%v*M22%v)
      OpenAD_Symbol_239 = LOC2%v
      OpenAD_Symbol_240 = D11%v
      OpenAD_Symbol_241 = M22%v
      OpenAD_Symbol_242 = GG%v
      R22 = (D11%v*LOC2%v+GG%v*M11%v)
      R33 = (D00%v*LOC2%v+GG%v*M00%v)
      M01%v = (MATR0%v*MATR1%v)
      OpenAD_Symbol_243 = MATR1%v
      OpenAD_Symbol_244 = MATR0%v
      M02%v = (MATR0%v*MATR2%v)
      OpenAD_Symbol_245 = MATR2%v
      OpenAD_Symbol_246 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_Symbol_247 = MATR2%v
      OpenAD_Symbol_248 = MATR1%v
      M13%v = (MATR1%v*MATR3%v)
      OpenAD_Symbol_249 = MATR3%v
      OpenAD_Symbol_250 = MATR1%v
      M23%v = (MATR2%v*MATR3%v)
      OpenAD_Symbol_251 = MATR3%v
      OpenAD_Symbol_252 = MATR2%v
      OpenAD_Symbol_253 = (M02%v+M13%v)
      D01%v = (LOC2%v*OpenAD_Symbol_253)
      OpenAD_Symbol_254 = OpenAD_Symbol_253
      OpenAD_Symbol_255 = LOC2%v
      CALL setderiv(OpenAD_prop_19,G_OBJ3)
      CALL setderiv(OpenAD_prop_20,G_OBJ4)
      CALL setderiv(OpenAD_prop_21,G_OBJ5)
      CALL setderiv(OpenAD_prop_22,LOC2)
      CALL sax(OpenAD_Symbol_230,ADJ_M3,LOC1)
      CALL sax(2.0D00,OpenAD_prop_22,LOC2)
      CALL sax(OpenAD_Symbol_243,MATR0,M01)
      CALL saxpy(OpenAD_Symbol_244,MATR1,M01)
      CALL sax(OpenAD_Symbol_245,MATR0,M02)
      CALL saxpy(OpenAD_Symbol_246,MATR2,M02)
      CALL sax(OpenAD_Symbol_247,MATR1,M12)
      CALL saxpy(OpenAD_Symbol_248,MATR2,M12)
      CALL sax(OpenAD_Symbol_249,MATR1,M13)
      CALL saxpy(OpenAD_Symbol_250,MATR3,M13)
      CALL sax(OpenAD_Symbol_251,MATR2,M23)
      CALL saxpy(OpenAD_Symbol_252,MATR3,M23)
      CALL setderiv(OpenAD_prop_23,M02)
      CALL inc_deriv(OpenAD_prop_23,M13)
      CALL setderiv(G_OBJ3,OpenAD_prop_19)
      CALL dec_deriv(G_OBJ3,LOC1)
      CALL dec_deriv(G_OBJ3,ADJ_M2)
      CALL setderiv(G_OBJ4,ADJ_M2)
      CALL inc_deriv(G_OBJ4,OpenAD_prop_20)
      CALL dec_deriv(G_OBJ4,LOC1)
      CALL setderiv(G_OBJ5,OpenAD_prop_21)
      CALL saxpy(2.0D00,LOC1,G_OBJ5)
      CALL sax(OpenAD_Symbol_235,D00,R00)
      CALL saxpy(OpenAD_Symbol_236,LOC2,R00)
      CALL saxpy(OpenAD_Symbol_237,GG,R00)
      CALL saxpy(OpenAD_Symbol_238,M33,R00)
      CALL sax(OpenAD_Symbol_239,D11,R11)
      CALL saxpy(OpenAD_Symbol_240,LOC2,R11)
      CALL saxpy(OpenAD_Symbol_241,GG,R11)
      CALL saxpy(OpenAD_Symbol_242,M22,R11)
      CALL sax(OpenAD_Symbol_254,LOC2,D01)
      CALL saxpy(OpenAD_Symbol_255,OpenAD_prop_23,D01)
      LOC1%v = (R11%v*THIRD)
      OpenAD_Symbol_256 = THIRD
      OpenAD_Symbol_258 = (D01%v+GG%v*M23%v)
      F%v = (TWOSQRT3*OpenAD_Symbol_258)
      OpenAD_Symbol_261 = M23%v
      OpenAD_Symbol_262 = GG%v
      OpenAD_Symbol_260 = TWOSQRT3
      G%v = (LOC1%v+R00%v)
      H_OBJ1%v = (H_OBJ1%v+LOC1%v-R00%v)
      H_OBJ0%v = (F%v+G%v+H_OBJ0%v)
      H_OBJ3%v = (G%v+H_OBJ3%v-F%v)
      CALL setderiv(OpenAD_prop_24,H_OBJ1)
      CALL setderiv(OpenAD_prop_25,H_OBJ0)
      CALL setderiv(OpenAD_prop_26,H_OBJ3)
      CALL sax(OpenAD_Symbol_256,R11,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R00)
      CALL setderiv(OpenAD_prop_27,D01)
      CALL saxpy(OpenAD_Symbol_261,GG,OpenAD_prop_27)
      CALL saxpy(OpenAD_Symbol_262,M23,OpenAD_prop_27)
      CALL setderiv(H_OBJ1,OpenAD_prop_24)
      CALL inc_deriv(H_OBJ1,LOC1)
      CALL dec_deriv(H_OBJ1,R00)
      CALL sax(OpenAD_Symbol_260,OpenAD_prop_27,F)
      CALL setderiv(H_OBJ0,F)
      CALL inc_deriv(H_OBJ0,G)
      CALL inc_deriv(H_OBJ0,OpenAD_prop_25)
      CALL setderiv(H_OBJ3,G)
      CALL inc_deriv(H_OBJ3,OpenAD_prop_26)
      CALL dec_deriv(H_OBJ3,F)
      LOC1%v = (-(R11%v*TWO3RD))
      OpenAD_Symbol_263 = TWO3RD
      H_OBJ2%v = (H_OBJ2%v+LOC1%v-F%v)
      H_OBJ4%v = (F%v+H_OBJ4%v+LOC1%v)
      H_OBJ5%v = (H_OBJ5%v+FOUR3RD*R11%v)
      OpenAD_Symbol_266 = FOUR3RD
      OpenAD_Symbol_343 = (OpenAD_Symbol_263*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_28,H_OBJ2)
      CALL setderiv(OpenAD_prop_29,H_OBJ4)
      CALL setderiv(OpenAD_prop_30,H_OBJ5)
      CALL sax(OpenAD_Symbol_343,R11,LOC1)
      CALL setderiv(H_OBJ5,OpenAD_prop_30)
      CALL saxpy(OpenAD_Symbol_266,R11,H_OBJ5)
      CALL setderiv(H_OBJ2,OpenAD_prop_28)
      CALL inc_deriv(H_OBJ2,LOC1)
      CALL dec_deriv(H_OBJ2,F)
      CALL setderiv(H_OBJ4,F)
      CALL inc_deriv(H_OBJ4,OpenAD_prop_29)
      CALL inc_deriv(H_OBJ4,LOC1)
      LOC1%v = (R00%v*THIRD)
      OpenAD_Symbol_267 = THIRD
      OpenAD_Symbol_269 = (D01%v+GG%v*M01%v)
      F%v = (TWOSQRT3*OpenAD_Symbol_269)
      OpenAD_Symbol_272 = M01%v
      OpenAD_Symbol_273 = GG%v
      OpenAD_Symbol_271 = TWOSQRT3
      G%v = (LOC1%v+R11%v)
      H_OBJ16%v = (H_OBJ16%v+LOC1%v-R11%v)
      H_OBJ15%v = (F%v+G%v+H_OBJ15%v)
      H_OBJ18%v = (G%v+H_OBJ18%v-F%v)
      CALL setderiv(OpenAD_prop_31,H_OBJ16)
      CALL setderiv(OpenAD_prop_32,H_OBJ15)
      CALL setderiv(OpenAD_prop_33,H_OBJ18)
      CALL sax(OpenAD_Symbol_267,R00,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R11)
      CALL setderiv(OpenAD_prop_34,D01)
      CALL saxpy(OpenAD_Symbol_272,GG,OpenAD_prop_34)
      CALL saxpy(OpenAD_Symbol_273,M01,OpenAD_prop_34)
      CALL setderiv(H_OBJ16,OpenAD_prop_31)
      CALL inc_deriv(H_OBJ16,LOC1)
      CALL dec_deriv(H_OBJ16,R11)
      CALL sax(OpenAD_Symbol_271,OpenAD_prop_34,F)
      CALL setderiv(H_OBJ15,F)
      CALL inc_deriv(H_OBJ15,G)
      CALL inc_deriv(H_OBJ15,OpenAD_prop_32)
      CALL setderiv(H_OBJ18,G)
      CALL inc_deriv(H_OBJ18,OpenAD_prop_33)
      CALL dec_deriv(H_OBJ18,F)
      LOC1%v = (-(R00%v*TWO3RD))
      OpenAD_Symbol_274 = TWO3RD
      H_OBJ17%v = (H_OBJ17%v+LOC1%v-F%v)
      H_OBJ19%v = (F%v+H_OBJ19%v+LOC1%v)
      H_OBJ20%v = (H_OBJ20%v+FOUR3RD*R00%v)
      OpenAD_Symbol_277 = FOUR3RD
      OpenAD_Symbol_344 = (OpenAD_Symbol_274*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_35,H_OBJ17)
      CALL setderiv(OpenAD_prop_36,H_OBJ19)
      CALL setderiv(OpenAD_prop_37,H_OBJ20)
      CALL sax(OpenAD_Symbol_344,R00,LOC1)
      CALL setderiv(H_OBJ20,OpenAD_prop_37)
      CALL saxpy(OpenAD_Symbol_277,R00,H_OBJ20)
      CALL setderiv(H_OBJ17,OpenAD_prop_35)
      CALL inc_deriv(H_OBJ17,LOC1)
      CALL dec_deriv(H_OBJ17,F)
      CALL setderiv(H_OBJ19,F)
      CALL inc_deriv(H_OBJ19,OpenAD_prop_36)
      CALL inc_deriv(H_OBJ19,LOC1)
      OpenAD_Symbol_278 = (M01%v+M23%v)
      LOC1%v = (LOC2%v*OpenAD_Symbol_278)
      OpenAD_Symbol_279 = OpenAD_Symbol_278
      OpenAD_Symbol_280 = LOC2%v
      R13%v = (LOC1%v+GG%v*M02%v)
      OpenAD_Symbol_281 = M02%v
      OpenAD_Symbol_282 = GG%v
      R02%v = (LOC1%v+GG%v*M13%v)
      OpenAD_Symbol_283 = M13%v
      OpenAD_Symbol_284 = GG%v
      R03%v = (D03%v*LOC2%v+GG%v*M03%v)
      OpenAD_Symbol_285 = LOC2%v
      OpenAD_Symbol_286 = D03%v
      OpenAD_Symbol_287 = M03%v
      OpenAD_Symbol_288 = GG%v
      R12%v = (D12%v*LOC2%v+GG%v*M12%v)
      OpenAD_Symbol_289 = LOC2%v
      OpenAD_Symbol_290 = D12%v
      OpenAD_Symbol_291 = M12%v
      OpenAD_Symbol_292 = GG%v
      G%v = (-(R13%v*TWO3RD))
      OpenAD_Symbol_293 = TWO3RD
      F%v = (R03%v*TWOSQRT3)
      OpenAD_Symbol_295 = TWOSQRT3
      H_OBJ8%v = (G%v+H_OBJ8%v-F%v)
      H_OBJ11%v = (F%v+G%v+H_OBJ11%v)
      OpenAD_Symbol_345 = (OpenAD_Symbol_293*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_38,H_OBJ8)
      CALL setderiv(OpenAD_prop_39,H_OBJ11)
      CALL setderiv(OpenAD_prop_40,M01)
      CALL inc_deriv(OpenAD_prop_40,M23)
      CALL sax(OpenAD_Symbol_279,LOC2,LOC1)
      CALL saxpy(OpenAD_Symbol_280,OpenAD_prop_40,LOC1)
      CALL setderiv(R13,LOC1)
      CALL saxpy(OpenAD_Symbol_281,GG,R13)
      CALL saxpy(OpenAD_Symbol_282,M02,R13)
      CALL setderiv(R02,LOC1)
      CALL saxpy(OpenAD_Symbol_283,GG,R02)
      CALL saxpy(OpenAD_Symbol_284,M13,R02)
      CALL sax(OpenAD_Symbol_285,D03,R03)
      CALL saxpy(OpenAD_Symbol_286,LOC2,R03)
      CALL saxpy(OpenAD_Symbol_287,GG,R03)
      CALL saxpy(OpenAD_Symbol_288,M03,R03)
      CALL sax(OpenAD_Symbol_289,D12,R12)
      CALL saxpy(OpenAD_Symbol_290,LOC2,R12)
      CALL saxpy(OpenAD_Symbol_291,GG,R12)
      CALL saxpy(OpenAD_Symbol_292,M12,R12)
      CALL sax(OpenAD_Symbol_295,R03,F)
      CALL sax(OpenAD_Symbol_345,R13,G)
      CALL setderiv(H_OBJ8,G)
      CALL inc_deriv(H_OBJ8,OpenAD_prop_38)
      CALL dec_deriv(H_OBJ8,F)
      CALL setderiv(H_OBJ11,F)
      CALL inc_deriv(H_OBJ11,G)
      CALL inc_deriv(H_OBJ11,OpenAD_prop_39)
      F%v = (R12%v*TWOSQRT3)
      OpenAD_Symbol_297 = TWOSQRT3
      H_OBJ12%v = (G%v+H_OBJ12%v-F%v)
      H_OBJ13%v = (F%v+G%v+H_OBJ13%v)
      H_OBJ14%v = (H_OBJ14%v+R13%v*1.2D+01)
      G%v = (FOUR3RD*R02%v)
      OpenAD_Symbol_301 = FOUR3RD
      CALL setderiv(OpenAD_prop_41,G)
      CALL setderiv(OpenAD_prop_42,H_OBJ12)
      CALL setderiv(OpenAD_prop_43,H_OBJ13)
      CALL setderiv(OpenAD_prop_44,H_OBJ14)
      CALL sax(OpenAD_Symbol_297,R12,F)
      CALL sax(OpenAD_Symbol_301,R02,G)
      CALL setderiv(H_OBJ12,OpenAD_prop_41)
      CALL inc_deriv(H_OBJ12,OpenAD_prop_42)
      CALL dec_deriv(H_OBJ12,F)
      CALL setderiv(H_OBJ13,F)
      CALL inc_deriv(H_OBJ13,OpenAD_prop_41)
      CALL inc_deriv(H_OBJ13,OpenAD_prop_43)
      CALL setderiv(H_OBJ14,OpenAD_prop_44)
      CALL saxpy(1.2D+01,R13,H_OBJ14)
      OpenAD_Symbol_302 = (R03%v+R12%v)
      F%v = (SQRT3*OpenAD_Symbol_302)
      OpenAD_Symbol_304 = SQRT3
      H_OBJ10%v = (G%v+H_OBJ10%v-F%v)
      H_OBJ6%v = (F%v+G%v+H_OBJ6%v)
      G%v = (R02%v*TWO3RD)
      OpenAD_Symbol_305 = TWO3RD
      CALL setderiv(OpenAD_prop_45,G)
      CALL setderiv(OpenAD_prop_46,H_OBJ10)
      CALL setderiv(OpenAD_prop_47,H_OBJ6)
      CALL setderiv(OpenAD_prop_48,R03)
      CALL inc_deriv(OpenAD_prop_48,R12)
      CALL sax(OpenAD_Symbol_305,R02,G)
      CALL sax(OpenAD_Symbol_304,OpenAD_prop_48,F)
      CALL setderiv(H_OBJ10,OpenAD_prop_45)
      CALL inc_deriv(H_OBJ10,OpenAD_prop_46)
      CALL dec_deriv(H_OBJ10,F)
      CALL setderiv(H_OBJ6,F)
      CALL inc_deriv(H_OBJ6,OpenAD_prop_45)
      CALL inc_deriv(H_OBJ6,OpenAD_prop_47)
      OpenAD_Symbol_307 = (R03%v-R12%v)
      F%v = (SQRT3*OpenAD_Symbol_307)
      OpenAD_Symbol_309 = SQRT3
      H_OBJ9%v = (G%v+H_OBJ9%v-F%v)
      H_OBJ7%v = (F%v+G%v+H_OBJ7%v)
      Y01%v = OBJ%v
      Y02%v = G_OBJ0%v
      Y03%v = G_OBJ1%v
      Y04%v = G_OBJ2%v
      Y05%v = G_OBJ3%v
      Y06%v = G_OBJ4%v
      Y07%v = G_OBJ5%v
      Y08%v = H_OBJ0%v
      Y09%v = H_OBJ1%v
      Y10%v = H_OBJ2%v
      Y11%v = H_OBJ3%v
      Y12%v = H_OBJ4%v
      Y13%v = H_OBJ5%v
      Y14%v = H_OBJ6%v
      Y15%v = H_OBJ7%v
      Y16%v = H_OBJ8%v
      Y17%v = H_OBJ9%v
      Y18%v = H_OBJ10%v
      Y19%v = H_OBJ11%v
      Y20%v = H_OBJ12%v
      Y21%v = H_OBJ13%v
      Y22%v = H_OBJ14%v
      Y23%v = H_OBJ15%v
      Y24%v = H_OBJ16%v
      Y25%v = H_OBJ17%v
      Y26%v = H_OBJ18%v
      Y27%v = H_OBJ19%v
      Y28%v = H_OBJ20%v
      CALL setderiv(OpenAD_prop_49,R03)
      CALL dec_deriv(OpenAD_prop_49,R12)
      CALL setderiv(Y01,OBJ)
      CALL setderiv(Y02,G_OBJ0)
      CALL setderiv(Y03,G_OBJ1)
      CALL setderiv(Y04,G_OBJ2)
      CALL setderiv(Y05,G_OBJ3)
      CALL setderiv(Y06,G_OBJ4)
      CALL setderiv(Y07,G_OBJ5)
      CALL setderiv(Y08,H_OBJ0)
      CALL setderiv(Y09,H_OBJ1)
      CALL setderiv(Y10,H_OBJ2)
      CALL setderiv(Y11,H_OBJ3)
      CALL setderiv(Y12,H_OBJ4)
      CALL setderiv(Y13,H_OBJ5)
      CALL setderiv(Y14,H_OBJ6)
      CALL setderiv(Y16,H_OBJ8)
      CALL setderiv(Y18,H_OBJ10)
      CALL setderiv(Y19,H_OBJ11)
      CALL setderiv(Y20,H_OBJ12)
      CALL setderiv(Y21,H_OBJ13)
      CALL setderiv(Y22,H_OBJ14)
      CALL setderiv(Y23,H_OBJ15)
      CALL setderiv(Y24,H_OBJ16)
      CALL setderiv(Y25,H_OBJ17)
      CALL setderiv(Y26,H_OBJ18)
      CALL setderiv(Y27,H_OBJ19)
      CALL setderiv(Y28,H_OBJ20)
      CALL sax(OpenAD_Symbol_309,OpenAD_prop_49,F)
      CALL setderiv(Y15,F)
      CALL inc_deriv(Y15,G)
      CALL inc_deriv(Y15,H_OBJ7)
      CALL setderiv(Y17,G)
      CALL inc_deriv(Y17,H_OBJ9)
      CALL dec_deriv(Y17,F)
      END SUBROUTINE
