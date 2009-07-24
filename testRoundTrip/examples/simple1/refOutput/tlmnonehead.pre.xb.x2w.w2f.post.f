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
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: T
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T%v = (X(1)%v*X(2)%v)
      OpenAD_lin_0 = X(2)%v
      OpenAD_lin_1 = X(1)%v
      Y(1)%v = SIN(T%v)
      OpenAD_lin_2 = COS(T%v)
      CALL sax(OpenAD_lin_0,X(1),T)
      CALL saxpy(OpenAD_lin_1,X(2),T)
      CALL sax(OpenAD_lin_2,T,Y(1))
      Y(2)%v = COS(T%v)
      OpenAD_lin_3 = (-SIN(T%v))
      CALL sax(OpenAD_lin_3,T,Y(2))
      END SUBROUTINE
