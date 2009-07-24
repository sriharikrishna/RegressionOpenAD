
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(J, X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) J
      TYPE (OpenADTy_active) X(1 : J)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i8) t__1
      INTEGER(w2f__i8) t__2
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
      CALL FOO()
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = 1.0
      CALL FOO()
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL FOO()
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
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
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(t__1)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(t__2)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(t__2)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(t__1)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = 1.0
      CALL FOO()
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL FOO()
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      CONTAINS

        SUBROUTINE FOO()
        use w2f__types
        IMPLICIT NONE
C
C       **** Global Variables & Derived Type Definitions ****
C
        REAL(w2f__8) OpenAD_Symbol_0
        INTEGER(w2f__i8) OpenAD_Symbol_1
        INTEGER(w2f__i8) OpenAD_Symbol_2
        INTEGER(w2f__i8) OpenAD_Symbol_3
        INTEGER(w2f__i8) OpenAD_Symbol_4
        INTEGER(w2f__i8) OpenAD_Symbol_5
        INTEGER(w2f__i8) OpenAD_Symbol_6
        REAL(w2f__8) OpenAD_lin_0
        REAL(w2f__8) OpenAD_lin_1
        TYPE (OpenADTy_active) OpenAD_prop_0
C
C       **** Local Variables and Functions ****
C
        INTEGER(w2f__i4) I
        INTEGER(w2f__i8) OpenAD_Symbol_7
        REAL(w2f__8) OpenAD_Symbol_8
        REAL(w2f__8) OpenAD_Symbol_9
C
C       **** Statements ****
C
C       $OpenAD$ BEGIN REPLACEMENT 1
        DO I = 1, J, 1
          __value__(Y(1)) = (__value__(X(J)) * __value__(Y(1)))
        END DO
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 2
        OpenAD_Symbol_3 = 0_w2f__i8
        DO I = 1, J, 1
          OpenAD_Symbol_0 = (__value__(X(J)) * __value__(Y(1)))
          OpenAD_lin_0 = __value__(Y(1))
          OpenAD_lin_1 = __value__(X(J))
          __value__(Y(1)) = OpenAD_Symbol_0
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_1)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_3)
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 3
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_1)
        OpenAD_Symbol_2 = 1
        DO WHILE(INT(OpenAD_Symbol_2) .LE. INT(OpenAD_Symbol_1))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_7)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_8)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_9)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_8, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_9, __deriv__(Y(1)), __deriv__(X(INT(
     > OpenAD_Symbol_7))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
          OpenAD_Symbol_2 = INT(OpenAD_Symbol_2) + 1
        END DO
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 4
C       $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
        CALL cp_arg_store_integer_scalar(J)
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(X))
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(Y))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 5
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 6
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(Y))
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(X))
C       $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
        CALL cp_arg_restore_integer_scalar(J)
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 7
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 8
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(Y))
C       $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
        CALL cp_arg_store_integer_scalar(J)
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(X))
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(Y))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 9
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(Y))
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(X))
C       $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
        CALL cp_arg_restore_integer_scalar(J)
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(Y))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 10
        OpenAD_Symbol_6 = 0_w2f__i8
        DO I = 1, J, 1
          OpenAD_Symbol_0 = (__value__(X(J)) * __value__(Y(1)))
          OpenAD_lin_0 = __value__(Y(1))
          OpenAD_lin_1 = __value__(X(J))
          __value__(Y(1)) = OpenAD_Symbol_0
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_1)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_6 = (INT(OpenAD_Symbol_6) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_6)
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 11
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_4)
        OpenAD_Symbol_5 = 1
        DO WHILE(INT(OpenAD_Symbol_5) .LE. INT(OpenAD_Symbol_4))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_7)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_8)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_9)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_8, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_9, __deriv__(Y(1)), __deriv__(X(INT(
     > OpenAD_Symbol_7))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
          OpenAD_Symbol_5 = INT(OpenAD_Symbol_5) + 1
        END DO
C       $OpenAD$ END REPLACEMENT
        END SUBROUTINE
      END
