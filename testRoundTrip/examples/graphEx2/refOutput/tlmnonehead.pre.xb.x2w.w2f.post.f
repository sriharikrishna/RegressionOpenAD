
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
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
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_100
      REAL(w2f__8) OpenAD_lin_103
      REAL(w2f__8) OpenAD_lin_104
      REAL(w2f__8) OpenAD_lin_105
      REAL(w2f__8) OpenAD_lin_106
      REAL(w2f__8) OpenAD_lin_109
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
      REAL(w2f__8) OpenAD_lin_126
      REAL(w2f__8) OpenAD_lin_128
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_132
      REAL(w2f__8) OpenAD_lin_134
      REAL(w2f__8) OpenAD_lin_135
      REAL(w2f__8) OpenAD_lin_138
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_140
      REAL(w2f__8) OpenAD_lin_143
      REAL(w2f__8) OpenAD_lin_145
      REAL(w2f__8) OpenAD_lin_146
      REAL(w2f__8) OpenAD_lin_147
      REAL(w2f__8) OpenAD_lin_148
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
      REAL(w2f__8) OpenAD_lin_164
      REAL(w2f__8) OpenAD_lin_166
      REAL(w2f__8) OpenAD_lin_167
      REAL(w2f__8) OpenAD_lin_168
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_170
      REAL(w2f__8) OpenAD_lin_172
      REAL(w2f__8) OpenAD_lin_173
      REAL(w2f__8) OpenAD_lin_174
      REAL(w2f__8) OpenAD_lin_176
      REAL(w2f__8) OpenAD_lin_178
      REAL(w2f__8) OpenAD_lin_179
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_180
      REAL(w2f__8) OpenAD_lin_181
      REAL(w2f__8) OpenAD_lin_182
      REAL(w2f__8) OpenAD_lin_183
      REAL(w2f__8) OpenAD_lin_184
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
      REAL(w2f__8) OpenAD_lin_205
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
      REAL(w2f__8) OpenAD_lin_232
      REAL(w2f__8) OpenAD_lin_233
      REAL(w2f__8) OpenAD_lin_234
      REAL(w2f__8) OpenAD_lin_235
      REAL(w2f__8) OpenAD_lin_238
      REAL(w2f__8) OpenAD_lin_239
      REAL(w2f__8) OpenAD_lin_242
      REAL(w2f__8) OpenAD_lin_243
      REAL(w2f__8) OpenAD_lin_244
      REAL(w2f__8) OpenAD_lin_245
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
      REAL(w2f__8) OpenAD_lin_265
      REAL(w2f__8) OpenAD_lin_267
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_271
      REAL(w2f__8) OpenAD_lin_273
      REAL(w2f__8) OpenAD_lin_274
      REAL(w2f__8) OpenAD_lin_277
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_34
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_40
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_44
      REAL(w2f__8) OpenAD_lin_45
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
      REAL(w2f__8) OpenAD_lin_66
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
      REAL(w2f__8) OpenAD_lin_93
      REAL(w2f__8) OpenAD_lin_94
      REAL(w2f__8) OpenAD_lin_95
      REAL(w2f__8) OpenAD_lin_96
      REAL(w2f__8) OpenAD_lin_99
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
      REAL(w2f__8) OpenAD_tmp_4
      REAL(w2f__8) OpenAD_tmp_5
      REAL(w2f__8) OpenAD_tmp_6
      REAL(w2f__8) OpenAD_tmp_7
      REAL(w2f__8) OpenAD_tmp_8
      REAL(w2f__8) OpenAD_tmp_9
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
      OpenAD_tmp_0 = (X03%v*2.0D00-X02%v-X01%v)
      MATR1%v = (SQRT3*OpenAD_tmp_0)
      OpenAD_lin_1 = SQRT3
      MATR2%v = (X05%v-X04%v)
      OpenAD_tmp_1 = (X06%v*2.0D00-X05%v-X04%v)
      MATR3%v = (SQRT3*OpenAD_tmp_1)
      OpenAD_lin_4 = SQRT3
      M03%v = (MATR0%v*MATR3%v)
      OpenAD_lin_6 = MATR3%v
      OpenAD_lin_7 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_lin_8 = MATR2%v
      OpenAD_lin_9 = MATR1%v
      G%v = (M03%v-M12%v)
      D00%v = (M03%v*2.0D00)
      D11%v = (M12%v*2.0D00)
      M00%v = (MATR0%v*MATR0%v)
      OpenAD_lin_12 = MATR0%v
      OpenAD_lin_13 = MATR0%v
      M11%v = (MATR1%v*MATR1%v)
      OpenAD_lin_14 = MATR1%v
      OpenAD_lin_15 = MATR1%v
      M22%v = (MATR2%v*MATR2%v)
      OpenAD_lin_16 = MATR2%v
      OpenAD_lin_17 = MATR2%v
      M33%v = (MATR3%v*MATR3%v)
      OpenAD_lin_18 = MATR3%v
      OpenAD_lin_19 = MATR3%v
      D12%v = (M00%v*M33%v)
      OpenAD_lin_20 = M33%v
      OpenAD_lin_21 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_lin_22 = M22%v
      OpenAD_lin_23 = M11%v
      F%v = (D03%v+D12%v)
      OpenAD_tmp_2 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_tmp_2)
      OpenAD_lin_27 = (-(1.0D00/(G%v*G%v)))
      OpenAD_lin_25 = A
      OBJ%v = (F%v*LOC1%v)
      OpenAD_lin_28 = LOC1%v
      OpenAD_lin_29 = F%v
      OpenAD_tmp_4 = (G%v*G%v)
      OpenAD_tmp_3 = (1.0D00/OpenAD_tmp_4)
      LOC2%v = (AB*OpenAD_tmp_3)
      OpenAD_lin_34 = G%v
      OpenAD_lin_35 = G%v
      OpenAD_lin_33 = (-(1.0D00/(OpenAD_tmp_4*OpenAD_tmp_4)))
      OpenAD_lin_31 = AB
      OpenAD_tmp_5 = (AB*B)
      OpenAD_tmp_8 = (G%v*G%v)
      OpenAD_tmp_7 = (G%v*OpenAD_tmp_8)
      OpenAD_tmp_6 = (1.0D00/OpenAD_tmp_7)
      GG%v = (OpenAD_tmp_5*OpenAD_tmp_6)
      OpenAD_lin_40 = OpenAD_tmp_8
      OpenAD_lin_42 = G%v
      OpenAD_lin_43 = G%v
      OpenAD_lin_41 = G%v
      OpenAD_lin_39 = (-(1.0D00/(OpenAD_tmp_7*OpenAD_tmp_7)))
      OpenAD_lin_37 = OpenAD_tmp_5
      OpenAD_acc_0 = (OpenAD_lin_27*OpenAD_lin_25)
      OpenAD_acc_1 = (OpenAD_lin_12+OpenAD_lin_13)
      OpenAD_acc_2 = (OpenAD_lin_14+OpenAD_lin_15)
      OpenAD_acc_3 = (OpenAD_lin_16+OpenAD_lin_17)
      OpenAD_acc_4 = (OpenAD_lin_18+OpenAD_lin_19)
      OpenAD_acc_5 = ((OpenAD_lin_40+(OpenAD_lin_42+OpenAD_lin_43)*OpenA
     +D_lin_41)*OpenAD_lin_39*OpenAD_lin_37)
      OpenAD_acc_6 = ((OpenAD_lin_34+OpenAD_lin_35)*OpenAD_lin_33*OpenAD
     +_lin_31)
      CALL setderiv(MATR0,X02)
      CALL dec_deriv(MATR0,X01)
      CALL setderiv(MATR2,X05)
      CALL dec_deriv(MATR2,X04)
      CALL sax(OpenAD_acc_1,MATR0,M00)
      CALL sax(OpenAD_acc_3,MATR2,M22)
      CALL set_neg_deriv(OpenAD_prop_0,X01)
      CALL dec_deriv(OpenAD_prop_0,X02)
      CALL saxpy(2.0D00,X03,OpenAD_prop_0)
      CALL set_neg_deriv(OpenAD_prop_1,X04)
      CALL dec_deriv(OpenAD_prop_1,X05)
      CALL saxpy(2.0D00,X06,OpenAD_prop_1)
      CALL sax(OpenAD_lin_1,OpenAD_prop_0,MATR1)
      CALL sax(OpenAD_lin_4,OpenAD_prop_1,MATR3)
      CALL sax(OpenAD_lin_6,MATR0,M03)
      CALL saxpy(OpenAD_lin_7,MATR3,M03)
      CALL sax(OpenAD_lin_8,MATR1,M12)
      CALL saxpy(OpenAD_lin_9,MATR2,M12)
      CALL setderiv(G,M03)
      CALL dec_deriv(G,M12)
      CALL sax(2.0D00,M03,D00)
      CALL sax(2.0D00,M12,D11)
      CALL sax(OpenAD_acc_2,MATR1,M11)
      CALL sax(OpenAD_acc_4,MATR3,M33)
      CALL sax(OpenAD_lin_20,M00,D12)
      CALL saxpy(OpenAD_lin_21,M33,D12)
      CALL sax(OpenAD_lin_22,M11,D03)
      CALL saxpy(OpenAD_lin_23,M22,D03)
      CALL setderiv(F,D03)
      CALL inc_deriv(F,D12)
      CALL sax(OpenAD_acc_0,G,LOC1)
      CALL sax(OpenAD_lin_28,F,OBJ)
      CALL saxpy(OpenAD_lin_29,LOC1,OBJ)
      CALL sax(OpenAD_acc_6,G,LOC2)
      CALL sax(OpenAD_acc_5,G,GG)
      G%v = (F%v*LOC2%v)
      OpenAD_lin_44 = LOC2%v
      OpenAD_lin_45 = F%v
      F%v = (LOC1%v*2.0D00)
      ADJ_M0%v = (F%v*MATR0%v+G%v*MATR3%v)
      OpenAD_lin_47 = MATR0%v
      OpenAD_lin_48 = F%v
      OpenAD_lin_49 = MATR3%v
      OpenAD_lin_50 = G%v
      ADJ_M1%v = (F%v*MATR1%v-G%v*MATR2%v)
      OpenAD_lin_51 = MATR1%v
      OpenAD_lin_52 = F%v
      OpenAD_lin_53 = MATR2%v
      OpenAD_lin_54 = G%v
      ADJ_M2%v = (F%v*MATR2%v-G%v*MATR1%v)
      OpenAD_lin_55 = MATR2%v
      OpenAD_lin_56 = F%v
      OpenAD_lin_57 = MATR1%v
      OpenAD_lin_58 = G%v
      ADJ_M3%v = (F%v*MATR3%v+G%v*MATR0%v)
      OpenAD_lin_59 = MATR3%v
      OpenAD_lin_60 = F%v
      OpenAD_lin_61 = MATR0%v
      OpenAD_lin_62 = G%v
      LOC1%v = (ADJ_M1%v*SQRT3)
      OpenAD_lin_63 = SQRT3
      G_OBJ0%v = (-(ADJ_M0%v+LOC1%v))
      G_OBJ1%v = (ADJ_M0%v-LOC1%v)
      G_OBJ2%v = (LOC1%v*2.0D00)
      OpenAD_acc_7 = (2.0D00*OpenAD_lin_47)
      OpenAD_acc_8 = (2.0D00*OpenAD_lin_51)
      OpenAD_acc_9 = (OpenAD_lin_53*INT((-1_w2f__i8)))
      OpenAD_acc_10 = (OpenAD_lin_54*INT((-1_w2f__i8)))
      OpenAD_acc_11 = (2.0D00*OpenAD_lin_55)
      OpenAD_acc_12 = (OpenAD_lin_57*INT((-1_w2f__i8)))
      OpenAD_acc_13 = (OpenAD_lin_58*INT((-1_w2f__i8)))
      OpenAD_acc_14 = (2.0D00*OpenAD_lin_59)
      CALL setderiv(OpenAD_prop_2,LOC1)
      CALL sax(OpenAD_lin_44,F,G)
      CALL saxpy(OpenAD_lin_45,LOC2,G)
      CALL sax(OpenAD_lin_48,MATR0,ADJ_M0)
      CALL saxpy(OpenAD_acc_7,OpenAD_prop_2,ADJ_M0)
      CALL saxpy(OpenAD_lin_49,G,ADJ_M0)
      CALL saxpy(OpenAD_lin_50,MATR3,ADJ_M0)
      CALL sax(OpenAD_lin_52,MATR1,ADJ_M1)
      CALL saxpy(OpenAD_acc_8,OpenAD_prop_2,ADJ_M1)
      CALL saxpy(OpenAD_acc_9,G,ADJ_M1)
      CALL saxpy(OpenAD_acc_10,MATR2,ADJ_M1)
      CALL sax(OpenAD_lin_56,MATR2,ADJ_M2)
      CALL saxpy(OpenAD_acc_11,OpenAD_prop_2,ADJ_M2)
      CALL saxpy(OpenAD_acc_12,G,ADJ_M2)
      CALL saxpy(OpenAD_acc_13,MATR1,ADJ_M2)
      CALL sax(OpenAD_lin_60,MATR3,ADJ_M3)
      CALL saxpy(OpenAD_acc_14,OpenAD_prop_2,ADJ_M3)
      CALL saxpy(OpenAD_lin_61,G,ADJ_M3)
      CALL saxpy(OpenAD_lin_62,MATR0,ADJ_M3)
      CALL sax(OpenAD_lin_63,ADJ_M1,LOC1)
      CALL setderiv(G_OBJ1,ADJ_M0)
      CALL dec_deriv(G_OBJ1,LOC1)
      CALL sax(2.0D00,LOC1,G_OBJ2)
      CALL set_neg_deriv(G_OBJ0,ADJ_M0)
      CALL dec_deriv(G_OBJ0,LOC1)
      LOC1%v = (ADJ_M3%v*SQRT3)
      OpenAD_lin_66 = SQRT3
      G_OBJ3%v = (-(ADJ_M2%v+LOC1%v))
      G_OBJ4%v = (ADJ_M2%v-LOC1%v)
      G_OBJ5%v = (LOC1%v*2.0D00)
      OpenAD_Symbol_0 = (LOC2%v*2.0D00)
      LOC2%v = OpenAD_Symbol_0
      R00%v = (D00%v*LOC2%v+GG%v*M33%v)
      OpenAD_lin_70 = LOC2%v
      OpenAD_lin_71 = D00%v
      OpenAD_lin_72 = M33%v
      OpenAD_lin_73 = GG%v
      R11%v = (D11%v*LOC2%v+GG%v*M22%v)
      OpenAD_lin_74 = LOC2%v
      OpenAD_lin_75 = D11%v
      OpenAD_lin_76 = M22%v
      OpenAD_lin_77 = GG%v
      R22 = (D11%v*LOC2%v+GG%v*M11%v)
      R33 = (D00%v*LOC2%v+GG%v*M00%v)
      M01%v = (MATR0%v*MATR1%v)
      OpenAD_lin_78 = MATR1%v
      OpenAD_lin_79 = MATR0%v
      M02%v = (MATR0%v*MATR2%v)
      OpenAD_lin_80 = MATR2%v
      OpenAD_lin_81 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_lin_82 = MATR2%v
      OpenAD_lin_83 = MATR1%v
      M13%v = (MATR1%v*MATR3%v)
      OpenAD_lin_84 = MATR3%v
      OpenAD_lin_85 = MATR1%v
      M23%v = (MATR2%v*MATR3%v)
      OpenAD_lin_86 = MATR3%v
      OpenAD_lin_87 = MATR2%v
      OpenAD_tmp_9 = (M02%v+M13%v)
      D01%v = (LOC2%v*OpenAD_tmp_9)
      OpenAD_lin_88 = OpenAD_tmp_9
      OpenAD_lin_89 = LOC2%v
      CALL setderiv(OpenAD_prop_3,LOC2)
      CALL sax(OpenAD_lin_66,ADJ_M3,LOC1)
      CALL setderiv(G_OBJ4,ADJ_M2)
      CALL dec_deriv(G_OBJ4,LOC1)
      CALL sax(2.0D00,LOC1,G_OBJ5)
      CALL sax(2.0D00,OpenAD_prop_3,LOC2)
      CALL sax(OpenAD_lin_78,MATR0,M01)
      CALL saxpy(OpenAD_lin_79,MATR1,M01)
      CALL sax(OpenAD_lin_80,MATR0,M02)
      CALL saxpy(OpenAD_lin_81,MATR2,M02)
      CALL sax(OpenAD_lin_82,MATR1,M12)
      CALL saxpy(OpenAD_lin_83,MATR2,M12)
      CALL sax(OpenAD_lin_84,MATR1,M13)
      CALL saxpy(OpenAD_lin_85,MATR3,M13)
      CALL sax(OpenAD_lin_86,MATR2,M23)
      CALL saxpy(OpenAD_lin_87,MATR3,M23)
      CALL setderiv(OpenAD_prop_4,M02)
      CALL inc_deriv(OpenAD_prop_4,M13)
      CALL set_neg_deriv(G_OBJ3,ADJ_M2)
      CALL dec_deriv(G_OBJ3,LOC1)
      CALL sax(OpenAD_lin_70,D00,R00)
      CALL saxpy(OpenAD_lin_71,LOC2,R00)
      CALL saxpy(OpenAD_lin_72,GG,R00)
      CALL saxpy(OpenAD_lin_73,M33,R00)
      CALL sax(OpenAD_lin_74,D11,R11)
      CALL saxpy(OpenAD_lin_75,LOC2,R11)
      CALL saxpy(OpenAD_lin_76,GG,R11)
      CALL saxpy(OpenAD_lin_77,M22,R11)
      CALL sax(OpenAD_lin_88,LOC2,D01)
      CALL saxpy(OpenAD_lin_89,OpenAD_prop_4,D01)
      LOC1%v = (R11%v*THIRD)
      OpenAD_lin_90 = THIRD
      OpenAD_tmp_10 = (D01%v+GG%v*M23%v)
      F%v = (TWOSQRT3*OpenAD_tmp_10)
      OpenAD_lin_94 = M23%v
      OpenAD_lin_95 = GG%v
      OpenAD_lin_93 = TWOSQRT3
      G%v = (LOC1%v+R00%v)
      H_OBJ1%v = (LOC1%v-R00%v)
      H_OBJ0%v = (F%v+G%v)
      H_OBJ3%v = (G%v-F%v)
      CALL sax(OpenAD_lin_90,R11,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R00)
      CALL setderiv(H_OBJ1,LOC1)
      CALL dec_deriv(H_OBJ1,R00)
      CALL setderiv(OpenAD_prop_5,D01)
      CALL saxpy(OpenAD_lin_94,GG,OpenAD_prop_5)
      CALL saxpy(OpenAD_lin_95,M23,OpenAD_prop_5)
      CALL sax(OpenAD_lin_93,OpenAD_prop_5,F)
      CALL setderiv(H_OBJ0,F)
      CALL inc_deriv(H_OBJ0,G)
      CALL setderiv(H_OBJ3,G)
      CALL dec_deriv(H_OBJ3,F)
      LOC1%v = (-(R11%v*TWO3RD))
      OpenAD_lin_96 = TWO3RD
      H_OBJ2%v = (LOC1%v-F%v)
      H_OBJ4%v = (F%v+LOC1%v)
      H_OBJ5%v = (FOUR3RD*R11%v)
      OpenAD_lin_99 = FOUR3RD
      OpenAD_acc_15 = (OpenAD_lin_96*INT((-1_w2f__i8)))
      CALL sax(OpenAD_lin_99,R11,H_OBJ5)
      CALL sax(OpenAD_acc_15,R11,LOC1)
      CALL setderiv(H_OBJ2,LOC1)
      CALL dec_deriv(H_OBJ2,F)
      CALL setderiv(H_OBJ4,F)
      CALL inc_deriv(H_OBJ4,LOC1)
      LOC1%v = (R00%v*THIRD)
      OpenAD_lin_100 = THIRD
      OpenAD_tmp_11 = (D01%v+GG%v*M01%v)
      F%v = (TWOSQRT3*OpenAD_tmp_11)
      OpenAD_lin_104 = M01%v
      OpenAD_lin_105 = GG%v
      OpenAD_lin_103 = TWOSQRT3
      G%v = (LOC1%v+R11%v)
      H_OBJ16%v = (LOC1%v-R11%v)
      H_OBJ15%v = (F%v+G%v)
      H_OBJ18%v = (G%v-F%v)
      CALL sax(OpenAD_lin_100,R00,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R11)
      CALL setderiv(H_OBJ16,LOC1)
      CALL dec_deriv(H_OBJ16,R11)
      CALL setderiv(OpenAD_prop_6,D01)
      CALL saxpy(OpenAD_lin_104,GG,OpenAD_prop_6)
      CALL saxpy(OpenAD_lin_105,M01,OpenAD_prop_6)
      CALL sax(OpenAD_lin_103,OpenAD_prop_6,F)
      CALL setderiv(H_OBJ15,F)
      CALL inc_deriv(H_OBJ15,G)
      CALL setderiv(H_OBJ18,G)
      CALL dec_deriv(H_OBJ18,F)
      LOC1%v = (-(R00%v*TWO3RD))
      OpenAD_lin_106 = TWO3RD
      H_OBJ17%v = (LOC1%v-F%v)
      H_OBJ19%v = (F%v+LOC1%v)
      H_OBJ20%v = (FOUR3RD*R00%v)
      OpenAD_lin_109 = FOUR3RD
      OpenAD_acc_16 = (OpenAD_lin_106*INT((-1_w2f__i8)))
      CALL sax(OpenAD_lin_109,R00,H_OBJ20)
      CALL sax(OpenAD_acc_16,R00,LOC1)
      CALL setderiv(H_OBJ17,LOC1)
      CALL dec_deriv(H_OBJ17,F)
      CALL setderiv(H_OBJ19,F)
      CALL inc_deriv(H_OBJ19,LOC1)
      OpenAD_tmp_12 = (M01%v+M23%v)
      LOC1%v = (LOC2%v*OpenAD_tmp_12)
      OpenAD_lin_110 = OpenAD_tmp_12
      OpenAD_lin_111 = LOC2%v
      R13%v = (LOC1%v+GG%v*M02%v)
      OpenAD_lin_112 = M02%v
      OpenAD_lin_113 = GG%v
      R02%v = (LOC1%v+GG%v*M13%v)
      OpenAD_lin_114 = M13%v
      OpenAD_lin_115 = GG%v
      R03%v = (D03%v*LOC2%v+GG%v*M03%v)
      OpenAD_lin_116 = LOC2%v
      OpenAD_lin_117 = D03%v
      OpenAD_lin_118 = M03%v
      OpenAD_lin_119 = GG%v
      R12%v = (D12%v*LOC2%v+GG%v*M12%v)
      OpenAD_lin_120 = LOC2%v
      OpenAD_lin_121 = D12%v
      OpenAD_lin_122 = M12%v
      OpenAD_lin_123 = GG%v
      G%v = (-(R13%v*TWO3RD))
      OpenAD_lin_124 = TWO3RD
      F%v = (R03%v*TWOSQRT3)
      OpenAD_lin_126 = TWOSQRT3
      H_OBJ8%v = (G%v-F%v)
      H_OBJ11%v = (F%v+G%v)
      OpenAD_acc_17 = (OpenAD_lin_124*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_7,M01)
      CALL inc_deriv(OpenAD_prop_7,M23)
      CALL sax(OpenAD_lin_110,LOC2,LOC1)
      CALL saxpy(OpenAD_lin_111,OpenAD_prop_7,LOC1)
      CALL setderiv(R13,LOC1)
      CALL saxpy(OpenAD_lin_112,GG,R13)
      CALL saxpy(OpenAD_lin_113,M02,R13)
      CALL setderiv(R02,LOC1)
      CALL saxpy(OpenAD_lin_114,GG,R02)
      CALL saxpy(OpenAD_lin_115,M13,R02)
      CALL sax(OpenAD_lin_116,D03,R03)
      CALL saxpy(OpenAD_lin_117,LOC2,R03)
      CALL saxpy(OpenAD_lin_118,GG,R03)
      CALL saxpy(OpenAD_lin_119,M03,R03)
      CALL sax(OpenAD_lin_120,D12,R12)
      CALL saxpy(OpenAD_lin_121,LOC2,R12)
      CALL saxpy(OpenAD_lin_122,GG,R12)
      CALL saxpy(OpenAD_lin_123,M12,R12)
      CALL sax(OpenAD_lin_126,R03,F)
      CALL sax(OpenAD_acc_17,R13,G)
      CALL setderiv(H_OBJ8,G)
      CALL dec_deriv(H_OBJ8,F)
      CALL setderiv(H_OBJ11,F)
      CALL inc_deriv(H_OBJ11,G)
      F%v = (R12%v*TWOSQRT3)
      OpenAD_lin_128 = TWOSQRT3
      H_OBJ12%v = (G%v-F%v)
      H_OBJ13%v = (F%v+G%v)
      H_OBJ14%v = (R13%v*1.2D+01)
      G%v = (FOUR3RD*R02%v)
      OpenAD_lin_132 = FOUR3RD
      CALL setderiv(OpenAD_prop_8,G)
      CALL sax(OpenAD_lin_128,R12,F)
      CALL setderiv(H_OBJ12,OpenAD_prop_8)
      CALL dec_deriv(H_OBJ12,F)
      CALL setderiv(H_OBJ13,F)
      CALL inc_deriv(H_OBJ13,OpenAD_prop_8)
      CALL sax(1.2D+01,R13,H_OBJ14)
      CALL sax(OpenAD_lin_132,R02,G)
      OpenAD_tmp_13 = (R03%v+R12%v)
      F%v = (SQRT3*OpenAD_tmp_13)
      OpenAD_lin_134 = SQRT3
      H_OBJ10%v = (G%v-F%v)
      H_OBJ6%v = (F%v+G%v)
      G%v = (R02%v*TWO3RD)
      OpenAD_lin_135 = TWO3RD
      CALL setderiv(OpenAD_prop_9,G)
      CALL setderiv(OpenAD_prop_10,R03)
      CALL inc_deriv(OpenAD_prop_10,R12)
      CALL sax(OpenAD_lin_135,R02,G)
      CALL sax(OpenAD_lin_134,OpenAD_prop_10,F)
      CALL setderiv(H_OBJ10,OpenAD_prop_9)
      CALL dec_deriv(H_OBJ10,F)
      CALL setderiv(H_OBJ6,F)
      CALL inc_deriv(H_OBJ6,OpenAD_prop_9)
      OpenAD_tmp_14 = (R03%v-R12%v)
      F%v = (SQRT3*OpenAD_tmp_14)
      OpenAD_lin_138 = SQRT3
      H_OBJ9%v = (G%v-F%v)
      H_OBJ7%v = (F%v+G%v)
      MATR0%v = (G_OBJ1%v-G_OBJ0%v)
      OpenAD_tmp_15 = (G_OBJ2%v*2.0D00-G_OBJ1%v-G_OBJ2%v)
      MATR1%v = (SQRT3*OpenAD_tmp_15)
      OpenAD_lin_140 = SQRT3
      MATR2%v = (G_OBJ4%v-G_OBJ3%v)
      OpenAD_tmp_16 = (G_OBJ5%v*2.0D00-G_OBJ4%v-G_OBJ3%v)
      MATR3%v = (SQRT3*OpenAD_tmp_16)
      OpenAD_lin_143 = SQRT3
      M03%v = (MATR0%v*MATR3%v)
      OpenAD_lin_145 = MATR3%v
      OpenAD_lin_146 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_lin_147 = MATR2%v
      OpenAD_lin_148 = MATR1%v
      G%v = (M03%v-M12%v)
      D00%v = (M03%v*2.0D00)
      D11%v = (M12%v*2.0D00)
      M00%v = (MATR0%v*MATR0%v)
      OpenAD_lin_151 = MATR0%v
      OpenAD_lin_152 = MATR0%v
      M11%v = (MATR1%v*MATR1%v)
      OpenAD_lin_153 = MATR1%v
      OpenAD_lin_154 = MATR1%v
      M22%v = (MATR2%v*MATR2%v)
      OpenAD_lin_155 = MATR2%v
      OpenAD_lin_156 = MATR2%v
      M33%v = (MATR3%v*MATR3%v)
      OpenAD_lin_157 = MATR3%v
      OpenAD_lin_158 = MATR3%v
      D12%v = (M00%v*M33%v)
      OpenAD_lin_159 = M33%v
      OpenAD_lin_160 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_lin_161 = M22%v
      OpenAD_lin_162 = M11%v
      OpenAD_acc_18 = (OpenAD_lin_151+OpenAD_lin_152)
      OpenAD_acc_19 = (OpenAD_lin_153+OpenAD_lin_154)
      OpenAD_acc_20 = (OpenAD_lin_155+OpenAD_lin_156)
      OpenAD_acc_21 = (OpenAD_lin_157+OpenAD_lin_158)
      CALL setderiv(OpenAD_prop_11,G)
      CALL setderiv(OpenAD_prop_12,R03)
      CALL dec_deriv(OpenAD_prop_12,R12)
      CALL setderiv(MATR0,G_OBJ1)
      CALL dec_deriv(MATR0,G_OBJ0)
      CALL setderiv(MATR2,G_OBJ4)
      CALL dec_deriv(MATR2,G_OBJ3)
      CALL sax(OpenAD_acc_18,MATR0,M00)
      CALL sax(OpenAD_acc_20,MATR2,M22)
      CALL sax(OpenAD_lin_138,OpenAD_prop_12,F)
      CALL setderiv(H_OBJ9,OpenAD_prop_11)
      CALL dec_deriv(H_OBJ9,F)
      CALL setderiv(H_OBJ7,F)
      CALL inc_deriv(H_OBJ7,OpenAD_prop_11)
      CALL set_neg_deriv(OpenAD_prop_13,G_OBJ1)
      CALL saxpy(1.0D00,G_OBJ2,OpenAD_prop_13)
      CALL set_neg_deriv(OpenAD_prop_14,G_OBJ3)
      CALL dec_deriv(OpenAD_prop_14,G_OBJ4)
      CALL saxpy(2.0D00,G_OBJ5,OpenAD_prop_14)
      CALL sax(OpenAD_lin_140,OpenAD_prop_13,MATR1)
      CALL sax(OpenAD_lin_143,OpenAD_prop_14,MATR3)
      CALL sax(OpenAD_lin_145,MATR0,M03)
      CALL saxpy(OpenAD_lin_146,MATR3,M03)
      CALL sax(OpenAD_lin_147,MATR1,M12)
      CALL saxpy(OpenAD_lin_148,MATR2,M12)
      CALL setderiv(G,M03)
      CALL dec_deriv(G,M12)
      CALL sax(2.0D00,M03,D00)
      CALL sax(2.0D00,M12,D11)
      CALL sax(OpenAD_acc_19,MATR1,M11)
      CALL sax(OpenAD_acc_21,MATR3,M33)
      CALL sax(OpenAD_lin_159,M00,D12)
      CALL saxpy(OpenAD_lin_160,M33,D12)
      CALL sax(OpenAD_lin_161,M11,D03)
      CALL saxpy(OpenAD_lin_162,M22,D03)
      F%v = (D03%v+D12%v)
      OpenAD_tmp_17 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_tmp_17)
      OpenAD_lin_166 = (-(1.0D00/(G%v*G%v)))
      OpenAD_lin_164 = A
      OBJ%v = (F%v*LOC1%v)
      OpenAD_lin_167 = LOC1%v
      OpenAD_lin_168 = F%v
      OpenAD_tmp_19 = (G%v*G%v)
      OpenAD_tmp_18 = (1.0D00/OpenAD_tmp_19)
      LOC2%v = (AB*OpenAD_tmp_18)
      OpenAD_lin_173 = G%v
      OpenAD_lin_174 = G%v
      OpenAD_lin_172 = (-(1.0D00/(OpenAD_tmp_19*OpenAD_tmp_19)))
      OpenAD_lin_170 = AB
      OpenAD_tmp_20 = (AB*B)
      OpenAD_tmp_23 = (G%v*G%v)
      OpenAD_tmp_22 = (G%v*OpenAD_tmp_23)
      OpenAD_tmp_21 = (1.0D00/OpenAD_tmp_22)
      GG%v = (OpenAD_tmp_20*OpenAD_tmp_21)
      OpenAD_lin_179 = OpenAD_tmp_23
      OpenAD_lin_181 = G%v
      OpenAD_lin_182 = G%v
      OpenAD_lin_180 = G%v
      OpenAD_lin_178 = (-(1.0D00/(OpenAD_tmp_22*OpenAD_tmp_22)))
      OpenAD_lin_176 = OpenAD_tmp_20
      G%v = (F%v*LOC2%v)
      OpenAD_lin_183 = LOC2%v
      OpenAD_lin_184 = F%v
      OpenAD_acc_22 = (OpenAD_lin_166*OpenAD_lin_164)
      OpenAD_acc_23 = ((OpenAD_lin_179+(OpenAD_lin_181+OpenAD_lin_182)*O
     +penAD_lin_180)*OpenAD_lin_178*OpenAD_lin_176)
      OpenAD_acc_24 = ((OpenAD_lin_173+OpenAD_lin_174)*OpenAD_lin_172*Op
     +enAD_lin_170)
      CALL setderiv(OpenAD_prop_15,G)
      CALL setderiv(F,D03)
      CALL inc_deriv(F,D12)
      CALL sax(OpenAD_acc_22,OpenAD_prop_15,LOC1)
      CALL sax(OpenAD_lin_167,F,OBJ)
      CALL saxpy(OpenAD_lin_168,LOC1,OBJ)
      CALL sax(OpenAD_acc_24,OpenAD_prop_15,LOC2)
      CALL sax(OpenAD_lin_183,F,G)
      CALL saxpy(OpenAD_lin_184,LOC2,G)
      CALL sax(OpenAD_acc_23,OpenAD_prop_15,GG)
      F%v = (LOC1%v*2.0D00)
      ADJ_M0%v = (F%v*MATR0%v+G%v*MATR3%v)
      OpenAD_lin_186 = MATR0%v
      OpenAD_lin_187 = F%v
      OpenAD_lin_188 = MATR3%v
      OpenAD_lin_189 = G%v
      ADJ_M1%v = (F%v*MATR1%v-G%v*MATR2%v)
      OpenAD_lin_190 = MATR1%v
      OpenAD_lin_191 = F%v
      OpenAD_lin_192 = MATR2%v
      OpenAD_lin_193 = G%v
      ADJ_M2%v = (F%v*MATR2%v-G%v*MATR1%v)
      OpenAD_lin_194 = MATR2%v
      OpenAD_lin_195 = F%v
      OpenAD_lin_196 = MATR1%v
      OpenAD_lin_197 = G%v
      ADJ_M3%v = (F%v*MATR3%v+G%v*MATR0%v)
      OpenAD_lin_198 = MATR3%v
      OpenAD_lin_199 = F%v
      OpenAD_lin_200 = MATR0%v
      OpenAD_lin_201 = G%v
      LOC1%v = (ADJ_M1%v*SQRT3)
      OpenAD_lin_202 = SQRT3
      G_OBJ0%v = (G_OBJ0%v-ADJ_M0%v-LOC1%v)
      G_OBJ1%v = (ADJ_M0%v+G_OBJ1%v-LOC1%v)
      G_OBJ2%v = (G_OBJ1%v+LOC1%v*2.0D00)
      OpenAD_acc_25 = (2.0D00*OpenAD_lin_186)
      OpenAD_acc_26 = (2.0D00*OpenAD_lin_190)
      OpenAD_acc_27 = (OpenAD_lin_192*INT((-1_w2f__i8)))
      OpenAD_acc_28 = (OpenAD_lin_193*INT((-1_w2f__i8)))
      OpenAD_acc_29 = (2.0D00*OpenAD_lin_194)
      OpenAD_acc_30 = (OpenAD_lin_196*INT((-1_w2f__i8)))
      OpenAD_acc_31 = (OpenAD_lin_197*INT((-1_w2f__i8)))
      OpenAD_acc_32 = (2.0D00*OpenAD_lin_198)
      CALL setderiv(OpenAD_prop_16,LOC1)
      CALL setderiv(OpenAD_prop_17,G_OBJ0)
      CALL setderiv(OpenAD_prop_18,G_OBJ1)
      CALL sax(OpenAD_lin_187,MATR0,ADJ_M0)
      CALL saxpy(OpenAD_acc_25,OpenAD_prop_16,ADJ_M0)
      CALL saxpy(OpenAD_lin_188,G,ADJ_M0)
      CALL saxpy(OpenAD_lin_189,MATR3,ADJ_M0)
      CALL sax(OpenAD_lin_191,MATR1,ADJ_M1)
      CALL saxpy(OpenAD_acc_26,OpenAD_prop_16,ADJ_M1)
      CALL saxpy(OpenAD_acc_27,G,ADJ_M1)
      CALL saxpy(OpenAD_acc_28,MATR2,ADJ_M1)
      CALL sax(OpenAD_lin_195,MATR2,ADJ_M2)
      CALL saxpy(OpenAD_acc_29,OpenAD_prop_16,ADJ_M2)
      CALL saxpy(OpenAD_acc_30,G,ADJ_M2)
      CALL saxpy(OpenAD_acc_31,MATR1,ADJ_M2)
      CALL sax(OpenAD_lin_199,MATR3,ADJ_M3)
      CALL saxpy(OpenAD_acc_32,OpenAD_prop_16,ADJ_M3)
      CALL saxpy(OpenAD_lin_200,G,ADJ_M3)
      CALL saxpy(OpenAD_lin_201,MATR0,ADJ_M3)
      CALL sax(OpenAD_lin_202,ADJ_M1,LOC1)
      CALL setderiv(G_OBJ0,OpenAD_prop_17)
      CALL dec_deriv(G_OBJ0,LOC1)
      CALL dec_deriv(G_OBJ0,ADJ_M0)
      CALL setderiv(G_OBJ1,ADJ_M0)
      CALL inc_deriv(G_OBJ1,OpenAD_prop_18)
      CALL dec_deriv(G_OBJ1,LOC1)
      CALL setderiv(G_OBJ2,G_OBJ1)
      CALL saxpy(2.0D00,LOC1,G_OBJ2)
      LOC1%v = (ADJ_M3%v*SQRT3)
      OpenAD_lin_205 = SQRT3
      G_OBJ3%v = (G_OBJ3%v-ADJ_M2%v-LOC1%v)
      G_OBJ4%v = (ADJ_M2%v+G_OBJ4%v-LOC1%v)
      G_OBJ5%v = (G_OBJ5%v+LOC1%v*2.0D00)
      OpenAD_Symbol_1 = (LOC2%v*2.0D00)
      LOC2%v = OpenAD_Symbol_1
      R00%v = (D00%v*LOC2%v+GG%v*M33%v)
      OpenAD_lin_209 = LOC2%v
      OpenAD_lin_210 = D00%v
      OpenAD_lin_211 = M33%v
      OpenAD_lin_212 = GG%v
      R11%v = (D11%v*LOC2%v+GG%v*M22%v)
      OpenAD_lin_213 = LOC2%v
      OpenAD_lin_214 = D11%v
      OpenAD_lin_215 = M22%v
      OpenAD_lin_216 = GG%v
      R22 = (D11%v*LOC2%v+GG%v*M11%v)
      R33 = (D00%v*LOC2%v+GG%v*M00%v)
      M01%v = (MATR0%v*MATR1%v)
      OpenAD_lin_217 = MATR1%v
      OpenAD_lin_218 = MATR0%v
      M02%v = (MATR0%v*MATR2%v)
      OpenAD_lin_219 = MATR2%v
      OpenAD_lin_220 = MATR0%v
      M12%v = (MATR1%v*MATR2%v)
      OpenAD_lin_221 = MATR2%v
      OpenAD_lin_222 = MATR1%v
      M13%v = (MATR1%v*MATR3%v)
      OpenAD_lin_223 = MATR3%v
      OpenAD_lin_224 = MATR1%v
      M23%v = (MATR2%v*MATR3%v)
      OpenAD_lin_225 = MATR3%v
      OpenAD_lin_226 = MATR2%v
      OpenAD_tmp_24 = (M02%v+M13%v)
      D01%v = (LOC2%v*OpenAD_tmp_24)
      OpenAD_lin_227 = OpenAD_tmp_24
      OpenAD_lin_228 = LOC2%v
      CALL setderiv(OpenAD_prop_19,G_OBJ3)
      CALL setderiv(OpenAD_prop_20,G_OBJ4)
      CALL setderiv(OpenAD_prop_21,G_OBJ5)
      CALL setderiv(OpenAD_prop_22,LOC2)
      CALL sax(OpenAD_lin_205,ADJ_M3,LOC1)
      CALL sax(2.0D00,OpenAD_prop_22,LOC2)
      CALL sax(OpenAD_lin_217,MATR0,M01)
      CALL saxpy(OpenAD_lin_218,MATR1,M01)
      CALL sax(OpenAD_lin_219,MATR0,M02)
      CALL saxpy(OpenAD_lin_220,MATR2,M02)
      CALL sax(OpenAD_lin_221,MATR1,M12)
      CALL saxpy(OpenAD_lin_222,MATR2,M12)
      CALL sax(OpenAD_lin_223,MATR1,M13)
      CALL saxpy(OpenAD_lin_224,MATR3,M13)
      CALL sax(OpenAD_lin_225,MATR2,M23)
      CALL saxpy(OpenAD_lin_226,MATR3,M23)
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
      CALL sax(OpenAD_lin_209,D00,R00)
      CALL saxpy(OpenAD_lin_210,LOC2,R00)
      CALL saxpy(OpenAD_lin_211,GG,R00)
      CALL saxpy(OpenAD_lin_212,M33,R00)
      CALL sax(OpenAD_lin_213,D11,R11)
      CALL saxpy(OpenAD_lin_214,LOC2,R11)
      CALL saxpy(OpenAD_lin_215,GG,R11)
      CALL saxpy(OpenAD_lin_216,M22,R11)
      CALL sax(OpenAD_lin_227,LOC2,D01)
      CALL saxpy(OpenAD_lin_228,OpenAD_prop_23,D01)
      LOC1%v = (R11%v*THIRD)
      OpenAD_lin_229 = THIRD
      OpenAD_tmp_25 = (D01%v+GG%v*M23%v)
      F%v = (TWOSQRT3*OpenAD_tmp_25)
      OpenAD_lin_233 = M23%v
      OpenAD_lin_234 = GG%v
      OpenAD_lin_232 = TWOSQRT3
      G%v = (LOC1%v+R00%v)
      H_OBJ1%v = (H_OBJ1%v+LOC1%v-R00%v)
      H_OBJ0%v = (F%v+G%v+H_OBJ0%v)
      H_OBJ3%v = (G%v+H_OBJ3%v-F%v)
      CALL setderiv(OpenAD_prop_24,H_OBJ1)
      CALL setderiv(OpenAD_prop_25,H_OBJ0)
      CALL setderiv(OpenAD_prop_26,H_OBJ3)
      CALL sax(OpenAD_lin_229,R11,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R00)
      CALL setderiv(OpenAD_prop_27,D01)
      CALL saxpy(OpenAD_lin_233,GG,OpenAD_prop_27)
      CALL saxpy(OpenAD_lin_234,M23,OpenAD_prop_27)
      CALL setderiv(H_OBJ1,OpenAD_prop_24)
      CALL inc_deriv(H_OBJ1,LOC1)
      CALL dec_deriv(H_OBJ1,R00)
      CALL sax(OpenAD_lin_232,OpenAD_prop_27,F)
      CALL setderiv(H_OBJ0,F)
      CALL inc_deriv(H_OBJ0,G)
      CALL inc_deriv(H_OBJ0,OpenAD_prop_25)
      CALL setderiv(H_OBJ3,G)
      CALL inc_deriv(H_OBJ3,OpenAD_prop_26)
      CALL dec_deriv(H_OBJ3,F)
      LOC1%v = (-(R11%v*TWO3RD))
      OpenAD_lin_235 = TWO3RD
      H_OBJ2%v = (H_OBJ2%v+LOC1%v-F%v)
      H_OBJ4%v = (F%v+H_OBJ4%v+LOC1%v)
      H_OBJ5%v = (H_OBJ5%v+FOUR3RD*R11%v)
      OpenAD_lin_238 = FOUR3RD
      OpenAD_acc_33 = (OpenAD_lin_235*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_28,H_OBJ2)
      CALL setderiv(OpenAD_prop_29,H_OBJ4)
      CALL setderiv(OpenAD_prop_30,H_OBJ5)
      CALL sax(OpenAD_acc_33,R11,LOC1)
      CALL setderiv(H_OBJ5,OpenAD_prop_30)
      CALL saxpy(OpenAD_lin_238,R11,H_OBJ5)
      CALL setderiv(H_OBJ2,OpenAD_prop_28)
      CALL inc_deriv(H_OBJ2,LOC1)
      CALL dec_deriv(H_OBJ2,F)
      CALL setderiv(H_OBJ4,F)
      CALL inc_deriv(H_OBJ4,OpenAD_prop_29)
      CALL inc_deriv(H_OBJ4,LOC1)
      LOC1%v = (R00%v*THIRD)
      OpenAD_lin_239 = THIRD
      OpenAD_tmp_26 = (D01%v+GG%v*M01%v)
      F%v = (TWOSQRT3*OpenAD_tmp_26)
      OpenAD_lin_243 = M01%v
      OpenAD_lin_244 = GG%v
      OpenAD_lin_242 = TWOSQRT3
      G%v = (LOC1%v+R11%v)
      H_OBJ16%v = (H_OBJ16%v+LOC1%v-R11%v)
      H_OBJ15%v = (F%v+G%v+H_OBJ15%v)
      H_OBJ18%v = (G%v+H_OBJ18%v-F%v)
      CALL setderiv(OpenAD_prop_31,H_OBJ16)
      CALL setderiv(OpenAD_prop_32,H_OBJ15)
      CALL setderiv(OpenAD_prop_33,H_OBJ18)
      CALL sax(OpenAD_lin_239,R00,LOC1)
      CALL setderiv(G,LOC1)
      CALL inc_deriv(G,R11)
      CALL setderiv(OpenAD_prop_34,D01)
      CALL saxpy(OpenAD_lin_243,GG,OpenAD_prop_34)
      CALL saxpy(OpenAD_lin_244,M01,OpenAD_prop_34)
      CALL setderiv(H_OBJ16,OpenAD_prop_31)
      CALL inc_deriv(H_OBJ16,LOC1)
      CALL dec_deriv(H_OBJ16,R11)
      CALL sax(OpenAD_lin_242,OpenAD_prop_34,F)
      CALL setderiv(H_OBJ15,F)
      CALL inc_deriv(H_OBJ15,G)
      CALL inc_deriv(H_OBJ15,OpenAD_prop_32)
      CALL setderiv(H_OBJ18,G)
      CALL inc_deriv(H_OBJ18,OpenAD_prop_33)
      CALL dec_deriv(H_OBJ18,F)
      LOC1%v = (-(R00%v*TWO3RD))
      OpenAD_lin_245 = TWO3RD
      H_OBJ17%v = (H_OBJ17%v+LOC1%v-F%v)
      H_OBJ19%v = (F%v+H_OBJ19%v+LOC1%v)
      H_OBJ20%v = (H_OBJ20%v+FOUR3RD*R00%v)
      OpenAD_lin_248 = FOUR3RD
      OpenAD_acc_34 = (OpenAD_lin_245*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_35,H_OBJ17)
      CALL setderiv(OpenAD_prop_36,H_OBJ19)
      CALL setderiv(OpenAD_prop_37,H_OBJ20)
      CALL sax(OpenAD_acc_34,R00,LOC1)
      CALL setderiv(H_OBJ20,OpenAD_prop_37)
      CALL saxpy(OpenAD_lin_248,R00,H_OBJ20)
      CALL setderiv(H_OBJ17,OpenAD_prop_35)
      CALL inc_deriv(H_OBJ17,LOC1)
      CALL dec_deriv(H_OBJ17,F)
      CALL setderiv(H_OBJ19,F)
      CALL inc_deriv(H_OBJ19,OpenAD_prop_36)
      CALL inc_deriv(H_OBJ19,LOC1)
      OpenAD_tmp_27 = (M01%v+M23%v)
      LOC1%v = (LOC2%v*OpenAD_tmp_27)
      OpenAD_lin_249 = OpenAD_tmp_27
      OpenAD_lin_250 = LOC2%v
      R13%v = (LOC1%v+GG%v*M02%v)
      OpenAD_lin_251 = M02%v
      OpenAD_lin_252 = GG%v
      R02%v = (LOC1%v+GG%v*M13%v)
      OpenAD_lin_253 = M13%v
      OpenAD_lin_254 = GG%v
      R03%v = (D03%v*LOC2%v+GG%v*M03%v)
      OpenAD_lin_255 = LOC2%v
      OpenAD_lin_256 = D03%v
      OpenAD_lin_257 = M03%v
      OpenAD_lin_258 = GG%v
      R12%v = (D12%v*LOC2%v+GG%v*M12%v)
      OpenAD_lin_259 = LOC2%v
      OpenAD_lin_260 = D12%v
      OpenAD_lin_261 = M12%v
      OpenAD_lin_262 = GG%v
      G%v = (-(R13%v*TWO3RD))
      OpenAD_lin_263 = TWO3RD
      F%v = (R03%v*TWOSQRT3)
      OpenAD_lin_265 = TWOSQRT3
      H_OBJ8%v = (G%v+H_OBJ8%v-F%v)
      H_OBJ11%v = (F%v+G%v+H_OBJ11%v)
      OpenAD_acc_35 = (OpenAD_lin_263*INT((-1_w2f__i8)))
      CALL setderiv(OpenAD_prop_38,H_OBJ8)
      CALL setderiv(OpenAD_prop_39,H_OBJ11)
      CALL setderiv(OpenAD_prop_40,M01)
      CALL inc_deriv(OpenAD_prop_40,M23)
      CALL sax(OpenAD_lin_249,LOC2,LOC1)
      CALL saxpy(OpenAD_lin_250,OpenAD_prop_40,LOC1)
      CALL setderiv(R13,LOC1)
      CALL saxpy(OpenAD_lin_251,GG,R13)
      CALL saxpy(OpenAD_lin_252,M02,R13)
      CALL setderiv(R02,LOC1)
      CALL saxpy(OpenAD_lin_253,GG,R02)
      CALL saxpy(OpenAD_lin_254,M13,R02)
      CALL sax(OpenAD_lin_255,D03,R03)
      CALL saxpy(OpenAD_lin_256,LOC2,R03)
      CALL saxpy(OpenAD_lin_257,GG,R03)
      CALL saxpy(OpenAD_lin_258,M03,R03)
      CALL sax(OpenAD_lin_259,D12,R12)
      CALL saxpy(OpenAD_lin_260,LOC2,R12)
      CALL saxpy(OpenAD_lin_261,GG,R12)
      CALL saxpy(OpenAD_lin_262,M12,R12)
      CALL sax(OpenAD_lin_265,R03,F)
      CALL sax(OpenAD_acc_35,R13,G)
      CALL setderiv(H_OBJ8,G)
      CALL inc_deriv(H_OBJ8,OpenAD_prop_38)
      CALL dec_deriv(H_OBJ8,F)
      CALL setderiv(H_OBJ11,F)
      CALL inc_deriv(H_OBJ11,G)
      CALL inc_deriv(H_OBJ11,OpenAD_prop_39)
      F%v = (R12%v*TWOSQRT3)
      OpenAD_lin_267 = TWOSQRT3
      H_OBJ12%v = (G%v+H_OBJ12%v-F%v)
      H_OBJ13%v = (F%v+G%v+H_OBJ13%v)
      H_OBJ14%v = (H_OBJ14%v+R13%v*1.2D+01)
      G%v = (FOUR3RD*R02%v)
      OpenAD_lin_271 = FOUR3RD
      CALL setderiv(OpenAD_prop_41,G)
      CALL setderiv(OpenAD_prop_42,H_OBJ12)
      CALL setderiv(OpenAD_prop_43,H_OBJ13)
      CALL setderiv(OpenAD_prop_44,H_OBJ14)
      CALL sax(OpenAD_lin_267,R12,F)
      CALL sax(OpenAD_lin_271,R02,G)
      CALL setderiv(H_OBJ12,OpenAD_prop_41)
      CALL inc_deriv(H_OBJ12,OpenAD_prop_42)
      CALL dec_deriv(H_OBJ12,F)
      CALL setderiv(H_OBJ13,F)
      CALL inc_deriv(H_OBJ13,OpenAD_prop_41)
      CALL inc_deriv(H_OBJ13,OpenAD_prop_43)
      CALL setderiv(H_OBJ14,OpenAD_prop_44)
      CALL saxpy(1.2D+01,R13,H_OBJ14)
      OpenAD_tmp_28 = (R03%v+R12%v)
      F%v = (SQRT3*OpenAD_tmp_28)
      OpenAD_lin_273 = SQRT3
      H_OBJ10%v = (G%v+H_OBJ10%v-F%v)
      H_OBJ6%v = (F%v+G%v+H_OBJ6%v)
      G%v = (R02%v*TWO3RD)
      OpenAD_lin_274 = TWO3RD
      CALL setderiv(OpenAD_prop_45,G)
      CALL setderiv(OpenAD_prop_46,H_OBJ10)
      CALL setderiv(OpenAD_prop_47,H_OBJ6)
      CALL setderiv(OpenAD_prop_48,R03)
      CALL inc_deriv(OpenAD_prop_48,R12)
      CALL sax(OpenAD_lin_274,R02,G)
      CALL sax(OpenAD_lin_273,OpenAD_prop_48,F)
      CALL setderiv(H_OBJ10,OpenAD_prop_45)
      CALL inc_deriv(H_OBJ10,OpenAD_prop_46)
      CALL dec_deriv(H_OBJ10,F)
      CALL setderiv(H_OBJ6,F)
      CALL inc_deriv(H_OBJ6,OpenAD_prop_45)
      CALL inc_deriv(H_OBJ6,OpenAD_prop_47)
      OpenAD_tmp_29 = (R03%v-R12%v)
      F%v = (SQRT3*OpenAD_tmp_29)
      OpenAD_lin_277 = SQRT3
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
      CALL sax(OpenAD_lin_277,OpenAD_prop_49,F)
      CALL setderiv(Y15,F)
      CALL inc_deriv(Y15,G)
      CALL inc_deriv(Y15,H_OBJ7)
      CALL setderiv(Y17,G)
      CALL inc_deriv(Y17,H_OBJ9)
      CALL dec_deriv(Y17,F)
      END SUBROUTINE
