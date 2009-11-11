
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC, FLD
     +NOW, FLDOLD, FLDNEW)
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
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_36
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_46
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_50
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_4
      type(active) :: OpenAD_prop_5
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_10
      REAL(w2f__8) OpenAD_tmp_11
      REAL(w2f__8) OpenAD_tmp_12
      REAL(w2f__8) OpenAD_tmp_13
      REAL(w2f__8) OpenAD_tmp_14
      REAL(w2f__8) OpenAD_tmp_15
      REAL(w2f__8) OpenAD_tmp_16
      REAL(w2f__8) OpenAD_tmp_17
      REAL(w2f__8) OpenAD_tmp_18
      REAL(w2f__8) OpenAD_tmp_19
      REAL(w2f__8) OpenAD_tmp_2
      REAL(w2f__8) OpenAD_tmp_20
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
      REAL(w2f__8) GAMMALOC
      REAL(w2f__8) FLDSTAR(1 : 2)
      REAL(w2f__8) EXTFORLOC(1 : 2)
      REAL(w2f__8) UVELLOC
      type(active) :: FLDNOW(1:3)
      REAL(w2f__8) FLDOLD(1 : 3)
      type(active) :: FLDNEW(1:3)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) DELTA_T
      type(active) :: DFLDDT(1:3)
      INTEGER(w2f__i4) L
      REAL(w2f__8) VOL(1 : 3)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(FLDNOW)
C$OPENAD DEPENDENT(FLDNEW)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF (UVELLOC.GE.0.0D00) THEN
        OpenAD_tmp_2 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_tmp_1 = (GAMMALOC*OpenAD_tmp_2)
        OpenAD_tmp_3 = (FLDNOW(3)%v-FLDNOW(1)%v)
        OpenAD_tmp_0 = (EXTFORLOC(1)+VOL(1)*OpenAD_tmp_1+UVELLOC*OpenAD_
     +tmp_3)
        DFLDDT(1)%v = (OpenAD_tmp_0/VOL(1))
        OpenAD_lin_6 = GAMMALOC
        OpenAD_lin_4 = VOL(1)
        OpenAD_lin_9 = UVELLOC
        OpenAD_lin_0 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_acc_0 = (OpenAD_lin_9*OpenAD_lin_0)
        OpenAD_acc_1 = (INT((-1_w2f__i8))*OpenAD_lin_6*OpenAD_lin_4*Open
     +AD_lin_0)
        CALL setderiv(OpenAD_prop_0,FLDNOW(3))
        CALL dec_deriv(OpenAD_prop_0,FLDNOW(1))
        CALL sax(OpenAD_acc_0,OpenAD_prop_0,DFLDDT(1))
        CALL saxpy(OpenAD_acc_1,FLDNOW(1),DFLDDT(1))
        OpenAD_tmp_6 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_tmp_5 = (GAMMALOC*OpenAD_tmp_6)
        OpenAD_tmp_7 = (FLDNOW(1)%v-FLDNOW(2)%v)
        OpenAD_tmp_4 = (EXTFORLOC(2)+VOL(2)*OpenAD_tmp_5+UVELLOC*OpenAD_
     +tmp_7)
        DFLDDT(2)%v = (OpenAD_tmp_4/VOL(2))
        OpenAD_lin_16 = GAMMALOC
        OpenAD_lin_14 = VOL(2)
        OpenAD_lin_19 = UVELLOC
        OpenAD_lin_10 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_acc_2 = (OpenAD_lin_19*OpenAD_lin_10)
        OpenAD_acc_3 = (INT((-1_w2f__i8))*OpenAD_lin_16*OpenAD_lin_14*Op
     +enAD_lin_10)
        CALL setderiv(OpenAD_prop_1,FLDNOW(1))
        CALL dec_deriv(OpenAD_prop_1,FLDNOW(2))
        CALL sax(OpenAD_acc_2,OpenAD_prop_1,DFLDDT(2))
        CALL saxpy(OpenAD_acc_3,FLDNOW(2),DFLDDT(2))
        OpenAD_tmp_9 = (FLDNOW(2)%v-FLDNOW(3)%v)
        OpenAD_tmp_8 = (UVELLOC*OpenAD_tmp_9)
        DFLDDT(3)%v = (OpenAD_tmp_8/VOL(3))
        OpenAD_lin_23 = UVELLOC
        OpenAD_lin_20 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_acc_4 = (OpenAD_lin_23*OpenAD_lin_20)
        CALL setderiv(OpenAD_prop_2,FLDNOW(2))
        CALL dec_deriv(OpenAD_prop_2,FLDNOW(3))
        CALL sax(OpenAD_acc_4,OpenAD_prop_2,DFLDDT(3))
      ELSE
        OpenAD_tmp_13 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_tmp_12 = (GAMMALOC*OpenAD_tmp_13)
        OpenAD_tmp_14 = (FLDNOW(2)%v-FLDNOW(1)%v)
        OpenAD_tmp_11 = (EXTFORLOC(1)+VOL(1)*OpenAD_tmp_12-UVELLOC*OpenA
     +D_tmp_14)
        DFLDDT(1)%v = (OpenAD_tmp_11/VOL(1))
        OpenAD_lin_33 = GAMMALOC
        OpenAD_lin_31 = VOL(1)
        OpenAD_lin_36 = UVELLOC
        OpenAD_lin_27 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_acc_5 = (OpenAD_lin_36*INT((-1_w2f__i8))*OpenAD_lin_27)
        OpenAD_acc_6 = (INT((-1_w2f__i8))*OpenAD_lin_33*OpenAD_lin_31*Op
     +enAD_lin_27)
        CALL setderiv(OpenAD_prop_3,FLDNOW(2))
        CALL dec_deriv(OpenAD_prop_3,FLDNOW(1))
        CALL sax(OpenAD_acc_5,OpenAD_prop_3,DFLDDT(1))
        CALL saxpy(OpenAD_acc_6,FLDNOW(1),DFLDDT(1))
        OpenAD_tmp_17 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_tmp_16 = (GAMMALOC*OpenAD_tmp_17)
        OpenAD_tmp_18 = (FLDNOW(3)%v-FLDNOW(2)%v)
        OpenAD_tmp_15 = (EXTFORLOC(2)+VOL(2)*OpenAD_tmp_16-UVELLOC*OpenA
     +D_tmp_18)
        DFLDDT(2)%v = (OpenAD_tmp_15/VOL(2))
        OpenAD_lin_43 = GAMMALOC
        OpenAD_lin_41 = VOL(2)
        OpenAD_lin_46 = UVELLOC
        OpenAD_lin_37 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_acc_7 = (OpenAD_lin_46*INT((-1_w2f__i8))*OpenAD_lin_37)
        OpenAD_acc_8 = (INT((-1_w2f__i8))*OpenAD_lin_43*OpenAD_lin_41*Op
     +enAD_lin_37)
        CALL setderiv(OpenAD_prop_4,FLDNOW(3))
        CALL dec_deriv(OpenAD_prop_4,FLDNOW(2))
        CALL sax(OpenAD_acc_7,OpenAD_prop_4,DFLDDT(2))
        CALL saxpy(OpenAD_acc_8,FLDNOW(2),DFLDDT(2))
        OpenAD_tmp_20 = (FLDNOW(1)%v-FLDNOW(3)%v)
        OpenAD_tmp_19 = (UVELLOC*OpenAD_tmp_20)
        DFLDDT(3)%v = (-(OpenAD_tmp_19/VOL(3)))
        OpenAD_lin_50 = UVELLOC
        OpenAD_lin_47 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_acc_9 = (OpenAD_lin_50*OpenAD_lin_47*INT((-1_w2f__i8)))
        CALL setderiv(OpenAD_prop_5,FLDNOW(1))
        CALL dec_deriv(OpenAD_prop_5,FLDNOW(3))
        CALL sax(OpenAD_acc_9,OpenAD_prop_5,DFLDDT(3))
      ENDIF
      DO L = 1,3,1
        OpenAD_tmp_10 = (DELTA_T*2.0D00)
        FLDNEW(INT(L))%v = (FLDOLD(L)+DFLDDT(L)%v*OpenAD_tmp_10)
        OpenAD_lin_25 = OpenAD_tmp_10
        CALL sax(OpenAD_lin_25,DFLDDT(L),FLDNEW(L))
      enddo
      END SUBROUTINE
