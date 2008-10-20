
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
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0(1 : 2, 1 : 3)
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL barext
      INTEGER(w2f__i4) I
      TYPE (OpenADTy_active) T(1 : 2, 1 : 3)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO I = 1, 2, 1
        __value__(T(INT(I), 2)) = __value__(X(I))
        CALL setderiv(__deriv__(T(I, 2)), __deriv__(X(I)))
      END DO
C     $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
      CALL convert_a2p_matrix(OpenAD_Symbol_0, __deriv__(T))
      CALL barext(OpenAD_Symbol_0(1, 2))
C     $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
      CALL convert_p2a_matrix(__deriv__(T), OpenAD_Symbol_0)
      __value__(Y(1)) = __value__(T(1, 2))
      CALL setderiv(__deriv__(Y(1)), __deriv__(T(1, 2)))
      END SUBROUTINE