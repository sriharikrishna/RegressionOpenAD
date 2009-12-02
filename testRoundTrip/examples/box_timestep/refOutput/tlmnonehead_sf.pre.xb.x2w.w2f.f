
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
      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC,
     >  FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      use oad_intrinsics
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
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_5
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
      TYPE (OpenADTy_active) FLDNOW(1 : 3)
      REAL(w2f__8) FLDOLD(1 : 3)
      TYPE (OpenADTy_active) FLDNEW(1 : 3)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) DELTA_T
      TYPE (OpenADTy_active) DFLDDT(1 : 3)
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
      IF(UVELLOC .GE. 0.0D00) THEN
        OpenAD_tmp_2 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_tmp_1 = (GAMMALOC * OpenAD_tmp_2)
        OpenAD_tmp_3 = (__value__(FLDNOW(3)) - __value__(FLDNOW(1)))
        OpenAD_tmp_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_tmp_1 + UVELLOC
     >  * OpenAD_tmp_3)
        __value__(DFLDDT(1)) = (OpenAD_tmp_0 / VOL(1))
        OpenAD_lin_6 = GAMMALOC
        OpenAD_lin_4 = VOL(1)
        OpenAD_lin_9 = UVELLOC
        OpenAD_lin_0 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_acc_0 = (OpenAD_lin_9 * OpenAD_lin_0)
        OpenAD_acc_1 = (INT((-1_w2f__i8)) * OpenAD_lin_6 * OpenAD_lin_4
     >  * OpenAD_lin_0)
        CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(3)))
        CALL dec_deriv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(1)))
        CALL sax(OpenAD_acc_0, __deriv__(OpenAD_prop_0), __deriv__(
     > DFLDDT(1)))
        CALL saxpy(OpenAD_acc_1, __deriv__(FLDNOW(1)), __deriv__(DFLDDT
     > (1)))
        OpenAD_tmp_6 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_tmp_5 = (GAMMALOC * OpenAD_tmp_6)
        OpenAD_tmp_7 = (__value__(FLDNOW(1)) - __value__(FLDNOW(2)))
        OpenAD_tmp_4 = (EXTFORLOC(2) + VOL(2) * OpenAD_tmp_5 + UVELLOC
     >  * OpenAD_tmp_7)
        __value__(DFLDDT(2)) = (OpenAD_tmp_4 / VOL(2))
        OpenAD_lin_16 = GAMMALOC
        OpenAD_lin_14 = VOL(2)
        OpenAD_lin_19 = UVELLOC
        OpenAD_lin_10 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_acc_2 = (OpenAD_lin_19 * OpenAD_lin_10)
        OpenAD_acc_3 = (INT((-1_w2f__i8)) * OpenAD_lin_16 *
     >  OpenAD_lin_14 * OpenAD_lin_10)
        CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(1)))
        CALL dec_deriv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(2)))
        CALL sax(OpenAD_acc_2, __deriv__(OpenAD_prop_1), __deriv__(
     > DFLDDT(2)))
        CALL saxpy(OpenAD_acc_3, __deriv__(FLDNOW(2)), __deriv__(DFLDDT
     > (2)))
        OpenAD_tmp_9 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3)))
        OpenAD_tmp_8 = (UVELLOC * OpenAD_tmp_9)
        __value__(DFLDDT(3)) = (OpenAD_tmp_8 / VOL(3))
        OpenAD_lin_23 = UVELLOC
        OpenAD_lin_20 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_4 = (OpenAD_lin_23 * OpenAD_lin_20)
        CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(2)))
        CALL dec_deriv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(3)))
        CALL sax(OpenAD_acc_4, __deriv__(OpenAD_prop_2), __deriv__(
     > DFLDDT(3)))
      ELSE
        OpenAD_tmp_13 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_tmp_12 = (GAMMALOC * OpenAD_tmp_13)
        OpenAD_tmp_14 = (__value__(FLDNOW(2)) - __value__(FLDNOW(1)))
        OpenAD_tmp_11 = (EXTFORLOC(1) + VOL(1) * OpenAD_tmp_12 -
     >  UVELLOC * OpenAD_tmp_14)
        __value__(DFLDDT(1)) = (OpenAD_tmp_11 / VOL(1))
        OpenAD_lin_33 = GAMMALOC
        OpenAD_lin_31 = VOL(1)
        OpenAD_lin_36 = UVELLOC
        OpenAD_lin_27 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_acc_5 = (OpenAD_lin_36 * INT((-1_w2f__i8)) *
     >  OpenAD_lin_27)
        OpenAD_acc_6 = (INT((-1_w2f__i8)) * OpenAD_lin_33 *
     >  OpenAD_lin_31 * OpenAD_lin_27)
        CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(2)))
        CALL dec_deriv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(1)))
        CALL sax(OpenAD_acc_5, __deriv__(OpenAD_prop_3), __deriv__(
     > DFLDDT(1)))
        CALL saxpy(OpenAD_acc_6, __deriv__(FLDNOW(1)), __deriv__(DFLDDT
     > (1)))
        OpenAD_tmp_17 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_tmp_16 = (GAMMALOC * OpenAD_tmp_17)
        OpenAD_tmp_18 = (__value__(FLDNOW(3)) - __value__(FLDNOW(2)))
        OpenAD_tmp_15 = (EXTFORLOC(2) + VOL(2) * OpenAD_tmp_16 -
     >  UVELLOC * OpenAD_tmp_18)
        __value__(DFLDDT(2)) = (OpenAD_tmp_15 / VOL(2))
        OpenAD_lin_43 = GAMMALOC
        OpenAD_lin_41 = VOL(2)
        OpenAD_lin_46 = UVELLOC
        OpenAD_lin_37 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_acc_7 = (OpenAD_lin_46 * INT((-1_w2f__i8)) *
     >  OpenAD_lin_37)
        OpenAD_acc_8 = (INT((-1_w2f__i8)) * OpenAD_lin_43 *
     >  OpenAD_lin_41 * OpenAD_lin_37)
        CALL setderiv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(3)))
        CALL dec_deriv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(2)))
        CALL sax(OpenAD_acc_7, __deriv__(OpenAD_prop_4), __deriv__(
     > DFLDDT(2)))
        CALL saxpy(OpenAD_acc_8, __deriv__(FLDNOW(2)), __deriv__(DFLDDT
     > (2)))
        OpenAD_tmp_20 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3)))
        OpenAD_tmp_19 = (UVELLOC * OpenAD_tmp_20)
        __value__(DFLDDT(3)) = (-(OpenAD_tmp_19 / VOL(3)))
        OpenAD_lin_50 = UVELLOC
        OpenAD_lin_47 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_9 = (OpenAD_lin_50 * OpenAD_lin_47 * INT((-1_w2f__i8
     > )))
        CALL setderiv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(1)))
        CALL dec_deriv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(3)))
        CALL sax(OpenAD_acc_9, __deriv__(OpenAD_prop_5), __deriv__(
     > DFLDDT(3)))
      ENDIF
      DO L = 1, 3, 1
        OpenAD_tmp_10 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_tmp_10)
        OpenAD_lin_25 = OpenAD_tmp_10
        CALL sax(OpenAD_lin_25, __deriv__(DFLDDT(L)), __deriv__(FLDNEW(
     > L)))
      END DO
      END SUBROUTINE
