
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC, FLD
     +NOW, FLDOLD, FLDNEW)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
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
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_22
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_24
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_26
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_32
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_34
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_36
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_40
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
      type(active) :: OpenAD_prp_2
      type(active) :: OpenAD_prp_3
      type(active) :: OpenAD_prp_4
      type(active) :: OpenAD_prp_5
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
      IF(UVELLOC .GE. 0.0D00) THEN
        OpenAD_lin_4 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_lin_2 = (GAMMALOC*OpenAD_lin_4)
        OpenAD_lin_6 = (FLDNOW(3)%v-FLDNOW(1)%v)
        OpenAD_lin_0 = (EXTFORLOC(1)+VOL(1)*OpenAD_lin_2+UVELLOC*OpenAD_
     +lin_6)
        DFLDDT(1)%v = (OpenAD_lin_0/VOL(1))
        OpenAD_lin_5 = GAMMALOC
        OpenAD_lin_3 = VOL(1)
        OpenAD_lin_7 = UVELLOC
        OpenAD_lin_1 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_acc_0 = (OpenAD_lin_7*OpenAD_lin_1)
        OpenAD_acc_1 = (INT((-1_w2f__i8))*OpenAD_lin_5*OpenAD_lin_3*Open
     +AD_lin_1)
        CALL setderiv(OpenAD_prp_0,FLDNOW(3))
        CALL dec_deriv(OpenAD_prp_0,FLDNOW(1))
        CALL sax(OpenAD_acc_0,OpenAD_prp_0,DFLDDT(1))
        CALL saxpy(OpenAD_acc_1,FLDNOW(1),DFLDDT(1))
        OpenAD_lin_12 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_lin_10 = (GAMMALOC*OpenAD_lin_12)
        OpenAD_lin_14 = (FLDNOW(1)%v-FLDNOW(2)%v)
        OpenAD_lin_8 = (EXTFORLOC(2)+VOL(2)*OpenAD_lin_10+UVELLOC*OpenAD
     +_lin_14)
        DFLDDT(2)%v = (OpenAD_lin_8/VOL(2))
        OpenAD_lin_13 = GAMMALOC
        OpenAD_lin_11 = VOL(2)
        OpenAD_lin_15 = UVELLOC
        OpenAD_lin_9 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_acc_2 = (OpenAD_lin_15*OpenAD_lin_9)
        OpenAD_acc_3 = (INT((-1_w2f__i8))*OpenAD_lin_13*OpenAD_lin_11*Op
     +enAD_lin_9)
        CALL setderiv(OpenAD_prp_1,FLDNOW(1))
        CALL dec_deriv(OpenAD_prp_1,FLDNOW(2))
        CALL sax(OpenAD_acc_2,OpenAD_prp_1,DFLDDT(2))
        CALL saxpy(OpenAD_acc_3,FLDNOW(2),DFLDDT(2))
        OpenAD_lin_18 = (FLDNOW(2)%v-FLDNOW(3)%v)
        OpenAD_lin_16 = (UVELLOC*OpenAD_lin_18)
        DFLDDT(3)%v = (OpenAD_lin_16/VOL(3))
        OpenAD_lin_19 = UVELLOC
        OpenAD_lin_17 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_acc_4 = (OpenAD_lin_19*OpenAD_lin_17)
        CALL setderiv(OpenAD_prp_2,FLDNOW(2))
        CALL dec_deriv(OpenAD_prp_2,FLDNOW(3))
        CALL sax(OpenAD_acc_4,OpenAD_prp_2,DFLDDT(3))
      ELSE
        OpenAD_lin_26 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_lin_24 = (GAMMALOC*OpenAD_lin_26)
        OpenAD_lin_28 = (FLDNOW(2)%v-FLDNOW(1)%v)
        OpenAD_lin_22 = (EXTFORLOC(1)+VOL(1)*OpenAD_lin_24-UVELLOC*OpenA
     +D_lin_28)
        DFLDDT(1)%v = (OpenAD_lin_22/VOL(1))
        OpenAD_lin_27 = GAMMALOC
        OpenAD_lin_25 = VOL(1)
        OpenAD_lin_29 = UVELLOC
        OpenAD_lin_23 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_acc_5 = (OpenAD_lin_29*INT((-1_w2f__i8))*OpenAD_lin_23)
        OpenAD_acc_6 = (INT((-1_w2f__i8))*OpenAD_lin_27*OpenAD_lin_25*Op
     +enAD_lin_23)
        CALL setderiv(OpenAD_prp_3,FLDNOW(2))
        CALL dec_deriv(OpenAD_prp_3,FLDNOW(1))
        CALL sax(OpenAD_acc_5,OpenAD_prp_3,DFLDDT(1))
        CALL saxpy(OpenAD_acc_6,FLDNOW(1),DFLDDT(1))
        OpenAD_lin_34 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_lin_32 = (GAMMALOC*OpenAD_lin_34)
        OpenAD_lin_36 = (FLDNOW(3)%v-FLDNOW(2)%v)
        OpenAD_lin_30 = (EXTFORLOC(2)+VOL(2)*OpenAD_lin_32-UVELLOC*OpenA
     +D_lin_36)
        DFLDDT(2)%v = (OpenAD_lin_30/VOL(2))
        OpenAD_lin_35 = GAMMALOC
        OpenAD_lin_33 = VOL(2)
        OpenAD_lin_37 = UVELLOC
        OpenAD_lin_31 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_acc_7 = (OpenAD_lin_37*INT((-1_w2f__i8))*OpenAD_lin_31)
        OpenAD_acc_8 = (INT((-1_w2f__i8))*OpenAD_lin_35*OpenAD_lin_33*Op
     +enAD_lin_31)
        CALL setderiv(OpenAD_prp_4,FLDNOW(3))
        CALL dec_deriv(OpenAD_prp_4,FLDNOW(2))
        CALL sax(OpenAD_acc_7,OpenAD_prp_4,DFLDDT(2))
        CALL saxpy(OpenAD_acc_8,FLDNOW(2),DFLDDT(2))
        OpenAD_lin_40 = (FLDNOW(1)%v-FLDNOW(3)%v)
        OpenAD_lin_38 = (UVELLOC*OpenAD_lin_40)
        DFLDDT(3)%v = (-(OpenAD_lin_38/VOL(3)))
        OpenAD_lin_41 = UVELLOC
        OpenAD_lin_39 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_acc_9 = (OpenAD_lin_41*OpenAD_lin_39*INT((-1_w2f__i8)))
        CALL setderiv(OpenAD_prp_5,FLDNOW(1))
        CALL dec_deriv(OpenAD_prp_5,FLDNOW(3))
        CALL sax(OpenAD_acc_9,OpenAD_prp_5,DFLDDT(3))
      ENDIF
      DO L = 1,3,1
        OpenAD_lin_20 = (DELTA_T*2.0D00)
        FLDNEW(INT(L))%v = (FLDOLD(L)+DFLDDT(L)%v*OpenAD_lin_20)
        OpenAD_lin_21 = OpenAD_lin_20
        CALL sax(OpenAD_lin_21,DFLDDT(L),FLDNEW(L))
      END DO
      END SUBROUTINE
