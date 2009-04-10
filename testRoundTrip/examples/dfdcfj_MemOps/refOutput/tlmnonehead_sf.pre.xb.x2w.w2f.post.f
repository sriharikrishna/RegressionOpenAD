
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(NX, NY, X, FVEC, R)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_100
      type(active) :: OpenAD_Symbol_101
      type(active) :: OpenAD_Symbol_102
      type(active) :: OpenAD_Symbol_103
      type(active) :: OpenAD_Symbol_104
      type(active) :: OpenAD_Symbol_105
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
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_76
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
      type(active) :: OpenAD_Symbol_94
      type(active) :: OpenAD_Symbol_95
      type(active) :: OpenAD_Symbol_96
      type(active) :: OpenAD_Symbol_97
      type(active) :: OpenAD_Symbol_98
      type(active) :: OpenAD_Symbol_99
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) NX
      INTEGER(w2f__i4) NY
      type(active) :: X(1:INT((NX*NY)))
      type(active) :: FVEC(1:INT((NX*NY)))
      REAL(w2f__8) R
C
C     **** Local Variables and Functions ****
C
      type(active) :: DPDX
      type(active) :: DPDY
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
      type(active) :: P
      type(active) :: PB
      type(active) :: PBB
      type(active) :: PBL
      type(active) :: PBLAP
      type(active) :: PBR
      type(active) :: PL
      type(active) :: PLAP
      type(active) :: PLL
      type(active) :: PLLAP
      type(active) :: PR
      type(active) :: PRLAP
      type(active) :: PRR
      type(active) :: PT
      type(active) :: PTL
      type(active) :: PTLAP
      type(active) :: PTR
      type(active) :: PTT
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
            PBL%v = 0.0D00
            CALL zero_deriv(PBL)
          ELSE
            PBL%v = X(K-NX+(-1))%v
            CALL setderiv(PBL,X(K-NX+(-1)))
          ENDIF
          IF(I .eq. 1) THEN
            PB%v = 0.0D00
            PBB%v = X(K)%v
            CALL zero_deriv(PB)
            CALL setderiv(PBB,X(K))
          ELSE
            IF(I .eq. 2) THEN
              PB%v = X(K-NX)%v
              PBB%v = 0.0D00
              CALL zero_deriv(PBB)
              CALL setderiv(PB,X(K-NX))
            ELSE
              PB%v = X(K-NX)%v
              PBB%v = X(K-NX*2)%v
              CALL setderiv(PB,X(K-NX))
              CALL setderiv(PBB,X(K-NX*2))
            ENDIF
          ENDIF
          IF((NX .eq. J) .OR.(I .eq. 1)) THEN
            PBR%v = 0.0D00
            CALL zero_deriv(PBR)
          ELSE
            PBR%v = X(K-NX+1)%v
            CALL setderiv(PBR,X(K-NX+1))
          ENDIF
          IF(J .eq. 1) THEN
            PL%v = 0.0D00
            PLL%v = X(K)%v
            CALL zero_deriv(PL)
            CALL setderiv(PLL,X(K))
          ELSE
            IF(J .eq. 2) THEN
              PL%v = X(K+(-1))%v
              PLL%v = 0.0D00
              CALL zero_deriv(PLL)
              CALL setderiv(PL,X(K+(-1)))
            ELSE
              PL%v = X(K+(-1))%v
              PLL%v = X(K+(-2))%v
              CALL setderiv(PL,X(K+(-1)))
              CALL setderiv(PLL,X(K+(-2)))
            ENDIF
          ENDIF
          P%v = X(K)%v
          CALL setderiv(P,X(K))
          IF(J .eq.(NX +(-1))) THEN
            PR%v = X(K+1)%v
            PRR%v = 0.0D00
            CALL zero_deriv(PRR)
            CALL setderiv(PR,X(K+1))
          ELSE
            IF(NX .eq. J) THEN
              PR%v = 0.0D00
              PRR%v = X(K)%v
              CALL zero_deriv(PR)
              CALL setderiv(PRR,X(K))
            ELSE
              PR%v = X(K+1)%v
              PRR%v = X(K+2)%v
              CALL setderiv(PR,X(K+1))
              CALL setderiv(PRR,X(K+2))
            ENDIF
          ENDIF
          IF((NY .eq. I) .OR.(J .eq. 1)) THEN
            PTL%v = 0.0D00
            CALL zero_deriv(PTL)
          ELSE
            PTL%v = X(NX+K+(-1))%v
            CALL setderiv(PTL,X(NX+K+(-1)))
          ENDIF
          IF(I .eq.(NY +(-1))) THEN
            PT%v = X(NX+K)%v
            PTT%v = 0.0D00
            CALL zero_deriv(PTT)
            CALL setderiv(PT,X(NX+K))
          ELSE
            IF(NY .eq. I) THEN
              PT%v = 0.0D00
              PTT%v = X(K)%v
              CALL zero_deriv(PT)
              CALL setderiv(PTT,X(K))
            ELSE
              PT%v = X(NX+K)%v
              PTT%v = X(K+NX*2)%v
              CALL setderiv(PT,X(NX+K))
              CALL setderiv(PTT,X(K+NX*2))
            ENDIF
          ENDIF
          IF((NX .eq. J) .OR.(NY .eq. I)) THEN
            PTR%v = 0.0D00
            CALL zero_deriv(PTR)
          ELSE
            PTR%v = X(NX+K+1)%v
            CALL setderiv(PTR,X(NX+K+1))
          ENDIF
          OpenAD_Symbol_0 = (PT%v-PB%v)
          OpenAD_Symbol_1 = (HY * 2.0D00)
          DPDY%v = (OpenAD_Symbol_0/OpenAD_Symbol_1)
          OpenAD_Symbol_2 = (INT(1_w2f__i8) / OpenAD_Symbol_1)
          OpenAD_Symbol_4 = (PR%v-PL%v)
          OpenAD_Symbol_5 = (HX * 2.0D00)
          DPDX%v = (OpenAD_Symbol_4/OpenAD_Symbol_5)
          OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
          OpenAD_Symbol_8 = (PBB%v+P%v-PB%v*2.0D00)
          OpenAD_Symbol_12 = (PBL%v+PBR%v-PB%v*2.0D00)
          PBLAP%v = ((OpenAD_Symbol_8/HY2)+(OpenAD_Symbol_12/HX2))
          OpenAD_Symbol_9 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_13 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_16 = (PBL%v+PTL%v-PL%v*2.0D00)
          OpenAD_Symbol_20 = (PLL%v+P%v-PL%v*2.0D00)
          PLLAP%v = ((OpenAD_Symbol_16/HY2)+(OpenAD_Symbol_20/HX2))
          OpenAD_Symbol_17 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_21 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_24 = (PB%v+PT%v-P%v*2.0D00)
          OpenAD_Symbol_28 = (PL%v+PR%v-P%v*2.0D00)
          PLAP%v = ((OpenAD_Symbol_24/HY2)+(OpenAD_Symbol_28/HX2))
          OpenAD_Symbol_25 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_29 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_32 = (P%v+PRR%v-PR%v*2.0D00)
          OpenAD_Symbol_36 = (PBR%v+PTR%v-PR%v*2.0D00)
          PRLAP%v = ((OpenAD_Symbol_32/HX2)+(OpenAD_Symbol_36/HY2))
          OpenAD_Symbol_33 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_37 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_40 = (P%v+PTT%v-PT%v*2.0D00)
          OpenAD_Symbol_44 = (PTL%v+PTR%v-PT%v*2.0D00)
          PTLAP%v = ((OpenAD_Symbol_40/HY2)+(OpenAD_Symbol_44/HX2))
          OpenAD_Symbol_41 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_45 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_48 = (PBLAP%v+PTLAP%v-PLAP%v*2.0D00)
          OpenAD_Symbol_52 = (PLLAP%v+PRLAP%v-PLAP%v*2.0D00)
          OpenAD_Symbol_63 = (PRLAP%v-PLLAP%v)
          OpenAD_Symbol_59 = (DPDY%v*OpenAD_Symbol_63)
          OpenAD_Symbol_60 = (HX * 2.0D00)
          OpenAD_Symbol_70 = (PTLAP%v-PBLAP%v)
          OpenAD_Symbol_66 = (DPDX%v*OpenAD_Symbol_70)
          OpenAD_Symbol_67 = (HY * 2.0D00)
          OpenAD_Symbol_56 = ((OpenAD_Symbol_59 / OpenAD_Symbol_60) -(
     > OpenAD_Symbol_66 / OpenAD_Symbol_67))
          FVEC(INT(K))%v = ((OpenAD_Symbol_48/HY2)+(OpenAD_Symbol_52/HX2
     +)-R*OpenAD_Symbol_56)
          OpenAD_Symbol_49 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_53 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_64 = OpenAD_Symbol_63
          OpenAD_Symbol_65 = DPDY%v
          OpenAD_Symbol_61 = (INT(1_w2f__i8) / OpenAD_Symbol_60)
          OpenAD_Symbol_71 = OpenAD_Symbol_70
          OpenAD_Symbol_72 = DPDX%v
          OpenAD_Symbol_68 = (INT(1_w2f__i8) / OpenAD_Symbol_67)
          OpenAD_Symbol_58 = R
          OpenAD_Symbol_73 = (OpenAD_Symbol_58 * INT((-1_w2f__i8)))
          OpenAD_Symbol_74 = (INT((-1_w2f__i8)) * OpenAD_Symbol_73)
          OpenAD_Symbol_75 = (OpenAD_Symbol_72 * OpenAD_Symbol_68 *
     >  OpenAD_Symbol_74)
          OpenAD_Symbol_76 = (OpenAD_Symbol_6 * OpenAD_Symbol_71 *
     >  OpenAD_Symbol_68 * OpenAD_Symbol_74)
          OpenAD_Symbol_77 = (OpenAD_Symbol_65 * OpenAD_Symbol_61 *
     >  OpenAD_Symbol_73)
          OpenAD_Symbol_78 = (OpenAD_Symbol_2 * OpenAD_Symbol_64 *
     >  OpenAD_Symbol_61 * OpenAD_Symbol_73)
          OpenAD_Symbol_79 = (OpenAD_Symbol_53 + OpenAD_Symbol_77)
          OpenAD_Symbol_80 = (OpenAD_Symbol_53 + INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_77)
          OpenAD_Symbol_81 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_53 + 2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_49)
          OpenAD_Symbol_82 = (OpenAD_Symbol_49 + OpenAD_Symbol_75)
          OpenAD_Symbol_83 = (OpenAD_Symbol_49 + INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_75)
          OpenAD_Symbol_84 = (OpenAD_Symbol_45 * OpenAD_Symbol_82)
          OpenAD_Symbol_85 = (OpenAD_Symbol_41 * OpenAD_Symbol_82)
          OpenAD_Symbol_86 = (OpenAD_Symbol_37 * OpenAD_Symbol_79)
          OpenAD_Symbol_87 = (OpenAD_Symbol_33 * OpenAD_Symbol_79)
          OpenAD_Symbol_88 = (OpenAD_Symbol_29 * OpenAD_Symbol_81)
          OpenAD_Symbol_89 = (OpenAD_Symbol_25 * OpenAD_Symbol_81)
          OpenAD_Symbol_90 = (OpenAD_Symbol_21 * OpenAD_Symbol_80)
          OpenAD_Symbol_91 = (OpenAD_Symbol_17 * OpenAD_Symbol_80)
          OpenAD_Symbol_92 = (OpenAD_Symbol_13 * OpenAD_Symbol_83)
          OpenAD_Symbol_93 = (OpenAD_Symbol_9 * OpenAD_Symbol_83)
          CALL setderiv(OpenAD_Symbol_94,PT)
          CALL dec_deriv(OpenAD_Symbol_94,PB)
          CALL setderiv(OpenAD_Symbol_95,PR)
          CALL dec_deriv(OpenAD_Symbol_95,PL)
          CALL setderiv(OpenAD_Symbol_96,PBB)
          CALL inc_deriv(OpenAD_Symbol_96,P)
          CALL saxpy(-2.0D00,PB,OpenAD_Symbol_96)
          CALL setderiv(OpenAD_Symbol_97,PBL)
          CALL inc_deriv(OpenAD_Symbol_97,PBR)
          CALL saxpy(-2.0D00,PB,OpenAD_Symbol_97)
          CALL setderiv(OpenAD_Symbol_98,PBL)
          CALL inc_deriv(OpenAD_Symbol_98,PTL)
          CALL saxpy(-2.0D00,PL,OpenAD_Symbol_98)
          CALL setderiv(OpenAD_Symbol_99,PLL)
          CALL inc_deriv(OpenAD_Symbol_99,P)
          CALL saxpy(-2.0D00,PL,OpenAD_Symbol_99)
          CALL setderiv(OpenAD_Symbol_100,PB)
          CALL inc_deriv(OpenAD_Symbol_100,PT)
          CALL saxpy(-2.0D00,P,OpenAD_Symbol_100)
          CALL setderiv(OpenAD_Symbol_101,PL)
          CALL inc_deriv(OpenAD_Symbol_101,PR)
          CALL saxpy(-2.0D00,P,OpenAD_Symbol_101)
          CALL setderiv(OpenAD_Symbol_102,P)
          CALL inc_deriv(OpenAD_Symbol_102,PRR)
          CALL saxpy(-2.0D00,PR,OpenAD_Symbol_102)
          CALL setderiv(OpenAD_Symbol_103,PBR)
          CALL inc_deriv(OpenAD_Symbol_103,PTR)
          CALL saxpy(-2.0D00,PR,OpenAD_Symbol_103)
          CALL setderiv(OpenAD_Symbol_104,P)
          CALL inc_deriv(OpenAD_Symbol_104,PTT)
          CALL saxpy(-2.0D00,PT,OpenAD_Symbol_104)
          CALL setderiv(OpenAD_Symbol_105,PTL)
          CALL inc_deriv(OpenAD_Symbol_105,PTR)
          CALL saxpy(-2.0D00,PT,OpenAD_Symbol_105)
          CALL sax(OpenAD_Symbol_76,OpenAD_Symbol_95,FVEC(K))
          CALL saxpy(OpenAD_Symbol_78,OpenAD_Symbol_94,FVEC(K))
          CALL saxpy(OpenAD_Symbol_84,OpenAD_Symbol_105,FVEC(K))
          CALL saxpy(OpenAD_Symbol_85,OpenAD_Symbol_104,FVEC(K))
          CALL saxpy(OpenAD_Symbol_86,OpenAD_Symbol_103,FVEC(K))
          CALL saxpy(OpenAD_Symbol_87,OpenAD_Symbol_102,FVEC(K))
          CALL saxpy(OpenAD_Symbol_88,OpenAD_Symbol_101,FVEC(K))
          CALL saxpy(OpenAD_Symbol_89,OpenAD_Symbol_100,FVEC(K))
          CALL saxpy(OpenAD_Symbol_90,OpenAD_Symbol_99,FVEC(K))
          CALL saxpy(OpenAD_Symbol_91,OpenAD_Symbol_98,FVEC(K))
          CALL saxpy(OpenAD_Symbol_92,OpenAD_Symbol_97,FVEC(K))
          CALL saxpy(OpenAD_Symbol_93,OpenAD_Symbol_96,FVEC(K))
        END DO
      END DO
      END SUBROUTINE
