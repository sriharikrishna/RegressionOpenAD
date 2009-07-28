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
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      external bar
      external foo
      real(w2f__8) :: P
      real(w2f__8) :: Q
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL foo(X(1),Y(1))
      P = 1.0D00
      CALL bar(P,Q)
      END SUBROUTINE
      subroutine foo(A,B)
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
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      B%v = (A%v*A%v)
      OpenAD_lin_0 = A%v
      OpenAD_lin_1 = A%v
      CALL sax(OpenAD_lin_0,A,B)
      CALL saxpy(OpenAD_lin_1,A,B)
      END SUBROUTINE
      subroutine bar(A,B)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      real(w2f__8) :: A
      real(w2f__8) :: B
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      B = COS(A)
      END SUBROUTINE
