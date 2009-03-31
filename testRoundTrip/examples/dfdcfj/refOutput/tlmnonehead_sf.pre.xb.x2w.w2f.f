
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
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
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
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(FVEC)
C
C     **** Statements ****
C
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
            CALL zero_deriv(__deriv__(PBL))
          ELSE
            __value__(PBL) = __value__(X(K - NX + (-1)))
            CALL setderiv(__deriv__(PBL), __deriv__(X(K - NX + (-1))))
          ENDIF
          IF(I .eq. 1) THEN
            __value__(PB) = 0.0D00
            __value__(PBB) = __value__(X(K))
            CALL zero_deriv(__deriv__(PB))
            CALL setderiv(__deriv__(PBB), __deriv__(X(K)))
          ELSE
            IF(I .eq. 2) THEN
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = 0.0D00
              CALL zero_deriv(__deriv__(PBB))
              CALL setderiv(__deriv__(PB), __deriv__(X(K - NX)))
            ELSE
              __value__(PB) = __value__(X(K - NX))
              __value__(PBB) = __value__(X(K - NX * 2))
              CALL setderiv(__deriv__(PB), __deriv__(X(K - NX)))
              CALL setderiv(__deriv__(PBB), __deriv__(X(K - NX * 2)))
            ENDIF
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            __value__(PBR) = 0.0D00
            CALL zero_deriv(__deriv__(PBR))
          ELSE
            __value__(PBR) = __value__(X(K - NX + 1))
            CALL setderiv(__deriv__(PBR), __deriv__(X(K - NX + 1)))
          ENDIF
          IF(J .eq. 1) THEN
            __value__(PL) = 0.0D00
            __value__(PLL) = __value__(X(K))
            CALL zero_deriv(__deriv__(PL))
            CALL setderiv(__deriv__(PLL), __deriv__(X(K)))
          ELSE
            IF(J .eq. 2) THEN
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = 0.0D00
              CALL zero_deriv(__deriv__(PLL))
              CALL setderiv(__deriv__(PL), __deriv__(X(K + (-1))))
            ELSE
              __value__(PL) = __value__(X(K + (-1)))
              __value__(PLL) = __value__(X(K + (-2)))
              CALL setderiv(__deriv__(PL), __deriv__(X(K + (-1))))
              CALL setderiv(__deriv__(PLL), __deriv__(X(K + (-2))))
            ENDIF
          ENDIF
          __value__(P) = __value__(X(K))
          CALL setderiv(__deriv__(P), __deriv__(X(K)))
          IF(J .eq.(NX +(-1))) THEN
            __value__(PR) = __value__(X(K + 1))
            __value__(PRR) = 0.0D00
            CALL zero_deriv(__deriv__(PRR))
            CALL setderiv(__deriv__(PR), __deriv__(X(K + 1)))
          ELSE
            IF(NX .eq. J) THEN
              __value__(PR) = 0.0D00
              __value__(PRR) = __value__(X(K))
              CALL zero_deriv(__deriv__(PR))
              CALL setderiv(__deriv__(PRR), __deriv__(X(K)))
            ELSE
              __value__(PR) = __value__(X(K + 1))
              __value__(PRR) = __value__(X(K + 2))
              CALL setderiv(__deriv__(PR), __deriv__(X(K + 1)))
              CALL setderiv(__deriv__(PRR), __deriv__(X(K + 2)))
            ENDIF
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            __value__(PTL) = 0.0D00
            CALL zero_deriv(__deriv__(PTL))
          ELSE
            __value__(PTL) = __value__(X(NX + K + (-1)))
            CALL setderiv(__deriv__(PTL), __deriv__(X(NX + K + (-1))))
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            __value__(PT) = __value__(X(NX + K))
            __value__(PTT) = 0.0D00
            CALL zero_deriv(__deriv__(PTT))
            CALL setderiv(__deriv__(PT), __deriv__(X(NX + K)))
          ELSE
            IF(NY .eq. I) THEN
              __value__(PT) = 0.0D00
              __value__(PTT) = (__value__(X(K)) + HY * 2.0D00)
              CALL zero_deriv(__deriv__(PT))
              CALL setderiv(__deriv__(PTT), __deriv__(X(K)))
            ELSE
              __value__(PT) = __value__(X(NX + K))
              __value__(PTT) = __value__(X(K + NX * 2))
              CALL setderiv(__deriv__(PT), __deriv__(X(NX + K)))
              CALL setderiv(__deriv__(PTT), __deriv__(X(K + NX * 2)))
            ENDIF
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            __value__(PTR) = 0.0D00
            CALL zero_deriv(__deriv__(PTR))
          ELSE
            __value__(PTR) = __value__(X(NX + K + 1))
            CALL setderiv(__deriv__(PTR), __deriv__(X(NX + K + 1)))
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
          CALL sax(1_w2f__i8, __deriv__(PT), __deriv__(OpenAD_Symbol_99
     > ))
          CALL saxpy(-1_w2f__i8, __deriv__(PB), __deriv__(
     > OpenAD_Symbol_99))
          CALL sax(1_w2f__i8, __deriv__(PR), __deriv__(
     > OpenAD_Symbol_100))
          CALL saxpy(-1_w2f__i8, __deriv__(PL), __deriv__(
     > OpenAD_Symbol_100))
          CALL sax(1_w2f__i8, __deriv__(PBB), __deriv__(
     > OpenAD_Symbol_101))
          CALL saxpy(1_w2f__i8, __deriv__(P), __deriv__(
     > OpenAD_Symbol_101))
          CALL saxpy(-2.0D00, __deriv__(PB), __deriv__(
     > OpenAD_Symbol_101))
          CALL sax(1_w2f__i8, __deriv__(PBL), __deriv__(
     > OpenAD_Symbol_102))
          CALL saxpy(1_w2f__i8, __deriv__(PBR), __deriv__(
     > OpenAD_Symbol_102))
          CALL saxpy(-2.0D00, __deriv__(PB), __deriv__(
     > OpenAD_Symbol_102))
          CALL sax(1_w2f__i8, __deriv__(PBL), __deriv__(
     > OpenAD_Symbol_103))
          CALL saxpy(1_w2f__i8, __deriv__(PTL), __deriv__(
     > OpenAD_Symbol_103))
          CALL saxpy(-2.0D00, __deriv__(PL), __deriv__(
     > OpenAD_Symbol_103))
          CALL sax(1_w2f__i8, __deriv__(PLL), __deriv__(
     > OpenAD_Symbol_104))
          CALL saxpy(1_w2f__i8, __deriv__(P), __deriv__(
     > OpenAD_Symbol_104))
          CALL saxpy(-2.0D00, __deriv__(PL), __deriv__(
     > OpenAD_Symbol_104))
          CALL sax(1_w2f__i8, __deriv__(PB), __deriv__(
     > OpenAD_Symbol_105))
          CALL saxpy(1_w2f__i8, __deriv__(PT), __deriv__(
     > OpenAD_Symbol_105))
          CALL saxpy(-2.0D00, __deriv__(P), __deriv__(OpenAD_Symbol_105
     > ))
          CALL sax(1_w2f__i8, __deriv__(PL), __deriv__(
     > OpenAD_Symbol_106))
          CALL saxpy(1_w2f__i8, __deriv__(PR), __deriv__(
     > OpenAD_Symbol_106))
          CALL saxpy(-2.0D00, __deriv__(P), __deriv__(OpenAD_Symbol_106
     > ))
          CALL sax(1_w2f__i8, __deriv__(P), __deriv__(OpenAD_Symbol_107
     > ))
          CALL saxpy(1_w2f__i8, __deriv__(PRR), __deriv__(
     > OpenAD_Symbol_107))
          CALL saxpy(-2.0D00, __deriv__(PR), __deriv__(
     > OpenAD_Symbol_107))
          CALL sax(1_w2f__i8, __deriv__(PBR), __deriv__(
     > OpenAD_Symbol_108))
          CALL saxpy(1_w2f__i8, __deriv__(PTR), __deriv__(
     > OpenAD_Symbol_108))
          CALL saxpy(-2.0D00, __deriv__(PR), __deriv__(
     > OpenAD_Symbol_108))
          CALL sax(1_w2f__i8, __deriv__(P), __deriv__(OpenAD_Symbol_109
     > ))
          CALL saxpy(1_w2f__i8, __deriv__(PTT), __deriv__(
     > OpenAD_Symbol_109))
          CALL saxpy(-2.0D00, __deriv__(PT), __deriv__(
     > OpenAD_Symbol_109))
          CALL sax(1_w2f__i8, __deriv__(PTL), __deriv__(
     > OpenAD_Symbol_110))
          CALL saxpy(1_w2f__i8, __deriv__(PTR), __deriv__(
     > OpenAD_Symbol_110))
          CALL saxpy(-2.0D00, __deriv__(PT), __deriv__(
     > OpenAD_Symbol_110))
          CALL sax(OpenAD_Symbol_81, __deriv__(OpenAD_Symbol_100),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_83, __deriv__(OpenAD_Symbol_99),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_89, __deriv__(OpenAD_Symbol_110),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_90, __deriv__(OpenAD_Symbol_109),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_91, __deriv__(OpenAD_Symbol_108),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_92, __deriv__(OpenAD_Symbol_107),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_93, __deriv__(OpenAD_Symbol_106),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_94, __deriv__(OpenAD_Symbol_105),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_95, __deriv__(OpenAD_Symbol_104),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_96, __deriv__(OpenAD_Symbol_103),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_97, __deriv__(OpenAD_Symbol_102),
     >  __deriv__(FVEC(K)))
          CALL saxpy(OpenAD_Symbol_98, __deriv__(OpenAD_Symbol_101),
     >  __deriv__(FVEC(K)))
        END DO
      END DO
      DO K = 1, N, 1
        OpenAD_Symbol_74 = (HX2 * HY2)
        OpenAD_Symbol_77 = (__value__(FVEC(K)) * OpenAD_Symbol_74)
        OpenAD_Symbol_75 = OpenAD_Symbol_74
        __value__(FVEC(INT(K))) = OpenAD_Symbol_77
        CALL setderiv(__deriv__(OpenAD_Symbol_111), __deriv__(FVEC(K)))
        CALL sax(OpenAD_Symbol_75, __deriv__(OpenAD_Symbol_111),
     >  __deriv__(FVEC(K)))
      END DO
      END SUBROUTINE
