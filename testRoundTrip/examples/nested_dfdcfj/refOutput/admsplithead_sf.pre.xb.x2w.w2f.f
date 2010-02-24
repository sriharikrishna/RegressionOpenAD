
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
      SUBROUTINE head(NX, NY, X, FVEC, R)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_78
      INTEGER(w2f__i8) OpenAD_Symbol_79
      INTEGER(w2f__i8) OpenAD_Symbol_80
      INTEGER(w2f__i8) OpenAD_Symbol_81
      INTEGER(w2f__i8) OpenAD_Symbol_82
      INTEGER(w2f__i8) OpenAD_Symbol_83
      TYPE (OpenADTy_active) OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) NX
      INTEGER(w2f__i4) NY
      TYPE (OpenADTy_active) X(1 : INT((NX * NY)))
      TYPE (OpenADTy_active) FVEC(1 : INT((NX * NY)))
      REAL(w2f__8) R
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) FOUR
      PARAMETER ( FOUR = 4.0D00)
      REAL(w2f__8) HX
      REAL(w2f__8) HX2
      REAL(w2f__8) HY
      REAL(w2f__8) HY2
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) N
      REAL(w2f__8) NXP1
      REAL(w2f__8) NYP1
      REAL(w2f__8) ONE
      PARAMETER ( ONE = 1.0D00)
      REAL(w2f__8) THREE
      PARAMETER ( THREE = 3.0D00)
      REAL(w2f__8) TWO
      PARAMETER ( TWO = 2.0D00)
      REAL(w2f__8) ZERO
      PARAMETER ( ZERO = 0.0D00)
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_184
      REAL(w2f__8) OpenAD_Symbol_185
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(FVEC)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      N = (NX * NY)
      NXP1 = (NX + 1)
      NYP1 = (NY + 1)
      HX = (1.0D00 / NXP1)
      HY = (1.0D00 / NYP1)
      HY2 = (HY * HY)
      HX2 = (HX * HX)
      CALL foo(NX, NY, __deriv__(X), __deriv__(FVEC), R, N, HX, HY, HY2
     > , HX2)
      DO K = 1, N, 1
        __value__(FVEC(INT(K))) = (__value__(FVEC(K)) * HX2 * HY2)
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      N = (NX * NY)
      NXP1 = (NX + 1)
      NYP1 = (NY + 1)
      HX = (1.0D00 / NXP1)
      HY = (1.0D00 / NYP1)
      HY2 = (HY * HY)
      HX2 = (HX * HX)
      CALL foo(NX, NY, __deriv__(X), __deriv__(FVEC), R, N, HX, HY, HY2
     > , HX2)
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(NX)
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(NY)
      OpenAD_Symbol_80 = 0_w2f__i8
      DO K = 1, N, 1
        OpenAD_Symbol_0 = (HX2 * HY2)
        OpenAD_Symbol_3 = (__value__(FVEC(K)) * OpenAD_Symbol_0)
        OpenAD_Symbol_1 = OpenAD_Symbol_0
        __value__(FVEC(INT(K))) = OpenAD_Symbol_3
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_Symbol_1)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
        OpenAD_Symbol_80 = (INT(OpenAD_Symbol_80) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_80)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_78)
      OpenAD_Symbol_79 = 1
      DO WHILE(INT(OpenAD_Symbol_79) .LE. INT(OpenAD_Symbol_78))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_184)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_185)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_185, __deriv__(FVEC(INT(
     > OpenAD_Symbol_184))), __deriv__(OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_184))))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(FVEC(INT(
     > OpenAD_Symbol_184))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        OpenAD_Symbol_79 = INT(OpenAD_Symbol_79) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(NY)
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(NX)
      CALL foo(NX, NY, __deriv__(X), __deriv__(FVEC), R, N, HX, HY, HY2
     > , HX2)
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
      N = (NX * NY)
      NXP1 = (NX + 1)
      NYP1 = (NY + 1)
      HX = (1.0D00 / NXP1)
      HY = (1.0D00 / NYP1)
      HY2 = (HY * HY)
      HX2 = (HX * HX)
      CALL foo(NX, NY, __deriv__(X), __deriv__(FVEC), R, N, HX, HY, HY2
     > , HX2)
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(NX)
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(NY)
      OpenAD_Symbol_83 = 0_w2f__i8
      DO K = 1, N, 1
        OpenAD_Symbol_0 = (HX2 * HY2)
        OpenAD_Symbol_3 = (__value__(FVEC(K)) * OpenAD_Symbol_0)
        OpenAD_Symbol_1 = OpenAD_Symbol_0
        __value__(FVEC(INT(K))) = OpenAD_Symbol_3
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_Symbol_1)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
        OpenAD_Symbol_83 = (INT(OpenAD_Symbol_83) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_83)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_81)
      OpenAD_Symbol_82 = 1
      DO WHILE(INT(OpenAD_Symbol_82) .LE. INT(OpenAD_Symbol_81))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_184)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_185)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_185, __deriv__(FVEC(INT(
     > OpenAD_Symbol_184))), __deriv__(OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_184))))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(FVEC(INT(
     > OpenAD_Symbol_184))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        OpenAD_Symbol_82 = INT(OpenAD_Symbol_82) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(NY)
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(NX)
      CALL foo(NX, NY, __deriv__(X), __deriv__(FVEC), R, N, HX, HY, HY2
     > , HX2)
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE foo(NX, NY, X, FVEC, R, N, HX, HY, HY2, HX2)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_100
      INTEGER(w2f__i8) OpenAD_Symbol_101
      INTEGER(w2f__i8) OpenAD_Symbol_102
      INTEGER(w2f__i8) OpenAD_Symbol_103
      INTEGER(w2f__i8) OpenAD_Symbol_104
      INTEGER(w2f__i8) OpenAD_Symbol_105
      INTEGER(w2f__i8) OpenAD_Symbol_106
      INTEGER(w2f__i8) OpenAD_Symbol_107
      INTEGER(w2f__i8) OpenAD_Symbol_108
      INTEGER(w2f__i8) OpenAD_Symbol_109
      INTEGER(w2f__i8) OpenAD_Symbol_110
      INTEGER(w2f__i8) OpenAD_Symbol_111
      INTEGER(w2f__i8) OpenAD_Symbol_112
      INTEGER(w2f__i8) OpenAD_Symbol_113
      INTEGER(w2f__i8) OpenAD_Symbol_114
      INTEGER(w2f__i8) OpenAD_Symbol_115
      INTEGER(w2f__i8) OpenAD_Symbol_116
      INTEGER(w2f__i8) OpenAD_Symbol_117
      INTEGER(w2f__i8) OpenAD_Symbol_118
      INTEGER(w2f__i8) OpenAD_Symbol_119
      INTEGER(w2f__i8) OpenAD_Symbol_120
      INTEGER(w2f__i8) OpenAD_Symbol_121
      INTEGER(w2f__i8) OpenAD_Symbol_122
      INTEGER(w2f__i8) OpenAD_Symbol_123
      INTEGER(w2f__i8) OpenAD_Symbol_124
      INTEGER(w2f__i8) OpenAD_Symbol_125
      INTEGER(w2f__i8) OpenAD_Symbol_126
      INTEGER(w2f__i8) OpenAD_Symbol_127
      INTEGER(w2f__i8) OpenAD_Symbol_128
      INTEGER(w2f__i8) OpenAD_Symbol_129
      INTEGER(w2f__i8) OpenAD_Symbol_130
      INTEGER(w2f__i8) OpenAD_Symbol_131
      INTEGER(w2f__i8) OpenAD_Symbol_132
      INTEGER(w2f__i8) OpenAD_Symbol_133
      INTEGER(w2f__i8) OpenAD_Symbol_134
      INTEGER(w2f__i8) OpenAD_Symbol_135
      INTEGER(w2f__i8) OpenAD_Symbol_136
      INTEGER(w2f__i8) OpenAD_Symbol_137
      INTEGER(w2f__i8) OpenAD_Symbol_138
      INTEGER(w2f__i8) OpenAD_Symbol_139
      INTEGER(w2f__i8) OpenAD_Symbol_140
      INTEGER(w2f__i8) OpenAD_Symbol_141
      INTEGER(w2f__i8) OpenAD_Symbol_142
      INTEGER(w2f__i8) OpenAD_Symbol_143
      INTEGER(w2f__i8) OpenAD_Symbol_144
      INTEGER(w2f__i8) OpenAD_Symbol_145
      INTEGER(w2f__i8) OpenAD_Symbol_146
      INTEGER(w2f__i8) OpenAD_Symbol_147
      INTEGER(w2f__i8) OpenAD_Symbol_148
      INTEGER(w2f__i8) OpenAD_Symbol_149
      INTEGER(w2f__i8) OpenAD_Symbol_150
      INTEGER(w2f__i8) OpenAD_Symbol_151
      INTEGER(w2f__i8) OpenAD_Symbol_152
      INTEGER(w2f__i8) OpenAD_Symbol_153
      INTEGER(w2f__i8) OpenAD_Symbol_154
      INTEGER(w2f__i8) OpenAD_Symbol_155
      INTEGER(w2f__i8) OpenAD_Symbol_156
      INTEGER(w2f__i8) OpenAD_Symbol_157
      INTEGER(w2f__i8) OpenAD_Symbol_158
      INTEGER(w2f__i8) OpenAD_Symbol_159
      INTEGER(w2f__i8) OpenAD_Symbol_160
      INTEGER(w2f__i8) OpenAD_Symbol_161
      INTEGER(w2f__i8) OpenAD_Symbol_162
      INTEGER(w2f__i8) OpenAD_Symbol_163
      INTEGER(w2f__i8) OpenAD_Symbol_164
      INTEGER(w2f__i8) OpenAD_Symbol_165
      INTEGER(w2f__i8) OpenAD_Symbol_166
      INTEGER(w2f__i8) OpenAD_Symbol_167
      INTEGER(w2f__i8) OpenAD_Symbol_84
      INTEGER(w2f__i8) OpenAD_Symbol_85
      INTEGER(w2f__i8) OpenAD_Symbol_86
      INTEGER(w2f__i8) OpenAD_Symbol_87
      INTEGER(w2f__i8) OpenAD_Symbol_88
      INTEGER(w2f__i8) OpenAD_Symbol_89
      INTEGER(w2f__i8) OpenAD_Symbol_90
      INTEGER(w2f__i8) OpenAD_Symbol_91
      INTEGER(w2f__i8) OpenAD_Symbol_92
      INTEGER(w2f__i8) OpenAD_Symbol_93
      INTEGER(w2f__i8) OpenAD_Symbol_94
      INTEGER(w2f__i8) OpenAD_Symbol_95
      INTEGER(w2f__i8) OpenAD_Symbol_96
      INTEGER(w2f__i8) OpenAD_Symbol_97
      INTEGER(w2f__i8) OpenAD_Symbol_98
      INTEGER(w2f__i8) OpenAD_Symbol_99
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_5
      TYPE (OpenADTy_active) OpenAD_prop_6
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) NX
      INTEGER(w2f__i4) NY
      TYPE (OpenADTy_active) X(1 : INT((NX * NY)))
      TYPE (OpenADTy_active) FVEC(1 : INT((NX * NY)))
      REAL(w2f__8) R
      INTEGER(w2f__i4) N
      REAL(w2f__8) HX
      REAL(w2f__8) HY
      REAL(w2f__8) HY2
      REAL(w2f__8) HX2
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
      TYPE (OpenADTy_active) DPDX
      TYPE (OpenADTy_active) DPDY
      REAL(w2f__8) FOUR
      PARAMETER ( FOUR = 4.0D00)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      REAL(w2f__8) ONE
      PARAMETER ( ONE = 1.0D00)
      TYPE (OpenADTy_active) P
      TYPE (OpenADTy_active) PB
      TYPE (OpenADTy_active) PBB
      TYPE (OpenADTy_active) PBL
      TYPE (OpenADTy_active) PBLAP
      TYPE (OpenADTy_active) PBR
      TYPE (OpenADTy_active) PL
      TYPE (OpenADTy_active) PLAP
      TYPE (OpenADTy_active) PLL
      TYPE (OpenADTy_active) PLLAP
      TYPE (OpenADTy_active) PR
      TYPE (OpenADTy_active) PRLAP
      TYPE (OpenADTy_active) PRR
      TYPE (OpenADTy_active) PT
      TYPE (OpenADTy_active) PTL
      TYPE (OpenADTy_active) PTLAP
      TYPE (OpenADTy_active) PTR
      TYPE (OpenADTy_active) PTT
      REAL(w2f__8) THREE
      PARAMETER ( THREE = 3.0D00)
      REAL(w2f__8) TWO
      PARAMETER ( TWO = 2.0D00)
      REAL(w2f__8) ZERO
      PARAMETER ( ZERO = 0.0D00)
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_168
      INTEGER(w2f__i8) OpenAD_Symbol_169
      REAL(w2f__8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_170
      INTEGER(w2f__i8) OpenAD_Symbol_171
      INTEGER(w2f__i8) OpenAD_Symbol_172
      INTEGER(w2f__i8) OpenAD_Symbol_173
      INTEGER(w2f__i8) OpenAD_Symbol_174
      INTEGER(w2f__i8) OpenAD_Symbol_175
      INTEGER(w2f__i8) OpenAD_Symbol_176
      INTEGER(w2f__i8) OpenAD_Symbol_177
      INTEGER(w2f__i8) OpenAD_Symbol_178
      INTEGER(w2f__i8) OpenAD_Symbol_179
      INTEGER(w2f__i8) OpenAD_Symbol_180
      INTEGER(w2f__i8) OpenAD_Symbol_181
      INTEGER(w2f__i8) OpenAD_Symbol_182
      INTEGER(w2f__i8) OpenAD_Symbol_183
      INTEGER(w2f__i8) OpenAD_Symbol_186
      INTEGER(w2f__i8) OpenAD_Symbol_187
      INTEGER(w2f__i8) OpenAD_Symbol_188
      INTEGER(w2f__i8) OpenAD_Symbol_189
      INTEGER(w2f__i8) OpenAD_Symbol_190
      INTEGER(w2f__i8) OpenAD_Symbol_191
      REAL(w2f__8) OpenAD_Symbol_192
      REAL(w2f__8) OpenAD_Symbol_193
      REAL(w2f__8) OpenAD_Symbol_194
      REAL(w2f__8) OpenAD_Symbol_195
      REAL(w2f__8) OpenAD_Symbol_196
      REAL(w2f__8) OpenAD_Symbol_197
      REAL(w2f__8) OpenAD_Symbol_198
      REAL(w2f__8) OpenAD_Symbol_199
      REAL(w2f__8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_200
      INTEGER(w2f__i8) OpenAD_Symbol_201
      INTEGER(w2f__i8) OpenAD_Symbol_202
      INTEGER(w2f__i8) OpenAD_Symbol_203
      INTEGER(w2f__i8) OpenAD_Symbol_204
      INTEGER(w2f__i8) OpenAD_Symbol_205
      INTEGER(w2f__i8) OpenAD_Symbol_206
      INTEGER(w2f__i8) OpenAD_Symbol_207
      INTEGER(w2f__i8) OpenAD_Symbol_208
      INTEGER(w2f__i8) OpenAD_Symbol_209
      INTEGER(w2f__i8) OpenAD_Symbol_210
      INTEGER(w2f__i8) OpenAD_Symbol_211
      INTEGER(w2f__i8) OpenAD_Symbol_212
      INTEGER(w2f__i8) OpenAD_Symbol_213
      INTEGER(w2f__i8) OpenAD_Symbol_214
      INTEGER(w2f__i8) OpenAD_Symbol_215
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      DO I = 1, NY, 1
        DO J = 1, NX, 1
          K = (J + NX *(I +(-1)))
          IF((I .eq. 1) .OR.(J .eq. 1)) THEN
            __value__(PBL) = 0.0D00
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
            ENDIF
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
            ENDIF
          ENDIF
          __value__(P) = __value__(X(K))
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
            ENDIF
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
            ENDIF
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
          ENDIF
          __value__(DPDY) = ((__value__(PT) - __value__(PB)) /(HY *
     >  2.0D00))
          __value__(DPDX) = ((__value__(PR) - __value__(PL)) /(HX *
     >  2.0D00))
          CALL bar(__deriv__(PBB), __deriv__(PBL), __deriv__(PB),
     >  __deriv__(PBR), __deriv__(PLL), __deriv__(PL), __deriv__(P),
     >  __deriv__(PR), __deriv__(PRR), __deriv__(PTL), __deriv__(PT),
     >  __deriv__(PTR), __deriv__(PTT), HY2, HX2, __deriv__(PLAP),
     >  __deriv__(PBLAP), __deriv__(PLLAP), __deriv__(PRLAP), __deriv__
     > (PTLAP))
          __value__(FVEC(INT(K))) = (((__value__(PBLAP) + __value__(
     > PTLAP) - __value__(PLAP) * 2.0D00) / HY2) +((__value__(PLLAP) +
     >  __value__(PRLAP) - __value__(PLAP) * 2.0D00) / HX2) - R *(((
     > __value__(DPDY) *(__value__(PRLAP) - __value__(PLLAP))) /(HX *
     >  2.0D00)) -((__value__(DPDX) *(__value__(PTLAP) - __value__(
     > PBLAP))) /(HY * 2.0D00))))
        END DO
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_100 = 0_w2f__i8
      DO I = 1, NY, 1
        OpenAD_Symbol_101 = 0_w2f__i8
        DO J = 1, NX, 1
          K = (J + NX *(I +(-1)))
          IF((I .eq. 1) .OR.(J .eq. 1)) THEN
            __value__(PBL) = 0.0D00
            OpenAD_Symbol_102 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_102)
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
            OpenAD_Symbol_183 = (K - NX +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_183)
            OpenAD_Symbol_103 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_103)
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_106 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_106)
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
              OpenAD_Symbol_180 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_180)
              OpenAD_Symbol_104 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_104)
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
              OpenAD_Symbol_181 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_181)
              OpenAD_Symbol_182 = (K - NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_182)
              OpenAD_Symbol_105 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_105)
            ENDIF
            OpenAD_Symbol_107 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_107)
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
            OpenAD_Symbol_108 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_108)
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
            OpenAD_Symbol_179 = (K - NX + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_179)
            OpenAD_Symbol_109 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_109)
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_112 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_112)
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
              OpenAD_Symbol_176 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_176)
              OpenAD_Symbol_110 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_110)
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
              OpenAD_Symbol_177 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_177)
              OpenAD_Symbol_178 = (K +(-2))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_178)
              OpenAD_Symbol_111 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_111)
            ENDIF
            OpenAD_Symbol_113 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_113)
          ENDIF
          __value__(P) = __value__(X(K))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
            OpenAD_Symbol_168 = (K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_168)
            OpenAD_Symbol_116 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_116)
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_114 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_114)
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
              OpenAD_Symbol_174 = (K + 1)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_174)
              OpenAD_Symbol_175 = (K + 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_175)
              OpenAD_Symbol_115 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_115)
            ENDIF
            OpenAD_Symbol_117 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_117)
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
            OpenAD_Symbol_118 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_118)
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
            OpenAD_Symbol_173 = (NX + K +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_173)
            OpenAD_Symbol_119 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_119)
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
            OpenAD_Symbol_169 = (NX + K)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_169)
            OpenAD_Symbol_122 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_122)
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_120 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_120)
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
              OpenAD_Symbol_171 = (NX + K)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_171)
              OpenAD_Symbol_172 = (K + NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_172)
              OpenAD_Symbol_121 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_121)
            ENDIF
            OpenAD_Symbol_123 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_123)
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
            OpenAD_Symbol_124 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_124)
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
            OpenAD_Symbol_170 = (NX + K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_170)
            OpenAD_Symbol_125 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_125)
          ENDIF
          OpenAD_Symbol_4 = (__value__(PT) - __value__(PB))
          OpenAD_Symbol_5 = (HY * 2.0D00)
          __value__(DPDY) = (OpenAD_Symbol_4 / OpenAD_Symbol_5)
          OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
          OpenAD_Symbol_8 = (__value__(PR) - __value__(PL))
          OpenAD_Symbol_9 = (HX * 2.0D00)
          __value__(DPDX) = (OpenAD_Symbol_8 / OpenAD_Symbol_9)
          OpenAD_Symbol_10 = (INT(1_w2f__i8) / OpenAD_Symbol_9)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_6)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_10)
          CALL bar(__deriv__(PBB), __deriv__(PBL), __deriv__(PB),
     >  __deriv__(PBR), __deriv__(PLL), __deriv__(PL), __deriv__(P),
     >  __deriv__(PR), __deriv__(PRR), __deriv__(PTL), __deriv__(PT),
     >  __deriv__(PTR), __deriv__(PTT), HY2, HX2, __deriv__(PLAP),
     >  __deriv__(PBLAP), __deriv__(PLLAP), __deriv__(PRLAP), __deriv__
     > (PTLAP))
          OpenAD_Symbol_12 = (__value__(PBLAP) + __value__(PTLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_16 = (__value__(PLLAP) + __value__(PRLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_27 = (__value__(PRLAP) - __value__(PLLAP))
          OpenAD_Symbol_23 = (__value__(DPDY) * OpenAD_Symbol_27)
          OpenAD_Symbol_24 = (HX * 2.0D00)
          OpenAD_Symbol_34 = (__value__(PTLAP) - __value__(PBLAP))
          OpenAD_Symbol_30 = (__value__(DPDX) * OpenAD_Symbol_34)
          OpenAD_Symbol_31 = (HY * 2.0D00)
          OpenAD_Symbol_20 = ((OpenAD_Symbol_23 / OpenAD_Symbol_24) -(
     > OpenAD_Symbol_30 / OpenAD_Symbol_31))
          __value__(FVEC(INT(K))) = ((OpenAD_Symbol_12 / HY2) +(
     > OpenAD_Symbol_16 / HX2) - R * OpenAD_Symbol_20)
          OpenAD_Symbol_13 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_17 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_28 = OpenAD_Symbol_27
          OpenAD_Symbol_29 = __value__(DPDY)
          OpenAD_Symbol_25 = (INT(1_w2f__i8) / OpenAD_Symbol_24)
          OpenAD_Symbol_35 = OpenAD_Symbol_34
          OpenAD_Symbol_36 = __value__(DPDX)
          OpenAD_Symbol_32 = (INT(1_w2f__i8) / OpenAD_Symbol_31)
          OpenAD_Symbol_22 = R
          OpenAD_acc_0 = (OpenAD_Symbol_22 * INT((-1_w2f__i8)))
          OpenAD_acc_1 = (INT((-1_w2f__i8)) * OpenAD_acc_0)
          OpenAD_acc_2 = (OpenAD_Symbol_35 * OpenAD_Symbol_32 *
     >  OpenAD_acc_1)
          OpenAD_acc_3 = (OpenAD_Symbol_36 * OpenAD_Symbol_32 *
     >  OpenAD_acc_1)
          OpenAD_acc_4 = (OpenAD_Symbol_28 * OpenAD_Symbol_25 *
     >  OpenAD_acc_0)
          OpenAD_acc_5 = (OpenAD_Symbol_29 * OpenAD_Symbol_25 *
     >  OpenAD_acc_0)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_2)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_3)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_4)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_5)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_13)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_17)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          OpenAD_Symbol_101 = (INT(OpenAD_Symbol_101) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_101)
        OpenAD_Symbol_100 = (INT(OpenAD_Symbol_100) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_100)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_84)
      OpenAD_Symbol_85 = 1
      DO WHILE(INT(OpenAD_Symbol_85) .LE. INT(OpenAD_Symbol_84))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_86)
        OpenAD_Symbol_87 = 1
        DO WHILE(INT(OpenAD_Symbol_87) .LE. INT(OpenAD_Symbol_86))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_191)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_192)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_193)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_194)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_195)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_196)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_197)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_192, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_6))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_193, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_5))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_194, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_195, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(DPDY))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_196, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_197, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(DPDX))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_191))))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_6), __deriv__(PLAP)
     > )
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(PRLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(PLLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_6))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_5), __deriv__(PLAP)
     > )
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(PTLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(PBLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_4), __deriv__(PBLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_4), __deriv__(PTLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_3), __deriv__(PLLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_3), __deriv__(PRLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
          CALL bar(__deriv__(PBB), __deriv__(PBL), __deriv__(PB),
     >  __deriv__(PBR), __deriv__(PLL), __deriv__(PL), __deriv__(P),
     >  __deriv__(PR), __deriv__(PRR), __deriv__(PTL), __deriv__(PT),
     >  __deriv__(PTR), __deriv__(PTT), HY2, HX2, __deriv__(PLAP),
     >  __deriv__(PBLAP), __deriv__(PLLAP), __deriv__(PRLAP), __deriv__
     > (PTLAP))
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_198)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_199)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_198, __deriv__(DPDX), __deriv__(
     > OpenAD_prop_2))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DPDX))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_199, __deriv__(DPDY), __deriv__(
     > OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DPDY))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_2), __deriv__(PL))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(PR))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_1), __deriv__(PB))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(PT))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_88)
          IF(OpenAD_Symbol_88 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_200)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTR), __deriv__(X(INT(
     > OpenAD_Symbol_200))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_89)
          IF(OpenAD_Symbol_89 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_190)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_190))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PT))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTT))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_90)
            IF(OpenAD_Symbol_90 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_201)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_201))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_202)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_202))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_203)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_203))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_91)
          IF(OpenAD_Symbol_91 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_204)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTL), __deriv__(X(INT(
     > OpenAD_Symbol_204))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_92)
          IF(OpenAD_Symbol_92 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_189)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_189))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PR))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PRR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_93)
            IF(OpenAD_Symbol_93 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_205)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_205))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_206)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_206))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_207)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_207))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_188)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(P), __deriv__(X(INT(OpenAD_Symbol_188
     > ))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(P))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_94)
          IF(OpenAD_Symbol_94 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_187)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_187))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PLL))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_95)
            IF(OpenAD_Symbol_95 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_208)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_208))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_209)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_209))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_210)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_210))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_96)
          IF(OpenAD_Symbol_96 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_211)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBR), __deriv__(X(INT(
     > OpenAD_Symbol_211))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_97)
          IF(OpenAD_Symbol_97 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_186)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_186))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBB))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PB))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_98)
            IF(OpenAD_Symbol_98 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_212)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_212))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_213)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_213))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_214)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_214))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_99)
          IF(OpenAD_Symbol_99 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_215)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBL), __deriv__(X(INT(
     > OpenAD_Symbol_215))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ENDIF
          OpenAD_Symbol_87 = INT(OpenAD_Symbol_87) + 1
        END DO
        OpenAD_Symbol_85 = INT(OpenAD_Symbol_85) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HY2)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HX2)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(NX)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(NY)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(R)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HX)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HY)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(X))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(X))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HY)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HX)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(R)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(NY)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(NX)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HX2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HY2)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FVEC))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HY2)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HX2)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(NX)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(NY)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(R)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HX)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HY)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(X))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(X))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HY)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HX)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(R)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(NY)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(NX)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HX2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HY2)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FVEC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_142 = 0_w2f__i8
      DO I = 1, NY, 1
        OpenAD_Symbol_143 = 0_w2f__i8
        DO J = 1, NX, 1
          K = (J + NX *(I +(-1)))
          IF((I .eq. 1) .OR.(J .eq. 1)) THEN
            __value__(PBL) = 0.0D00
            OpenAD_Symbol_144 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_144)
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
            OpenAD_Symbol_183 = (K - NX +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_183)
            OpenAD_Symbol_145 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_145)
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_148 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_148)
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
              OpenAD_Symbol_180 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_180)
              OpenAD_Symbol_146 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_146)
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
              OpenAD_Symbol_181 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_181)
              OpenAD_Symbol_182 = (K - NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_182)
              OpenAD_Symbol_147 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_147)
            ENDIF
            OpenAD_Symbol_149 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_149)
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
            OpenAD_Symbol_150 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_150)
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
            OpenAD_Symbol_179 = (K - NX + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_179)
            OpenAD_Symbol_151 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_151)
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_154 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_154)
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
              OpenAD_Symbol_176 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_176)
              OpenAD_Symbol_152 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_152)
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
              OpenAD_Symbol_177 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_177)
              OpenAD_Symbol_178 = (K +(-2))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_178)
              OpenAD_Symbol_153 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_153)
            ENDIF
            OpenAD_Symbol_155 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_155)
          ENDIF
          __value__(P) = __value__(X(K))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
            OpenAD_Symbol_168 = (K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_168)
            OpenAD_Symbol_158 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_158)
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_156 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_156)
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
              OpenAD_Symbol_174 = (K + 1)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_174)
              OpenAD_Symbol_175 = (K + 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_175)
              OpenAD_Symbol_157 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_157)
            ENDIF
            OpenAD_Symbol_159 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_159)
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
            OpenAD_Symbol_160 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_160)
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
            OpenAD_Symbol_173 = (NX + K +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_173)
            OpenAD_Symbol_161 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_161)
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
            OpenAD_Symbol_169 = (NX + K)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_169)
            OpenAD_Symbol_164 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_164)
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_162 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_162)
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
              OpenAD_Symbol_171 = (NX + K)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_171)
              OpenAD_Symbol_172 = (K + NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_172)
              OpenAD_Symbol_163 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_163)
            ENDIF
            OpenAD_Symbol_165 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_165)
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
            OpenAD_Symbol_166 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_166)
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
            OpenAD_Symbol_170 = (NX + K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_170)
            OpenAD_Symbol_167 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_167)
          ENDIF
          OpenAD_Symbol_4 = (__value__(PT) - __value__(PB))
          OpenAD_Symbol_5 = (HY * 2.0D00)
          __value__(DPDY) = (OpenAD_Symbol_4 / OpenAD_Symbol_5)
          OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
          OpenAD_Symbol_8 = (__value__(PR) - __value__(PL))
          OpenAD_Symbol_9 = (HX * 2.0D00)
          __value__(DPDX) = (OpenAD_Symbol_8 / OpenAD_Symbol_9)
          OpenAD_Symbol_10 = (INT(1_w2f__i8) / OpenAD_Symbol_9)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_6)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_10)
          CALL bar(__deriv__(PBB), __deriv__(PBL), __deriv__(PB),
     >  __deriv__(PBR), __deriv__(PLL), __deriv__(PL), __deriv__(P),
     >  __deriv__(PR), __deriv__(PRR), __deriv__(PTL), __deriv__(PT),
     >  __deriv__(PTR), __deriv__(PTT), HY2, HX2, __deriv__(PLAP),
     >  __deriv__(PBLAP), __deriv__(PLLAP), __deriv__(PRLAP), __deriv__
     > (PTLAP))
          OpenAD_Symbol_12 = (__value__(PBLAP) + __value__(PTLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_16 = (__value__(PLLAP) + __value__(PRLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_27 = (__value__(PRLAP) - __value__(PLLAP))
          OpenAD_Symbol_23 = (__value__(DPDY) * OpenAD_Symbol_27)
          OpenAD_Symbol_24 = (HX * 2.0D00)
          OpenAD_Symbol_34 = (__value__(PTLAP) - __value__(PBLAP))
          OpenAD_Symbol_30 = (__value__(DPDX) * OpenAD_Symbol_34)
          OpenAD_Symbol_31 = (HY * 2.0D00)
          OpenAD_Symbol_20 = ((OpenAD_Symbol_23 / OpenAD_Symbol_24) -(
     > OpenAD_Symbol_30 / OpenAD_Symbol_31))
          __value__(FVEC(INT(K))) = ((OpenAD_Symbol_12 / HY2) +(
     > OpenAD_Symbol_16 / HX2) - R * OpenAD_Symbol_20)
          OpenAD_Symbol_13 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_17 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_28 = OpenAD_Symbol_27
          OpenAD_Symbol_29 = __value__(DPDY)
          OpenAD_Symbol_25 = (INT(1_w2f__i8) / OpenAD_Symbol_24)
          OpenAD_Symbol_35 = OpenAD_Symbol_34
          OpenAD_Symbol_36 = __value__(DPDX)
          OpenAD_Symbol_32 = (INT(1_w2f__i8) / OpenAD_Symbol_31)
          OpenAD_Symbol_22 = R
          OpenAD_acc_0 = (OpenAD_Symbol_22 * INT((-1_w2f__i8)))
          OpenAD_acc_1 = (INT((-1_w2f__i8)) * OpenAD_acc_0)
          OpenAD_acc_2 = (OpenAD_Symbol_35 * OpenAD_Symbol_32 *
     >  OpenAD_acc_1)
          OpenAD_acc_3 = (OpenAD_Symbol_36 * OpenAD_Symbol_32 *
     >  OpenAD_acc_1)
          OpenAD_acc_4 = (OpenAD_Symbol_28 * OpenAD_Symbol_25 *
     >  OpenAD_acc_0)
          OpenAD_acc_5 = (OpenAD_Symbol_29 * OpenAD_Symbol_25 *
     >  OpenAD_acc_0)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_2)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_3)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_4)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_5)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_13)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_17)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          OpenAD_Symbol_143 = (INT(OpenAD_Symbol_143) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_143)
        OpenAD_Symbol_142 = (INT(OpenAD_Symbol_142) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_142)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_126)
      OpenAD_Symbol_127 = 1
      DO WHILE(INT(OpenAD_Symbol_127) .LE. INT(OpenAD_Symbol_126))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_128)
        OpenAD_Symbol_129 = 1
        DO WHILE(INT(OpenAD_Symbol_129) .LE. INT(OpenAD_Symbol_128))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_191)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_192)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_193)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_194)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_195)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_196)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_197)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_192, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_6))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_193, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_5))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_194, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_195, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(DPDY))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_196, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(OpenAD_prop_4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_197, __deriv__(FVEC(INT(
     > OpenAD_Symbol_191))), __deriv__(DPDX))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_191))))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_6), __deriv__(PLAP)
     > )
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(PRLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_6), __deriv__(PLLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_6))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_5), __deriv__(PLAP)
     > )
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(PTLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(PBLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_4), __deriv__(PBLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_4), __deriv__(PTLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_3), __deriv__(PLLAP))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_3), __deriv__(PRLAP))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
          CALL bar(__deriv__(PBB), __deriv__(PBL), __deriv__(PB),
     >  __deriv__(PBR), __deriv__(PLL), __deriv__(PL), __deriv__(P),
     >  __deriv__(PR), __deriv__(PRR), __deriv__(PTL), __deriv__(PT),
     >  __deriv__(PTR), __deriv__(PTT), HY2, HX2, __deriv__(PLAP),
     >  __deriv__(PBLAP), __deriv__(PLLAP), __deriv__(PRLAP), __deriv__
     > (PTLAP))
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_198)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_199)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_198, __deriv__(DPDX), __deriv__(
     > OpenAD_prop_2))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DPDX))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_199, __deriv__(DPDY), __deriv__(
     > OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DPDY))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_2), __deriv__(PL))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(PR))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_1), __deriv__(PB))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(PT))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_130)
          IF(OpenAD_Symbol_130 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_200)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTR), __deriv__(X(INT(
     > OpenAD_Symbol_200))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_131)
          IF(OpenAD_Symbol_131 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_190)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_190))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PT))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTT))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_132)
            IF(OpenAD_Symbol_132 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_201)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_201))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_202)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_202))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_203)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_203))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_133)
          IF(OpenAD_Symbol_133 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_204)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTL), __deriv__(X(INT(
     > OpenAD_Symbol_204))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_134)
          IF(OpenAD_Symbol_134 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_189)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_189))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PR))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PRR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_135)
            IF(OpenAD_Symbol_135 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_205)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_205))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_206)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_206))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_207)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_207))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_188)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(P), __deriv__(X(INT(OpenAD_Symbol_188
     > ))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(P))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_136)
          IF(OpenAD_Symbol_136 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_187)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_187))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PLL))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_137)
            IF(OpenAD_Symbol_137 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_208)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_208))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_209)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_209))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_210)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_210))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_138)
          IF(OpenAD_Symbol_138 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_211)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBR), __deriv__(X(INT(
     > OpenAD_Symbol_211))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_139)
          IF(OpenAD_Symbol_139 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_186)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_186))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBB))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PB))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_140)
            IF(OpenAD_Symbol_140 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_212)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_212))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_213)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_213))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_214)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_214))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_141)
          IF(OpenAD_Symbol_141 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_215)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBL), __deriv__(X(INT(
     > OpenAD_Symbol_215))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ENDIF
          OpenAD_Symbol_129 = INT(OpenAD_Symbol_129) + 1
        END DO
        OpenAD_Symbol_127 = INT(OpenAD_Symbol_127) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE bar(PBB, PBL, PB, PBR, PLL, PL, P, PR, PRR, PTL, PT,
     >  PTR, PTT, HY2, HX2, PLAP, PBLAP, PLLAP, PRLAP, PTLAP)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_prop_10
      TYPE (OpenADTy_active) OpenAD_prop_11
      TYPE (OpenADTy_active) OpenAD_prop_12
      TYPE (OpenADTy_active) OpenAD_prop_13
      TYPE (OpenADTy_active) OpenAD_prop_14
      TYPE (OpenADTy_active) OpenAD_prop_15
      TYPE (OpenADTy_active) OpenAD_prop_16
      TYPE (OpenADTy_active) OpenAD_prop_7
      TYPE (OpenADTy_active) OpenAD_prop_8
      TYPE (OpenADTy_active) OpenAD_prop_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) PBB
      TYPE (OpenADTy_active) PBL
      TYPE (OpenADTy_active) PB
      TYPE (OpenADTy_active) PBR
      TYPE (OpenADTy_active) PLL
      TYPE (OpenADTy_active) PL
      TYPE (OpenADTy_active) P
      TYPE (OpenADTy_active) PR
      TYPE (OpenADTy_active) PRR
      TYPE (OpenADTy_active) PTL
      TYPE (OpenADTy_active) PT
      TYPE (OpenADTy_active) PTR
      TYPE (OpenADTy_active) PTT
      REAL(w2f__8) HY2
      REAL(w2f__8) HX2
      TYPE (OpenADTy_active) PLAP
      TYPE (OpenADTy_active) PBLAP
      TYPE (OpenADTy_active) PLLAP
      TYPE (OpenADTy_active) PRLAP
      TYPE (OpenADTy_active) PTLAP
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) FOUR
      PARAMETER ( FOUR = 4.0D00)
      REAL(w2f__8) ONE
      PARAMETER ( ONE = 1.0D00)
      REAL(w2f__8) THREE
      PARAMETER ( THREE = 3.0D00)
      REAL(w2f__8) TWO
      PARAMETER ( TWO = 2.0D00)
      REAL(w2f__8) ZERO
      PARAMETER ( ZERO = 0.0D00)
      REAL(w2f__8) OpenAD_Symbol_216
      REAL(w2f__8) OpenAD_Symbol_217
      REAL(w2f__8) OpenAD_Symbol_218
      REAL(w2f__8) OpenAD_Symbol_219
      REAL(w2f__8) OpenAD_Symbol_220
      REAL(w2f__8) OpenAD_Symbol_221
      REAL(w2f__8) OpenAD_Symbol_222
      REAL(w2f__8) OpenAD_Symbol_223
      REAL(w2f__8) OpenAD_Symbol_224
      REAL(w2f__8) OpenAD_Symbol_225
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_62
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      __value__(PBLAP) = (((__value__(PBB) + __value__(P) - __value__(
     > PB) * 2.0D00) / HY2) +((__value__(PBL) + __value__(PBR) -
     >  __value__(PB) * 2.0D00) / HX2))
      __value__(PLLAP) = (((__value__(PBL) + __value__(PTL) - __value__
     > (PL) * 2.0D00) / HY2) +((__value__(PLL) + __value__(P) -
     >  __value__(PL) * 2.0D00) / HX2))
      __value__(PLAP) = (((__value__(PB) + __value__(PT) - __value__(P)
     >  * 2.0D00) / HY2) +((__value__(PL) + __value__(PR) - __value__(P
     > ) * 2.0D00) / HX2))
      __value__(PRLAP) = (((__value__(PBR) + __value__(PTR) - __value__
     > (PR) * 2.0D00) / HY2) +((__value__(P) + __value__(PRR) -
     >  __value__(PR) * 2.0D00) / HX2))
      __value__(PTLAP) = (((__value__(P) + __value__(PTT) - __value__(
     > PT) * 2.0D00) / HY2) +((__value__(PTL) + __value__(PTR) -
     >  __value__(PT) * 2.0D00) / HX2))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_38 = (__value__(PBB) + __value__(P) - __value__(PB)
     >  * 2.0D00)
      OpenAD_Symbol_42 = (__value__(PBL) + __value__(PBR) - __value__(
     > PB) * 2.0D00)
      __value__(PBLAP) = ((OpenAD_Symbol_38 / HY2) +(OpenAD_Symbol_42 /
     >  HX2))
      OpenAD_Symbol_39 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_43 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_46 = (__value__(PBL) + __value__(PTL) - __value__(
     > PL) * 2.0D00)
      OpenAD_Symbol_50 = (__value__(PLL) + __value__(P) - __value__(PL)
     >  * 2.0D00)
      __value__(PLLAP) = ((OpenAD_Symbol_46 / HY2) +(OpenAD_Symbol_50 /
     >  HX2))
      OpenAD_Symbol_47 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_51 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_54 = (__value__(PB) + __value__(PT) - __value__(P)
     >  * 2.0D00)
      OpenAD_Symbol_58 = (__value__(PL) + __value__(PR) - __value__(P)
     >  * 2.0D00)
      __value__(PLAP) = ((OpenAD_Symbol_54 / HY2) +(OpenAD_Symbol_58 /
     >  HX2))
      OpenAD_Symbol_55 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_59 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_62 = (__value__(PBR) + __value__(PTR) - __value__(
     > PR) * 2.0D00)
      OpenAD_Symbol_66 = (__value__(P) + __value__(PRR) - __value__(PR)
     >  * 2.0D00)
      __value__(PRLAP) = ((OpenAD_Symbol_62 / HY2) +(OpenAD_Symbol_66 /
     >  HX2))
      OpenAD_Symbol_63 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_67 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_70 = (__value__(P) + __value__(PTT) - __value__(PT)
     >  * 2.0D00)
      OpenAD_Symbol_74 = (__value__(PTL) + __value__(PTR) - __value__(
     > PT) * 2.0D00)
      __value__(PTLAP) = ((OpenAD_Symbol_70 / HY2) +(OpenAD_Symbol_74 /
     >  HX2))
      OpenAD_Symbol_71 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_75 = (INT(1_w2f__i8) / HX2)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_39)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_43)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_47)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_51)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_55)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_59)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_63)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_67)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_71)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_75)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_216)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_217)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_218)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_219)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_220)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_221)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_222)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_223)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_224)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_225)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_216, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_217, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PTLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_218, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_219, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PRLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_220, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_221, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_222, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_10))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_223, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_9))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_224, __deriv__(PBLAP), __deriv__(
     > OpenAD_prop_8))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_225, __deriv__(PBLAP), __deriv__(
     > OpenAD_prop_7))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PBLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_16), __deriv__(PT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_16), __deriv__(PTR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_16), __deriv__(PTL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_15), __deriv__(PT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_15), __deriv__(PTT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_15), __deriv__(P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_14), __deriv__(PR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_14), __deriv__(PRR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_14), __deriv__(P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_13), __deriv__(PR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_13), __deriv__(PTR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_13), __deriv__(PBR))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_12), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(PR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(PL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_11), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(PT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(PB))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_10), __deriv__(PL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(PLL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_9), __deriv__(PL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(PTL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(PBL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_8), __deriv__(PB))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(PBR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(PBL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_8))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_7), __deriv__(PB))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(PBB))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_7))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PBB))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PBL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PB))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PBR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PLL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(P))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PRR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PTL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PT))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PTR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PTT))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HY2)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HX2)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HX2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HY2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PTT))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PTR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PT))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PTL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PRR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(P))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PLL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PBR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PB))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PBL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PBB))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PLAP))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PBLAP))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PLLAP))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PRLAP))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PTLAP))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PBB))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PBL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PB))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PBR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PLL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(P))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PRR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PTL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PT))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PTR))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(PTT))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HY2)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HX2)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HX2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HY2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PTT))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PTR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PT))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PTL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PRR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(P))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PLL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PBR))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PB))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PBL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PBB))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PTLAP))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PRLAP))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PLLAP))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PBLAP))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(PLAP))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_38 = (__value__(PBB) + __value__(P) - __value__(PB)
     >  * 2.0D00)
      OpenAD_Symbol_42 = (__value__(PBL) + __value__(PBR) - __value__(
     > PB) * 2.0D00)
      __value__(PBLAP) = ((OpenAD_Symbol_38 / HY2) +(OpenAD_Symbol_42 /
     >  HX2))
      OpenAD_Symbol_39 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_43 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_46 = (__value__(PBL) + __value__(PTL) - __value__(
     > PL) * 2.0D00)
      OpenAD_Symbol_50 = (__value__(PLL) + __value__(P) - __value__(PL)
     >  * 2.0D00)
      __value__(PLLAP) = ((OpenAD_Symbol_46 / HY2) +(OpenAD_Symbol_50 /
     >  HX2))
      OpenAD_Symbol_47 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_51 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_54 = (__value__(PB) + __value__(PT) - __value__(P)
     >  * 2.0D00)
      OpenAD_Symbol_58 = (__value__(PL) + __value__(PR) - __value__(P)
     >  * 2.0D00)
      __value__(PLAP) = ((OpenAD_Symbol_54 / HY2) +(OpenAD_Symbol_58 /
     >  HX2))
      OpenAD_Symbol_55 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_59 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_62 = (__value__(PBR) + __value__(PTR) - __value__(
     > PR) * 2.0D00)
      OpenAD_Symbol_66 = (__value__(P) + __value__(PRR) - __value__(PR)
     >  * 2.0D00)
      __value__(PRLAP) = ((OpenAD_Symbol_62 / HY2) +(OpenAD_Symbol_66 /
     >  HX2))
      OpenAD_Symbol_63 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_67 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_70 = (__value__(P) + __value__(PTT) - __value__(PT)
     >  * 2.0D00)
      OpenAD_Symbol_74 = (__value__(PTL) + __value__(PTR) - __value__(
     > PT) * 2.0D00)
      __value__(PTLAP) = ((OpenAD_Symbol_70 / HY2) +(OpenAD_Symbol_74 /
     >  HX2))
      OpenAD_Symbol_71 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_75 = (INT(1_w2f__i8) / HX2)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_39)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_43)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_47)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_51)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_55)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_59)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_63)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_67)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_71)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_75)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_216)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_217)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_218)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_219)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_220)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_221)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_222)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_223)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_224)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_225)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_216, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_217, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PTLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_218, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_219, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PRLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_220, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_221, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_222, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_10))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_223, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_9))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_224, __deriv__(PBLAP), __deriv__(
     > OpenAD_prop_8))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_225, __deriv__(PBLAP), __deriv__(
     > OpenAD_prop_7))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PBLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_16), __deriv__(PT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_16), __deriv__(PTR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_16), __deriv__(PTL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_15), __deriv__(PT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_15), __deriv__(PTT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_15), __deriv__(P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_15))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_14), __deriv__(PR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_14), __deriv__(PRR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_14), __deriv__(P))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_13), __deriv__(PR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_13), __deriv__(PTR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_13), __deriv__(PBR))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_13))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_12), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(PR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_12), __deriv__(PL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_11), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(PT))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_11), __deriv__(PB))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_11))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_10), __deriv__(PL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_10), __deriv__(PLL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_10))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_9), __deriv__(PL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(PTL))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_9), __deriv__(PBL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_9))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_8), __deriv__(PB))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(PBR))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_8), __deriv__(PBL))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_8))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(OpenAD_prop_7), __deriv__(PB))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(P))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_7), __deriv__(PBB))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_7))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
