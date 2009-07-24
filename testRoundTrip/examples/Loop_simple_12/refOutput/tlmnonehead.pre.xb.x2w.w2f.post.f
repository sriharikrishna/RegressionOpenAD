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
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: I
      integer(w2f__i4) :: J
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
      Y(1)%v = 0.0
      Y(2)%v = 0.0
      CALL zero_deriv(Y(1))
      CALL zero_deriv(Y(2))
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        J = 1
        dowhile (J.LT.3)
          Y(INT(I))%v = (Y(I)%v+X(I)%v*X(J)%v)
          OpenAD_lin_0 = X(J)%v
          OpenAD_lin_1 = X(I)%v
          CALL setderiv(OpenAD_prop_0,Y(I))
          CALL setderiv(Y(I),OpenAD_prop_0)
          CALL saxpy(OpenAD_lin_0,X(I),Y(I))
          CALL saxpy(OpenAD_lin_1,X(J),Y(I))
          J = (J+1)
        END DO
      END DO
      END SUBROUTINE
