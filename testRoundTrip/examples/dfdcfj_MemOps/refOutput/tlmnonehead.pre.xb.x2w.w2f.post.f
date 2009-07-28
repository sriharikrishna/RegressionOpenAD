      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(NX,NY,X,FVEC,R)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_acc_10
      real(w2f__8) :: OpenAD_acc_11
      real(w2f__8) :: OpenAD_acc_12
      real(w2f__8) :: OpenAD_acc_13
      real(w2f__8) :: OpenAD_acc_14
      real(w2f__8) :: OpenAD_acc_15
      real(w2f__8) :: OpenAD_acc_16
      real(w2f__8) :: OpenAD_acc_17
      real(w2f__8) :: OpenAD_acc_18
      real(w2f__8) :: OpenAD_acc_19
      real(w2f__8) :: OpenAD_acc_2
      real(w2f__8) :: OpenAD_acc_20
      real(w2f__8) :: OpenAD_acc_3
      real(w2f__8) :: OpenAD_acc_4
      real(w2f__8) :: OpenAD_acc_5
      real(w2f__8) :: OpenAD_acc_6
      real(w2f__8) :: OpenAD_acc_7
      real(w2f__8) :: OpenAD_acc_8
      real(w2f__8) :: OpenAD_acc_9
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_10
      real(w2f__8) :: OpenAD_lin_13
      real(w2f__8) :: OpenAD_lin_16
      real(w2f__8) :: OpenAD_lin_19
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_22
      real(w2f__8) :: OpenAD_lin_25
      real(w2f__8) :: OpenAD_lin_28
      real(w2f__8) :: OpenAD_lin_31
      real(w2f__8) :: OpenAD_lin_34
      real(w2f__8) :: OpenAD_lin_37
      real(w2f__8) :: OpenAD_lin_4
      real(w2f__8) :: OpenAD_lin_41
      real(w2f__8) :: OpenAD_lin_42
      real(w2f__8) :: OpenAD_lin_44
      real(w2f__8) :: OpenAD_lin_45
      real(w2f__8) :: OpenAD_lin_46
      real(w2f__8) :: OpenAD_lin_48
      real(w2f__8) :: OpenAD_lin_49
      real(w2f__8) :: OpenAD_lin_7
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
      real(w2f__8) :: OpenAD_tmp_0
      real(w2f__8) :: OpenAD_tmp_1
      real(w2f__8) :: OpenAD_tmp_10
      real(w2f__8) :: OpenAD_tmp_11
      real(w2f__8) :: OpenAD_tmp_12
      real(w2f__8) :: OpenAD_tmp_13
      real(w2f__8) :: OpenAD_tmp_14
      real(w2f__8) :: OpenAD_tmp_15
      real(w2f__8) :: OpenAD_tmp_16
      real(w2f__8) :: OpenAD_tmp_17
      real(w2f__8) :: OpenAD_tmp_18
      real(w2f__8) :: OpenAD_tmp_19
      real(w2f__8) :: OpenAD_tmp_2
      real(w2f__8) :: OpenAD_tmp_20
      real(w2f__8) :: OpenAD_tmp_21
      real(w2f__8) :: OpenAD_tmp_22
      real(w2f__8) :: OpenAD_tmp_3
      real(w2f__8) :: OpenAD_tmp_4
      real(w2f__8) :: OpenAD_tmp_5
      real(w2f__8) :: OpenAD_tmp_6
      real(w2f__8) :: OpenAD_tmp_7
      real(w2f__8) :: OpenAD_tmp_8
      real(w2f__8) :: OpenAD_tmp_9
C
C     **** Parameters and Result ****
C
      integer(w2f__i4) :: NX
      integer(w2f__i4) :: NY
      type(active) :: X(1:INT((NX*NY)))
      type(active) :: FVEC(1:INT((NX*NY)))
      real(w2f__8) :: R
C
C     **** Local Variables and Functions ****
C
      type(active) :: DPDX
      type(active) :: DPDY
      real(w2f__8) :: FOUR
      parameter (FOUR=4.0D00)
      real(w2f__8) :: HX
      real(w2f__8) :: HX2
      real(w2f__8) :: HY
      real(w2f__8) :: HY2
      integer(w2f__i4) :: I
      integer(w2f__i4) :: J
      integer(w2f__i4) :: K
      integer(w2f__i4) :: N
      real(w2f__8) :: NXP1
      real(w2f__8) :: NYP1
      real(w2f__8) :: ONE
      parameter (ONE=1.0D00)
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
      real(w2f__8) :: THREE
      parameter (THREE=3.0D00)
      real(w2f__8) :: TWO
      parameter (TWO=2.0D00)
      real(w2f__8) :: ZERO
      parameter (ZERO=0.0D00)
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
          IF ((NX.eq.J).OR.(NY.eq.I)) THEN
            PTR%v = 0.0D00
            CALL zero_deriv(PTR)
          ELSE
            PTR%v = X(NX+K+1)%v
            CALL setderiv(PTR,X(NX+K+1))
          ENDIF
          OpenAD_tmp_0 = (PT%v-PB%v)
          OpenAD_tmp_1 = (HY*2.0D00)
          DPDY%v = (OpenAD_tmp_0/OpenAD_tmp_1)
          OpenAD_lin_0 = (INT(1_w2f__i8)/OpenAD_tmp_1)
          OpenAD_tmp_2 = (PR%v-PL%v)
          OpenAD_tmp_3 = (HX*2.0D00)
          DPDX%v = (OpenAD_tmp_2/OpenAD_tmp_3)
          OpenAD_lin_2 = (INT(1_w2f__i8)/OpenAD_tmp_3)
          OpenAD_tmp_4 = (PBB%v+P%v-PB%v*2.0D00)
          OpenAD_tmp_5 = (PBL%v+PBR%v-PB%v*2.0D00)
          PBLAP%v = ((OpenAD_tmp_4/HY2)+(OpenAD_tmp_5/HX2))
          OpenAD_lin_4 = (INT(1_w2f__i8)/HY2)
          OpenAD_lin_7 = (INT(1_w2f__i8)/HX2)
          OpenAD_tmp_6 = (PBL%v+PTL%v-PL%v*2.0D00)
          OpenAD_tmp_7 = (PLL%v+P%v-PL%v*2.0D00)
          PLLAP%v = ((OpenAD_tmp_6/HY2)+(OpenAD_tmp_7/HX2))
          OpenAD_lin_10 = (INT(1_w2f__i8)/HY2)
          OpenAD_lin_13 = (INT(1_w2f__i8)/HX2)
          OpenAD_tmp_8 = (PB%v+PT%v-P%v*2.0D00)
          OpenAD_tmp_9 = (PL%v+PR%v-P%v*2.0D00)
          PLAP%v = ((OpenAD_tmp_8/HY2)+(OpenAD_tmp_9/HX2))
          OpenAD_lin_16 = (INT(1_w2f__i8)/HY2)
          OpenAD_lin_19 = (INT(1_w2f__i8)/HX2)
          OpenAD_tmp_10 = (P%v+PRR%v-PR%v*2.0D00)
          OpenAD_tmp_11 = (PBR%v+PTR%v-PR%v*2.0D00)
          PRLAP%v = ((OpenAD_tmp_10/HX2)+(OpenAD_tmp_11/HY2))
          OpenAD_lin_22 = (INT(1_w2f__i8)/HX2)
          OpenAD_lin_25 = (INT(1_w2f__i8)/HY2)
          OpenAD_tmp_12 = (P%v+PTT%v-PT%v*2.0D00)
          OpenAD_tmp_13 = (PTL%v+PTR%v-PT%v*2.0D00)
          PTLAP%v = ((OpenAD_tmp_12/HY2)+(OpenAD_tmp_13/HX2))
          OpenAD_lin_28 = (INT(1_w2f__i8)/HY2)
          OpenAD_lin_31 = (INT(1_w2f__i8)/HX2)
          OpenAD_tmp_14 = (PBLAP%v+PTLAP%v-PLAP%v*2.0D00)
          OpenAD_tmp_15 = (PLLAP%v+PRLAP%v-PLAP%v*2.0D00)
          OpenAD_tmp_19 = (PRLAP%v-PLLAP%v)
          OpenAD_tmp_17 = (DPDY%v*OpenAD_tmp_19)
          OpenAD_tmp_18 = (HX*2.0D00)
          OpenAD_tmp_22 = (PTLAP%v-PBLAP%v)
          OpenAD_tmp_20 = (DPDX%v*OpenAD_tmp_22)
          OpenAD_tmp_21 = (HY*2.0D00)
          OpenAD_tmp_16 = ((OpenAD_tmp_17/OpenAD_tmp_18)-(OpenAD_tmp_20/
     +OpenAD_tmp_21))
          FVEC(INT(K))%v = ((OpenAD_tmp_14/HY2)+(OpenAD_tmp_15/HX2)-R*Op
     +enAD_tmp_16)
          OpenAD_lin_34 = (INT(1_w2f__i8)/HY2)
          OpenAD_lin_37 = (INT(1_w2f__i8)/HX2)
          OpenAD_lin_44 = OpenAD_tmp_19
          OpenAD_lin_45 = DPDY%v
          OpenAD_lin_42 = (INT(1_w2f__i8)/OpenAD_tmp_18)
          OpenAD_lin_48 = OpenAD_tmp_22
          OpenAD_lin_49 = DPDX%v
          OpenAD_lin_46 = (INT(1_w2f__i8)/OpenAD_tmp_21)
          OpenAD_lin_41 = R
          OpenAD_acc_0 = (OpenAD_lin_41*INT((-1_w2f__i8)))
          OpenAD_acc_1 = (INT((-1_w2f__i8))*OpenAD_acc_0)
          OpenAD_acc_2 = (OpenAD_lin_49*OpenAD_lin_46*OpenAD_acc_1)
          OpenAD_acc_3 = (OpenAD_lin_2*OpenAD_lin_48*OpenAD_lin_46*OpenA
     +D_acc_1)
          OpenAD_acc_4 = (OpenAD_lin_45*OpenAD_lin_42*OpenAD_acc_0)
          OpenAD_acc_5 = (OpenAD_lin_0*OpenAD_lin_44*OpenAD_lin_42*OpenA
     +D_acc_0)
          OpenAD_acc_6 = (OpenAD_lin_37+OpenAD_acc_4)
          OpenAD_acc_7 = (OpenAD_lin_37+INT((-1_w2f__i8))*OpenAD_acc_4)
          OpenAD_acc_8 = (2.0D00*INT((-1_w2f__i8))*OpenAD_lin_37+2.0D00*
     +INT((-1_w2f__i8))*OpenAD_lin_34)
          OpenAD_acc_9 = (OpenAD_lin_34+OpenAD_acc_2)
          OpenAD_acc_10 = (OpenAD_lin_34+INT((-1_w2f__i8))*OpenAD_acc_2)
          OpenAD_acc_11 = (OpenAD_lin_31*OpenAD_acc_9)
          OpenAD_acc_12 = (OpenAD_lin_28*OpenAD_acc_9)
          OpenAD_acc_13 = (OpenAD_lin_25*OpenAD_acc_6)
          OpenAD_acc_14 = (OpenAD_lin_22*OpenAD_acc_6)
          OpenAD_acc_15 = (OpenAD_lin_19*OpenAD_acc_8)
          OpenAD_acc_16 = (OpenAD_lin_16*OpenAD_acc_8)
          OpenAD_acc_17 = (OpenAD_lin_13*OpenAD_acc_7)
          OpenAD_acc_18 = (OpenAD_lin_10*OpenAD_acc_7)
          OpenAD_acc_19 = (OpenAD_lin_7*OpenAD_acc_10)
          OpenAD_acc_20 = (OpenAD_lin_4*OpenAD_acc_10)
          CALL setderiv(OpenAD_prop_0,PT)
          CALL dec_deriv(OpenAD_prop_0,PB)
          CALL setderiv(OpenAD_prop_1,PR)
          CALL dec_deriv(OpenAD_prop_1,PL)
          CALL setderiv(OpenAD_prop_2,PBB)
          CALL inc_deriv(OpenAD_prop_2,P)
          CALL saxpy(-2.0D00,PB,OpenAD_prop_2)
          CALL setderiv(OpenAD_prop_3,PBL)
          CALL inc_deriv(OpenAD_prop_3,PBR)
          CALL saxpy(-2.0D00,PB,OpenAD_prop_3)
          CALL setderiv(OpenAD_prop_4,PBL)
          CALL inc_deriv(OpenAD_prop_4,PTL)
          CALL saxpy(-2.0D00,PL,OpenAD_prop_4)
          CALL setderiv(OpenAD_prop_5,PLL)
          CALL inc_deriv(OpenAD_prop_5,P)
          CALL saxpy(-2.0D00,PL,OpenAD_prop_5)
          CALL setderiv(OpenAD_prop_6,PB)
          CALL inc_deriv(OpenAD_prop_6,PT)
          CALL saxpy(-2.0D00,P,OpenAD_prop_6)
          CALL setderiv(OpenAD_prop_7,PL)
          CALL inc_deriv(OpenAD_prop_7,PR)
          CALL saxpy(-2.0D00,P,OpenAD_prop_7)
          CALL setderiv(OpenAD_prop_8,P)
          CALL inc_deriv(OpenAD_prop_8,PRR)
          CALL saxpy(-2.0D00,PR,OpenAD_prop_8)
          CALL setderiv(OpenAD_prop_9,PBR)
          CALL inc_deriv(OpenAD_prop_9,PTR)
          CALL saxpy(-2.0D00,PR,OpenAD_prop_9)
          CALL setderiv(OpenAD_prop_10,P)
          CALL inc_deriv(OpenAD_prop_10,PTT)
          CALL saxpy(-2.0D00,PT,OpenAD_prop_10)
          CALL setderiv(OpenAD_prop_11,PTL)
          CALL inc_deriv(OpenAD_prop_11,PTR)
          CALL saxpy(-2.0D00,PT,OpenAD_prop_11)
          CALL sax(OpenAD_acc_3,OpenAD_prop_1,FVEC(K))
          CALL saxpy(OpenAD_acc_5,OpenAD_prop_0,FVEC(K))
          CALL saxpy(OpenAD_acc_11,OpenAD_prop_11,FVEC(K))
          CALL saxpy(OpenAD_acc_12,OpenAD_prop_10,FVEC(K))
          CALL saxpy(OpenAD_acc_13,OpenAD_prop_9,FVEC(K))
          CALL saxpy(OpenAD_acc_14,OpenAD_prop_8,FVEC(K))
          CALL saxpy(OpenAD_acc_15,OpenAD_prop_7,FVEC(K))
          CALL saxpy(OpenAD_acc_16,OpenAD_prop_6,FVEC(K))
          CALL saxpy(OpenAD_acc_17,OpenAD_prop_5,FVEC(K))
          CALL saxpy(OpenAD_acc_18,OpenAD_prop_4,FVEC(K))
          CALL saxpy(OpenAD_acc_19,OpenAD_prop_3,FVEC(K))
          CALL saxpy(OpenAD_acc_20,OpenAD_prop_2,FVEC(K))
        END DO
      END DO
      END SUBROUTINE
