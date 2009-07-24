      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine foo(A)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_0
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (A%v*2.0D00)
      A%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,A)
      CALL sax(2.0D00,OpenAD_prop_0,A)
      END SUBROUTINE
      subroutine bar(A,K)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_1
      real(w2f__8) :: OpenAD_lin_2
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: A
      integer(w2f__i4) :: K
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      K = (K*2)
      OpenAD_Symbol_1 = (K*A%v)
      OpenAD_lin_2 = K
      A%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_1,A)
      CALL sax(OpenAD_lin_2,OpenAD_prop_1,A)
      END SUBROUTINE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      external bar
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
      CALL foo(X(I))
      CALL bar(X(I+1),I)
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_3 = X(2)%v
      OpenAD_lin_4 = X(1)%v
      CALL sax(OpenAD_lin_3,X(1),Y)
      CALL saxpy(OpenAD_lin_4,X(2),Y)
      END SUBROUTINE
