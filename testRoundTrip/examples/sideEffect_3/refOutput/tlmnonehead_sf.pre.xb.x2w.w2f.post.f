      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine bar(C,D)
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
      type(active) :: C
      type(active) :: D
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      D%v = (C%v*C%v)
      OpenAD_lin_0 = C%v
      OpenAD_lin_1 = C%v
      CALL sax(OpenAD_lin_0,C,D)
      CALL saxpy(OpenAD_lin_1,C,D)
      END SUBROUTINE
      subroutine foo(A,B)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
C
C     **** Local Variables and Functions ****
C
      external bar
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL bar(A,B)
      END SUBROUTINE
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
      external foo
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
      END SUBROUTINE
