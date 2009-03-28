
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(NX, NY, X, FVEC, R)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      TYPE (OpenADTy_active) OpenAD_Symbol_100
      TYPE (OpenADTy_active) OpenAD_Symbol_101
      TYPE (OpenADTy_active) OpenAD_Symbol_102
      TYPE (OpenADTy_active) OpenAD_Symbol_103
      TYPE (OpenADTy_active) OpenAD_Symbol_104
      TYPE (OpenADTy_active) OpenAD_Symbol_105
      TYPE (OpenADTy_active) OpenAD_Symbol_106
      TYPE (OpenADTy_active) OpenAD_Symbol_107
      TYPE (OpenADTy_active) OpenAD_Symbol_108
      TYPE (OpenADTy_active) OpenAD_Symbol_109
      TYPE (OpenADTy_active) OpenAD_Symbol_110
      TYPE (OpenADTy_active) OpenAD_Symbol_111
      INTEGER(w2f__i8) OpenAD_Symbol_112
      INTEGER(w2f__i8) OpenAD_Symbol_113
      INTEGER(w2f__i8) OpenAD_Symbol_114
      INTEGER(w2f__i8) OpenAD_Symbol_115
      INTEGER(w2f__i8) OpenAD_Symbol_116
      INTEGER(w2f__i8) OpenAD_Symbol_117
      INTEGER(w2f__i8) OpenAD_Symbol_118
      INTEGER(w2f__i8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_12
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
      REAL(w2f__8) OpenAD_Symbol_13
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
      REAL(w2f__8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_160
      INTEGER(w2f__i8) OpenAD_Symbol_161
      INTEGER(w2f__i8) OpenAD_Symbol_162
      INTEGER(w2f__i8) OpenAD_Symbol_163
      INTEGER(w2f__i8) OpenAD_Symbol_164
      INTEGER(w2f__i8) OpenAD_Symbol_165
      INTEGER(w2f__i8) OpenAD_Symbol_166
      INTEGER(w2f__i8) OpenAD_Symbol_167
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
      INTEGER(w2f__i8) OpenAD_Symbol_184
      INTEGER(w2f__i8) OpenAD_Symbol_185
      INTEGER(w2f__i8) OpenAD_Symbol_186
      INTEGER(w2f__i8) OpenAD_Symbol_187
      INTEGER(w2f__i8) OpenAD_Symbol_188
      INTEGER(w2f__i8) OpenAD_Symbol_189
      INTEGER(w2f__i8) OpenAD_Symbol_190
      INTEGER(w2f__i8) OpenAD_Symbol_191
      INTEGER(w2f__i8) OpenAD_Symbol_192
      INTEGER(w2f__i8) OpenAD_Symbol_193
      INTEGER(w2f__i8) OpenAD_Symbol_194
      INTEGER(w2f__i8) OpenAD_Symbol_195
      INTEGER(w2f__i8) OpenAD_Symbol_196
      INTEGER(w2f__i8) OpenAD_Symbol_197
      INTEGER(w2f__i8) OpenAD_Symbol_198
      INTEGER(w2f__i8) OpenAD_Symbol_199
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_200
      INTEGER(w2f__i8) OpenAD_Symbol_201
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_60
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_64
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_68
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
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
      TYPE (OpenADTy_active) OpenAD_Symbol_99
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
      TYPE (OpenADTy_active) DPDX
      TYPE (OpenADTy_active) DPDY
      REAL(w2f__8) FOUR
      PARAMETER ( FOUR = 4.0D00)
      REAL(w2f__8) HX
      REAL(w2f__8) HX2
      REAL(w2f__8) HY
      REAL(w2f__8) HY2
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) N
      REAL(w2f__8) NXP1
      REAL(w2f__8) NYP1
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
      INTEGER(w2f__i8) OpenAD_Symbol_216
      INTEGER(w2f__i8) OpenAD_Symbol_217
      INTEGER(w2f__i8) OpenAD_Symbol_218
      INTEGER(w2f__i8) OpenAD_Symbol_219
      INTEGER(w2f__i8) OpenAD_Symbol_220
      INTEGER(w2f__i8) OpenAD_Symbol_221
      INTEGER(w2f__i8) OpenAD_Symbol_222
      INTEGER(w2f__i8) OpenAD_Symbol_223
      REAL(w2f__8) OpenAD_Symbol_224
      INTEGER(w2f__i8) OpenAD_Symbol_225
      REAL(w2f__8) OpenAD_Symbol_226
      INTEGER(w2f__i8) OpenAD_Symbol_227
      REAL(w2f__8) OpenAD_Symbol_228
      INTEGER(w2f__i8) OpenAD_Symbol_229
      REAL(w2f__8) OpenAD_Symbol_230
      INTEGER(w2f__i8) OpenAD_Symbol_231
      REAL(w2f__8) OpenAD_Symbol_232
      INTEGER(w2f__i8) OpenAD_Symbol_233
      REAL(w2f__8) OpenAD_Symbol_234
      INTEGER(w2f__i8) OpenAD_Symbol_235
      REAL(w2f__8) OpenAD_Symbol_236
      INTEGER(w2f__i8) OpenAD_Symbol_237
      REAL(w2f__8) OpenAD_Symbol_238
      INTEGER(w2f__i8) OpenAD_Symbol_239
      REAL(w2f__8) OpenAD_Symbol_240
      INTEGER(w2f__i8) OpenAD_Symbol_241
      REAL(w2f__8) OpenAD_Symbol_242
      INTEGER(w2f__i8) OpenAD_Symbol_243
      REAL(w2f__8) OpenAD_Symbol_244
      INTEGER(w2f__i8) OpenAD_Symbol_245
      REAL(w2f__8) OpenAD_Symbol_246
      INTEGER(w2f__i8) OpenAD_Symbol_247
      INTEGER(w2f__i8) OpenAD_Symbol_248
      INTEGER(w2f__i8) OpenAD_Symbol_249
      INTEGER(w2f__i8) OpenAD_Symbol_250
      INTEGER(w2f__i8) OpenAD_Symbol_251
      INTEGER(w2f__i8) OpenAD_Symbol_252
      INTEGER(w2f__i8) OpenAD_Symbol_253
      INTEGER(w2f__i8) OpenAD_Symbol_254
      INTEGER(w2f__i8) OpenAD_Symbol_255
      INTEGER(w2f__i8) OpenAD_Symbol_256
      INTEGER(w2f__i8) OpenAD_Symbol_257
      INTEGER(w2f__i8) OpenAD_Symbol_258
      INTEGER(w2f__i8) OpenAD_Symbol_259
      INTEGER(w2f__i8) OpenAD_Symbol_260
      INTEGER(w2f__i8) OpenAD_Symbol_261
      INTEGER(w2f__i8) OpenAD_Symbol_262
      INTEGER(w2f__i8) OpenAD_Symbol_263
      REAL(w2f__8) OpenAD_Symbol_264
      INTEGER(w2f__i8) OpenAD_Symbol_265
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
          __value__(PBLAP) = (((__value__(PBB) + __value__(P) -
     >  __value__(PB) * 2.0D00) / HY2) +((__value__(PBL) + __value__(
     > PBR) - __value__(PB) * 2.0D00) / HX2))
          __value__(PLLAP) = (((__value__(PBL) + __value__(PTL) -
     >  __value__(PL) * 2.0D00) / HY2) +((__value__(PLL) + __value__(P)
     >  - __value__(PL) * 2.0D00) / HX2))
          __value__(PLAP) = (((__value__(PB) + __value__(PT) -
     >  __value__(P) * 2.0D00) / HY2) +((__value__(PL) + __value__(PR)
     >  - __value__(P) * 2.0D00) / HX2))
          __value__(PRLAP) = (((__value__(P) + __value__(PRR) -
     >  __value__(PR) * 2.0D00) / HX2) +((__value__(PBR) + __value__(
     > PTR) - __value__(PR) * 2.0D00) / HY2))
          __value__(PTLAP) = (((__value__(P) + __value__(PTT) -
     >  __value__(PT) * 2.0D00) / HY2) +((__value__(PTL) + __value__(
     > PTR) - __value__(PT) * 2.0D00) / HX2))
          __value__(FVEC(INT(K))) = (((__value__(PBLAP) + __value__(
     > PTLAP) - __value__(PLAP) * 2.0D00) / HY2) +((__value__(PLLAP) +
     >  __value__(PRLAP) - __value__(PLAP) * 2.0D00) / HX2) - R *(((
     > __value__(DPDY) *(__value__(PRLAP) - __value__(PLLAP))) /(HX *
     >  2.0D00)) -((__value__(DPDX) *(__value__(PTLAP) - __value__(
     > PBLAP))) /(HY * 2.0D00))))
        END DO
      END DO
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
      OpenAD_Symbol_130 = 0_w2f__i8
      DO I = 1, NY, 1
        OpenAD_Symbol_131 = 0_w2f__i8
        DO J = 1, NX, 1
          K = (J + NX *(I +(-1)))
          IF((I .eq. 1) .OR.(J .eq. 1)) THEN
            __value__(PBL) = 0.0D00
            OpenAD_Symbol_132 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_132)
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
            OpenAD_Symbol_217 = (K - NX +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_217)
            OpenAD_Symbol_133 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_133)
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_136 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_136)
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
              OpenAD_Symbol_214 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_214)
              OpenAD_Symbol_134 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_134)
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
              OpenAD_Symbol_215 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_215)
              OpenAD_Symbol_216 = (K - NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_216)
              OpenAD_Symbol_135 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_135)
            ENDIF
            OpenAD_Symbol_137 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_137)
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
            OpenAD_Symbol_138 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_138)
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
            OpenAD_Symbol_213 = (K - NX + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_213)
            OpenAD_Symbol_139 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_139)
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_142 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_142)
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
              OpenAD_Symbol_210 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_210)
              OpenAD_Symbol_140 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_140)
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
              OpenAD_Symbol_211 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_211)
              OpenAD_Symbol_212 = (K +(-2))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_212)
              OpenAD_Symbol_141 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_141)
            ENDIF
            OpenAD_Symbol_143 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_143)
          ENDIF
          __value__(P) = __value__(X(K))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
            OpenAD_Symbol_202 = (K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_202)
            OpenAD_Symbol_146 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_146)
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_144 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_144)
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
              OpenAD_Symbol_208 = (K + 1)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_208)
              OpenAD_Symbol_209 = (K + 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_209)
              OpenAD_Symbol_145 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_145)
            ENDIF
            OpenAD_Symbol_147 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_147)
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
            OpenAD_Symbol_148 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_148)
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
            OpenAD_Symbol_207 = (NX + K +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_207)
            OpenAD_Symbol_149 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_149)
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
            OpenAD_Symbol_203 = (NX + K)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_203)
            OpenAD_Symbol_152 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_152)
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_150 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_150)
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
              OpenAD_Symbol_205 = (NX + K)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_205)
              OpenAD_Symbol_206 = (K + NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_206)
              OpenAD_Symbol_151 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_151)
            ENDIF
            OpenAD_Symbol_153 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_153)
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
            OpenAD_Symbol_154 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_154)
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
            OpenAD_Symbol_204 = (NX + K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_204)
            OpenAD_Symbol_155 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_155)
          ENDIF
          OpenAD_Symbol_0 = (__value__(PT) - __value__(PB))
          OpenAD_Symbol_1 = (HY * 2.0D00)
          __value__(DPDY) = (OpenAD_Symbol_0 / OpenAD_Symbol_1)
          OpenAD_Symbol_2 = (INT(1_w2f__i8) / OpenAD_Symbol_1)
          OpenAD_Symbol_4 = (__value__(PR) - __value__(PL))
          OpenAD_Symbol_5 = (HX * 2.0D00)
          __value__(DPDX) = (OpenAD_Symbol_4 / OpenAD_Symbol_5)
          OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
          OpenAD_Symbol_8 = (__value__(PBB) + __value__(P) - __value__(
     > PB) * 2.0D00)
          OpenAD_Symbol_12 = (__value__(PBL) + __value__(PBR) -
     >  __value__(PB) * 2.0D00)
          __value__(PBLAP) = ((OpenAD_Symbol_8 / HY2) +(
     > OpenAD_Symbol_12 / HX2))
          OpenAD_Symbol_9 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_13 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_16 = (__value__(PBL) + __value__(PTL) -
     >  __value__(PL) * 2.0D00)
          OpenAD_Symbol_20 = (__value__(PLL) + __value__(P) - __value__
     > (PL) * 2.0D00)
          __value__(PLLAP) = ((OpenAD_Symbol_16 / HY2) +(
     > OpenAD_Symbol_20 / HX2))
          OpenAD_Symbol_17 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_21 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_24 = (__value__(PB) + __value__(PT) - __value__
     > (P) * 2.0D00)
          OpenAD_Symbol_28 = (__value__(PL) + __value__(PR) - __value__
     > (P) * 2.0D00)
          __value__(PLAP) = ((OpenAD_Symbol_24 / HY2) +(
     > OpenAD_Symbol_28 / HX2))
          OpenAD_Symbol_25 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_29 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_32 = (__value__(P) + __value__(PRR) - __value__
     > (PR) * 2.0D00)
          OpenAD_Symbol_36 = (__value__(PBR) + __value__(PTR) -
     >  __value__(PR) * 2.0D00)
          __value__(PRLAP) = ((OpenAD_Symbol_32 / HX2) +(
     > OpenAD_Symbol_36 / HY2))
          OpenAD_Symbol_33 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_37 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_40 = (__value__(P) + __value__(PTT) - __value__
     > (PT) * 2.0D00)
          OpenAD_Symbol_44 = (__value__(PTL) + __value__(PTR) -
     >  __value__(PT) * 2.0D00)
          __value__(PTLAP) = ((OpenAD_Symbol_40 / HY2) +(
     > OpenAD_Symbol_44 / HX2))
          OpenAD_Symbol_41 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_45 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_48 = (__value__(PBLAP) + __value__(PTLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_52 = (__value__(PLLAP) + __value__(PRLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_63 = (__value__(PRLAP) - __value__(PLLAP))
          OpenAD_Symbol_59 = (__value__(DPDY) * OpenAD_Symbol_63)
          OpenAD_Symbol_60 = (HX * 2.0D00)
          OpenAD_Symbol_70 = (__value__(PTLAP) - __value__(PBLAP))
          OpenAD_Symbol_66 = (__value__(DPDX) * OpenAD_Symbol_70)
          OpenAD_Symbol_67 = (HY * 2.0D00)
          OpenAD_Symbol_56 = ((OpenAD_Symbol_59 / OpenAD_Symbol_60) -(
     > OpenAD_Symbol_66 / OpenAD_Symbol_67))
          __value__(FVEC(INT(K))) = ((OpenAD_Symbol_48 / HY2) +(
     > OpenAD_Symbol_52 / HX2) - R * OpenAD_Symbol_56)
          OpenAD_Symbol_49 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_53 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_64 = OpenAD_Symbol_63
          OpenAD_Symbol_65 = __value__(DPDY)
          OpenAD_Symbol_61 = (INT(1_w2f__i8) / OpenAD_Symbol_60)
          OpenAD_Symbol_71 = OpenAD_Symbol_70
          OpenAD_Symbol_72 = __value__(DPDX)
          OpenAD_Symbol_68 = (INT(1_w2f__i8) / OpenAD_Symbol_67)
          OpenAD_Symbol_58 = R
          OpenAD_Symbol_78 = (OpenAD_Symbol_58 * INT((-1_w2f__i8)))
          OpenAD_Symbol_79 = (INT((-1_w2f__i8)) * OpenAD_Symbol_78)
          OpenAD_Symbol_80 = (OpenAD_Symbol_72 * OpenAD_Symbol_68 *
     >  OpenAD_Symbol_79)
          OpenAD_Symbol_81 = (OpenAD_Symbol_6 * OpenAD_Symbol_71 *
     >  OpenAD_Symbol_68 * OpenAD_Symbol_79)
          OpenAD_Symbol_82 = (OpenAD_Symbol_65 * OpenAD_Symbol_61 *
     >  OpenAD_Symbol_78)
          OpenAD_Symbol_83 = (OpenAD_Symbol_2 * OpenAD_Symbol_64 *
     >  OpenAD_Symbol_61 * OpenAD_Symbol_78)
          OpenAD_Symbol_84 = (OpenAD_Symbol_53 + OpenAD_Symbol_82)
          OpenAD_Symbol_85 = (OpenAD_Symbol_53 + INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_82)
          OpenAD_Symbol_86 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_53 + 2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_49)
          OpenAD_Symbol_87 = (OpenAD_Symbol_49 + OpenAD_Symbol_80)
          OpenAD_Symbol_88 = (OpenAD_Symbol_49 + INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_80)
          OpenAD_Symbol_89 = (OpenAD_Symbol_45 * OpenAD_Symbol_87)
          OpenAD_Symbol_90 = (OpenAD_Symbol_41 * OpenAD_Symbol_87)
          OpenAD_Symbol_91 = (OpenAD_Symbol_37 * OpenAD_Symbol_84)
          OpenAD_Symbol_92 = (OpenAD_Symbol_33 * OpenAD_Symbol_84)
          OpenAD_Symbol_93 = (OpenAD_Symbol_29 * OpenAD_Symbol_86)
          OpenAD_Symbol_94 = (OpenAD_Symbol_25 * OpenAD_Symbol_86)
          OpenAD_Symbol_95 = (OpenAD_Symbol_21 * OpenAD_Symbol_85)
          OpenAD_Symbol_96 = (OpenAD_Symbol_17 * OpenAD_Symbol_85)
          OpenAD_Symbol_97 = (OpenAD_Symbol_13 * OpenAD_Symbol_88)
          OpenAD_Symbol_98 = (OpenAD_Symbol_9 * OpenAD_Symbol_88)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_81)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_83)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_89)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_90)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_91)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_92)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_93)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_94)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_95)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_96)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_97)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_98)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          OpenAD_Symbol_131 = (INT(OpenAD_Symbol_131) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_131)
        OpenAD_Symbol_130 = (INT(OpenAD_Symbol_130) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_130)
      OpenAD_Symbol_156 = 0_w2f__i8
      DO K = 1, N, 1
        OpenAD_Symbol_74 = (HX2 * HY2)
        OpenAD_Symbol_77 = (__value__(FVEC(K)) * OpenAD_Symbol_74)
        OpenAD_Symbol_75 = OpenAD_Symbol_74
        __value__(FVEC(INT(K))) = OpenAD_Symbol_77
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_75)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
        OpenAD_Symbol_156 = (INT(OpenAD_Symbol_156) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_156)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_112)
      OpenAD_Symbol_113 = 1
      DO WHILE(INT(OpenAD_Symbol_113) .LE. INT(OpenAD_Symbol_112))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_263)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_264)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_264, __deriv__(FVEC(INT(
     > OpenAD_Symbol_263))), __deriv__(OpenAD_Symbol_111))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_263))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_265)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_111), __deriv__(FVEC(INT(
     > OpenAD_Symbol_265))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_111))
        OpenAD_Symbol_113 = INT(OpenAD_Symbol_113) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_114)
      OpenAD_Symbol_115 = 1
      DO WHILE(INT(OpenAD_Symbol_115) .LE. INT(OpenAD_Symbol_114))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_116)
        OpenAD_Symbol_117 = 1
        DO WHILE(INT(OpenAD_Symbol_117) .LE. INT(OpenAD_Symbol_116))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_223)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_224)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_224, __deriv__(FVEC(INT(
     > OpenAD_Symbol_223))), __deriv__(OpenAD_Symbol_101))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_225)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_226)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_226, __deriv__(FVEC(INT(
     > OpenAD_Symbol_225))), __deriv__(OpenAD_Symbol_102))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_227)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_228)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_228, __deriv__(FVEC(INT(
     > OpenAD_Symbol_227))), __deriv__(OpenAD_Symbol_103))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_229)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_230)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_230, __deriv__(FVEC(INT(
     > OpenAD_Symbol_229))), __deriv__(OpenAD_Symbol_104))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_231)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_232)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_232, __deriv__(FVEC(INT(
     > OpenAD_Symbol_231))), __deriv__(OpenAD_Symbol_105))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_233)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_234)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_234, __deriv__(FVEC(INT(
     > OpenAD_Symbol_233))), __deriv__(OpenAD_Symbol_106))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_235)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_236)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_236, __deriv__(FVEC(INT(
     > OpenAD_Symbol_235))), __deriv__(OpenAD_Symbol_107))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_237)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_238)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_238, __deriv__(FVEC(INT(
     > OpenAD_Symbol_237))), __deriv__(OpenAD_Symbol_108))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_239)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_240)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_240, __deriv__(FVEC(INT(
     > OpenAD_Symbol_239))), __deriv__(OpenAD_Symbol_109))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_241)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_242)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_242, __deriv__(FVEC(INT(
     > OpenAD_Symbol_241))), __deriv__(OpenAD_Symbol_110))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_243)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_244)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_244, __deriv__(FVEC(INT(
     > OpenAD_Symbol_243))), __deriv__(OpenAD_Symbol_99))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_245)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_246)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_246, __deriv__(FVEC(INT(
     > OpenAD_Symbol_245))), __deriv__(OpenAD_Symbol_100))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_245))))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_110), __deriv__(
     > PT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_110), __deriv__
     > (PTR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_110), __deriv__
     > (PTL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_110))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_109), __deriv__(
     > PT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_109), __deriv__
     > (PTT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_109), __deriv__
     > (P))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_109))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_108), __deriv__(
     > PR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_108), __deriv__
     > (PTR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_108), __deriv__
     > (PBR))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_108))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_107), __deriv__(
     > PR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_107), __deriv__
     > (PRR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_107), __deriv__
     > (P))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_107))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_106), __deriv__(P
     > ))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_106), __deriv__
     > (PR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_106), __deriv__
     > (PL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_106))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_105), __deriv__(P
     > ))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_105), __deriv__
     > (PT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_105), __deriv__
     > (PB))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_105))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_104), __deriv__(
     > PL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_104), __deriv__
     > (P))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_104), __deriv__
     > (PLL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_104))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_103), __deriv__(
     > PL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_103), __deriv__
     > (PTL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_103), __deriv__
     > (PBL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_103))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_102), __deriv__(
     > PB))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_102), __deriv__
     > (PBR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_102), __deriv__
     > (PBL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_102))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_101), __deriv__(
     > PB))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_101), __deriv__
     > (P))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_101), __deriv__
     > (PBB))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_101))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-1_w2f__i8, __deriv__(OpenAD_Symbol_100),
     >  __deriv__(PL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_100), __deriv__
     > (PR))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_100))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-1_w2f__i8, __deriv__(OpenAD_Symbol_99), __deriv__
     > (PB))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_99), __deriv__(
     > PT))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_99))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_118)
          IF(OpenAD_Symbol_118 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_247)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTR), __deriv__(X(INT(
     > OpenAD_Symbol_247))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_119)
          IF(OpenAD_Symbol_119 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_222)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_222))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PT))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTT))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_120)
            IF(OpenAD_Symbol_120 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_248)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_248))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_249)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_249))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_250)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_250))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_121)
          IF(OpenAD_Symbol_121 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_251)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTL), __deriv__(X(INT(
     > OpenAD_Symbol_251))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_122)
          IF(OpenAD_Symbol_122 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_221)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_221))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PR))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PRR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_123)
            IF(OpenAD_Symbol_123 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_252)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_252))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_253)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_253))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_254)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_254))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_220)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(P), __deriv__(X(INT(OpenAD_Symbol_220
     > ))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(P))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_124)
          IF(OpenAD_Symbol_124 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_219)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_219))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PLL))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_125)
            IF(OpenAD_Symbol_125 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_255)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_255))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_256)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_256))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_257)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_257))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_126)
          IF(OpenAD_Symbol_126 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_258)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBR), __deriv__(X(INT(
     > OpenAD_Symbol_258))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_127)
          IF(OpenAD_Symbol_127 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_218)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_218))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBB))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PB))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_128)
            IF(OpenAD_Symbol_128 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_259)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_259))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_260)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_260))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_261)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_261))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_129)
          IF(OpenAD_Symbol_129 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_262)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBL), __deriv__(X(INT(
     > OpenAD_Symbol_262))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ENDIF
          OpenAD_Symbol_117 = INT(OpenAD_Symbol_117) + 1
        END DO
        OpenAD_Symbol_115 = INT(OpenAD_Symbol_115) + 1
      END DO
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
      OpenAD_Symbol_175 = 0_w2f__i8
      DO I = 1, NY, 1
        OpenAD_Symbol_176 = 0_w2f__i8
        DO J = 1, NX, 1
          K = (J + NX *(I +(-1)))
          IF((I .eq. 1) .OR.(J .eq. 1)) THEN
            __value__(PBL) = 0.0D00
            OpenAD_Symbol_177 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_177)
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
            OpenAD_Symbol_217 = (K - NX +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_217)
            OpenAD_Symbol_178 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_178)
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_181 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_181)
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
              OpenAD_Symbol_214 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_214)
              OpenAD_Symbol_179 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_179)
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
              OpenAD_Symbol_215 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_215)
              OpenAD_Symbol_216 = (K - NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_216)
              OpenAD_Symbol_180 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_180)
            ENDIF
            OpenAD_Symbol_182 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_182)
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
            OpenAD_Symbol_183 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_183)
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
            OpenAD_Symbol_213 = (K - NX + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_213)
            OpenAD_Symbol_184 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_184)
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_187 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_187)
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
              OpenAD_Symbol_210 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_210)
              OpenAD_Symbol_185 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_185)
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
              OpenAD_Symbol_211 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_211)
              OpenAD_Symbol_212 = (K +(-2))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_212)
              OpenAD_Symbol_186 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_186)
            ENDIF
            OpenAD_Symbol_188 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_188)
          ENDIF
          __value__(P) = __value__(X(K))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
            OpenAD_Symbol_202 = (K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_202)
            OpenAD_Symbol_191 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_191)
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_189 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_189)
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
              OpenAD_Symbol_208 = (K + 1)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_208)
              OpenAD_Symbol_209 = (K + 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_209)
              OpenAD_Symbol_190 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_190)
            ENDIF
            OpenAD_Symbol_192 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_192)
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
            OpenAD_Symbol_193 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_193)
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
            OpenAD_Symbol_207 = (NX + K +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_207)
            OpenAD_Symbol_194 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_194)
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
            OpenAD_Symbol_203 = (NX + K)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_203)
            OpenAD_Symbol_197 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_197)
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_195 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_195)
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
              OpenAD_Symbol_205 = (NX + K)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_205)
              OpenAD_Symbol_206 = (K + NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_206)
              OpenAD_Symbol_196 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_196)
            ENDIF
            OpenAD_Symbol_198 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_198)
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
            OpenAD_Symbol_199 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_199)
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
            OpenAD_Symbol_204 = (NX + K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_204)
            OpenAD_Symbol_200 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_200)
          ENDIF
          OpenAD_Symbol_0 = (__value__(PT) - __value__(PB))
          OpenAD_Symbol_1 = (HY * 2.0D00)
          __value__(DPDY) = (OpenAD_Symbol_0 / OpenAD_Symbol_1)
          OpenAD_Symbol_2 = (INT(1_w2f__i8) / OpenAD_Symbol_1)
          OpenAD_Symbol_4 = (__value__(PR) - __value__(PL))
          OpenAD_Symbol_5 = (HX * 2.0D00)
          __value__(DPDX) = (OpenAD_Symbol_4 / OpenAD_Symbol_5)
          OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
          OpenAD_Symbol_8 = (__value__(PBB) + __value__(P) - __value__(
     > PB) * 2.0D00)
          OpenAD_Symbol_12 = (__value__(PBL) + __value__(PBR) -
     >  __value__(PB) * 2.0D00)
          __value__(PBLAP) = ((OpenAD_Symbol_8 / HY2) +(
     > OpenAD_Symbol_12 / HX2))
          OpenAD_Symbol_9 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_13 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_16 = (__value__(PBL) + __value__(PTL) -
     >  __value__(PL) * 2.0D00)
          OpenAD_Symbol_20 = (__value__(PLL) + __value__(P) - __value__
     > (PL) * 2.0D00)
          __value__(PLLAP) = ((OpenAD_Symbol_16 / HY2) +(
     > OpenAD_Symbol_20 / HX2))
          OpenAD_Symbol_17 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_21 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_24 = (__value__(PB) + __value__(PT) - __value__
     > (P) * 2.0D00)
          OpenAD_Symbol_28 = (__value__(PL) + __value__(PR) - __value__
     > (P) * 2.0D00)
          __value__(PLAP) = ((OpenAD_Symbol_24 / HY2) +(
     > OpenAD_Symbol_28 / HX2))
          OpenAD_Symbol_25 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_29 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_32 = (__value__(P) + __value__(PRR) - __value__
     > (PR) * 2.0D00)
          OpenAD_Symbol_36 = (__value__(PBR) + __value__(PTR) -
     >  __value__(PR) * 2.0D00)
          __value__(PRLAP) = ((OpenAD_Symbol_32 / HX2) +(
     > OpenAD_Symbol_36 / HY2))
          OpenAD_Symbol_33 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_37 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_40 = (__value__(P) + __value__(PTT) - __value__
     > (PT) * 2.0D00)
          OpenAD_Symbol_44 = (__value__(PTL) + __value__(PTR) -
     >  __value__(PT) * 2.0D00)
          __value__(PTLAP) = ((OpenAD_Symbol_40 / HY2) +(
     > OpenAD_Symbol_44 / HX2))
          OpenAD_Symbol_41 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_45 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_48 = (__value__(PBLAP) + __value__(PTLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_52 = (__value__(PLLAP) + __value__(PRLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_Symbol_63 = (__value__(PRLAP) - __value__(PLLAP))
          OpenAD_Symbol_59 = (__value__(DPDY) * OpenAD_Symbol_63)
          OpenAD_Symbol_60 = (HX * 2.0D00)
          OpenAD_Symbol_70 = (__value__(PTLAP) - __value__(PBLAP))
          OpenAD_Symbol_66 = (__value__(DPDX) * OpenAD_Symbol_70)
          OpenAD_Symbol_67 = (HY * 2.0D00)
          OpenAD_Symbol_56 = ((OpenAD_Symbol_59 / OpenAD_Symbol_60) -(
     > OpenAD_Symbol_66 / OpenAD_Symbol_67))
          __value__(FVEC(INT(K))) = ((OpenAD_Symbol_48 / HY2) +(
     > OpenAD_Symbol_52 / HX2) - R * OpenAD_Symbol_56)
          OpenAD_Symbol_49 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_53 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_64 = OpenAD_Symbol_63
          OpenAD_Symbol_65 = __value__(DPDY)
          OpenAD_Symbol_61 = (INT(1_w2f__i8) / OpenAD_Symbol_60)
          OpenAD_Symbol_71 = OpenAD_Symbol_70
          OpenAD_Symbol_72 = __value__(DPDX)
          OpenAD_Symbol_68 = (INT(1_w2f__i8) / OpenAD_Symbol_67)
          OpenAD_Symbol_58 = R
          OpenAD_Symbol_78 = (OpenAD_Symbol_58 * INT((-1_w2f__i8)))
          OpenAD_Symbol_79 = (INT((-1_w2f__i8)) * OpenAD_Symbol_78)
          OpenAD_Symbol_80 = (OpenAD_Symbol_72 * OpenAD_Symbol_68 *
     >  OpenAD_Symbol_79)
          OpenAD_Symbol_81 = (OpenAD_Symbol_6 * OpenAD_Symbol_71 *
     >  OpenAD_Symbol_68 * OpenAD_Symbol_79)
          OpenAD_Symbol_82 = (OpenAD_Symbol_65 * OpenAD_Symbol_61 *
     >  OpenAD_Symbol_78)
          OpenAD_Symbol_83 = (OpenAD_Symbol_2 * OpenAD_Symbol_64 *
     >  OpenAD_Symbol_61 * OpenAD_Symbol_78)
          OpenAD_Symbol_84 = (OpenAD_Symbol_53 + OpenAD_Symbol_82)
          OpenAD_Symbol_85 = (OpenAD_Symbol_53 + INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_82)
          OpenAD_Symbol_86 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_53 + 2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_49)
          OpenAD_Symbol_87 = (OpenAD_Symbol_49 + OpenAD_Symbol_80)
          OpenAD_Symbol_88 = (OpenAD_Symbol_49 + INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_80)
          OpenAD_Symbol_89 = (OpenAD_Symbol_45 * OpenAD_Symbol_87)
          OpenAD_Symbol_90 = (OpenAD_Symbol_41 * OpenAD_Symbol_87)
          OpenAD_Symbol_91 = (OpenAD_Symbol_37 * OpenAD_Symbol_84)
          OpenAD_Symbol_92 = (OpenAD_Symbol_33 * OpenAD_Symbol_84)
          OpenAD_Symbol_93 = (OpenAD_Symbol_29 * OpenAD_Symbol_86)
          OpenAD_Symbol_94 = (OpenAD_Symbol_25 * OpenAD_Symbol_86)
          OpenAD_Symbol_95 = (OpenAD_Symbol_21 * OpenAD_Symbol_85)
          OpenAD_Symbol_96 = (OpenAD_Symbol_17 * OpenAD_Symbol_85)
          OpenAD_Symbol_97 = (OpenAD_Symbol_13 * OpenAD_Symbol_88)
          OpenAD_Symbol_98 = (OpenAD_Symbol_9 * OpenAD_Symbol_88)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_81)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_83)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_89)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_90)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_91)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_92)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_93)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_94)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_95)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_96)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_97)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_98)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          OpenAD_Symbol_176 = (INT(OpenAD_Symbol_176) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_176)
        OpenAD_Symbol_175 = (INT(OpenAD_Symbol_175) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_175)
      OpenAD_Symbol_201 = 0_w2f__i8
      DO K = 1, N, 1
        OpenAD_Symbol_74 = (HX2 * HY2)
        OpenAD_Symbol_77 = (__value__(FVEC(K)) * OpenAD_Symbol_74)
        OpenAD_Symbol_75 = OpenAD_Symbol_74
        __value__(FVEC(INT(K))) = OpenAD_Symbol_77
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_75)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
        OpenAD_Symbol_201 = (INT(OpenAD_Symbol_201) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_201)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_157)
      OpenAD_Symbol_158 = 1
      DO WHILE(INT(OpenAD_Symbol_158) .LE. INT(OpenAD_Symbol_157))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_263)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_264)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_264, __deriv__(FVEC(INT(
     > OpenAD_Symbol_263))), __deriv__(OpenAD_Symbol_111))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_263))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_265)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_111), __deriv__(FVEC(INT(
     > OpenAD_Symbol_265))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_111))
        OpenAD_Symbol_158 = INT(OpenAD_Symbol_158) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_159)
      OpenAD_Symbol_160 = 1
      DO WHILE(INT(OpenAD_Symbol_160) .LE. INT(OpenAD_Symbol_159))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_161)
        OpenAD_Symbol_162 = 1
        DO WHILE(INT(OpenAD_Symbol_162) .LE. INT(OpenAD_Symbol_161))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_223)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_224)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_224, __deriv__(FVEC(INT(
     > OpenAD_Symbol_223))), __deriv__(OpenAD_Symbol_101))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_225)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_226)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_226, __deriv__(FVEC(INT(
     > OpenAD_Symbol_225))), __deriv__(OpenAD_Symbol_102))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_227)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_228)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_228, __deriv__(FVEC(INT(
     > OpenAD_Symbol_227))), __deriv__(OpenAD_Symbol_103))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_229)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_230)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_230, __deriv__(FVEC(INT(
     > OpenAD_Symbol_229))), __deriv__(OpenAD_Symbol_104))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_231)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_232)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_232, __deriv__(FVEC(INT(
     > OpenAD_Symbol_231))), __deriv__(OpenAD_Symbol_105))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_233)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_234)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_234, __deriv__(FVEC(INT(
     > OpenAD_Symbol_233))), __deriv__(OpenAD_Symbol_106))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_235)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_236)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_236, __deriv__(FVEC(INT(
     > OpenAD_Symbol_235))), __deriv__(OpenAD_Symbol_107))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_237)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_238)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_238, __deriv__(FVEC(INT(
     > OpenAD_Symbol_237))), __deriv__(OpenAD_Symbol_108))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_239)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_240)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_240, __deriv__(FVEC(INT(
     > OpenAD_Symbol_239))), __deriv__(OpenAD_Symbol_109))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_241)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_242)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_242, __deriv__(FVEC(INT(
     > OpenAD_Symbol_241))), __deriv__(OpenAD_Symbol_110))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_243)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_244)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_244, __deriv__(FVEC(INT(
     > OpenAD_Symbol_243))), __deriv__(OpenAD_Symbol_99))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_245)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_246)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_246, __deriv__(FVEC(INT(
     > OpenAD_Symbol_245))), __deriv__(OpenAD_Symbol_100))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_245))))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_110), __deriv__(
     > PT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_110), __deriv__
     > (PTR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_110), __deriv__
     > (PTL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_110))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_109), __deriv__(
     > PT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_109), __deriv__
     > (PTT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_109), __deriv__
     > (P))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_109))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_108), __deriv__(
     > PR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_108), __deriv__
     > (PTR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_108), __deriv__
     > (PBR))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_108))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_107), __deriv__(
     > PR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_107), __deriv__
     > (PRR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_107), __deriv__
     > (P))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_107))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_106), __deriv__(P
     > ))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_106), __deriv__
     > (PR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_106), __deriv__
     > (PL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_106))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_105), __deriv__(P
     > ))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_105), __deriv__
     > (PT))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_105), __deriv__
     > (PB))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_105))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_104), __deriv__(
     > PL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_104), __deriv__
     > (P))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_104), __deriv__
     > (PLL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_104))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_103), __deriv__(
     > PL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_103), __deriv__
     > (PTL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_103), __deriv__
     > (PBL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_103))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_102), __deriv__(
     > PB))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_102), __deriv__
     > (PBR))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_102), __deriv__
     > (PBL))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_102))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-2.0D00, __deriv__(OpenAD_Symbol_101), __deriv__(
     > PB))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_101), __deriv__
     > (P))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_101), __deriv__
     > (PBB))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_101))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-1_w2f__i8, __deriv__(OpenAD_Symbol_100),
     >  __deriv__(PL))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_100), __deriv__
     > (PR))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_100))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-1_w2f__i8, __deriv__(OpenAD_Symbol_99), __deriv__
     > (PB))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(OpenAD_Symbol_99), __deriv__(
     > PT))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_99))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_163)
          IF(OpenAD_Symbol_163 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_247)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTR), __deriv__(X(INT(
     > OpenAD_Symbol_247))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_164)
          IF(OpenAD_Symbol_164 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_222)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_222))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PT))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTT))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_165)
            IF(OpenAD_Symbol_165 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_248)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_248))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_249)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_249))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_250)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_250))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_166)
          IF(OpenAD_Symbol_166 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_251)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTL), __deriv__(X(INT(
     > OpenAD_Symbol_251))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_167)
          IF(OpenAD_Symbol_167 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_221)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_221))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PR))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PRR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_168)
            IF(OpenAD_Symbol_168 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_252)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_252))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_253)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_253))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_254)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_254))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_220)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(P), __deriv__(X(INT(OpenAD_Symbol_220
     > ))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(P))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_169)
          IF(OpenAD_Symbol_169 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_219)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_219))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PLL))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_170)
            IF(OpenAD_Symbol_170 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_255)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_255))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_256)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_256))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_257)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_257))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_171)
          IF(OpenAD_Symbol_171 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_258)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBR), __deriv__(X(INT(
     > OpenAD_Symbol_258))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_172)
          IF(OpenAD_Symbol_172 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_218)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_218))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBB))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PB))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_173)
            IF(OpenAD_Symbol_173 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_259)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_259))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_260)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_260))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_261)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_261))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_174)
          IF(OpenAD_Symbol_174 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_262)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBL), __deriv__(X(INT(
     > OpenAD_Symbol_262))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ENDIF
          OpenAD_Symbol_162 = INT(OpenAD_Symbol_162) + 1
        END DO
        OpenAD_Symbol_160 = INT(OpenAD_Symbol_160) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
