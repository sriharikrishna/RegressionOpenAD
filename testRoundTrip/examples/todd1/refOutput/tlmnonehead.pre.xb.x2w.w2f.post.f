
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(OBJ, G_OBJ0, G_OBJ1, G_OBJ2, G_OBJ3, G_OBJ4, G_OBJ
     +5, X0, X1, X2, X3, X4, X5, H_OBJ0, H_OBJ1, H_OBJ2, H_OBJ3, H_OBJ4,
     + H_OBJ5, H_OBJ6, H_OBJ7, H_OBJ8, H_OBJ9, H_OBJ10, H_OBJ11, H_OBJ12
     +, H_OBJ13, H_OBJ14, H_OBJ15, H_OBJ16, H_OBJ17, H_OBJ18, H_OBJ19, H
     +_OBJ20)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_79
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_10
      type(active) :: OpenAD_prop_11
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
      type(active) :: OBJ
      type(active) :: G_OBJ0
      type(active) :: G_OBJ1
      type(active) :: G_OBJ2
      type(active) :: G_OBJ3
      type(active) :: G_OBJ4
      type(active) :: G_OBJ5
      type(active) :: X0
      type(active) :: X1
      type(active) :: X2
      type(active) :: X3
      type(active) :: X4
      type(active) :: X5
      type(active) :: H_OBJ0
      type(active) :: H_OBJ1
      type(active) :: H_OBJ2
      type(active) :: H_OBJ3
      type(active) :: H_OBJ4
      type(active) :: H_OBJ5
      type(active) :: H_OBJ6
      type(active) :: H_OBJ7
      type(active) :: H_OBJ8
      type(active) :: H_OBJ9
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
      type(active) :: H_OBJ20
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
      REAL(w2f__8) NORM
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
      REAL(w2f__8) OpenAD_Symbol_18
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
      MATR0%v = (X1%v-X0%v)
      OpenAD_Symbol_0 = (X2%v*2.0D00-X1%v-X0%v)
      MATR1%v = (SQRT3*OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
      MATR2%v = (X4%v-X3%v)
      OpenAD_Symbol_4 = (X5%v*2.0D00-X4%v-X3%v)
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
      NORM = F%v
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
      OpenAD_Symbol_155 = (OpenAD_Symbol_30*OpenAD_Symbol_28)
      OpenAD_Symbol_156 = (OpenAD_Symbol_14+OpenAD_Symbol_15)
      OpenAD_Symbol_157 = (OpenAD_Symbol_16+OpenAD_Symbol_17)
      OpenAD_Symbol_158 = (OpenAD_Symbol_18+OpenAD_Symbol_19)
      OpenAD_Symbol_159 = (OpenAD_Symbol_20+OpenAD_Symbol_21)
      OpenAD_Symbol_160 = ((OpenAD_Symbol_49+(OpenAD_Symbol_51+OpenAD_Sy
     +mbol_52)*OpenAD_Symbol_50)*OpenAD_Symbol_47*OpenAD_Symbol_44)
      OpenAD_Symbol_161 = ((OpenAD_Symbol_39+OpenAD_Symbol_40)*OpenAD_Sy
     +mbol_38*OpenAD_Symbol_35)
      CALL setderiv(MATR0,X1)
      CALL dec_deriv(MATR0,X0)
      CALL setderiv(MATR2,X4)
      CALL dec_deriv(MATR2,X3)
      CALL sax(OpenAD_Symbol_156,MATR0,M00)
      CALL sax(OpenAD_Symbol_158,MATR2,M22)
      CALL set_neg_deriv(OpenAD_prop_0,X0)
      CALL dec_deriv(OpenAD_prop_0,X1)
      CALL saxpy(2.0D00,X2,OpenAD_prop_0)
      CALL set_neg_deriv(OpenAD_prop_1,X3)
      CALL dec_deriv(OpenAD_prop_1,X4)
      CALL saxpy(2.0D00,X5,OpenAD_prop_1)
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
      CALL sax(OpenAD_Symbol_157,MATR1,M11)
      CALL sax(OpenAD_Symbol_159,MATR3,M33)
      CALL sax(OpenAD_Symbol_22,M00,D12)
      CALL saxpy(OpenAD_Symbol_23,M33,D12)
      CALL sax(OpenAD_Symbol_24,M11,D03)
      CALL saxpy(OpenAD_Symbol_25,M22,D03)
      CALL setderiv(F,D03)
      CALL inc_deriv(F,D12)
      CALL sax(OpenAD_Symbol_155,G,LOC1)
      CALL sax(OpenAD_Symbol_31,F,OBJ)
      CALL saxpy(OpenAD_Symbol_32,LOC1,OBJ)
      CALL sax(OpenAD_Symbol_161,G,LOC2)
      CALL sax(OpenAD_Symbol_160,G,GG)
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
      OpenAD_Symbol_162 = (2.0D00*OpenAD_Symbol_56)
      OpenAD_Symbol_163 = (2.0D00*OpenAD_Symbol_60)
      OpenAD_Symbol_164 = (OpenAD_Symbol_62*INT((-1_w2f__i8)))
      OpenAD_Symbol_165 = (OpenAD_Symbol_63*INT((-1_w2f__i8)))
      OpenAD_Symbol_166 = (2.0D00*OpenAD_Symbol_64)
      OpenAD_Symbol_167 = (OpenAD_Symbol_66*INT((-1_w2f__i8)))
      OpenAD_Symbol_168 = (OpenAD_Symbol_67*INT((-1_w2f__i8)))
      OpenAD_Symbol_169 = (2.0D00*OpenAD_Symbol_68)
      CALL setderiv(OpenAD_prop_2,LOC1)
      CALL sax(OpenAD_Symbol_53,F,G)
      CALL saxpy(OpenAD_Symbol_54,LOC2,G)
      CALL sax(OpenAD_Symbol_57,MATR0,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_162,OpenAD_prop_2,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_58,G,ADJ_M0)
      CALL saxpy(OpenAD_Symbol_59,MATR3,ADJ_M0)
      CALL sax(OpenAD_Symbol_61,MATR1,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_163,OpenAD_prop_2,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_164,G,ADJ_M1)
      CALL saxpy(OpenAD_Symbol_165,MATR2,ADJ_M1)
      CALL sax(OpenAD_Symbol_65,MATR2,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_166,OpenAD_prop_2,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_167,G,ADJ_M2)
      CALL saxpy(OpenAD_Symbol_168,MATR1,ADJ_M2)
      CALL sax(OpenAD_Symbol_69,MATR3,ADJ_M3)
      CALL saxpy(OpenAD_Symbol_169,OpenAD_prop_2,ADJ_M3)
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
      OpenAD_Symbol_170 = (OpenAD_Symbol_108*INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_111,R11,H_OBJ5)
      CALL sax(OpenAD_Symbol_170,R11,LOC1)
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
      OpenAD_Symbol_171 = (OpenAD_Symbol_119*INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_122,R00,H_OBJ20)
      CALL sax(OpenAD_Symbol_171,R00,LOC1)
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
      OpenAD_Symbol_172 = (OpenAD_Symbol_138*INT((-1_w2f__i8)))
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
      CALL sax(OpenAD_Symbol_172,R13,G)
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
      CALL setderiv(OpenAD_prop_11,R03)
      CALL dec_deriv(OpenAD_prop_11,R12)
      CALL sax(OpenAD_Symbol_154,OpenAD_prop_11,F)
      CALL setderiv(H_OBJ9,G)
      CALL dec_deriv(H_OBJ9,F)
      CALL setderiv(H_OBJ7,F)
      CALL inc_deriv(H_OBJ7,G)
      END SUBROUTINE
