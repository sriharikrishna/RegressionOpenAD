
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
      MODULE aglobalmodule
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      CHARACTER(3) GLOBALSTRING
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(X, Y)
      use w2f__types
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      CHARACTER(3) LOCALSTRING
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        IF(GLOBALSTRING .EQ. 'yes') THEN
          __value__(Y(INT(I))) = (__value__(Y(I)) + __value__(X(I)) *
     >  __value__(X(I)))
        ENDIF
        IF(GLOBALSTRING .EQ. 'no') THEN
          __value__(Y(INT(I))) = (__value__(Y(I)) + __value__(X(I)) *
     >  __value__(X(I)) * 2.0D00)
        ENDIF
      END DO
      GLOBALSTRING = 'either'
      LOCALSTRING = GLOBALSTRING
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        IF(GLOBALSTRING .EQ. 'yes') THEN
          __value__(Y(INT(I))) = (__value__(Y(I)) + __value__(X(I)) *
     >  __value__(X(I)))
          OpenAD_Symbol_0 = __value__(X(I))
          OpenAD_Symbol_1 = __value__(X(I))
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_0)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_1)
        ENDIF
        IF(GLOBALSTRING .EQ. 'no') THEN
          OpenAD_Symbol_2 = (__value__(X(I)) * __value__(X(I)))
          __value__(Y(INT(I))) = (__value__(Y(I)) + OpenAD_Symbol_2 *
     >  2.0D00)
          OpenAD_Symbol_4 = __value__(X(I))
          OpenAD_Symbol_5 = __value__(X(I))
          OpenAD_Symbol_6 = (OpenAD_Symbol_4 * 2.0D00)
          OpenAD_Symbol_7 = (OpenAD_Symbol_5 * 2.0D00)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_6)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_7)
        ENDIF
      END DO
C     $OpenAD$ INLINE push_s(subst)
      CALL push_s(GLOBALSTRING)
      GLOBALSTRING = 'either'
      LOCALSTRING = GLOBALSTRING
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_s(subst)
      CALL pop_s(GLOBALSTRING)
      I = 1 + 1 *((2 - 1) / 1)
      DO WHILE(I .GE. 1)
        IF(GLOBALSTRING .EQ. 'no') THEN
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_21)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_22)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_21, __deriv__(Y(I)), __deriv__(X(I))
     > )
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_22, __deriv__(Y(I)), __deriv__(X(I))
     > )
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(I)), __deriv__(OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(I)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(I)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
        ENDIF
        IF(GLOBALSTRING .EQ. 'yes') THEN
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_18)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_19)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_18, __deriv__(Y(I)), __deriv__(X(I))
     > )
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_19, __deriv__(Y(I)), __deriv__(X(I))
     > )
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(I)), __deriv__(OpenAD_prop_0))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(I)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(I)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        ENDIF
        I = I - 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_string_scalar(subst)
      CALL cp_arg_store_string_scalar(GLOBALSTRING)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(X))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(Y))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(Y))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(X))
C     $OpenAD$ INLINE cp_arg_restore_string_scalar(subst)
      CALL cp_arg_restore_string_scalar(GLOBALSTRING)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_string_scalar(subst)
      CALL cp_arg_store_string_scalar(GLOBALSTRING)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(Y))
C     $OpenAD$ INLINE cp_arg_store_string_scalar(subst)
      CALL cp_arg_store_string_scalar(GLOBALSTRING)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(X))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(Y))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(Y))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(X))
C     $OpenAD$ INLINE cp_arg_restore_string_scalar(subst)
      CALL cp_arg_restore_string_scalar(GLOBALSTRING)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(Y))
C     $OpenAD$ INLINE cp_arg_restore_string_scalar(subst)
      CALL cp_arg_restore_string_scalar(GLOBALSTRING)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      OpenAD_Symbol_12 = 0_w2f__i8
      DO I = 1, 2, 1
        IF(GLOBALSTRING .EQ. 'yes') THEN
          __value__(Y(INT(I))) = (__value__(Y(I)) + __value__(X(I)) *
     >  __value__(X(I)))
          OpenAD_Symbol_0 = __value__(X(I))
          OpenAD_Symbol_1 = __value__(X(I))
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_0)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_1)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
          OpenAD_Symbol_13 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_13)
        ELSE
          OpenAD_Symbol_14 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_14)
        ENDIF
        IF(GLOBALSTRING .EQ. 'no') THEN
          OpenAD_Symbol_2 = (__value__(X(I)) * __value__(X(I)))
          __value__(Y(INT(I))) = (__value__(Y(I)) + OpenAD_Symbol_2 *
     >  2.0D00)
          OpenAD_Symbol_4 = __value__(X(I))
          OpenAD_Symbol_5 = __value__(X(I))
          OpenAD_Symbol_6 = (OpenAD_Symbol_4 * 2.0D00)
          OpenAD_Symbol_7 = (OpenAD_Symbol_5 * 2.0D00)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_6)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_7)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
          OpenAD_Symbol_15 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_15)
        ELSE
          OpenAD_Symbol_16 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_16)
        ENDIF
        OpenAD_Symbol_12 = (INT(OpenAD_Symbol_12) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_12)
      GLOBALSTRING = 'either'
      LOCALSTRING = GLOBALSTRING
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_8)
      OpenAD_Symbol_9 = 1
      DO WHILE(INT(OpenAD_Symbol_9) .LE. INT(OpenAD_Symbol_8))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_10)
        IF(OpenAD_Symbol_10 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_20)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_21)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_22)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_21, __deriv__(Y(INT(OpenAD_Symbol_20
     > ))), __deriv__(X(INT(OpenAD_Symbol_20))))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_22, __deriv__(Y(INT(OpenAD_Symbol_20
     > ))), __deriv__(X(INT(OpenAD_Symbol_20))))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(INT(OpenAD_Symbol_20))), __deriv__(
     > OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_20))))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(INT(
     > OpenAD_Symbol_20))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
        ENDIF
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_11)
        IF(OpenAD_Symbol_11 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_17)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_18)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_19)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_18, __deriv__(Y(INT(OpenAD_Symbol_17
     > ))), __deriv__(X(INT(OpenAD_Symbol_17))))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_19, __deriv__(Y(INT(OpenAD_Symbol_17
     > ))), __deriv__(X(INT(OpenAD_Symbol_17))))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(INT(OpenAD_Symbol_17))), __deriv__(
     > OpenAD_prop_0))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_17))))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(INT(
     > OpenAD_Symbol_17))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        ENDIF
        OpenAD_Symbol_9 = INT(OpenAD_Symbol_9) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = 1.0
      __value__(Y(2)) = 1.0
      GLOBALSTRING = 'yes'
      CALL foo(__deriv__(X), __deriv__(Y))
      GLOBALSTRING = 'both'
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = 1.0
      __value__(Y(2)) = 1.0
      GLOBALSTRING = 'yes'
      CALL foo(__deriv__(X), __deriv__(Y))
      GLOBALSTRING = 'both'
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL foo(__deriv__(X), __deriv__(Y))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_string_scalar(subst)
      CALL cp_arg_store_string_scalar(GLOBALSTRING)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_string_scalar(subst)
      CALL cp_arg_restore_string_scalar(GLOBALSTRING)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_string_scalar(subst)
      CALL cp_arg_store_string_scalar(GLOBALSTRING)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_string_scalar(subst)
      CALL cp_arg_restore_string_scalar(GLOBALSTRING)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = 1.0
      __value__(Y(2)) = 1.0
      GLOBALSTRING = 'yes'
      CALL foo(__deriv__(X), __deriv__(Y))
      GLOBALSTRING = 'both'
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL foo(__deriv__(X), __deriv__(Y))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
