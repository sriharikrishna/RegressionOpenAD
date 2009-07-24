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
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y(1)%v = 2.0
      CALL zero_deriv(Y(1))
      IF (X(1)%v.GT.0.0D00) THEN
        Y(1)%v = X(1)%v
        CALL setderiv(Y(1),X(1))
        IF (X(1)%v.GT.1.0D00) THEN
          CALL setderiv(OpenAD_prop_0,Y(1))
          CALL setderiv(Y(1),OpenAD_prop_0)
        ELSE
          IF (X(1)%v.GT.0.0D00) THEN
            Y(1)%v = X(1)%v
            CALL setderiv(Y(1),X(1))
          ENDIF
        ENDIF
      ENDIF
      OpenAD_Symbol_0 = (Y(1)%v*Y(1)%v)
      OpenAD_lin_0 = Y(1)%v
      OpenAD_lin_1 = Y(1)%v
      Y(1)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_1,Y(1))
      CALL setderiv(OpenAD_prop_2,Y(1))
      CALL sax(OpenAD_lin_0,OpenAD_prop_1,Y(1))
      CALL saxpy(OpenAD_lin_1,OpenAD_prop_2,Y(1))
      END SUBROUTINE
