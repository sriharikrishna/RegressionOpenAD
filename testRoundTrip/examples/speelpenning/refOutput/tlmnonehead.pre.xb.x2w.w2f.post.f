
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:10)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO I = 1,10,1
        IF (I.eq.1) THEN
          Y(1)%v = X(1)%v
          CALL setderiv(Y(1),X(1))
        ELSE
          OpenAD_Symbol_0 = (X(I)%v*Y(1)%v)
          OpenAD_lin_0 = Y(1)%v
          OpenAD_lin_1 = X(I)%v
          Y(1)%v = OpenAD_Symbol_0
          CALL setderiv(OpenAD_prop_0,Y(1))
          CALL sax(OpenAD_lin_0,X(I),Y(1))
          CALL saxpy(OpenAD_lin_1,OpenAD_prop_0,Y(1))
        ENDIF
      enddo
      END SUBROUTINE
