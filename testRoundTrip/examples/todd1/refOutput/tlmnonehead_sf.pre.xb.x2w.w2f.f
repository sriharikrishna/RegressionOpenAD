
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(OBJ, G_OBJ0, G_OBJ1, G_OBJ2, G_OBJ3, G_OBJ4,
     >  G_OBJ5, X0, X1, X2, X3, X4, X5, H_OBJ0, H_OBJ1, H_OBJ2, H_OBJ3,
     >  H_OBJ4, H_OBJ5, H_OBJ6, H_OBJ7, H_OBJ8, H_OBJ9, H_OBJ10,
     >  H_OBJ11, H_OBJ12, H_OBJ13, H_OBJ14, H_OBJ15, H_OBJ16, H_OBJ17,
     >  H_OBJ18, H_OBJ19, H_OBJ20)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
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
      REAL(w2f__8) OpenAD_Symbol_156
      REAL(w2f__8) OpenAD_Symbol_157
      REAL(w2f__8) OpenAD_Symbol_158
      REAL(w2f__8) OpenAD_Symbol_159
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_160
      REAL(w2f__8) OpenAD_Symbol_161
      TYPE (OpenADTy_active) OpenAD_Symbol_162
      TYPE (OpenADTy_active) OpenAD_Symbol_163
      REAL(w2f__8) OpenAD_Symbol_164
      REAL(w2f__8) OpenAD_Symbol_165
      REAL(w2f__8) OpenAD_Symbol_166
      REAL(w2f__8) OpenAD_Symbol_167
      REAL(w2f__8) OpenAD_Symbol_168
      REAL(w2f__8) OpenAD_Symbol_169
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_170
      REAL(w2f__8) OpenAD_Symbol_171
      TYPE (OpenADTy_active) OpenAD_Symbol_172
      TYPE (OpenADTy_active) OpenAD_Symbol_173
      TYPE (OpenADTy_active) OpenAD_Symbol_174
      TYPE (OpenADTy_active) OpenAD_Symbol_175
      REAL(w2f__8) OpenAD_Symbol_176
      TYPE (OpenADTy_active) OpenAD_Symbol_177
      REAL(w2f__8) OpenAD_Symbol_178
      REAL(w2f__8) OpenAD_Symbol_179
      REAL(w2f__8) OpenAD_Symbol_18
      TYPE (OpenADTy_active) OpenAD_Symbol_180
      TYPE (OpenADTy_active) OpenAD_Symbol_181
      TYPE (OpenADTy_active) OpenAD_Symbol_182
      TYPE (OpenADTy_active) OpenAD_Symbol_183
      TYPE (OpenADTy_active) OpenAD_Symbol_184
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_30
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
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) OBJ
      TYPE (OpenADTy_active) G_OBJ0
      TYPE (OpenADTy_active) G_OBJ1
      TYPE (OpenADTy_active) G_OBJ2
      TYPE (OpenADTy_active) G_OBJ3
      TYPE (OpenADTy_active) G_OBJ4
      TYPE (OpenADTy_active) G_OBJ5
      TYPE (OpenADTy_active) X0
      TYPE (OpenADTy_active) X1
      TYPE (OpenADTy_active) X2
      TYPE (OpenADTy_active) X3
      TYPE (OpenADTy_active) X4
      TYPE (OpenADTy_active) X5
      TYPE (OpenADTy_active) H_OBJ0
      TYPE (OpenADTy_active) H_OBJ1
      TYPE (OpenADTy_active) H_OBJ2
      TYPE (OpenADTy_active) H_OBJ3
      TYPE (OpenADTy_active) H_OBJ4
      TYPE (OpenADTy_active) H_OBJ5
      TYPE (OpenADTy_active) H_OBJ6
      TYPE (OpenADTy_active) H_OBJ7
      TYPE (OpenADTy_active) H_OBJ8
      TYPE (OpenADTy_active) H_OBJ9
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
      TYPE (OpenADTy_active) H_OBJ20
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
      REAL(w2f__8) NORM
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
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X0)
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD INDEPENDENT(X3)
C$OPENAD INDEPENDENT(X4)
C$OPENAD INDEPENDENT(X5)
C$OPENAD DEPENDENT(OBJ)
C$OPENAD DEPENDENT(G_OBJ0)
C$OPENAD DEPENDENT(G_OBJ1)
C$OPENAD DEPENDENT(G_OBJ2)
C$OPENAD DEPENDENT(G_OBJ3)
C$OPENAD DEPENDENT(G_OBJ4)
C$OPENAD DEPENDENT(G_OBJ5)
C$OPENAD DEPENDENT(H_OBJ0)
C$OPENAD DEPENDENT(H_OBJ1)
C$OPENAD DEPENDENT(H_OBJ2)
C$OPENAD DEPENDENT(H_OBJ3)
C$OPENAD DEPENDENT(H_OBJ4)
C$OPENAD DEPENDENT(H_OBJ5)
C$OPENAD DEPENDENT(H_OBJ6)
C$OPENAD DEPENDENT(H_OBJ7)
C$OPENAD DEPENDENT(H_OBJ8)
C$OPENAD DEPENDENT(H_OBJ9)
C$OPENAD DEPENDENT(H_OBJ10)
C$OPENAD DEPENDENT(H_OBJ11)
C$OPENAD DEPENDENT(H_OBJ12)
C$OPENAD DEPENDENT(H_OBJ13)
C$OPENAD DEPENDENT(H_OBJ14)
C$OPENAD DEPENDENT(H_OBJ15)
C$OPENAD DEPENDENT(H_OBJ16)
C$OPENAD DEPENDENT(H_OBJ17)
C$OPENAD DEPENDENT(H_OBJ18)
C$OPENAD DEPENDENT(H_OBJ19)
C$OPENAD DEPENDENT(H_OBJ20)
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
      __value__(MATR0) = (__value__(X1) - __value__(X0))
      OpenAD_Symbol_0 = (__value__(X2) * 2.0D00 - __value__(X1) -
     >  __value__(X0))
      __value__(MATR1) = (SQRT3 * OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
      __value__(MATR2) = (__value__(X4) - __value__(X3))
      OpenAD_Symbol_4 = (__value__(X5) * 2.0D00 - __value__(X4) -
     >  __value__(X3))
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
      NORM = __value__(F)
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
      OpenAD_Symbol_155 = (OpenAD_Symbol_30 * OpenAD_Symbol_28)
      OpenAD_Symbol_156 = (OpenAD_Symbol_14 + OpenAD_Symbol_15)
      OpenAD_Symbol_157 = (OpenAD_Symbol_16 + OpenAD_Symbol_17)
      OpenAD_Symbol_158 = (OpenAD_Symbol_18 + OpenAD_Symbol_19)
      OpenAD_Symbol_159 = (OpenAD_Symbol_20 + OpenAD_Symbol_21)
      OpenAD_Symbol_160 = ((OpenAD_Symbol_49 +(OpenAD_Symbol_51 +
     >  OpenAD_Symbol_52) * OpenAD_Symbol_50) * OpenAD_Symbol_47 *
     >  OpenAD_Symbol_44)
      OpenAD_Symbol_161 = ((OpenAD_Symbol_39 + OpenAD_Symbol_40) *
     >  OpenAD_Symbol_38 * OpenAD_Symbol_35)
      CALL setderiv(__deriv__(MATR0), __deriv__(X1))
      CALL dec_deriv(__deriv__(MATR0), __deriv__(X0))
      CALL setderiv(__deriv__(MATR2), __deriv__(X4))
      CALL dec_deriv(__deriv__(MATR2), __deriv__(X3))
      CALL sax(OpenAD_Symbol_156, __deriv__(MATR0), __deriv__(M00))
      CALL sax(OpenAD_Symbol_158, __deriv__(MATR2), __deriv__(M22))
      CALL set_neg_deriv(__deriv__(OpenAD_Symbol_162), __deriv__(X0))
      CALL dec_deriv(__deriv__(OpenAD_Symbol_162), __deriv__(X1))
      CALL saxpy(2.0D00, __deriv__(X2), __deriv__(OpenAD_Symbol_162))
      CALL set_neg_deriv(__deriv__(OpenAD_Symbol_163), __deriv__(X3))
      CALL dec_deriv(__deriv__(OpenAD_Symbol_163), __deriv__(X4))
      CALL saxpy(2.0D00, __deriv__(X5), __deriv__(OpenAD_Symbol_163))
      CALL sax(OpenAD_Symbol_2, __deriv__(OpenAD_Symbol_162), __deriv__
     > (MATR1))
      CALL sax(OpenAD_Symbol_6, __deriv__(OpenAD_Symbol_163), __deriv__
     > (MATR3))
      CALL sax(OpenAD_Symbol_8, __deriv__(MATR0), __deriv__(M03))
      CALL saxpy(OpenAD_Symbol_9, __deriv__(MATR3), __deriv__(M03))
      CALL sax(OpenAD_Symbol_10, __deriv__(MATR1), __deriv__(M12))
      CALL saxpy(OpenAD_Symbol_11, __deriv__(MATR2), __deriv__(M12))
      CALL setderiv(__deriv__(G), __deriv__(M03))
      CALL dec_deriv(__deriv__(G), __deriv__(M12))
      CALL sax(2.0D00, __deriv__(M03), __deriv__(D00))
      CALL sax(2.0D00, __deriv__(M12), __deriv__(D11))
      CALL sax(OpenAD_Symbol_157, __deriv__(MATR1), __deriv__(M11))
      CALL sax(OpenAD_Symbol_159, __deriv__(MATR3), __deriv__(M33))
      CALL sax(OpenAD_Symbol_22, __deriv__(M00), __deriv__(D12))
      CALL saxpy(OpenAD_Symbol_23, __deriv__(M33), __deriv__(D12))
      CALL sax(OpenAD_Symbol_24, __deriv__(M11), __deriv__(D03))
      CALL saxpy(OpenAD_Symbol_25, __deriv__(M22), __deriv__(D03))
      CALL setderiv(__deriv__(F), __deriv__(D03))
      CALL inc_deriv(__deriv__(F), __deriv__(D12))
      CALL sax(OpenAD_Symbol_155, __deriv__(G), __deriv__(LOC1))
      CALL sax(OpenAD_Symbol_31, __deriv__(F), __deriv__(OBJ))
      CALL saxpy(OpenAD_Symbol_32, __deriv__(LOC1), __deriv__(OBJ))
      CALL sax(OpenAD_Symbol_161, __deriv__(G), __deriv__(LOC2))
      CALL sax(OpenAD_Symbol_160, __deriv__(G), __deriv__(GG))
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
      OpenAD_Symbol_164 = (2.0D00 * OpenAD_Symbol_56)
      OpenAD_Symbol_165 = (2.0D00 * OpenAD_Symbol_60)
      OpenAD_Symbol_166 = (OpenAD_Symbol_62 * INT((-1_w2f__i8)))
      OpenAD_Symbol_167 = (OpenAD_Symbol_63 * INT((-1_w2f__i8)))
      OpenAD_Symbol_168 = (2.0D00 * OpenAD_Symbol_64)
      OpenAD_Symbol_169 = (OpenAD_Symbol_66 * INT((-1_w2f__i8)))
      OpenAD_Symbol_170 = (OpenAD_Symbol_67 * INT((-1_w2f__i8)))
      OpenAD_Symbol_171 = (2.0D00 * OpenAD_Symbol_68)
      CALL setderiv(__deriv__(OpenAD_Symbol_172), __deriv__(LOC1))
      CALL sax(OpenAD_Symbol_53, __deriv__(F), __deriv__(G))
      CALL saxpy(OpenAD_Symbol_54, __deriv__(LOC2), __deriv__(G))
      CALL sax(OpenAD_Symbol_57, __deriv__(MATR0), __deriv__(ADJ_M0))
      CALL saxpy(OpenAD_Symbol_164, __deriv__(OpenAD_Symbol_172),
     >  __deriv__(ADJ_M0))
      CALL saxpy(OpenAD_Symbol_58, __deriv__(G), __deriv__(ADJ_M0))
      CALL saxpy(OpenAD_Symbol_59, __deriv__(MATR3), __deriv__(ADJ_M0))
      CALL sax(OpenAD_Symbol_61, __deriv__(MATR1), __deriv__(ADJ_M1))
      CALL saxpy(OpenAD_Symbol_165, __deriv__(OpenAD_Symbol_172),
     >  __deriv__(ADJ_M1))
      CALL saxpy(OpenAD_Symbol_166, __deriv__(G), __deriv__(ADJ_M1))
      CALL saxpy(OpenAD_Symbol_167, __deriv__(MATR2), __deriv__(ADJ_M1)
     > )
      CALL sax(OpenAD_Symbol_65, __deriv__(MATR2), __deriv__(ADJ_M2))
      CALL saxpy(OpenAD_Symbol_168, __deriv__(OpenAD_Symbol_172),
     >  __deriv__(ADJ_M2))
      CALL saxpy(OpenAD_Symbol_169, __deriv__(G), __deriv__(ADJ_M2))
      CALL saxpy(OpenAD_Symbol_170, __deriv__(MATR1), __deriv__(ADJ_M2)
     > )
      CALL sax(OpenAD_Symbol_69, __deriv__(MATR3), __deriv__(ADJ_M3))
      CALL saxpy(OpenAD_Symbol_171, __deriv__(OpenAD_Symbol_172),
     >  __deriv__(ADJ_M3))
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
      CALL setderiv(__deriv__(OpenAD_Symbol_173), __deriv__(LOC2))
      CALL sax(OpenAD_Symbol_75, __deriv__(ADJ_M3), __deriv__(LOC1))
      CALL setderiv(__deriv__(G_OBJ4), __deriv__(ADJ_M2))
      CALL dec_deriv(__deriv__(G_OBJ4), __deriv__(LOC1))
      CALL sax(2.0D00, __deriv__(LOC1), __deriv__(G_OBJ5))
      CALL sax(2.0D00, __deriv__(OpenAD_Symbol_173), __deriv__(LOC2))
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
      CALL setderiv(__deriv__(OpenAD_Symbol_174), __deriv__(M02))
      CALL inc_deriv(__deriv__(OpenAD_Symbol_174), __deriv__(M13))
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
      CALL saxpy(OpenAD_Symbol_100, __deriv__(OpenAD_Symbol_174),
     >  __deriv__(D01))
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
      CALL setderiv(__deriv__(OpenAD_Symbol_175), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_106, __deriv__(GG), __deriv__(
     > OpenAD_Symbol_175))
      CALL saxpy(OpenAD_Symbol_107, __deriv__(M23), __deriv__(
     > OpenAD_Symbol_175))
      CALL sax(OpenAD_Symbol_105, __deriv__(OpenAD_Symbol_175),
     >  __deriv__(F))
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
      OpenAD_Symbol_176 = (OpenAD_Symbol_108 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_111, __deriv__(R11), __deriv__(H_OBJ5))
      CALL sax(OpenAD_Symbol_176, __deriv__(R11), __deriv__(LOC1))
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
      CALL setderiv(__deriv__(OpenAD_Symbol_177), __deriv__(D01))
      CALL saxpy(OpenAD_Symbol_117, __deriv__(GG), __deriv__(
     > OpenAD_Symbol_177))
      CALL saxpy(OpenAD_Symbol_118, __deriv__(M01), __deriv__(
     > OpenAD_Symbol_177))
      CALL sax(OpenAD_Symbol_116, __deriv__(OpenAD_Symbol_177),
     >  __deriv__(F))
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
      OpenAD_Symbol_178 = (OpenAD_Symbol_119 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_122, __deriv__(R00), __deriv__(H_OBJ20))
      CALL sax(OpenAD_Symbol_178, __deriv__(R00), __deriv__(LOC1))
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
      OpenAD_Symbol_179 = (OpenAD_Symbol_138 * INT((-1_w2f__i8)))
      CALL setderiv(__deriv__(OpenAD_Symbol_180), __deriv__(M01))
      CALL inc_deriv(__deriv__(OpenAD_Symbol_180), __deriv__(M23))
      CALL sax(OpenAD_Symbol_124, __deriv__(LOC2), __deriv__(LOC1))
      CALL saxpy(OpenAD_Symbol_125, __deriv__(OpenAD_Symbol_180),
     >  __deriv__(LOC1))
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
      CALL sax(OpenAD_Symbol_179, __deriv__(R13), __deriv__(G))
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
      CALL setderiv(__deriv__(OpenAD_Symbol_181), __deriv__(G))
      CALL sax(OpenAD_Symbol_142, __deriv__(R12), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ12), __deriv__(OpenAD_Symbol_181))
      CALL dec_deriv(__deriv__(H_OBJ12), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ13), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ13), __deriv__(OpenAD_Symbol_181))
      CALL sax(1.2D+01, __deriv__(R13), __deriv__(H_OBJ14))
      CALL sax(OpenAD_Symbol_146, __deriv__(R02), __deriv__(G))
      OpenAD_Symbol_147 = (__value__(R03) + __value__(R12))
      __value__(F) = (SQRT3 * OpenAD_Symbol_147)
      OpenAD_Symbol_149 = SQRT3
      __value__(H_OBJ10) = (__value__(G) - __value__(F))
      __value__(H_OBJ6) = (__value__(F) + __value__(G))
      __value__(G) = (__value__(R02) * TWO3RD)
      OpenAD_Symbol_150 = TWO3RD
      CALL setderiv(__deriv__(OpenAD_Symbol_182), __deriv__(G))
      CALL setderiv(__deriv__(OpenAD_Symbol_183), __deriv__(R03))
      CALL inc_deriv(__deriv__(OpenAD_Symbol_183), __deriv__(R12))
      CALL sax(OpenAD_Symbol_150, __deriv__(R02), __deriv__(G))
      CALL sax(OpenAD_Symbol_149, __deriv__(OpenAD_Symbol_183),
     >  __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ10), __deriv__(OpenAD_Symbol_182))
      CALL dec_deriv(__deriv__(H_OBJ10), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ6), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ6), __deriv__(OpenAD_Symbol_182))
      OpenAD_Symbol_152 = (__value__(R03) - __value__(R12))
      __value__(F) = (SQRT3 * OpenAD_Symbol_152)
      OpenAD_Symbol_154 = SQRT3
      __value__(H_OBJ9) = (__value__(G) - __value__(F))
      __value__(H_OBJ7) = (__value__(F) + __value__(G))
      CALL setderiv(__deriv__(OpenAD_Symbol_184), __deriv__(R03))
      CALL dec_deriv(__deriv__(OpenAD_Symbol_184), __deriv__(R12))
      CALL sax(OpenAD_Symbol_154, __deriv__(OpenAD_Symbol_184),
     >  __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ9), __deriv__(G))
      CALL dec_deriv(__deriv__(H_OBJ9), __deriv__(F))
      CALL setderiv(__deriv__(H_OBJ7), __deriv__(F))
      CALL inc_deriv(__deriv__(H_OBJ7), __deriv__(G))
      END SUBROUTINE
