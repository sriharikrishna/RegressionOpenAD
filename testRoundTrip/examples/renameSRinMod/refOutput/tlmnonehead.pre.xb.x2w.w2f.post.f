
C$OPENAD XXX File_start [head.f]
      MODULE m
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Top Level Pragmas ****
C
      interface FOO
        module procedure OpenAD_FOO_I

      end interface

C
C     **** Statements ****
C
      CONTAINS

        SUBROUTINE OpenAD_FOO_I(X)
        use w2f__types
        use OAD_active
        use oad_intrinsics
        IMPLICIT NONE
C
C       **** Global Variables & Derived Type Definitions ****
C
        REAL(w2f__8) OpenAD_Symbol_1
        type(active) :: OpenAD_prop_0
C
C       **** Parameters and Result ****
C
        type(active) :: X
C
C       **** Statements ****
C
        OpenAD_Symbol_1 = (X%v*2.0D00)
        X%v = OpenAD_Symbol_1
        CALL setderiv(OpenAD_prop_0,X)
        CALL sax(2.0D00,OpenAD_prop_0,X)
        END SUBROUTINE
      END

      SUBROUTINE OpenAD_head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      use m
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL OpenAD_FOO_I(X(1))
      Y(1)%v = X(1)%v
      CALL setderiv(Y(1),X(1))
      END SUBROUTINE
