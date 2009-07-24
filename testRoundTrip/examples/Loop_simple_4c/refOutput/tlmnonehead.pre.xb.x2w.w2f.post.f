      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      module aglobalmodule
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      CHARACTER(3) :: GLOBALSTRING
C
C     **** Statements ****
C
      END MODULE
      subroutine foo(X,Y)
      use w2f__types
      use OAD_active
      use aglobalmodule
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_4
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      real(w2f__8) :: OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      INTENT(IN)  X
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: I
      CHARACTER(3) :: LOCALSTRING
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        IF (GLOBALSTRING.EQ.'yes') THEN
          Y(INT(I))%v = (Y(I)%v+X(I)%v*X(I)%v)
          OpenAD_lin_0 = X(I)%v
          OpenAD_lin_1 = X(I)%v
          CALL setderiv(OpenAD_prop_0,Y(I))
          CALL setderiv(Y(I),OpenAD_prop_0)
          CALL saxpy(OpenAD_lin_0,X(I),Y(I))
          CALL saxpy(OpenAD_lin_1,X(I),Y(I))
        ENDIF
        IF (GLOBALSTRING.EQ.'no') THEN
          OpenAD_tmp_0 = (X(I)%v*X(I)%v)
          Y(INT(I))%v = (Y(I)%v+OpenAD_tmp_0*2.0D00)
          OpenAD_lin_3 = X(I)%v
          OpenAD_lin_4 = X(I)%v
          OpenAD_acc_0 = (OpenAD_lin_3*2.0D00)
          OpenAD_acc_1 = (OpenAD_lin_4*2.0D00)
          CALL setderiv(OpenAD_prop_1,Y(I))
          CALL setderiv(Y(I),OpenAD_prop_1)
          CALL saxpy(OpenAD_acc_0,X(I),Y(I))
          CALL saxpy(OpenAD_acc_1,X(I),Y(I))
        ENDIF
      END DO
      GLOBALSTRING = 'either'
      LOCALSTRING = GLOBALSTRING
      END SUBROUTINE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      use aglobalmodule
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      INTENT(IN)  X
      type(active) :: Y(1:2)
      INTENT(OUT)  Y
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
      Y(1)%v = 1.0
      Y(2)%v = 1.0
      CALL zero_deriv(Y(1))
      CALL zero_deriv(Y(2))
      GLOBALSTRING = 'yes'
      CALL foo(X,Y)
      GLOBALSTRING = 'both'
      END SUBROUTINE
