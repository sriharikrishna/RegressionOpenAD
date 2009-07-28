      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(J,X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      integer(w2f__i4) :: J
      type(active) :: X(1:J)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i8) :: t__1
      integer(w2f__i8) :: t__2
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
      CALL zero_deriv(Y(1))
      CALL FOO()
      CONTAINS
        subroutine FOO()
        use w2f__types
        use OAD_active
        implicit none
C
C       **** Global Variables & Derived Type Definitions ****
C
        real(w2f__8) :: OpenAD_Symbol_0
        real(w2f__8) :: OpenAD_lin_0
        real(w2f__8) :: OpenAD_lin_1
        type(active) :: OpenAD_prop_0
C
C       **** Local Variables and Functions ****
C
        integer(w2f__i4) :: I
C
C       **** Statements ****
C
        DO I = 1,J,1
          OpenAD_Symbol_0 = (X(J)%v*Y(1)%v)
          OpenAD_lin_0 = Y(1)%v
          OpenAD_lin_1 = X(J)%v
          Y(1)%v = OpenAD_Symbol_0
          CALL setderiv(OpenAD_prop_0,Y(1))
          CALL sax(OpenAD_lin_0,X(J),Y(1))
          CALL saxpy(OpenAD_lin_1,OpenAD_prop_0,Y(1))
        END DO
        END SUBROUTINE
      END
