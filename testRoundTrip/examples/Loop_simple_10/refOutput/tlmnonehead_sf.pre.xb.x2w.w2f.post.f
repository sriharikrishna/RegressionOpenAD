      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine foo(X,Y,A,J)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
      type(active) :: OpenAD_prop_0
      real(w2f__8) :: OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
      integer(w2f__i4) :: A(1:2,1:2)
      integer(w2f__i4) :: J
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: I
C
C     **** Top Level Pragmas ****
C
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y(1)%v = X(1)%v
      CALL setderiv(Y(1),X(1))
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        IF (A(I,J).ne.0) THEN
          OpenAD_tmp_0 = (X(1)%v*Y(1)%v)
          OpenAD_Symbol_0 = (A(I,J)*OpenAD_tmp_0)
          OpenAD_lin_2 = Y(1)%v
          OpenAD_lin_3 = X(1)%v
          OpenAD_lin_1 = A(I,J)
          Y(1)%v = OpenAD_Symbol_0
          OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
          OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
          CALL setderiv(OpenAD_prop_0,Y(1))
          CALL sax(OpenAD_acc_0,X(1),Y(1))
          CALL saxpy(OpenAD_acc_1,OpenAD_prop_0,Y(1))
        ELSE
          Y(1)%v = 0.0
          CALL zero_deriv(Y(1))
        ENDIF
      END DO
      END SUBROUTINE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: A(1:2,1:2)
      external foo
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
      DO I = 1,2,1
        DO J = 1,2,1
          A(I,J) = (I+J)
        END DO
      END DO
      CALL foo(X,Y,A,2)
      DO I = 1,2,1
        DO J = 1,2,1
          A(I,J) = 0
        END DO
      END DO
      END SUBROUTINE
