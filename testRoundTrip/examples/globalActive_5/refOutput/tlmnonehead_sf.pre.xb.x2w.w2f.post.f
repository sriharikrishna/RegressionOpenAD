      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Statements ****
C
      END MODULE
      subroutine head()
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y(1)%v = (X(1)%v*X(2)%v)
      OpenAD_lin_0 = X(2)%v
      OpenAD_lin_1 = X(1)%v
      CALL sax(OpenAD_lin_0,X(1),Y(1))
      CALL saxpy(OpenAD_lin_1,X(2),Y(1))
      END SUBROUTINE
