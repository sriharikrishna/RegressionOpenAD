
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
      SUBROUTINE foo(X, Y)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      __value__(Y) = (__value__(X(1)) * __value__(X(2)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      __value__(Y) = (__value__(X(1)) * __value__(X(2)))
      OpenAD_Symbol_2 = __value__(X(2))
      OpenAD_Symbol_3 = __value__(X(1))
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_2)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_3)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_13)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_14)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_13, __deriv__(Y), __deriv__(X(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_14, __deriv__(Y), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(X))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(X))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(Y))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(X))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(X))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(Y))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      __value__(Y) = (__value__(X(1)) * __value__(X(2)))
      OpenAD_Symbol_2 = __value__(X(2))
      OpenAD_Symbol_3 = __value__(X(1))
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_2)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_3)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_13)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_14)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_13, __deriv__(Y), __deriv__(X(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_14, __deriv__(Y), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_0(1 : 2, 1 : 2)
      TYPE (OpenADTy_active) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      TYPE (OpenADTy_active) OpenAD_Symbol_17(1 : 2, 1 : 2)
      TYPE (OpenADTy_active) OpenAD_Symbol_18
      TYPE (OpenADTy_active) OpenAD_Symbol_19(1 : 2, 1 : 2)
      TYPE (OpenADTy_active) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) APX(1 : 2, 1 : 2)
      TYPE (OpenADTy_active) AX(1 : 2, 1 : 2)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      REAL(w2f__8) PY
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface 
        SUBROUTINE foo(X, Y)
        use w2f__types
        TYPE (OpenADTy_active) X(1 : 2)
        TYPE (OpenADTy_active) Y
        END SUBROUTINE

      end interface 
      
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          __value__(AX(INT(I), INT(J))) = __value__(X(I))
          APX(INT(I), INT(J)) = (I * DBLE(4.0))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        CALL foo(__deriv__(AX(I, 1 : 2)), __deriv__(Y(1)))
C       $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
        CALL convert_p2a_matrix(__deriv__(OpenAD_Symbol_0), APX)
C       $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
        CALL convert_p2a_scalar(__deriv__(OpenAD_Symbol_1), PY)
        CALL foo(__deriv__(OpenAD_Symbol_0(I, 1 : 2)), __deriv__(
     > OpenAD_Symbol_1))
C       $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
        CALL convert_a2p_matrix(APX, __deriv__(OpenAD_Symbol_0))
C       $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
        CALL convert_a2p_scalar(PY, __deriv__(OpenAD_Symbol_1))
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          __value__(AX(INT(I), INT(J))) = __value__(X(I))
          APX(INT(I), INT(J)) = (I * DBLE(4.0))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        CALL foo(__deriv__(AX(I, 1 : 2)), __deriv__(Y(1)))
C       $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
        CALL convert_p2a_matrix(__deriv__(OpenAD_Symbol_0), APX)
C       $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
        CALL convert_p2a_scalar(__deriv__(OpenAD_Symbol_1), PY)
        CALL foo(__deriv__(OpenAD_Symbol_0(I, 1 : 2)), __deriv__(
     > OpenAD_Symbol_1))
C       $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
        CALL convert_a2p_matrix(APX, __deriv__(OpenAD_Symbol_0))
C       $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
        CALL convert_a2p_scalar(PY, __deriv__(OpenAD_Symbol_1))
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      I = 1 + 1 *((2 - 1) / 1)
      DO WHILE(I .GE. 1)
        CALL foo(__deriv__(OpenAD_Symbol_19(I, 1 : 2)), __deriv__(
     > OpenAD_Symbol_20))
        CALL foo(__deriv__(AX(I, 1 : 2)), __deriv__(Y(1)))
        I = I - 1
      END DO
      I = 1 + 1 *((2 - 1) / 1)
      DO WHILE(I .GE. 1)
        J = 1 + 1 *((2 - 1) / 1)
        DO WHILE(J .GE. 1)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(AX(I, J)), __deriv__(X(I)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(AX(I, J)))
          J = J - 1
        END DO
        I = I - 1
      END DO
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
C$OPENAD XXX Simple loop
      OpenAD_Symbol_10 = 0_w2f__i8
      DO I = 1, 2, 1
        OpenAD_Symbol_11 = 0_w2f__i8
        DO J = 1, 2, 1
          __value__(AX(INT(I), INT(J))) = __value__(X(I))
          APX(INT(I), INT(J)) = (I * DBLE(4.0))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_11 = (INT(OpenAD_Symbol_11) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_11)
        OpenAD_Symbol_10 = (INT(OpenAD_Symbol_10) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_10)
C$OPENAD XXX Simple loop
      OpenAD_Symbol_12 = 0_w2f__i8
      DO I = 1, 2, 1
        CALL foo(__deriv__(AX(I, 1 : 2)), __deriv__(Y(1)))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(I)
C       $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
        CALL convert_p2a_matrix(__deriv__(OpenAD_Symbol_0), APX)
C       $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
        CALL convert_p2a_scalar(__deriv__(OpenAD_Symbol_1), PY)
        CALL foo(__deriv__(OpenAD_Symbol_0(I, 1 : 2)), __deriv__(
     > OpenAD_Symbol_1))
C       $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
        CALL convert_a2p_matrix(APX, __deriv__(OpenAD_Symbol_0))
C       $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
        CALL convert_a2p_scalar(PY, __deriv__(OpenAD_Symbol_1))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(I)
        OpenAD_Symbol_12 = (INT(OpenAD_Symbol_12) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_12)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_4)
      OpenAD_Symbol_5 = 1
      DO WHILE(INT(OpenAD_Symbol_5) .LE. INT(OpenAD_Symbol_4))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(I)
        CALL foo(__deriv__(OpenAD_Symbol_17(I, 1 : 2)), __deriv__(
     > OpenAD_Symbol_18))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(I)
        CALL foo(__deriv__(AX(I, 1 : 2)), __deriv__(Y(1)))
        OpenAD_Symbol_5 = INT(OpenAD_Symbol_5) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_6)
      OpenAD_Symbol_7 = 1
      DO WHILE(INT(OpenAD_Symbol_7) .LE. INT(OpenAD_Symbol_6))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_8)
        OpenAD_Symbol_9 = 1
        DO WHILE(INT(OpenAD_Symbol_9) .LE. INT(OpenAD_Symbol_8))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_15)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_16)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(AX(INT(OpenAD_Symbol_16), INT(
     > OpenAD_Symbol_15))), __deriv__(X(INT(OpenAD_Symbol_16))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(AX(INT(OpenAD_Symbol_16), INT(
     > OpenAD_Symbol_15))))
          OpenAD_Symbol_9 = INT(OpenAD_Symbol_9) + 1
        END DO
        OpenAD_Symbol_7 = INT(OpenAD_Symbol_7) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
