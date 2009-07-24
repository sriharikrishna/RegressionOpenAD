      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine foo(A,K)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: A
      integer(w2f__i4) :: K
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (K*A%v)
      OpenAD_lin_1 = K
      A%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,A)
      CALL sax(OpenAD_lin_1,OpenAD_prop_0,A)
      END SUBROUTINE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      external foo
      integer(w2f__i4) :: K
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      K = 1
      CALL foo(X(K),K)
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_2 = X(2)%v
      OpenAD_lin_3 = X(1)%v
      CALL sax(OpenAD_lin_2,X(1),Y)
      CALL saxpy(OpenAD_lin_3,X(2),Y)
      END SUBROUTINE
