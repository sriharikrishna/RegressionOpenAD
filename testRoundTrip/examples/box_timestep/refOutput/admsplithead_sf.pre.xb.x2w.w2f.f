
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC,
     >  FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
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
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(FLDNOW)
C$OPENAD DEPENDENT(FLDNEW)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        __value__(DFLDDT(1)) = ((EXTFORLOC(1) + VOL(1) * GAMMALOC *(
     > FLDSTAR(1) - __value__(FLDNOW(1))) + UVELLOC *(__value__(FLDNOW(
     > 3)) - __value__(FLDNOW(1)))) / VOL(1))
        __value__(DFLDDT(2)) = ((EXTFORLOC(2) + VOL(2) * GAMMALOC *(
     > FLDSTAR(2) - __value__(FLDNOW(2))) + UVELLOC *(__value__(FLDNOW(
     > 1)) - __value__(FLDNOW(2)))) / VOL(2))
        __value__(DFLDDT(3)) = ((UVELLOC *(__value__(FLDNOW(2)) -
     >  __value__(FLDNOW(3)))) / VOL(3))
      ELSE
        __value__(DFLDDT(1)) = ((EXTFORLOC(1) + VOL(1) * GAMMALOC *(
     > FLDSTAR(1) - __value__(FLDNOW(1))) - UVELLOC *(__value__(FLDNOW(
     > 2)) - __value__(FLDNOW(1)))) / VOL(1))
        __value__(DFLDDT(2)) = ((EXTFORLOC(2) + VOL(2) * GAMMALOC *(
     > FLDSTAR(2) - __value__(FLDNOW(2))) - UVELLOC *(__value__(FLDNOW(
     > 3)) - __value__(FLDNOW(2)))) / VOL(2))
        __value__(DFLDDT(3)) = (-((UVELLOC *(__value__(FLDNOW(1)) -
     >  __value__(FLDNOW(3)))) / VOL(3)))
      ENDIF
      DO L = 1, 3, 1
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  DELTA_T * 2.0D00)
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_0)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_1)
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_2)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_3)
        OpenAD_tmp_9 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3)))
        OpenAD_tmp_8 = (UVELLOC * OpenAD_tmp_9)
        __value__(DFLDDT(3)) = (OpenAD_tmp_8 / VOL(3))
        OpenAD_lin_23 = UVELLOC
        OpenAD_lin_20 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_4 = (OpenAD_lin_23 * OpenAD_lin_20)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_4)
        OpenAD_Symbol_3 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_3)
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_5)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_6)
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_7)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_8)
        OpenAD_tmp_20 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3)))
        OpenAD_tmp_19 = (UVELLOC * OpenAD_tmp_20)
        __value__(DFLDDT(3)) = (-(OpenAD_tmp_19 / VOL(3)))
        OpenAD_lin_50 = UVELLOC
        OpenAD_lin_47 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_9 = (OpenAD_lin_50 * OpenAD_lin_47 * INT((-1_w2f__i8
     > )))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_9)
        OpenAD_Symbol_4 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_4)
      ENDIF
      OpenAD_Symbol_5 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_tmp_10 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_tmp_10)
        OpenAD_lin_25 = OpenAD_tmp_10
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_25)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_5 = (INT(OpenAD_Symbol_5) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_5)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_0)
      OpenAD_Symbol_1 = 1
      DO WHILE(INT(OpenAD_Symbol_1) .LE. INT(OpenAD_Symbol_0))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_17)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_18)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_18, __deriv__(FLDNEW(INT(
     > OpenAD_Symbol_17))), __deriv__(DFLDDT(INT(OpenAD_Symbol_17))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNEW(INT(OpenAD_Symbol_17))))
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_2)
      IF(OpenAD_Symbol_2 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_12)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_12, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prop_2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_13)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_14)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_13, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_14, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_15)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_16)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_15, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_16, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_19)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_19, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prop_5))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_20)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_21)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_20, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_21, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prop_4))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_22)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_23)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_22, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_23, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prop_3))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
      ENDIF
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_0)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_1)
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_2)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_3)
        OpenAD_tmp_9 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3)))
        OpenAD_tmp_8 = (UVELLOC * OpenAD_tmp_9)
        __value__(DFLDDT(3)) = (OpenAD_tmp_8 / VOL(3))
        OpenAD_lin_23 = UVELLOC
        OpenAD_lin_20 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_4 = (OpenAD_lin_23 * OpenAD_lin_20)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_4)
        OpenAD_Symbol_9 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_9)
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_5)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_6)
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
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_7)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_8)
        OpenAD_tmp_20 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3)))
        OpenAD_tmp_19 = (UVELLOC * OpenAD_tmp_20)
        __value__(DFLDDT(3)) = (-(OpenAD_tmp_19 / VOL(3)))
        OpenAD_lin_50 = UVELLOC
        OpenAD_lin_47 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_9 = (OpenAD_lin_50 * OpenAD_lin_47 * INT((-1_w2f__i8
     > )))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_9)
        OpenAD_Symbol_10 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_10)
      ENDIF
      OpenAD_Symbol_11 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_tmp_10 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_tmp_10)
        OpenAD_lin_25 = OpenAD_tmp_10
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_25)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_11 = (INT(OpenAD_Symbol_11) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_11)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_6)
      OpenAD_Symbol_7 = 1
      DO WHILE(INT(OpenAD_Symbol_7) .LE. INT(OpenAD_Symbol_6))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_17)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_18)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_18, __deriv__(FLDNEW(INT(
     > OpenAD_Symbol_17))), __deriv__(DFLDDT(INT(OpenAD_Symbol_17))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNEW(INT(OpenAD_Symbol_17))))
        OpenAD_Symbol_7 = INT(OpenAD_Symbol_7) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_8)
      IF(OpenAD_Symbol_8 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_12)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_12, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prop_2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_13)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_14)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_13, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_14, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_15)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_16)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_15, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_16, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_19)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_19, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prop_5))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_5))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_20)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_21)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_20, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_21, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prop_4))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_4))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_22)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_23)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_22, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_23, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prop_3))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
      ENDIF
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
