
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
      SUBROUTINE head(X, F)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 9)
      TYPE (OpenADTy_active) F(1 : 7)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) H
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_121
      REAL(w2f__8) OpenAD_Symbol_122
      REAL(w2f__8) OpenAD_Symbol_125
      REAL(w2f__8) OpenAD_Symbol_127
      REAL(w2f__8) OpenAD_Symbol_128
      REAL(w2f__8) OpenAD_Symbol_129
      REAL(w2f__8) OpenAD_Symbol_130
      REAL(w2f__8) OpenAD_Symbol_131
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
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_56
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
      REAL(w2f__8) OpenAD_Symbol_68
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
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
      REAL(w2f__8) OpenAD_Symbol_87
      REAL(w2f__8) OpenAD_Symbol_88
      REAL(w2f__8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_Symbol_92
      REAL(w2f__8) OpenAD_Symbol_93
      REAL(w2f__8) OpenAD_Symbol_95
      REAL(w2f__8) OpenAD_Symbol_96
      REAL(w2f__8) OpenAD_Symbol_97
      REAL(w2f__8) OpenAD_Symbol_98
      REAL(w2f__8) OpenAD_Symbol_99
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(F)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      H = 2.5D-01
      OpenAD_Symbol_8 = (H * H)
      OpenAD_Symbol_5 = (__value__(X(8)) * OpenAD_Symbol_8)
      OpenAD_Symbol_1 = (OpenAD_Symbol_5 / 1.2D+01)
      OpenAD_Symbol_16 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_Symbol_14 = (__value__(X(1)) / OpenAD_Symbol_16)
      OpenAD_Symbol_12 = EXP(OpenAD_Symbol_14)
      OpenAD_Symbol_2 = (OpenAD_Symbol_12 * 1.0D+01 + 1.0D00)
      __value__(F(1)) = (__value__(X(1)) *(-2.0D00) + OpenAD_Symbol_1 *
     >  OpenAD_Symbol_2)
      OpenAD_Symbol_9 = OpenAD_Symbol_8
      OpenAD_Symbol_6 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_3 = OpenAD_Symbol_2
      OpenAD_Symbol_17 = (INT(1_w2f__i8) / OpenAD_Symbol_16)
      OpenAD_Symbol_20 = __value__(X(9))
      OpenAD_Symbol_21 = __value__(X(1))
      OpenAD_Symbol_18 = (-(__value__(X(1)) /(OpenAD_Symbol_16 *
     >  OpenAD_Symbol_16)))
      OpenAD_Symbol_15 = EXP(OpenAD_Symbol_14)
      OpenAD_Symbol_4 = OpenAD_Symbol_1
      OpenAD_Symbol_135 = (OpenAD_Symbol_15 * 1.0D+01)
      OpenAD_Symbol_136 = (OpenAD_Symbol_9 * OpenAD_Symbol_6 *
     >  OpenAD_Symbol_3)
      OpenAD_Symbol_137 = (OpenAD_Symbol_17 * OpenAD_Symbol_135 *
     >  OpenAD_Symbol_4)
      OpenAD_Symbol_138 = (OpenAD_Symbol_18 * OpenAD_Symbol_135 *
     >  OpenAD_Symbol_4)
      OpenAD_Symbol_139 = (OpenAD_Symbol_20 * OpenAD_Symbol_138)
      OpenAD_Symbol_140 = (OpenAD_Symbol_21 * OpenAD_Symbol_138)
      CALL sax(-2.0D00, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_Symbol_136, __deriv__(X(8)), __deriv__(F(1)))
      CALL saxpy(OpenAD_Symbol_137, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_Symbol_139, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_Symbol_140, __deriv__(X(9)), __deriv__(F(1)))
      OpenAD_Symbol_28 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_Symbol_26 = (__value__(X(1)) / OpenAD_Symbol_28)
      OpenAD_Symbol_22 = EXP(OpenAD_Symbol_26)
      OpenAD_Symbol_37 = (H * H)
      OpenAD_Symbol_34 = (__value__(X(8)) * OpenAD_Symbol_37)
      OpenAD_Symbol_23 = (OpenAD_Symbol_34 / 1.2D+01)
      __value__(F(2)) = (__value__(X(1)) + OpenAD_Symbol_22 *
     >  OpenAD_Symbol_23)
      OpenAD_Symbol_29 = (INT(1_w2f__i8) / OpenAD_Symbol_28)
      OpenAD_Symbol_32 = __value__(X(9))
      OpenAD_Symbol_33 = __value__(X(1))
      OpenAD_Symbol_30 = (-(__value__(X(1)) /(OpenAD_Symbol_28 *
     >  OpenAD_Symbol_28)))
      OpenAD_Symbol_27 = EXP(OpenAD_Symbol_26)
      OpenAD_Symbol_24 = OpenAD_Symbol_23
      OpenAD_Symbol_38 = OpenAD_Symbol_37
      OpenAD_Symbol_35 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_25 = OpenAD_Symbol_22
      OpenAD_Symbol_141 = (OpenAD_Symbol_27 * OpenAD_Symbol_24)
      OpenAD_Symbol_142 = (OpenAD_Symbol_38 * OpenAD_Symbol_35 *
     >  OpenAD_Symbol_25)
      OpenAD_Symbol_143 = (OpenAD_Symbol_29 * OpenAD_Symbol_141)
      OpenAD_Symbol_144 = (OpenAD_Symbol_30 * OpenAD_Symbol_141)
      OpenAD_Symbol_145 = (OpenAD_Symbol_32 * OpenAD_Symbol_144)
      OpenAD_Symbol_146 = (OpenAD_Symbol_33 * OpenAD_Symbol_144)
      CALL setderiv(__deriv__(F(2)), __deriv__(X(1)))
      CALL saxpy(OpenAD_Symbol_142, __deriv__(X(8)), __deriv__(F(2)))
      CALL saxpy(OpenAD_Symbol_143, __deriv__(X(1)), __deriv__(F(2)))
      CALL saxpy(OpenAD_Symbol_145, __deriv__(X(1)), __deriv__(F(2)))
      CALL saxpy(OpenAD_Symbol_146, __deriv__(X(9)), __deriv__(F(2)))
      DO I = 2, 6, 1
        OpenAD_Symbol_46 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_Symbol_44 = (__value__(X(I)) / OpenAD_Symbol_46)
        OpenAD_Symbol_40 = EXP(OpenAD_Symbol_44)
        OpenAD_Symbol_55 = (H * H)
        OpenAD_Symbol_52 = (__value__(X(8)) * OpenAD_Symbol_55)
        OpenAD_Symbol_41 = (OpenAD_Symbol_52 / 1.2D+01)
        __value__(F(INT(I +(-1)))) = (__value__(X(I)) + __value__(F(I +
     >  (-1))) + OpenAD_Symbol_40 * OpenAD_Symbol_41)
        OpenAD_Symbol_47 = (INT(1_w2f__i8) / OpenAD_Symbol_46)
        OpenAD_Symbol_50 = __value__(X(9))
        OpenAD_Symbol_51 = __value__(X(I))
        OpenAD_Symbol_48 = (-(__value__(X(I)) /(OpenAD_Symbol_46 *
     >  OpenAD_Symbol_46)))
        OpenAD_Symbol_45 = EXP(OpenAD_Symbol_44)
        OpenAD_Symbol_42 = OpenAD_Symbol_41
        OpenAD_Symbol_56 = OpenAD_Symbol_55
        OpenAD_Symbol_53 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_Symbol_43 = OpenAD_Symbol_40
        OpenAD_Symbol_147 = (OpenAD_Symbol_45 * OpenAD_Symbol_42)
        OpenAD_Symbol_148 = (OpenAD_Symbol_56 * OpenAD_Symbol_53 *
     >  OpenAD_Symbol_43)
        OpenAD_Symbol_149 = (OpenAD_Symbol_47 * OpenAD_Symbol_147)
        OpenAD_Symbol_150 = (OpenAD_Symbol_48 * OpenAD_Symbol_147)
        OpenAD_Symbol_151 = (OpenAD_Symbol_50 * OpenAD_Symbol_150)
        OpenAD_Symbol_152 = (OpenAD_Symbol_51 * OpenAD_Symbol_150)
        CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(F(I + (-1))))
        CALL setderiv(__deriv__(F(I + (-1))), __deriv__(X(I)))
        CALL inc_deriv(__deriv__(F(I + (-1))), __deriv__(OpenAD_prop_0)
     > )
        CALL saxpy(OpenAD_Symbol_148, __deriv__(X(8)), __deriv__(F(I +
     >  (-1))))
        CALL saxpy(OpenAD_Symbol_149, __deriv__(X(I)), __deriv__(F(I +
     >  (-1))))
        CALL saxpy(OpenAD_Symbol_151, __deriv__(X(I)), __deriv__(F(I +
     >  (-1))))
        CALL saxpy(OpenAD_Symbol_152, __deriv__(X(9)), __deriv__(F(I +
     >  (-1))))
        OpenAD_Symbol_64 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_Symbol_62 = (__value__(X(I)) / OpenAD_Symbol_64)
        OpenAD_Symbol_58 = EXP(OpenAD_Symbol_62)
        OpenAD_Symbol_73 = (H * H)
        OpenAD_Symbol_70 = (__value__(X(8)) * OpenAD_Symbol_73)
        OpenAD_Symbol_59 = (OpenAD_Symbol_70 /
     >  1.19999999999999995559D00)
        __value__(F(INT(I))) = (OpenAD_Symbol_58 * OpenAD_Symbol_59 +
     >  __value__(F(I)) - __value__(X(I)) * 2.0D00)
        OpenAD_Symbol_65 = (INT(1_w2f__i8) / OpenAD_Symbol_64)
        OpenAD_Symbol_68 = __value__(X(9))
        OpenAD_Symbol_69 = __value__(X(I))
        OpenAD_Symbol_66 = (-(__value__(X(I)) /(OpenAD_Symbol_64 *
     >  OpenAD_Symbol_64)))
        OpenAD_Symbol_63 = EXP(OpenAD_Symbol_62)
        OpenAD_Symbol_60 = OpenAD_Symbol_59
        OpenAD_Symbol_74 = OpenAD_Symbol_73
        OpenAD_Symbol_71 = (INT(1_w2f__i8) / 1.19999999999999995559D00)
        OpenAD_Symbol_61 = OpenAD_Symbol_58
        OpenAD_Symbol_153 = (OpenAD_Symbol_63 * OpenAD_Symbol_60)
        OpenAD_Symbol_154 = (OpenAD_Symbol_74 * OpenAD_Symbol_71 *
     >  OpenAD_Symbol_61)
        OpenAD_Symbol_155 = (OpenAD_Symbol_65 * OpenAD_Symbol_153)
        OpenAD_Symbol_156 = (OpenAD_Symbol_66 * OpenAD_Symbol_153)
        OpenAD_Symbol_157 = (OpenAD_Symbol_68 * OpenAD_Symbol_156)
        OpenAD_Symbol_158 = (OpenAD_Symbol_69 * OpenAD_Symbol_156)
        CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(F(I)))
        CALL setderiv(__deriv__(F(I)), __deriv__(OpenAD_prop_1))
        CALL saxpy(-2.0D00, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_Symbol_154, __deriv__(X(8)), __deriv__(F(I)))
        CALL saxpy(OpenAD_Symbol_155, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_Symbol_157, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_Symbol_158, __deriv__(X(9)), __deriv__(F(I)))
        OpenAD_Symbol_83 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_Symbol_81 = (__value__(X(I)) / OpenAD_Symbol_83)
        OpenAD_Symbol_77 = EXP(OpenAD_Symbol_81)
        OpenAD_Symbol_92 = (H * H)
        OpenAD_Symbol_89 = (__value__(X(8)) * OpenAD_Symbol_92)
        OpenAD_Symbol_78 = (OpenAD_Symbol_89 / 1.2D+01)
        __value__(F(INT(I + 1))) = (__value__(X(I)) + OpenAD_Symbol_77
     >  * OpenAD_Symbol_78)
        OpenAD_Symbol_84 = (INT(1_w2f__i8) / OpenAD_Symbol_83)
        OpenAD_Symbol_87 = __value__(X(9))
        OpenAD_Symbol_88 = __value__(X(I))
        OpenAD_Symbol_85 = (-(__value__(X(I)) /(OpenAD_Symbol_83 *
     >  OpenAD_Symbol_83)))
        OpenAD_Symbol_82 = EXP(OpenAD_Symbol_81)
        OpenAD_Symbol_79 = OpenAD_Symbol_78
        OpenAD_Symbol_93 = OpenAD_Symbol_92
        OpenAD_Symbol_90 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_Symbol_80 = OpenAD_Symbol_77
        OpenAD_Symbol_159 = (OpenAD_Symbol_82 * OpenAD_Symbol_79)
        OpenAD_Symbol_160 = (OpenAD_Symbol_93 * OpenAD_Symbol_90 *
     >  OpenAD_Symbol_80)
        OpenAD_Symbol_161 = (OpenAD_Symbol_84 * OpenAD_Symbol_159)
        OpenAD_Symbol_162 = (OpenAD_Symbol_85 * OpenAD_Symbol_159)
        OpenAD_Symbol_163 = (OpenAD_Symbol_87 * OpenAD_Symbol_162)
        OpenAD_Symbol_164 = (OpenAD_Symbol_88 * OpenAD_Symbol_162)
        CALL setderiv(__deriv__(F(I + 1)), __deriv__(X(I)))
        CALL saxpy(OpenAD_Symbol_160, __deriv__(X(8)), __deriv__(F(I +
     >  1)))
        CALL saxpy(OpenAD_Symbol_161, __deriv__(X(I)), __deriv__(F(I +
     >  1)))
        CALL saxpy(OpenAD_Symbol_163, __deriv__(X(I)), __deriv__(F(I +
     >  1)))
        CALL saxpy(OpenAD_Symbol_164, __deriv__(X(9)), __deriv__(F(I +
     >  1)))
      END DO
      OpenAD_Symbol_101 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_Symbol_99 = (__value__(X(7)) / OpenAD_Symbol_101)
      OpenAD_Symbol_95 = EXP(OpenAD_Symbol_99)
      OpenAD_Symbol_110 = (H * H)
      OpenAD_Symbol_107 = (__value__(X(8)) * OpenAD_Symbol_110)
      OpenAD_Symbol_96 = (OpenAD_Symbol_107 / 1.2D+01)
      __value__(F(6)) = (__value__(X(7)) + __value__(F(6)) +
     >  OpenAD_Symbol_95 * OpenAD_Symbol_96)
      OpenAD_Symbol_102 = (INT(1_w2f__i8) / OpenAD_Symbol_101)
      OpenAD_Symbol_105 = __value__(X(9))
      OpenAD_Symbol_106 = __value__(X(7))
      OpenAD_Symbol_103 = (-(__value__(X(7)) /(OpenAD_Symbol_101 *
     >  OpenAD_Symbol_101)))
      OpenAD_Symbol_100 = EXP(OpenAD_Symbol_99)
      OpenAD_Symbol_97 = OpenAD_Symbol_96
      OpenAD_Symbol_111 = OpenAD_Symbol_110
      OpenAD_Symbol_108 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_98 = OpenAD_Symbol_95
      OpenAD_Symbol_165 = (OpenAD_Symbol_100 * OpenAD_Symbol_97)
      OpenAD_Symbol_166 = (OpenAD_Symbol_111 * OpenAD_Symbol_108 *
     >  OpenAD_Symbol_98)
      OpenAD_Symbol_167 = (OpenAD_Symbol_102 * OpenAD_Symbol_165)
      OpenAD_Symbol_168 = (OpenAD_Symbol_103 * OpenAD_Symbol_165)
      OpenAD_Symbol_169 = (OpenAD_Symbol_105 * OpenAD_Symbol_168)
      OpenAD_Symbol_170 = (OpenAD_Symbol_106 * OpenAD_Symbol_168)
      CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(F(6)))
      CALL setderiv(__deriv__(F(6)), __deriv__(X(7)))
      CALL inc_deriv(__deriv__(F(6)), __deriv__(OpenAD_prop_2))
      CALL saxpy(OpenAD_Symbol_166, __deriv__(X(8)), __deriv__(F(6)))
      CALL saxpy(OpenAD_Symbol_167, __deriv__(X(7)), __deriv__(F(6)))
      CALL saxpy(OpenAD_Symbol_169, __deriv__(X(7)), __deriv__(F(6)))
      CALL saxpy(OpenAD_Symbol_170, __deriv__(X(9)), __deriv__(F(6)))
      __value__(F(7)) = (__value__(F(7)) - __value__(X(7)) * 2.0D00)
      CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(F(7)))
      CALL setderiv(__deriv__(F(7)), __deriv__(OpenAD_prop_3))
      CALL saxpy(-2.0D00, __deriv__(X(7)), __deriv__(F(7)))
      OpenAD_Symbol_121 = (H * H)
      OpenAD_Symbol_118 = (__value__(X(8)) * OpenAD_Symbol_121)
      OpenAD_Symbol_114 = (OpenAD_Symbol_118 / 1.2D+01)
      OpenAD_Symbol_129 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_Symbol_127 = (__value__(X(7)) / OpenAD_Symbol_129)
      OpenAD_Symbol_125 = EXP(OpenAD_Symbol_127)
      OpenAD_Symbol_115 = (OpenAD_Symbol_125 * 1.0D+01 + 1.0D00)
      __value__(F(7)) = (__value__(F(7)) + OpenAD_Symbol_114 *
     >  OpenAD_Symbol_115)
      OpenAD_Symbol_122 = OpenAD_Symbol_121
      OpenAD_Symbol_119 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_116 = OpenAD_Symbol_115
      OpenAD_Symbol_130 = (INT(1_w2f__i8) / OpenAD_Symbol_129)
      OpenAD_Symbol_133 = __value__(X(9))
      OpenAD_Symbol_134 = __value__(X(7))
      OpenAD_Symbol_131 = (-(__value__(X(7)) /(OpenAD_Symbol_129 *
     >  OpenAD_Symbol_129)))
      OpenAD_Symbol_128 = EXP(OpenAD_Symbol_127)
      OpenAD_Symbol_117 = OpenAD_Symbol_114
      OpenAD_Symbol_171 = (OpenAD_Symbol_128 * 1.0D+01)
      OpenAD_Symbol_172 = (OpenAD_Symbol_122 * OpenAD_Symbol_119 *
     >  OpenAD_Symbol_116)
      OpenAD_Symbol_173 = (OpenAD_Symbol_130 * OpenAD_Symbol_171 *
     >  OpenAD_Symbol_117)
      OpenAD_Symbol_174 = (OpenAD_Symbol_131 * OpenAD_Symbol_171 *
     >  OpenAD_Symbol_117)
      OpenAD_Symbol_175 = (OpenAD_Symbol_133 * OpenAD_Symbol_174)
      OpenAD_Symbol_176 = (OpenAD_Symbol_134 * OpenAD_Symbol_174)
      CALL setderiv(__deriv__(OpenAD_prop_4), __deriv__(F(7)))
      CALL setderiv(__deriv__(F(7)), __deriv__(OpenAD_prop_4))
      CALL saxpy(OpenAD_Symbol_172, __deriv__(X(8)), __deriv__(F(7)))
      CALL saxpy(OpenAD_Symbol_173, __deriv__(X(7)), __deriv__(F(7)))
      CALL saxpy(OpenAD_Symbol_175, __deriv__(X(7)), __deriv__(F(7)))
      CALL saxpy(OpenAD_Symbol_176, __deriv__(X(9)), __deriv__(F(7)))
      END SUBROUTINE
