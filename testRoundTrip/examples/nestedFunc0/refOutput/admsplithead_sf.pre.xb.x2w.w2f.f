
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
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
      CALL FOO()
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      CALL FOO()
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL FOO()
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
      CALL FOO()
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL FOO()
C     $OpenAD$ END REPLACEMENT
      CONTAINS

        SUBROUTINE FOO()
        use w2f__types
        IMPLICIT NONE
C
C       **** Global Variables & Derived Type Definitions ****
C
        REAL(w2f__8) OpenAD_lin_0
        REAL(w2f__8) OpenAD_lin_1
C
C       **** Local Variables and Functions ****
C
        REAL(w2f__8) OpenAD_Symbol_0
        REAL(w2f__8) OpenAD_Symbol_1
C
C       **** Statements ****
C
C       $OpenAD$ BEGIN REPLACEMENT 1
        __value__(Y(1)) = (__value__(X(1)) * __value__(X(2)))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 2
        __value__(Y(1)) = (__value__(X(1)) * __value__(X(2)))
        OpenAD_lin_0 = __value__(X(2))
        OpenAD_lin_1 = __value__(X(1))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_0)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_1)
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 3
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_0)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_1)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_0, __deriv__(Y(1)), __deriv__(X(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_1, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 4
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(X))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 5
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 6
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(X))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 7
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 8
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(Y))
C       $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
        CALL cp_arg_store_real_vector_a(__deriv__(X))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 9
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(X))
C       $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
        CALL cp_arg_restore_real_vector_a(__deriv__(Y))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 10
        __value__(Y(1)) = (__value__(X(1)) * __value__(X(2)))
        OpenAD_lin_0 = __value__(X(2))
        OpenAD_lin_1 = __value__(X(1))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_0)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_1)
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 11
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_0)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_1)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_0, __deriv__(Y(1)), __deriv__(X(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_1, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ END REPLACEMENT
        END SUBROUTINE
      END