
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
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
      TYPE (OpenADTy_active) OpenAD_prop_5
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_76
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_9
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
        OpenAD_Symbol_7 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_4 = (GAMMALOC * OpenAD_Symbol_7)
        OpenAD_Symbol_11 = (__value__(FLDNOW(3)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_4 +
     >  UVELLOC * OpenAD_Symbol_11)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_0 / VOL(1))
        OpenAD_Symbol_9 = GAMMALOC
        OpenAD_Symbol_6 = VOL(1)
        OpenAD_Symbol_13 = UVELLOC
        OpenAD_Symbol_1 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_72 = (OpenAD_Symbol_13 * OpenAD_Symbol_1)
        OpenAD_Symbol_73 = (INT((-1_w2f__i8)) * OpenAD_Symbol_9 *
     >  OpenAD_Symbol_6 * OpenAD_Symbol_1)
        CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(3)))
        CALL dec_deriv(__deriv__(OpenAD_prop_0), __deriv__(FLDNOW(1)))
        CALL sax(OpenAD_Symbol_72, __deriv__(OpenAD_prop_0), __deriv__(
     > DFLDDT(1)))
        CALL saxpy(OpenAD_Symbol_73, __deriv__(FLDNOW(1)), __deriv__(
     > DFLDDT(1)))
        OpenAD_Symbol_21 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_18 = (GAMMALOC * OpenAD_Symbol_21)
        OpenAD_Symbol_25 = (__value__(FLDNOW(1)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_14 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_18 +
     >  UVELLOC * OpenAD_Symbol_25)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_14 / VOL(2))
        OpenAD_Symbol_23 = GAMMALOC
        OpenAD_Symbol_20 = VOL(2)
        OpenAD_Symbol_27 = UVELLOC
        OpenAD_Symbol_15 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_74 = (OpenAD_Symbol_27 * OpenAD_Symbol_15)
        OpenAD_Symbol_75 = (INT((-1_w2f__i8)) * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_20 * OpenAD_Symbol_15)
        CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(1)))
        CALL dec_deriv(__deriv__(OpenAD_prop_1), __deriv__(FLDNOW(2)))
        CALL sax(OpenAD_Symbol_74, __deriv__(OpenAD_prop_1), __deriv__(
     > DFLDDT(2)))
        CALL saxpy(OpenAD_Symbol_75, __deriv__(FLDNOW(2)), __deriv__(
     > DFLDDT(2)))
        OpenAD_Symbol_31 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_28 = (UVELLOC * OpenAD_Symbol_31)
        __value__(DFLDDT(3)) = (OpenAD_Symbol_28 / VOL(3))
        OpenAD_Symbol_33 = UVELLOC
        OpenAD_Symbol_29 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_76 = (OpenAD_Symbol_33 * OpenAD_Symbol_29)
        CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(2)))
        CALL dec_deriv(__deriv__(OpenAD_prop_2), __deriv__(FLDNOW(3)))
        CALL sax(OpenAD_Symbol_76, __deriv__(OpenAD_prop_2), __deriv__(
     > DFLDDT(3)))
      ELSE
        OpenAD_Symbol_45 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_42 = (GAMMALOC * OpenAD_Symbol_45)
        OpenAD_Symbol_49 = (__value__(FLDNOW(2)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_38 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_42 -
     >  UVELLOC * OpenAD_Symbol_49)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_38 / VOL(1))
        OpenAD_Symbol_47 = GAMMALOC
        OpenAD_Symbol_44 = VOL(1)
        OpenAD_Symbol_51 = UVELLOC
        OpenAD_Symbol_39 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_77 = (OpenAD_Symbol_51 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_39)
        OpenAD_Symbol_78 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47 *
     >  OpenAD_Symbol_44 * OpenAD_Symbol_39)
        CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(2)))
        CALL dec_deriv(__deriv__(OpenAD_prop_3), __deriv__(FLDNOW(1)))
        CALL sax(OpenAD_Symbol_77, __deriv__(OpenAD_prop_3), __deriv__(
     > DFLDDT(1)))
        CALL saxpy(OpenAD_Symbol_78, __deriv__(FLDNOW(1)), __deriv__(
     > DFLDDT(1)))
        OpenAD_Symbol_59 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_56 = (GAMMALOC * OpenAD_Symbol_59)
        OpenAD_Symbol_63 = (__value__(FLDNOW(3)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_52 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_56 -
     >  UVELLOC * OpenAD_Symbol_63)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_52 / VOL(2))
        OpenAD_Symbol_61 = GAMMALOC
        OpenAD_Symbol_58 = VOL(2)
        OpenAD_Symbol_65 = UVELLOC
        OpenAD_Symbol_53 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_79 = (OpenAD_Symbol_65 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_53)
        OpenAD_Symbol_80 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61 *
     >  OpenAD_Symbol_58 * OpenAD_Symbol_53)
        CALL setderiv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(3)))
        CALL dec_deriv(__deriv__(OpenAD_prop_4), __deriv__(FLDNOW(2)))
        CALL sax(OpenAD_Symbol_79, __deriv__(OpenAD_prop_4), __deriv__(
     > DFLDDT(2)))
        CALL saxpy(OpenAD_Symbol_80, __deriv__(FLDNOW(2)), __deriv__(
     > DFLDDT(2)))
        OpenAD_Symbol_69 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_66 = (UVELLOC * OpenAD_Symbol_69)
        __value__(DFLDDT(3)) = (-(OpenAD_Symbol_66 / VOL(3)))
        OpenAD_Symbol_71 = UVELLOC
        OpenAD_Symbol_67 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_81 = (OpenAD_Symbol_71 * OpenAD_Symbol_67 * INT((
     > -1_w2f__i8)))
        CALL setderiv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(1)))
        CALL dec_deriv(__deriv__(OpenAD_prop_5), __deriv__(FLDNOW(3)))
        CALL sax(OpenAD_Symbol_81, __deriv__(OpenAD_prop_5), __deriv__(
     > DFLDDT(3)))
      ENDIF
      DO L = 1, 3, 1
        OpenAD_Symbol_35 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_Symbol_35)
        OpenAD_Symbol_36 = OpenAD_Symbol_35
        CALL sax(OpenAD_Symbol_36, __deriv__(DFLDDT(L)), __deriv__(
     > FLDNEW(L)))
      END DO
      END SUBROUTINE
