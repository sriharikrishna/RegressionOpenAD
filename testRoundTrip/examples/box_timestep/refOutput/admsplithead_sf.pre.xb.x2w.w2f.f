
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
      use oad_intrinsics
      use oad_intrinsics
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
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_36
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_44
      REAL(w2f__8) OpenAD_lin_45
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_49
      REAL(w2f__8) OpenAD_lin_51
      REAL(w2f__8) OpenAD_lin_52
      REAL(w2f__8) OpenAD_lin_53
      REAL(w2f__8) OpenAD_lin_56
      REAL(w2f__8) OpenAD_lin_58
      REAL(w2f__8) OpenAD_lin_59
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_61
      REAL(w2f__8) OpenAD_lin_63
      REAL(w2f__8) OpenAD_lin_65
      REAL(w2f__8) OpenAD_lin_66
      REAL(w2f__8) OpenAD_lin_67
      REAL(w2f__8) OpenAD_lin_69
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_71
      REAL(w2f__8) OpenAD_lin_9
      TYPE (OpenADTy_active) OpenAD_prp_0
      TYPE (OpenADTy_active) OpenAD_prp_1
      TYPE (OpenADTy_active) OpenAD_prp_2
      TYPE (OpenADTy_active) OpenAD_prp_3
      TYPE (OpenADTy_active) OpenAD_prp_4
      TYPE (OpenADTy_active) OpenAD_prp_5
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
        OpenAD_lin_7 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_lin_4 = (GAMMALOC * OpenAD_lin_7)
        OpenAD_lin_11 = (__value__(FLDNOW(3)) - __value__(FLDNOW(1)))
        OpenAD_lin_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_lin_4 + UVELLOC
     >  * OpenAD_lin_11)
        __value__(DFLDDT(1)) = (OpenAD_lin_0 / VOL(1))
        OpenAD_lin_9 = GAMMALOC
        OpenAD_lin_6 = VOL(1)
        OpenAD_lin_13 = UVELLOC
        OpenAD_lin_1 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_acc_0 = (OpenAD_lin_13 * OpenAD_lin_1)
        OpenAD_acc_1 = (INT((-1_w2f__i8)) * OpenAD_lin_9 * OpenAD_lin_6
     >  * OpenAD_lin_1)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_0)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_1)
        OpenAD_lin_21 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_lin_18 = (GAMMALOC * OpenAD_lin_21)
        OpenAD_lin_25 = (__value__(FLDNOW(1)) - __value__(FLDNOW(2)))
        OpenAD_lin_14 = (EXTFORLOC(2) + VOL(2) * OpenAD_lin_18 +
     >  UVELLOC * OpenAD_lin_25)
        __value__(DFLDDT(2)) = (OpenAD_lin_14 / VOL(2))
        OpenAD_lin_23 = GAMMALOC
        OpenAD_lin_20 = VOL(2)
        OpenAD_lin_27 = UVELLOC
        OpenAD_lin_15 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_acc_2 = (OpenAD_lin_27 * OpenAD_lin_15)
        OpenAD_acc_3 = (INT((-1_w2f__i8)) * OpenAD_lin_23 *
     >  OpenAD_lin_20 * OpenAD_lin_15)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_2)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_3)
        OpenAD_lin_31 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3)))
        OpenAD_lin_28 = (UVELLOC * OpenAD_lin_31)
        __value__(DFLDDT(3)) = (OpenAD_lin_28 / VOL(3))
        OpenAD_lin_33 = UVELLOC
        OpenAD_lin_29 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_4 = (OpenAD_lin_33 * OpenAD_lin_29)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_4)
        OpenAD_Symbol_3 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_3)
      ELSE
        OpenAD_lin_45 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_lin_42 = (GAMMALOC * OpenAD_lin_45)
        OpenAD_lin_49 = (__value__(FLDNOW(2)) - __value__(FLDNOW(1)))
        OpenAD_lin_38 = (EXTFORLOC(1) + VOL(1) * OpenAD_lin_42 -
     >  UVELLOC * OpenAD_lin_49)
        __value__(DFLDDT(1)) = (OpenAD_lin_38 / VOL(1))
        OpenAD_lin_47 = GAMMALOC
        OpenAD_lin_44 = VOL(1)
        OpenAD_lin_51 = UVELLOC
        OpenAD_lin_39 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_acc_5 = (OpenAD_lin_51 * INT((-1_w2f__i8)) *
     >  OpenAD_lin_39)
        OpenAD_acc_6 = (INT((-1_w2f__i8)) * OpenAD_lin_47 *
     >  OpenAD_lin_44 * OpenAD_lin_39)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_5)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_6)
        OpenAD_lin_59 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_lin_56 = (GAMMALOC * OpenAD_lin_59)
        OpenAD_lin_63 = (__value__(FLDNOW(3)) - __value__(FLDNOW(2)))
        OpenAD_lin_52 = (EXTFORLOC(2) + VOL(2) * OpenAD_lin_56 -
     >  UVELLOC * OpenAD_lin_63)
        __value__(DFLDDT(2)) = (OpenAD_lin_52 / VOL(2))
        OpenAD_lin_61 = GAMMALOC
        OpenAD_lin_58 = VOL(2)
        OpenAD_lin_65 = UVELLOC
        OpenAD_lin_53 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_acc_7 = (OpenAD_lin_65 * INT((-1_w2f__i8)) *
     >  OpenAD_lin_53)
        OpenAD_acc_8 = (INT((-1_w2f__i8)) * OpenAD_lin_61 *
     >  OpenAD_lin_58 * OpenAD_lin_53)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_7)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_8)
        OpenAD_lin_69 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3)))
        OpenAD_lin_66 = (UVELLOC * OpenAD_lin_69)
        __value__(DFLDDT(3)) = (-(OpenAD_lin_66 / VOL(3)))
        OpenAD_lin_71 = UVELLOC
        OpenAD_lin_67 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_9 = (OpenAD_lin_71 * OpenAD_lin_67 * INT((-1_w2f__i8
     > )))
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_9)
        OpenAD_Symbol_4 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_4)
      ENDIF
      OpenAD_Symbol_5 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_lin_35 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_lin_35)
        OpenAD_lin_36 = OpenAD_lin_35
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_lin_36)
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
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_18)
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
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_12)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_12, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prp_2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_2), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_2), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_2))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_13)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_14)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_13, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_14, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prp_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_1), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_1), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_1))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_15)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_16)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_15, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_16, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prp_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_0), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_0), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_0))
      ELSE
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_19)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_19, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prp_5))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_5), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_5), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_5))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_20)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_21)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_20, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_21, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prp_4))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_4), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_4), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_4))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_22)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_23)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_22, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_23, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prp_3))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_3), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_3), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_3))
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
        OpenAD_lin_7 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_lin_4 = (GAMMALOC * OpenAD_lin_7)
        OpenAD_lin_11 = (__value__(FLDNOW(3)) - __value__(FLDNOW(1)))
        OpenAD_lin_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_lin_4 + UVELLOC
     >  * OpenAD_lin_11)
        __value__(DFLDDT(1)) = (OpenAD_lin_0 / VOL(1))
        OpenAD_lin_9 = GAMMALOC
        OpenAD_lin_6 = VOL(1)
        OpenAD_lin_13 = UVELLOC
        OpenAD_lin_1 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_acc_0 = (OpenAD_lin_13 * OpenAD_lin_1)
        OpenAD_acc_1 = (INT((-1_w2f__i8)) * OpenAD_lin_9 * OpenAD_lin_6
     >  * OpenAD_lin_1)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_0)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_1)
        OpenAD_lin_21 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_lin_18 = (GAMMALOC * OpenAD_lin_21)
        OpenAD_lin_25 = (__value__(FLDNOW(1)) - __value__(FLDNOW(2)))
        OpenAD_lin_14 = (EXTFORLOC(2) + VOL(2) * OpenAD_lin_18 +
     >  UVELLOC * OpenAD_lin_25)
        __value__(DFLDDT(2)) = (OpenAD_lin_14 / VOL(2))
        OpenAD_lin_23 = GAMMALOC
        OpenAD_lin_20 = VOL(2)
        OpenAD_lin_27 = UVELLOC
        OpenAD_lin_15 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_acc_2 = (OpenAD_lin_27 * OpenAD_lin_15)
        OpenAD_acc_3 = (INT((-1_w2f__i8)) * OpenAD_lin_23 *
     >  OpenAD_lin_20 * OpenAD_lin_15)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_2)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_3)
        OpenAD_lin_31 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3)))
        OpenAD_lin_28 = (UVELLOC * OpenAD_lin_31)
        __value__(DFLDDT(3)) = (OpenAD_lin_28 / VOL(3))
        OpenAD_lin_33 = UVELLOC
        OpenAD_lin_29 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_4 = (OpenAD_lin_33 * OpenAD_lin_29)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_4)
        OpenAD_Symbol_9 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_9)
      ELSE
        OpenAD_lin_45 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_lin_42 = (GAMMALOC * OpenAD_lin_45)
        OpenAD_lin_49 = (__value__(FLDNOW(2)) - __value__(FLDNOW(1)))
        OpenAD_lin_38 = (EXTFORLOC(1) + VOL(1) * OpenAD_lin_42 -
     >  UVELLOC * OpenAD_lin_49)
        __value__(DFLDDT(1)) = (OpenAD_lin_38 / VOL(1))
        OpenAD_lin_47 = GAMMALOC
        OpenAD_lin_44 = VOL(1)
        OpenAD_lin_51 = UVELLOC
        OpenAD_lin_39 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_acc_5 = (OpenAD_lin_51 * INT((-1_w2f__i8)) *
     >  OpenAD_lin_39)
        OpenAD_acc_6 = (INT((-1_w2f__i8)) * OpenAD_lin_47 *
     >  OpenAD_lin_44 * OpenAD_lin_39)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_5)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_6)
        OpenAD_lin_59 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_lin_56 = (GAMMALOC * OpenAD_lin_59)
        OpenAD_lin_63 = (__value__(FLDNOW(3)) - __value__(FLDNOW(2)))
        OpenAD_lin_52 = (EXTFORLOC(2) + VOL(2) * OpenAD_lin_56 -
     >  UVELLOC * OpenAD_lin_63)
        __value__(DFLDDT(2)) = (OpenAD_lin_52 / VOL(2))
        OpenAD_lin_61 = GAMMALOC
        OpenAD_lin_58 = VOL(2)
        OpenAD_lin_65 = UVELLOC
        OpenAD_lin_53 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_acc_7 = (OpenAD_lin_65 * INT((-1_w2f__i8)) *
     >  OpenAD_lin_53)
        OpenAD_acc_8 = (INT((-1_w2f__i8)) * OpenAD_lin_61 *
     >  OpenAD_lin_58 * OpenAD_lin_53)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_7)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_8)
        OpenAD_lin_69 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3)))
        OpenAD_lin_66 = (UVELLOC * OpenAD_lin_69)
        __value__(DFLDDT(3)) = (-(OpenAD_lin_66 / VOL(3)))
        OpenAD_lin_71 = UVELLOC
        OpenAD_lin_67 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_acc_9 = (OpenAD_lin_71 * OpenAD_lin_67 * INT((-1_w2f__i8
     > )))
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_9)
        OpenAD_Symbol_10 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_10)
      ENDIF
      OpenAD_Symbol_11 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_lin_35 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_lin_35)
        OpenAD_lin_36 = OpenAD_lin_35
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_lin_36)
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
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_18)
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
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_12)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_12, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prp_2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_2), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_2), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_2))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_13)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_14)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_13, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_14, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prp_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_1), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_1), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_1))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_15)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_16)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_15, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_16, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prp_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_0), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_0), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_0))
      ELSE
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_19)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_19, __deriv__(DFLDDT(3)), __deriv__(
     > OpenAD_prp_5))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_5), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_5), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_5))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_20)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_21)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_20, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_21, __deriv__(DFLDDT(2)), __deriv__(
     > OpenAD_prp_4))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_4), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_4), __deriv__(FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_4))
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_22)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_23)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_22, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_23, __deriv__(DFLDDT(1)), __deriv__(
     > OpenAD_prp_3))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
C       $OpenAD$ INLINE DecDeriv(subst,subst)
        CALL DecDeriv(__deriv__(OpenAD_prp_3), __deriv__(FLDNOW(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_3), __deriv__(FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_3))
      ENDIF
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
