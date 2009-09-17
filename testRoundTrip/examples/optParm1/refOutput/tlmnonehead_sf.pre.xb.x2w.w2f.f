
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(A, B, C, D)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
      TYPE (OpenADTy_active) B
      OPTIONAL  B
      TYPE (OpenADTy_active) C
      TYPE (OpenADTy_active) D
      OPTIONAL  D
C
C     **** Local Variables and Functions ****
C
      LOGICAL(w2f__i4) t__1
C
C     **** Statements ****
C
      OpenAD_Symbol_0 = (__value__(A) * 2.0D00)
      __value__(C) = OpenAD_Symbol_0
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(A))
      CALL sax(2.0D00, __deriv__(OpenAD_prop_0), __deriv__(C))
      t__1 = .TRUE.
      IF(.NOT. PRESENT(__value__(B))) THEN
        t__1 = .FALSE.
      ELSE
        IF(.NOT. PRESENT(__value__(D))) THEN
          t__1 = .FALSE.
        ENDIF
      ENDIF
      IF(t__1) THEN
        OpenAD_Symbol_1 = (__value__(B) * 3.0D00)
        __value__(D) = OpenAD_Symbol_1
        CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(B))
        CALL sax(3.0D00, __deriv__(OpenAD_prop_1), __deriv__(D))
      ENDIF
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 3)
      TYPE (OpenADTy_active) Y(1 : 3)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface 
        SUBROUTINE foo(A, B, C, D)
        use w2f__types
        TYPE (OpenADTy_active) A
        TYPE (OpenADTy_active) B
        OPTIONAL  B
        TYPE (OpenADTy_active) C
        TYPE (OpenADTy_active) D
        OPTIONAL  D
        END SUBROUTINE

      end interface 
      
C
C     **** Statements ****
C
      CALL foo(A = __deriv__(X(1)), C = __deriv__(Y(1)))
      CALL foo(__deriv__(X(2)), __deriv__(X(3)), __deriv__(Y(2)),
     >  __deriv__(Y(3)))
      END SUBROUTINE