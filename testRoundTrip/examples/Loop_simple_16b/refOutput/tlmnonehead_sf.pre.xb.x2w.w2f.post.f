
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE lagran(I, X, A, SP, LAG)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) X
      type(active) :: A(1:4)
      INTEGER(w2f__i4) SP
      type(active) :: LAG
      INTENT(OUT)  LAG
C
C     **** Local Variables and Functions ****
C
      type(active) :: DENOM
      INTEGER(w2f__i4) K
      type(active) :: NUMER
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      NUMER%v = 1.0D00
      DENOM%v = 1.0D00
      CALL zero_deriv(NUMER)
      CALL zero_deriv(DENOM)
C$OPENAD XXX Simple loop
      DO K = 1,SP,1
        IF (I.ne.K) THEN
          OpenAD_tmp_0 = (A(I)%v-A(K)%v)
          OpenAD_Symbol_0 = (DENOM%v*OpenAD_tmp_0)
          OpenAD_lin_0 = OpenAD_tmp_0
          OpenAD_lin_1 = DENOM%v
          DENOM%v = OpenAD_Symbol_0
          OpenAD_tmp_1 = (X-A(K)%v)
          OpenAD_Symbol_1 = (NUMER%v*OpenAD_tmp_1)
          OpenAD_lin_2 = OpenAD_tmp_1
          OpenAD_lin_3 = NUMER%v
          NUMER%v = OpenAD_Symbol_1
          OpenAD_acc_0 = (INT((-1_w2f__i8))*OpenAD_lin_3)
          CALL setderiv(OpenAD_prop_0,DENOM)
          CALL setderiv(OpenAD_prop_1,NUMER)
          CALL setderiv(OpenAD_prop_2,A(I))
          CALL dec_deriv(OpenAD_prop_2,A(K))
          CALL sax(OpenAD_lin_0,OpenAD_prop_0,DENOM)
          CALL saxpy(OpenAD_lin_1,OpenAD_prop_2,DENOM)
          CALL sax(OpenAD_lin_2,OpenAD_prop_1,NUMER)
          CALL saxpy(OpenAD_acc_0,A(K),NUMER)
        ENDIF
      END DO
      LAG%v = (NUMER%v/DENOM%v)
      OpenAD_lin_5 = (INT(1_w2f__i8)/DENOM%v)
      OpenAD_lin_6 = (-(NUMER%v/(DENOM%v*DENOM%v)))
      CALL sax(OpenAD_lin_5,NUMER,LAG)
      CALL saxpy(OpenAD_lin_6,DENOM,LAG)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL lagran
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL lagran(2,2.0D00,X,4,Y(1))
      END SUBROUTINE
