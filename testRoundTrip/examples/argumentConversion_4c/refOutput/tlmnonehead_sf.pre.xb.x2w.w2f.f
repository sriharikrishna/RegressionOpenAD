
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X
      TYPE (OpenADTy_active) Y
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(Y) = (__value__(X) * __value__(X))
      OpenAD_lin_0 = __value__(X)
      OpenAD_lin_1 = __value__(X)
      CALL sax(OpenAD_lin_0, __deriv__(X), __deriv__(Y))
      CALL saxpy(OpenAD_lin_1, __deriv__(X), __deriv__(Y))
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_0
      TYPE (OpenADTy_active) OpenAD_Symbol_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) APX(1 : 2, 1 : 2)
      TYPE (OpenADTy_active) AX(1 : 2, 1 : 2)
      EXTERNAL foo
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      REAL(w2f__8) PY
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          __value__(AX(INT(I), INT(J))) = __value__(X(I))
          APX(INT(I), INT(J)) = (I * DBLE(4.0))
          CALL setderiv(__deriv__(AX(I, J)), __deriv__(X(I)))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          CALL foo(__deriv__(AX(I, J)), __deriv__(Y))
C         $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
          CALL convert_p2a_scalar(__deriv__(OpenAD_Symbol_0), APX(I, J)
     > )
C         $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
          CALL convert_p2a_scalar(__deriv__(OpenAD_Symbol_1), PY)
          CALL foo(__deriv__(OpenAD_Symbol_0), __deriv__(
     > OpenAD_Symbol_1))
C         $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
          CALL convert_a2p_scalar(APX(I, J), __deriv__(OpenAD_Symbol_0)
     > )
C         $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
          CALL convert_a2p_scalar(PY, __deriv__(OpenAD_Symbol_1))
        END DO
      END DO
      END SUBROUTINE
