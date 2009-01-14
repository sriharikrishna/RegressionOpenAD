

      SUBROUTINE head(NX, NY, X, FVEC, R)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_3
      type(active) :: OpenAD_Symbol_78
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) NX
      INTEGER(w2f__i4) NY
      type(active) :: X(1 : INT((NX * NY)))
      type(active) :: FVEC(1 : INT((NX * NY)))
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
      CALL foo(NX,NY,X,FVEC,R,N,HX,HY,HY2,HX2)
      DO K = 1, N, 1
        OpenAD_Symbol_0 = (HX2 * HY2)
        OpenAD_Symbol_3 = (FVEC(K)%v*OpenAD_Symbol_0)
        OpenAD_Symbol_1 = OpenAD_Symbol_0
        FVEC(INT(K))%v = OpenAD_Symbol_3
        CALL setderiv(OpenAD_Symbol_78,FVEC(K))
        CALL sax(OpenAD_Symbol_1,OpenAD_Symbol_78,FVEC(K))
      END DO
      END SUBROUTINE

      SUBROUTINE foo(NX, NY, X, FVEC, R, N, HX, HY, HY2, HX2)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_20
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
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) NX
      INTEGER(w2f__i4) NY
      type(active) :: X(1 : INT((NX * NY)))
      type(active) :: FVEC(1 : INT((NX * NY)))
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
      type(active) :: DPDX
      type(active) :: DPDY
      REAL(w2f__8) FOUR
      PARAMETER ( FOUR = 4.0D00)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
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
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
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
              PTT%v = (X(K)%v+HY*2.0D00)
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
          OpenAD_Symbol_4 = (PT%v-PB%v)
          OpenAD_Symbol_5 = (HY * 2.0D00)
          DPDY%v = (OpenAD_Symbol_4/OpenAD_Symbol_5)
          OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
          OpenAD_Symbol_8 = (PR%v-PL%v)
          OpenAD_Symbol_9 = (HX * 2.0D00)
          DPDX%v = (OpenAD_Symbol_8/OpenAD_Symbol_9)
          OpenAD_Symbol_10 = (INT(1_w2f__i8) / OpenAD_Symbol_9)
          OpenAD_Symbol_79 = (INT((-1_w2f__i8)) * OpenAD_Symbol_6)
          OpenAD_Symbol_80 = (INT((-1_w2f__i8)) * OpenAD_Symbol_10)
          CALL sax(OpenAD_Symbol_6,PT,DPDY)
          CALL saxpy(OpenAD_Symbol_79,PB,DPDY)
          CALL sax(OpenAD_Symbol_10,PR,DPDX)
          CALL saxpy(OpenAD_Symbol_80,PL,DPDX)
          CALL bar(PBB,PBL,PB,PBR,PLL,PL,P,PR,PRR,PTL,PT,PTR,PTT,HY2,HX2
     +,PLAP,PBLAP,PLLAP,PRLAP,PTLAP)
          OpenAD_Symbol_12 = (PBLAP%v+PTLAP%v-PLAP%v*2.0D00)
          OpenAD_Symbol_16 = (PLLAP%v+PRLAP%v-PLAP%v*2.0D00)
          OpenAD_Symbol_27 = (PRLAP%v-PLLAP%v)
          OpenAD_Symbol_23 = (DPDY%v*OpenAD_Symbol_27)
          OpenAD_Symbol_24 = (HX * 2.0D00)
          OpenAD_Symbol_34 = (PTLAP%v-PBLAP%v)
          OpenAD_Symbol_30 = (DPDX%v*OpenAD_Symbol_34)
          OpenAD_Symbol_31 = (HY * 2.0D00)
          OpenAD_Symbol_20 = ((OpenAD_Symbol_23 / OpenAD_Symbol_24) -(
     > OpenAD_Symbol_30 / OpenAD_Symbol_31))
          FVEC(INT(K))%v = ((OpenAD_Symbol_12/HY2)+(OpenAD_Symbol_16/HX2
     +)-R*OpenAD_Symbol_20)
          OpenAD_Symbol_13 = (INT(1_w2f__i8) / HY2)
          OpenAD_Symbol_17 = (INT(1_w2f__i8) / HX2)
          OpenAD_Symbol_28 = OpenAD_Symbol_27
          OpenAD_Symbol_29 = DPDY%v
          OpenAD_Symbol_25 = (INT(1_w2f__i8) / OpenAD_Symbol_24)
          OpenAD_Symbol_35 = OpenAD_Symbol_34
          OpenAD_Symbol_36 = DPDX%v
          OpenAD_Symbol_32 = (INT(1_w2f__i8) / OpenAD_Symbol_31)
          OpenAD_Symbol_22 = R
          OpenAD_Symbol_81 = (OpenAD_Symbol_22 * INT((-1_w2f__i8)))
          OpenAD_Symbol_82 = (OpenAD_Symbol_32 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_81)
          OpenAD_Symbol_83 = (OpenAD_Symbol_25 * OpenAD_Symbol_81)
          OpenAD_Symbol_84 = (OpenAD_Symbol_35 * OpenAD_Symbol_82)
          OpenAD_Symbol_85 = (OpenAD_Symbol_36 * OpenAD_Symbol_82)
          OpenAD_Symbol_86 = (OpenAD_Symbol_28 * OpenAD_Symbol_83)
          OpenAD_Symbol_87 = (OpenAD_Symbol_29 * OpenAD_Symbol_83)
          OpenAD_Symbol_88 = (INT((-1_w2f__i8)) * OpenAD_Symbol_85)
          OpenAD_Symbol_89 = (INT((-1_w2f__i8)) * OpenAD_Symbol_87)
          OpenAD_Symbol_90 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_17)
          OpenAD_Symbol_91 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_13)
          CALL sax(OpenAD_Symbol_17,PLLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_13,PBLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_84,DPDX,FVEC(K))
          CALL saxpy(OpenAD_Symbol_86,DPDY,FVEC(K))
          CALL saxpy(OpenAD_Symbol_17,PRLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_13,PTLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_85,PTLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_88,PBLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_87,PRLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_89,PLLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_90,PLAP,FVEC(K))
          CALL saxpy(OpenAD_Symbol_91,PLAP,FVEC(K))
        END DO
      END DO
      END SUBROUTINE

      SUBROUTINE bar(PBB, PBL, PB, PBR, PLL, PL, P, PR, PRR, PTL, PT,
     >  PTR, PTT, HY2, HX2, PLAP, PBLAP, PLLAP, PRLAP, PTLAP)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
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
      type(active) :: PBB
      type(active) :: PBL
      type(active) :: PB
      type(active) :: PBR
      type(active) :: PLL
      type(active) :: PL
      type(active) :: P
      type(active) :: PR
      type(active) :: PRR
      type(active) :: PTL
      type(active) :: PT
      type(active) :: PTR
      type(active) :: PTT
      REAL(w2f__8) HY2
      REAL(w2f__8) HX2
      type(active) :: PLAP
      type(active) :: PBLAP
      type(active) :: PLLAP
      type(active) :: PRLAP
      type(active) :: PTLAP
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
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_38 = (PBB%v+P%v-PB%v*2.0D00)
      OpenAD_Symbol_42 = (PBL%v+PBR%v-PB%v*2.0D00)
      PBLAP%v = ((OpenAD_Symbol_38/HY2)+(OpenAD_Symbol_42/HX2))
      OpenAD_Symbol_39 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_43 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_46 = (PBL%v+PTL%v-PL%v*2.0D00)
      OpenAD_Symbol_50 = (PLL%v+P%v-PL%v*2.0D00)
      PLLAP%v = ((OpenAD_Symbol_46/HY2)+(OpenAD_Symbol_50/HX2))
      OpenAD_Symbol_47 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_51 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_54 = (PB%v+PT%v-P%v*2.0D00)
      OpenAD_Symbol_58 = (PL%v+PR%v-P%v*2.0D00)
      PLAP%v = ((OpenAD_Symbol_54/HY2)+(OpenAD_Symbol_58/HX2))
      OpenAD_Symbol_55 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_59 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_62 = (PBR%v+PTR%v-PR%v*2.0D00)
      OpenAD_Symbol_66 = (P%v+PRR%v-PR%v*2.0D00)
      PRLAP%v = ((OpenAD_Symbol_62/HY2)+(OpenAD_Symbol_66/HX2))
      OpenAD_Symbol_63 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_67 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_70 = (P%v+PTT%v-PT%v*2.0D00)
      OpenAD_Symbol_74 = (PTL%v+PTR%v-PT%v*2.0D00)
      PTLAP%v = ((OpenAD_Symbol_70/HY2)+(OpenAD_Symbol_74/HX2))
      OpenAD_Symbol_71 = (INT(1_w2f__i8) / HY2)
      OpenAD_Symbol_75 = (INT(1_w2f__i8) / HX2)
      OpenAD_Symbol_92 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_75
     > )
      OpenAD_Symbol_93 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_71
     > )
      OpenAD_Symbol_94 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_67
     > )
      OpenAD_Symbol_95 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_63
     > )
      OpenAD_Symbol_96 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_59
     > )
      OpenAD_Symbol_97 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_55
     > )
      OpenAD_Symbol_98 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_51
     > )
      OpenAD_Symbol_99 = (2.0D00 * INT((-1_w2f__i8)) * OpenAD_Symbol_47
     > )
      OpenAD_Symbol_100 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_43)
      OpenAD_Symbol_101 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_39)
      CALL sax(OpenAD_Symbol_43,PBL,PBLAP)
      CALL saxpy(OpenAD_Symbol_39,PBB,PBLAP)
      CALL saxpy(OpenAD_Symbol_43,PBR,PBLAP)
      CALL saxpy(OpenAD_Symbol_39,P,PBLAP)
      CALL saxpy(OpenAD_Symbol_100,PB,PBLAP)
      CALL saxpy(OpenAD_Symbol_101,PB,PBLAP)
      CALL sax(OpenAD_Symbol_51,PLL,PLLAP)
      CALL saxpy(OpenAD_Symbol_47,PBL,PLLAP)
      CALL saxpy(OpenAD_Symbol_51,P,PLLAP)
      CALL saxpy(OpenAD_Symbol_47,PTL,PLLAP)
      CALL saxpy(OpenAD_Symbol_98,PL,PLLAP)
      CALL saxpy(OpenAD_Symbol_99,PL,PLLAP)
      CALL sax(OpenAD_Symbol_59,PL,PLAP)
      CALL saxpy(OpenAD_Symbol_55,PB,PLAP)
      CALL saxpy(OpenAD_Symbol_59,PR,PLAP)
      CALL saxpy(OpenAD_Symbol_55,PT,PLAP)
      CALL saxpy(OpenAD_Symbol_96,P,PLAP)
      CALL saxpy(OpenAD_Symbol_97,P,PLAP)
      CALL sax(OpenAD_Symbol_67,P,PRLAP)
      CALL saxpy(OpenAD_Symbol_63,PBR,PRLAP)
      CALL saxpy(OpenAD_Symbol_67,PRR,PRLAP)
      CALL saxpy(OpenAD_Symbol_63,PTR,PRLAP)
      CALL saxpy(OpenAD_Symbol_94,PR,PRLAP)
      CALL saxpy(OpenAD_Symbol_95,PR,PRLAP)
      CALL sax(OpenAD_Symbol_75,PTL,PTLAP)
      CALL saxpy(OpenAD_Symbol_71,P,PTLAP)
      CALL saxpy(OpenAD_Symbol_75,PTR,PTLAP)
      CALL saxpy(OpenAD_Symbol_71,PTT,PTLAP)
      CALL saxpy(OpenAD_Symbol_92,PT,PTLAP)
      CALL saxpy(OpenAD_Symbol_93,PT,PTLAP)
      END SUBROUTINE
