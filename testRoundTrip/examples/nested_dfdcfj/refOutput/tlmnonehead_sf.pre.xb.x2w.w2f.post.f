
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
      REAL(w2f__8) OpenAD_lin_0
      type(active) :: OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
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
      N = (NX*NY)
      NXP1 = (NX+1)
      NYP1 = (NY+1)
      HX = (1.0D00/NXP1)
      HY = (1.0D00/NYP1)
      HY2 = (HY*HY)
      HX2 = (HX*HX)
      CALL foo(NX,NY,X,FVEC,R,N,HX,HY,HY2,HX2)
      DO K = 1,N,1
        OpenAD_tmp_0 = (HX2*HY2)
        OpenAD_Symbol_0 = (FVEC(K)%v*OpenAD_tmp_0)
        OpenAD_lin_0 = OpenAD_tmp_0
        FVEC(INT(K))%v = OpenAD_Symbol_0
        CALL setderiv(OpenAD_prop_0,FVEC(K))
        CALL sax(OpenAD_lin_0,OpenAD_prop_0,FVEC(K))
      END DO
      END SUBROUTINE

      SUBROUTINE foo(NX, NY, X, FVEC, R, N, HX, HY, HY2, HX2)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
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
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_4
      type(active) :: OpenAD_prop_5
      type(active) :: OpenAD_prop_6
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
      type(active) :: X(1:INT((NX*NY)))
      type(active) :: FVEC(1:INT((NX*NY)))
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
      DO I = 1,NY,1
        DO J = 1,NX,1
          K = (J+NX*(I+(-1)))
          IF ((I.eq.1).OR.(J.eq.1)) THEN
            PBL%v = 0.0D00
            CALL zero_deriv(PBL)
          ELSE
            PBL%v = X(K-NX+(-1))%v
            CALL setderiv(PBL,X(K-NX+(-1)))
          ENDIF
          IF (I.eq.1) THEN
            PB%v = 0.0D00
            PBB%v = X(K)%v
            CALL zero_deriv(PB)
            CALL setderiv(PBB,X(K))
          ELSE
            IF (I.eq.2) THEN
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
          IF ((NX.eq.J).OR.(I.eq.1)) THEN
            PBR%v = 0.0D00
            CALL zero_deriv(PBR)
          ELSE
            PBR%v = X(K-NX+1)%v
            CALL setderiv(PBR,X(K-NX+1))
          ENDIF
          IF (J.eq.1) THEN
            PL%v = 0.0D00
            PLL%v = X(K)%v
            CALL zero_deriv(PL)
            CALL setderiv(PLL,X(K))
          ELSE
            IF (J.eq.2) THEN
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
          IF (J.eq.(NX+(-1))) THEN
            PR%v = X(K+1)%v
            PRR%v = 0.0D00
            CALL zero_deriv(PRR)
            CALL setderiv(PR,X(K+1))
          ELSE
            IF (NX.eq.J) THEN
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
          IF ((NY.eq.I).OR.(J.eq.1)) THEN
            PTL%v = 0.0D00
            CALL zero_deriv(PTL)
          ELSE
            PTL%v = X(NX+K+(-1))%v
            CALL setderiv(PTL,X(NX+K+(-1)))
          ENDIF
          IF (I.eq.(NY+(-1))) THEN
            PT%v = X(NX+K)%v
            PTT%v = 0.0D00
            CALL zero_deriv(PTT)
            CALL setderiv(PT,X(NX+K))
          ELSE
            IF (NY.eq.I) THEN
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
          IF ((NX.eq.J).OR.(NY.eq.I)) THEN
            PTR%v = 0.0D00
            CALL zero_deriv(PTR)
          ELSE
            PTR%v = X(NX+K+1)%v
            CALL setderiv(PTR,X(NX+K+1))
          ENDIF
          OpenAD_tmp_1 = (PT%v-PB%v)
          OpenAD_tmp_2 = (HY*2.0D00)
          DPDY%v = (OpenAD_tmp_1/OpenAD_tmp_2)
          OpenAD_lin_2 = (INT(1_w2f__i8)/OpenAD_tmp_2)
          OpenAD_tmp_3 = (PR%v-PL%v)
          OpenAD_tmp_4 = (HX*2.0D00)
          DPDX%v = (OpenAD_tmp_3/OpenAD_tmp_4)
          OpenAD_lin_4 = (INT(1_w2f__i8)/OpenAD_tmp_4)
          CALL setderiv(OpenAD_prop_1,PT)
          CALL dec_deriv(OpenAD_prop_1,PB)
          CALL setderiv(OpenAD_prop_2,PR)
          CALL dec_deriv(OpenAD_prop_2,PL)
          CALL sax(OpenAD_lin_2,OpenAD_prop_1,DPDY)
          CALL sax(OpenAD_lin_4,OpenAD_prop_2,DPDX)
          CALL bar(PBB,PBL,PB,PBR,PLL,PL,P,PR,PRR,PTL,PT,PTR,PTT,HY2,HX2
     +,PLAP,PBLAP,PLLAP,PRLAP,PTLAP)
          OpenAD_tmp_5 = (PBLAP%v+PTLAP%v-PLAP%v*2.0D00)
          OpenAD_tmp_6 = (PLLAP%v+PRLAP%v-PLAP%v*2.0D00)
          OpenAD_tmp_10 = (PRLAP%v-PLLAP%v)
          OpenAD_tmp_8 = (DPDY%v*OpenAD_tmp_10)
          OpenAD_tmp_9 = (HX*2.0D00)
          OpenAD_tmp_13 = (PTLAP%v-PBLAP%v)
          OpenAD_tmp_11 = (DPDX%v*OpenAD_tmp_13)
          OpenAD_tmp_12 = (HY*2.0D00)
          OpenAD_tmp_7 = ((OpenAD_tmp_8/OpenAD_tmp_9)-(OpenAD_tmp_11/Ope
     +nAD_tmp_12))
          FVEC(INT(K))%v = ((OpenAD_tmp_5/HY2)+(OpenAD_tmp_6/HX2)-R*Open
     +AD_tmp_7)
          OpenAD_lin_6 = (INT(1_w2f__i8)/HY2)
          OpenAD_lin_9 = (INT(1_w2f__i8)/HX2)
          OpenAD_lin_16 = OpenAD_tmp_10
          OpenAD_lin_17 = DPDY%v
          OpenAD_lin_14 = (INT(1_w2f__i8)/OpenAD_tmp_9)
          OpenAD_lin_20 = OpenAD_tmp_13
          OpenAD_lin_21 = DPDX%v
          OpenAD_lin_18 = (INT(1_w2f__i8)/OpenAD_tmp_12)
          OpenAD_lin_13 = R
          OpenAD_acc_0 = (OpenAD_lin_13*INT((-1_w2f__i8)))
          OpenAD_acc_1 = (INT((-1_w2f__i8))*OpenAD_acc_0)
          OpenAD_acc_2 = (OpenAD_lin_20*OpenAD_lin_18*OpenAD_acc_1)
          OpenAD_acc_3 = (OpenAD_lin_21*OpenAD_lin_18*OpenAD_acc_1)
          OpenAD_acc_4 = (OpenAD_lin_16*OpenAD_lin_14*OpenAD_acc_0)
          OpenAD_acc_5 = (OpenAD_lin_17*OpenAD_lin_14*OpenAD_acc_0)
          CALL setderiv(OpenAD_prop_3,PRLAP)
          CALL dec_deriv(OpenAD_prop_3,PLLAP)
          CALL setderiv(OpenAD_prop_4,PTLAP)
          CALL dec_deriv(OpenAD_prop_4,PBLAP)
          CALL setderiv(OpenAD_prop_5,PBLAP)
          CALL inc_deriv(OpenAD_prop_5,PTLAP)
          CALL saxpy(-2.0D00,PLAP,OpenAD_prop_5)
          CALL setderiv(OpenAD_prop_6,PLLAP)
          CALL inc_deriv(OpenAD_prop_6,PRLAP)
          CALL saxpy(-2.0D00,PLAP,OpenAD_prop_6)
          CALL sax(OpenAD_acc_2,DPDX,FVEC(K))
          CALL saxpy(OpenAD_acc_3,OpenAD_prop_4,FVEC(K))
          CALL saxpy(OpenAD_acc_4,DPDY,FVEC(K))
          CALL saxpy(OpenAD_acc_5,OpenAD_prop_3,FVEC(K))
          CALL saxpy(OpenAD_lin_6,OpenAD_prop_5,FVEC(K))
          CALL saxpy(OpenAD_lin_9,OpenAD_prop_6,FVEC(K))
        END DO
      END DO
      END SUBROUTINE

      SUBROUTINE bar(PBB, PBL, PB, PBR, PLL, PL, P, PR, PRR, PTL, PT, PT
     +R, PTT, HY2, HX2, PLAP, PBLAP, PLLAP, PRLAP, PTLAP)
      use w2f__types
      use OAD_active
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
      type(active) :: OpenAD_prop_10
      type(active) :: OpenAD_prop_11
      type(active) :: OpenAD_prop_12
      type(active) :: OpenAD_prop_13
      type(active) :: OpenAD_prop_14
      type(active) :: OpenAD_prop_15
      type(active) :: OpenAD_prop_16
      type(active) :: OpenAD_prop_7
      type(active) :: OpenAD_prop_8
      type(active) :: OpenAD_prop_9
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
      OpenAD_tmp_14 = (PBB%v+P%v-PB%v*2.0D00)
      OpenAD_tmp_15 = (PBL%v+PBR%v-PB%v*2.0D00)
      PBLAP%v = ((OpenAD_tmp_14/HY2)+(OpenAD_tmp_15/HX2))
      OpenAD_lin_23 = (INT(1_w2f__i8)/HY2)
      OpenAD_lin_26 = (INT(1_w2f__i8)/HX2)
      OpenAD_tmp_16 = (PBL%v+PTL%v-PL%v*2.0D00)
      OpenAD_tmp_17 = (PLL%v+P%v-PL%v*2.0D00)
      PLLAP%v = ((OpenAD_tmp_16/HY2)+(OpenAD_tmp_17/HX2))
      OpenAD_lin_29 = (INT(1_w2f__i8)/HY2)
      OpenAD_lin_32 = (INT(1_w2f__i8)/HX2)
      OpenAD_tmp_18 = (PB%v+PT%v-P%v*2.0D00)
      OpenAD_tmp_19 = (PL%v+PR%v-P%v*2.0D00)
      PLAP%v = ((OpenAD_tmp_18/HY2)+(OpenAD_tmp_19/HX2))
      OpenAD_lin_35 = (INT(1_w2f__i8)/HY2)
      OpenAD_lin_38 = (INT(1_w2f__i8)/HX2)
      OpenAD_tmp_20 = (PBR%v+PTR%v-PR%v*2.0D00)
      OpenAD_tmp_21 = (P%v+PRR%v-PR%v*2.0D00)
      PRLAP%v = ((OpenAD_tmp_20/HY2)+(OpenAD_tmp_21/HX2))
      OpenAD_lin_41 = (INT(1_w2f__i8)/HY2)
      OpenAD_lin_44 = (INT(1_w2f__i8)/HX2)
      OpenAD_tmp_22 = (P%v+PTT%v-PT%v*2.0D00)
      OpenAD_tmp_23 = (PTL%v+PTR%v-PT%v*2.0D00)
      PTLAP%v = ((OpenAD_tmp_22/HY2)+(OpenAD_tmp_23/HX2))
      OpenAD_lin_47 = (INT(1_w2f__i8)/HY2)
      OpenAD_lin_50 = (INT(1_w2f__i8)/HX2)
      CALL setderiv(OpenAD_prop_7,PBB)
      CALL inc_deriv(OpenAD_prop_7,P)
      CALL saxpy(-2.0D00,PB,OpenAD_prop_7)
      CALL setderiv(OpenAD_prop_8,PBL)
      CALL inc_deriv(OpenAD_prop_8,PBR)
      CALL saxpy(-2.0D00,PB,OpenAD_prop_8)
      CALL setderiv(OpenAD_prop_9,PBL)
      CALL inc_deriv(OpenAD_prop_9,PTL)
      CALL saxpy(-2.0D00,PL,OpenAD_prop_9)
      CALL setderiv(OpenAD_prop_10,PLL)
      CALL inc_deriv(OpenAD_prop_10,P)
      CALL saxpy(-2.0D00,PL,OpenAD_prop_10)
      CALL setderiv(OpenAD_prop_11,PB)
      CALL inc_deriv(OpenAD_prop_11,PT)
      CALL saxpy(-2.0D00,P,OpenAD_prop_11)
      CALL setderiv(OpenAD_prop_12,PL)
      CALL inc_deriv(OpenAD_prop_12,PR)
      CALL saxpy(-2.0D00,P,OpenAD_prop_12)
      CALL setderiv(OpenAD_prop_13,PBR)
      CALL inc_deriv(OpenAD_prop_13,PTR)
      CALL saxpy(-2.0D00,PR,OpenAD_prop_13)
      CALL setderiv(OpenAD_prop_14,P)
      CALL inc_deriv(OpenAD_prop_14,PRR)
      CALL saxpy(-2.0D00,PR,OpenAD_prop_14)
      CALL setderiv(OpenAD_prop_15,P)
      CALL inc_deriv(OpenAD_prop_15,PTT)
      CALL saxpy(-2.0D00,PT,OpenAD_prop_15)
      CALL setderiv(OpenAD_prop_16,PTL)
      CALL inc_deriv(OpenAD_prop_16,PTR)
      CALL saxpy(-2.0D00,PT,OpenAD_prop_16)
      CALL sax(OpenAD_lin_23,OpenAD_prop_7,PBLAP)
      CALL saxpy(OpenAD_lin_26,OpenAD_prop_8,PBLAP)
      CALL sax(OpenAD_lin_29,OpenAD_prop_9,PLLAP)
      CALL saxpy(OpenAD_lin_32,OpenAD_prop_10,PLLAP)
      CALL sax(OpenAD_lin_35,OpenAD_prop_11,PLAP)
      CALL saxpy(OpenAD_lin_38,OpenAD_prop_12,PLAP)
      CALL sax(OpenAD_lin_41,OpenAD_prop_13,PRLAP)
      CALL saxpy(OpenAD_lin_44,OpenAD_prop_14,PRLAP)
      CALL sax(OpenAD_lin_47,OpenAD_prop_15,PTLAP)
      CALL saxpy(OpenAD_lin_50,OpenAD_prop_16,PTLAP)
      END SUBROUTINE
