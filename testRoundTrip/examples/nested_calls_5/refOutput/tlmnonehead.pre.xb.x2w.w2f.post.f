      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      external foo
      integer(w2f__i4) :: I
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      I = 1
      CALL foo(X(I),X(I+1),Y(1))
      END SUBROUTINE
      subroutine foo(A,B,C)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      C%v = (B%v+A%v*A%v)
      OpenAD_lin_0 = A%v
      OpenAD_lin_1 = A%v
      CALL setderiv(C,B)
      CALL saxpy(OpenAD_lin_0,A,C)
      CALL saxpy(OpenAD_lin_1,A,C)
      END SUBROUTINE
