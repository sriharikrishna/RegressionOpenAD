
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
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_lin_0
      TYPE (OpenADTy_active) OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
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
      INTEGER(w2f__i8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
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
      OpenAD_Symbol_3 = 0_w2f__i8
      DO K = 1, N, 1
        OpenAD_tmp_0 = (HX2 * HY2)
        OpenAD_Symbol_0 = (__value__(FVEC(K)) * OpenAD_tmp_0)
        OpenAD_lin_0 = OpenAD_tmp_0
        __value__(FVEC(INT(K))) = OpenAD_Symbol_0
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_0)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
        OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_3)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_1)
      OpenAD_Symbol_2 = 1
      DO WHILE(INT(OpenAD_Symbol_2) .LE. INT(OpenAD_Symbol_1))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_107)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_108)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_108, __deriv__(FVEC(INT(
     > OpenAD_Symbol_107))), __deriv__(OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_107))))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(FVEC(INT(
     > OpenAD_Symbol_107))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2) + 1
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
      OpenAD_Symbol_6 = 0_w2f__i8
      DO K = 1, N, 1
        OpenAD_tmp_0 = (HX2 * HY2)
        OpenAD_Symbol_0 = (__value__(FVEC(K)) * OpenAD_tmp_0)
        OpenAD_lin_0 = OpenAD_tmp_0
        __value__(FVEC(INT(K))) = OpenAD_Symbol_0
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_0)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(K)
        OpenAD_Symbol_6 = (INT(OpenAD_Symbol_6) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_6)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_4)
      OpenAD_Symbol_5 = 1
      DO WHILE(INT(OpenAD_Symbol_5) .LE. INT(OpenAD_Symbol_4))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_107)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_108)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_108, __deriv__(FVEC(INT(
     > OpenAD_Symbol_107))), __deriv__(OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_107))))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(FVEC(INT(
     > OpenAD_Symbol_107))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        OpenAD_Symbol_5 = INT(OpenAD_Symbol_5) + 1
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
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
      INTEGER(w2f__i8) OpenAD_Symbol_24
      INTEGER(w2f__i8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      INTEGER(w2f__i8) OpenAD_Symbol_27
      INTEGER(w2f__i8) OpenAD_Symbol_28
      INTEGER(w2f__i8) OpenAD_Symbol_29
      INTEGER(w2f__i8) OpenAD_Symbol_30
      INTEGER(w2f__i8) OpenAD_Symbol_31
      INTEGER(w2f__i8) OpenAD_Symbol_32
      INTEGER(w2f__i8) OpenAD_Symbol_33
      INTEGER(w2f__i8) OpenAD_Symbol_34
      INTEGER(w2f__i8) OpenAD_Symbol_35
      INTEGER(w2f__i8) OpenAD_Symbol_36
      INTEGER(w2f__i8) OpenAD_Symbol_37
      INTEGER(w2f__i8) OpenAD_Symbol_38
      INTEGER(w2f__i8) OpenAD_Symbol_39
      INTEGER(w2f__i8) OpenAD_Symbol_40
      INTEGER(w2f__i8) OpenAD_Symbol_41
      INTEGER(w2f__i8) OpenAD_Symbol_42
      INTEGER(w2f__i8) OpenAD_Symbol_43
      INTEGER(w2f__i8) OpenAD_Symbol_44
      INTEGER(w2f__i8) OpenAD_Symbol_45
      INTEGER(w2f__i8) OpenAD_Symbol_46
      INTEGER(w2f__i8) OpenAD_Symbol_47
      INTEGER(w2f__i8) OpenAD_Symbol_48
      INTEGER(w2f__i8) OpenAD_Symbol_49
      INTEGER(w2f__i8) OpenAD_Symbol_50
      INTEGER(w2f__i8) OpenAD_Symbol_51
      INTEGER(w2f__i8) OpenAD_Symbol_52
      INTEGER(w2f__i8) OpenAD_Symbol_53
      INTEGER(w2f__i8) OpenAD_Symbol_54
      INTEGER(w2f__i8) OpenAD_Symbol_55
      INTEGER(w2f__i8) OpenAD_Symbol_56
      INTEGER(w2f__i8) OpenAD_Symbol_57
      INTEGER(w2f__i8) OpenAD_Symbol_58
      INTEGER(w2f__i8) OpenAD_Symbol_59
      INTEGER(w2f__i8) OpenAD_Symbol_60
      INTEGER(w2f__i8) OpenAD_Symbol_61
      INTEGER(w2f__i8) OpenAD_Symbol_62
      INTEGER(w2f__i8) OpenAD_Symbol_63
      INTEGER(w2f__i8) OpenAD_Symbol_64
      INTEGER(w2f__i8) OpenAD_Symbol_65
      INTEGER(w2f__i8) OpenAD_Symbol_66
      INTEGER(w2f__i8) OpenAD_Symbol_67
      INTEGER(w2f__i8) OpenAD_Symbol_68
      INTEGER(w2f__i8) OpenAD_Symbol_69
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_70
      INTEGER(w2f__i8) OpenAD_Symbol_71
      INTEGER(w2f__i8) OpenAD_Symbol_72
      INTEGER(w2f__i8) OpenAD_Symbol_73
      INTEGER(w2f__i8) OpenAD_Symbol_74
      INTEGER(w2f__i8) OpenAD_Symbol_75
      INTEGER(w2f__i8) OpenAD_Symbol_76
      INTEGER(w2f__i8) OpenAD_Symbol_77
      INTEGER(w2f__i8) OpenAD_Symbol_78
      INTEGER(w2f__i8) OpenAD_Symbol_79
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_80
      INTEGER(w2f__i8) OpenAD_Symbol_81
      INTEGER(w2f__i8) OpenAD_Symbol_82
      INTEGER(w2f__i8) OpenAD_Symbol_83
      INTEGER(w2f__i8) OpenAD_Symbol_84
      INTEGER(w2f__i8) OpenAD_Symbol_85
      INTEGER(w2f__i8) OpenAD_Symbol_86
      INTEGER(w2f__i8) OpenAD_Symbol_87
      INTEGER(w2f__i8) OpenAD_Symbol_88
      INTEGER(w2f__i8) OpenAD_Symbol_89
      INTEGER(w2f__i8) OpenAD_Symbol_9
      INTEGER(w2f__i8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_9
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_5
      TYPE (OpenADTy_active) OpenAD_prop_6
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_10
      REAL(w2f__8) OpenAD_tmp_11
      REAL(w2f__8) OpenAD_tmp_12
      REAL(w2f__8) OpenAD_tmp_13
      REAL(w2f__8) OpenAD_tmp_2
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
      INTEGER(w2f__i8) OpenAD_Symbol_100
      INTEGER(w2f__i8) OpenAD_Symbol_101
      INTEGER(w2f__i8) OpenAD_Symbol_102
      INTEGER(w2f__i8) OpenAD_Symbol_103
      INTEGER(w2f__i8) OpenAD_Symbol_104
      INTEGER(w2f__i8) OpenAD_Symbol_105
      INTEGER(w2f__i8) OpenAD_Symbol_106
      INTEGER(w2f__i8) OpenAD_Symbol_109
      INTEGER(w2f__i8) OpenAD_Symbol_110
      INTEGER(w2f__i8) OpenAD_Symbol_111
      INTEGER(w2f__i8) OpenAD_Symbol_112
      INTEGER(w2f__i8) OpenAD_Symbol_113
      INTEGER(w2f__i8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_120
      REAL(w2f__8) OpenAD_Symbol_121
      REAL(w2f__8) OpenAD_Symbol_122
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
      INTEGER(w2f__i8) OpenAD_Symbol_91
      INTEGER(w2f__i8) OpenAD_Symbol_92
      INTEGER(w2f__i8) OpenAD_Symbol_93
      INTEGER(w2f__i8) OpenAD_Symbol_94
      INTEGER(w2f__i8) OpenAD_Symbol_95
      INTEGER(w2f__i8) OpenAD_Symbol_96
      INTEGER(w2f__i8) OpenAD_Symbol_97
      INTEGER(w2f__i8) OpenAD_Symbol_98
      INTEGER(w2f__i8) OpenAD_Symbol_99
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
      OpenAD_Symbol_23 = 0_w2f__i8
      DO I = 1, NY, 1
        OpenAD_Symbol_24 = 0_w2f__i8
        DO J = 1, NX, 1
          K = (J + NX *(I +(-1)))
          IF((I .eq. 1) .OR.(J .eq. 1)) THEN
            __value__(PBL) = 0.0D00
            OpenAD_Symbol_25 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_25)
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
            OpenAD_Symbol_106 = (K - NX +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_106)
            OpenAD_Symbol_26 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_26)
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_29 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_29)
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
              OpenAD_Symbol_103 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_103)
              OpenAD_Symbol_27 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_27)
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
              OpenAD_Symbol_104 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_104)
              OpenAD_Symbol_105 = (K - NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_105)
              OpenAD_Symbol_28 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_28)
            ENDIF
            OpenAD_Symbol_30 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_30)
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
            OpenAD_Symbol_31 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_31)
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
            OpenAD_Symbol_102 = (K - NX + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_102)
            OpenAD_Symbol_32 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_32)
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_35 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_35)
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
              OpenAD_Symbol_99 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_99)
              OpenAD_Symbol_33 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_33)
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
              OpenAD_Symbol_100 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_100)
              OpenAD_Symbol_101 = (K +(-2))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_101)
              OpenAD_Symbol_34 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_34)
            ENDIF
            OpenAD_Symbol_36 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_36)
          ENDIF
          __value__(P) = __value__(X(K))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
            OpenAD_Symbol_91 = (K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_91)
            OpenAD_Symbol_39 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_39)
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_37 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_37)
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
              OpenAD_Symbol_97 = (K + 1)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_97)
              OpenAD_Symbol_98 = (K + 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_98)
              OpenAD_Symbol_38 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_38)
            ENDIF
            OpenAD_Symbol_40 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_40)
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
            OpenAD_Symbol_41 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_41)
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
            OpenAD_Symbol_96 = (NX + K +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_96)
            OpenAD_Symbol_42 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_42)
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
            OpenAD_Symbol_92 = (NX + K)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_92)
            OpenAD_Symbol_45 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_45)
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_43 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_43)
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
              OpenAD_Symbol_94 = (NX + K)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_94)
              OpenAD_Symbol_95 = (K + NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_95)
              OpenAD_Symbol_44 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_44)
            ENDIF
            OpenAD_Symbol_46 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_46)
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
            OpenAD_Symbol_47 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_47)
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
            OpenAD_Symbol_93 = (NX + K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_93)
            OpenAD_Symbol_48 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_48)
          ENDIF
          OpenAD_tmp_1 = (__value__(PT) - __value__(PB))
          OpenAD_tmp_2 = (HY * 2.0D00)
          __value__(DPDY) = (OpenAD_tmp_1 / OpenAD_tmp_2)
          OpenAD_lin_2 = (INT(1_w2f__i8) / OpenAD_tmp_2)
          OpenAD_tmp_3 = (__value__(PR) - __value__(PL))
          OpenAD_tmp_4 = (HX * 2.0D00)
          __value__(DPDX) = (OpenAD_tmp_3 / OpenAD_tmp_4)
          OpenAD_lin_4 = (INT(1_w2f__i8) / OpenAD_tmp_4)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_4)
          CALL bar(__deriv__(PBB), __deriv__(PBL), __deriv__(PB),
     >  __deriv__(PBR), __deriv__(PLL), __deriv__(PL), __deriv__(P),
     >  __deriv__(PR), __deriv__(PRR), __deriv__(PTL), __deriv__(PT),
     >  __deriv__(PTR), __deriv__(PTT), HY2, HX2, __deriv__(PLAP),
     >  __deriv__(PBLAP), __deriv__(PLLAP), __deriv__(PRLAP), __deriv__
     > (PTLAP))
          OpenAD_tmp_5 = (__value__(PBLAP) + __value__(PTLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_tmp_6 = (__value__(PLLAP) + __value__(PRLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_tmp_10 = (__value__(PRLAP) - __value__(PLLAP))
          OpenAD_tmp_8 = (__value__(DPDY) * OpenAD_tmp_10)
          OpenAD_tmp_9 = (HX * 2.0D00)
          OpenAD_tmp_13 = (__value__(PTLAP) - __value__(PBLAP))
          OpenAD_tmp_11 = (__value__(DPDX) * OpenAD_tmp_13)
          OpenAD_tmp_12 = (HY * 2.0D00)
          OpenAD_tmp_7 = ((OpenAD_tmp_8 / OpenAD_tmp_9) -(OpenAD_tmp_11
     >  / OpenAD_tmp_12))
          __value__(FVEC(INT(K))) = ((OpenAD_tmp_5 / HY2) +(
     > OpenAD_tmp_6 / HX2) - R * OpenAD_tmp_7)
          OpenAD_lin_6 = (INT(1_w2f__i8) / HY2)
          OpenAD_lin_9 = (INT(1_w2f__i8) / HX2)
          OpenAD_lin_16 = OpenAD_tmp_10
          OpenAD_lin_17 = __value__(DPDY)
          OpenAD_lin_14 = (INT(1_w2f__i8) / OpenAD_tmp_9)
          OpenAD_lin_20 = OpenAD_tmp_13
          OpenAD_lin_21 = __value__(DPDX)
          OpenAD_lin_18 = (INT(1_w2f__i8) / OpenAD_tmp_12)
          OpenAD_lin_13 = R
          OpenAD_acc_0 = (OpenAD_lin_13 * INT((-1_w2f__i8)))
          OpenAD_acc_1 = (INT((-1_w2f__i8)) * OpenAD_acc_0)
          OpenAD_acc_2 = (OpenAD_lin_20 * OpenAD_lin_18 * OpenAD_acc_1)
          OpenAD_acc_3 = (OpenAD_lin_21 * OpenAD_lin_18 * OpenAD_acc_1)
          OpenAD_acc_4 = (OpenAD_lin_16 * OpenAD_lin_14 * OpenAD_acc_0)
          OpenAD_acc_5 = (OpenAD_lin_17 * OpenAD_lin_14 * OpenAD_acc_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_3)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_4)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_5)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_6)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_9)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          OpenAD_Symbol_24 = (INT(OpenAD_Symbol_24) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_24)
        OpenAD_Symbol_23 = (INT(OpenAD_Symbol_23) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_23)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_7)
      OpenAD_Symbol_8 = 1
      DO WHILE(INT(OpenAD_Symbol_8) .LE. INT(OpenAD_Symbol_7))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_9)
        OpenAD_Symbol_10 = 1
        DO WHILE(INT(OpenAD_Symbol_10) .LE. INT(OpenAD_Symbol_9))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_114)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_115)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_116)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_117)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_118)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_119)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_120)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_115, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_6))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_116, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_5))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_117, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_118, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(DPDY))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_119, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_120, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(DPDX))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_114))))
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
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_121)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_122)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_121, __deriv__(DPDX), __deriv__(
     > OpenAD_prop_2))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DPDX))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_122, __deriv__(DPDY), __deriv__(
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
          CALL pop_i(OpenAD_Symbol_11)
          IF(OpenAD_Symbol_11 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_123)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTR), __deriv__(X(INT(
     > OpenAD_Symbol_123))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_12)
          IF(OpenAD_Symbol_12 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_113)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_113))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PT))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTT))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_13)
            IF(OpenAD_Symbol_13 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_124)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_124))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_125)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_125))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_126)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_126))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_14)
          IF(OpenAD_Symbol_14 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_127)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTL), __deriv__(X(INT(
     > OpenAD_Symbol_127))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_15)
          IF(OpenAD_Symbol_15 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_112)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_112))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PR))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PRR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_16)
            IF(OpenAD_Symbol_16 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_128)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_128))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_129)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_129))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_130)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_130))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_111)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(P), __deriv__(X(INT(OpenAD_Symbol_111
     > ))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(P))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_17)
          IF(OpenAD_Symbol_17 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_110)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_110))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PLL))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_18)
            IF(OpenAD_Symbol_18 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_131)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_131))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_132)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_132))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_133)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_133))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_19)
          IF(OpenAD_Symbol_19 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_134)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBR), __deriv__(X(INT(
     > OpenAD_Symbol_134))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_20)
          IF(OpenAD_Symbol_20 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_109)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_109))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBB))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PB))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_21)
            IF(OpenAD_Symbol_21 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_135)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_135))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_136)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_136))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_137)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_137))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_22)
          IF(OpenAD_Symbol_22 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_138)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBL), __deriv__(X(INT(
     > OpenAD_Symbol_138))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ENDIF
          OpenAD_Symbol_10 = INT(OpenAD_Symbol_10) + 1
        END DO
        OpenAD_Symbol_8 = INT(OpenAD_Symbol_8) + 1
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
      OpenAD_Symbol_65 = 0_w2f__i8
      DO I = 1, NY, 1
        OpenAD_Symbol_66 = 0_w2f__i8
        DO J = 1, NX, 1
          K = (J + NX *(I +(-1)))
          IF((I .eq. 1) .OR.(J .eq. 1)) THEN
            __value__(PBL) = 0.0D00
            OpenAD_Symbol_67 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_67)
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
            OpenAD_Symbol_106 = (K - NX +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_106)
            OpenAD_Symbol_68 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_68)
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_71 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_71)
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
              OpenAD_Symbol_103 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_103)
              OpenAD_Symbol_69 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_69)
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
              OpenAD_Symbol_104 = (K - NX)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_104)
              OpenAD_Symbol_105 = (K - NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_105)
              OpenAD_Symbol_70 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_70)
            ENDIF
            OpenAD_Symbol_72 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_72)
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
            OpenAD_Symbol_73 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_73)
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
            OpenAD_Symbol_102 = (K - NX + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_102)
            OpenAD_Symbol_74 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_74)
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(K)
            OpenAD_Symbol_77 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_77)
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
              OpenAD_Symbol_99 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_99)
              OpenAD_Symbol_75 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_75)
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
              OpenAD_Symbol_100 = (K +(-1))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_100)
              OpenAD_Symbol_101 = (K +(-2))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_101)
              OpenAD_Symbol_76 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_76)
            ENDIF
            OpenAD_Symbol_78 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_78)
          ENDIF
          __value__(P) = __value__(X(K))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
            OpenAD_Symbol_91 = (K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_91)
            OpenAD_Symbol_81 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_81)
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_79 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_79)
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
              OpenAD_Symbol_97 = (K + 1)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_97)
              OpenAD_Symbol_98 = (K + 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_98)
              OpenAD_Symbol_80 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_80)
            ENDIF
            OpenAD_Symbol_82 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_82)
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
            OpenAD_Symbol_83 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_83)
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
            OpenAD_Symbol_96 = (NX + K +(-1))
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_96)
            OpenAD_Symbol_84 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_84)
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
            OpenAD_Symbol_92 = (NX + K)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_92)
            OpenAD_Symbol_87 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_87)
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(K)
              OpenAD_Symbol_85 = 1_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_85)
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
              OpenAD_Symbol_94 = (NX + K)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_94)
              OpenAD_Symbol_95 = (K + NX * 2)
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_95)
              OpenAD_Symbol_86 = 0_w2f__i8
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_86)
            ENDIF
            OpenAD_Symbol_88 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_88)
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
            OpenAD_Symbol_89 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_89)
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
            OpenAD_Symbol_93 = (NX + K + 1)
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_93)
            OpenAD_Symbol_90 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_90)
          ENDIF
          OpenAD_tmp_1 = (__value__(PT) - __value__(PB))
          OpenAD_tmp_2 = (HY * 2.0D00)
          __value__(DPDY) = (OpenAD_tmp_1 / OpenAD_tmp_2)
          OpenAD_lin_2 = (INT(1_w2f__i8) / OpenAD_tmp_2)
          OpenAD_tmp_3 = (__value__(PR) - __value__(PL))
          OpenAD_tmp_4 = (HX * 2.0D00)
          __value__(DPDX) = (OpenAD_tmp_3 / OpenAD_tmp_4)
          OpenAD_lin_4 = (INT(1_w2f__i8) / OpenAD_tmp_4)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_4)
          CALL bar(__deriv__(PBB), __deriv__(PBL), __deriv__(PB),
     >  __deriv__(PBR), __deriv__(PLL), __deriv__(PL), __deriv__(P),
     >  __deriv__(PR), __deriv__(PRR), __deriv__(PTL), __deriv__(PT),
     >  __deriv__(PTR), __deriv__(PTT), HY2, HX2, __deriv__(PLAP),
     >  __deriv__(PBLAP), __deriv__(PLLAP), __deriv__(PRLAP), __deriv__
     > (PTLAP))
          OpenAD_tmp_5 = (__value__(PBLAP) + __value__(PTLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_tmp_6 = (__value__(PLLAP) + __value__(PRLAP) -
     >  __value__(PLAP) * 2.0D00)
          OpenAD_tmp_10 = (__value__(PRLAP) - __value__(PLLAP))
          OpenAD_tmp_8 = (__value__(DPDY) * OpenAD_tmp_10)
          OpenAD_tmp_9 = (HX * 2.0D00)
          OpenAD_tmp_13 = (__value__(PTLAP) - __value__(PBLAP))
          OpenAD_tmp_11 = (__value__(DPDX) * OpenAD_tmp_13)
          OpenAD_tmp_12 = (HY * 2.0D00)
          OpenAD_tmp_7 = ((OpenAD_tmp_8 / OpenAD_tmp_9) -(OpenAD_tmp_11
     >  / OpenAD_tmp_12))
          __value__(FVEC(INT(K))) = ((OpenAD_tmp_5 / HY2) +(
     > OpenAD_tmp_6 / HX2) - R * OpenAD_tmp_7)
          OpenAD_lin_6 = (INT(1_w2f__i8) / HY2)
          OpenAD_lin_9 = (INT(1_w2f__i8) / HX2)
          OpenAD_lin_16 = OpenAD_tmp_10
          OpenAD_lin_17 = __value__(DPDY)
          OpenAD_lin_14 = (INT(1_w2f__i8) / OpenAD_tmp_9)
          OpenAD_lin_20 = OpenAD_tmp_13
          OpenAD_lin_21 = __value__(DPDX)
          OpenAD_lin_18 = (INT(1_w2f__i8) / OpenAD_tmp_12)
          OpenAD_lin_13 = R
          OpenAD_acc_0 = (OpenAD_lin_13 * INT((-1_w2f__i8)))
          OpenAD_acc_1 = (INT((-1_w2f__i8)) * OpenAD_acc_0)
          OpenAD_acc_2 = (OpenAD_lin_20 * OpenAD_lin_18 * OpenAD_acc_1)
          OpenAD_acc_3 = (OpenAD_lin_21 * OpenAD_lin_18 * OpenAD_acc_1)
          OpenAD_acc_4 = (OpenAD_lin_16 * OpenAD_lin_14 * OpenAD_acc_0)
          OpenAD_acc_5 = (OpenAD_lin_17 * OpenAD_lin_14 * OpenAD_acc_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_3)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_4)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_5)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_6)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_9)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          OpenAD_Symbol_66 = (INT(OpenAD_Symbol_66) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_66)
        OpenAD_Symbol_65 = (INT(OpenAD_Symbol_65) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_65)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_49)
      OpenAD_Symbol_50 = 1
      DO WHILE(INT(OpenAD_Symbol_50) .LE. INT(OpenAD_Symbol_49))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_51)
        OpenAD_Symbol_52 = 1
        DO WHILE(INT(OpenAD_Symbol_52) .LE. INT(OpenAD_Symbol_51))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_114)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_115)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_116)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_117)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_118)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_119)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_120)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_115, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_6))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_116, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_5))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_117, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_118, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(DPDY))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_119, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(OpenAD_prop_4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_120, __deriv__(FVEC(INT(
     > OpenAD_Symbol_114))), __deriv__(DPDX))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(FVEC(INT(OpenAD_Symbol_114))))
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
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_121)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_122)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_121, __deriv__(DPDX), __deriv__(
     > OpenAD_prop_2))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DPDX))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_122, __deriv__(DPDY), __deriv__(
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
          CALL pop_i(OpenAD_Symbol_53)
          IF(OpenAD_Symbol_53 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_123)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTR), __deriv__(X(INT(
     > OpenAD_Symbol_123))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_54)
          IF(OpenAD_Symbol_54 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_113)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_113))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PT))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTT))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_55)
            IF(OpenAD_Symbol_55 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_124)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_124))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_125)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PTT), __deriv__(X(INT(
     > OpenAD_Symbol_125))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PTT))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_126)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PT), __deriv__(X(INT(
     > OpenAD_Symbol_126))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PT))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_56)
          IF(OpenAD_Symbol_56 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_127)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PTL), __deriv__(X(INT(
     > OpenAD_Symbol_127))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PTL))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_57)
          IF(OpenAD_Symbol_57 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_112)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_112))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PR))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PRR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_58)
            IF(OpenAD_Symbol_58 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_128)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_128))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_129)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PRR), __deriv__(X(INT(
     > OpenAD_Symbol_129))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PRR))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_130)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PR), __deriv__(X(INT(
     > OpenAD_Symbol_130))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PR))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_111)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(P), __deriv__(X(INT(OpenAD_Symbol_111
     > ))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(P))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_59)
          IF(OpenAD_Symbol_59 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_110)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_110))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PLL))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_60)
            IF(OpenAD_Symbol_60 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_131)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_131))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_132)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PLL), __deriv__(X(INT(
     > OpenAD_Symbol_132))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PLL))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_133)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PL), __deriv__(X(INT(
     > OpenAD_Symbol_133))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PL))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_61)
          IF(OpenAD_Symbol_61 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_134)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBR), __deriv__(X(INT(
     > OpenAD_Symbol_134))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBR))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_62)
          IF(OpenAD_Symbol_62 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_109)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_109))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBB))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PB))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_63)
            IF(OpenAD_Symbol_63 .ne. 0) THEN
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_135)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_135))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
            ELSE
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_136)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PBB), __deriv__(X(INT(
     > OpenAD_Symbol_136))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PBB))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_137)
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(PB), __deriv__(X(INT(
     > OpenAD_Symbol_137))))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(PB))
            ENDIF
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_64)
          IF(OpenAD_Symbol_64 .ne. 0) THEN
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ELSE
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_138)
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(PBL), __deriv__(X(INT(
     > OpenAD_Symbol_138))))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(PBL))
          ENDIF
          OpenAD_Symbol_52 = INT(OpenAD_Symbol_52) + 1
        END DO
        OpenAD_Symbol_50 = INT(OpenAD_Symbol_50) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE bar(PBB, PBL, PB, PBR, PLL, PL, P, PR, PRR, PTL, PT,
     >  PTR, PTT, HY2, HX2, PLAP, PBLAP, PLLAP, PRLAP, PTLAP)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_26
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_32
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_44
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_50
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
      REAL(w2f__8) OpenAD_tmp_14
      REAL(w2f__8) OpenAD_tmp_15
      REAL(w2f__8) OpenAD_tmp_16
      REAL(w2f__8) OpenAD_tmp_17
      REAL(w2f__8) OpenAD_tmp_18
      REAL(w2f__8) OpenAD_tmp_19
      REAL(w2f__8) OpenAD_tmp_20
      REAL(w2f__8) OpenAD_tmp_21
      REAL(w2f__8) OpenAD_tmp_22
      REAL(w2f__8) OpenAD_tmp_23
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
      REAL(w2f__8) OpenAD_Symbol_139
      REAL(w2f__8) OpenAD_Symbol_140
      REAL(w2f__8) OpenAD_Symbol_141
      REAL(w2f__8) OpenAD_Symbol_142
      REAL(w2f__8) OpenAD_Symbol_143
      REAL(w2f__8) OpenAD_Symbol_144
      REAL(w2f__8) OpenAD_Symbol_145
      REAL(w2f__8) OpenAD_Symbol_146
      REAL(w2f__8) OpenAD_Symbol_147
      REAL(w2f__8) OpenAD_Symbol_148
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
      OpenAD_tmp_14 = (__value__(PBB) + __value__(P) - __value__(PB) *
     >  2.0D00)
      OpenAD_tmp_15 = (__value__(PBL) + __value__(PBR) - __value__(PB)
     >  * 2.0D00)
      __value__(PBLAP) = ((OpenAD_tmp_14 / HY2) +(OpenAD_tmp_15 / HX2))
      OpenAD_lin_23 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_26 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_16 = (__value__(PBL) + __value__(PTL) - __value__(PL)
     >  * 2.0D00)
      OpenAD_tmp_17 = (__value__(PLL) + __value__(P) - __value__(PL) *
     >  2.0D00)
      __value__(PLLAP) = ((OpenAD_tmp_16 / HY2) +(OpenAD_tmp_17 / HX2))
      OpenAD_lin_29 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_32 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_18 = (__value__(PB) + __value__(PT) - __value__(P) *
     >  2.0D00)
      OpenAD_tmp_19 = (__value__(PL) + __value__(PR) - __value__(P) *
     >  2.0D00)
      __value__(PLAP) = ((OpenAD_tmp_18 / HY2) +(OpenAD_tmp_19 / HX2))
      OpenAD_lin_35 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_38 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_20 = (__value__(PBR) + __value__(PTR) - __value__(PR)
     >  * 2.0D00)
      OpenAD_tmp_21 = (__value__(P) + __value__(PRR) - __value__(PR) *
     >  2.0D00)
      __value__(PRLAP) = ((OpenAD_tmp_20 / HY2) +(OpenAD_tmp_21 / HX2))
      OpenAD_lin_41 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_44 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_22 = (__value__(P) + __value__(PTT) - __value__(PT) *
     >  2.0D00)
      OpenAD_tmp_23 = (__value__(PTL) + __value__(PTR) - __value__(PT)
     >  * 2.0D00)
      __value__(PTLAP) = ((OpenAD_tmp_22 / HY2) +(OpenAD_tmp_23 / HX2))
      OpenAD_lin_47 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_50 = (INT(1_w2f__i8) / HX2)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_26)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_38)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_41)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_44)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_47)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_50)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_139)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_140)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_141)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_142)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_143)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_144)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_145)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_146)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_147)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_148)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_139, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_140, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PTLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_141, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_142, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PRLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_143, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_144, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_145, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_10))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_146, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_9))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_147, __deriv__(PBLAP), __deriv__(
     > OpenAD_prop_8))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_148, __deriv__(PBLAP), __deriv__(
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
      OpenAD_tmp_14 = (__value__(PBB) + __value__(P) - __value__(PB) *
     >  2.0D00)
      OpenAD_tmp_15 = (__value__(PBL) + __value__(PBR) - __value__(PB)
     >  * 2.0D00)
      __value__(PBLAP) = ((OpenAD_tmp_14 / HY2) +(OpenAD_tmp_15 / HX2))
      OpenAD_lin_23 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_26 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_16 = (__value__(PBL) + __value__(PTL) - __value__(PL)
     >  * 2.0D00)
      OpenAD_tmp_17 = (__value__(PLL) + __value__(P) - __value__(PL) *
     >  2.0D00)
      __value__(PLLAP) = ((OpenAD_tmp_16 / HY2) +(OpenAD_tmp_17 / HX2))
      OpenAD_lin_29 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_32 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_18 = (__value__(PB) + __value__(PT) - __value__(P) *
     >  2.0D00)
      OpenAD_tmp_19 = (__value__(PL) + __value__(PR) - __value__(P) *
     >  2.0D00)
      __value__(PLAP) = ((OpenAD_tmp_18 / HY2) +(OpenAD_tmp_19 / HX2))
      OpenAD_lin_35 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_38 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_20 = (__value__(PBR) + __value__(PTR) - __value__(PR)
     >  * 2.0D00)
      OpenAD_tmp_21 = (__value__(P) + __value__(PRR) - __value__(PR) *
     >  2.0D00)
      __value__(PRLAP) = ((OpenAD_tmp_20 / HY2) +(OpenAD_tmp_21 / HX2))
      OpenAD_lin_41 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_44 = (INT(1_w2f__i8) / HX2)
      OpenAD_tmp_22 = (__value__(P) + __value__(PTT) - __value__(PT) *
     >  2.0D00)
      OpenAD_tmp_23 = (__value__(PTL) + __value__(PTR) - __value__(PT)
     >  * 2.0D00)
      __value__(PTLAP) = ((OpenAD_tmp_22 / HY2) +(OpenAD_tmp_23 / HX2))
      OpenAD_lin_47 = (INT(1_w2f__i8) / HY2)
      OpenAD_lin_50 = (INT(1_w2f__i8) / HX2)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_23)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_26)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_29)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_32)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_35)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_38)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_41)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_44)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_47)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_50)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_139)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_140)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_141)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_142)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_143)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_144)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_145)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_146)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_147)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_148)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_139, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_16))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_140, __deriv__(PTLAP), __deriv__(
     > OpenAD_prop_15))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PTLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_141, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_14))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_142, __deriv__(PRLAP), __deriv__(
     > OpenAD_prop_13))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PRLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_143, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_12))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_144, __deriv__(PLAP), __deriv__(
     > OpenAD_prop_11))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_145, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_10))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_146, __deriv__(PLLAP), __deriv__(
     > OpenAD_prop_9))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(PLLAP))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_147, __deriv__(PBLAP), __deriv__(
     > OpenAD_prop_8))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_148, __deriv__(PBLAP), __deriv__(
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
