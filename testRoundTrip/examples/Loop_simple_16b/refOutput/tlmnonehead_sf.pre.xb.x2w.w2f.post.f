
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE lagran(I, X, A, SP, LAG)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_8
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) X
      type(active) :: A(1:4)
      INTEGER(w2f__i4) SP
      type(active) :: LAG
      INTENT(OUT) LAG
C
C     **** Local Variables and Functions ****
C
      type(active) :: DENOM
      INTEGER(w2f__i4) K
      type(active) :: NUMER
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_9
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
          OpenAD_Symbol_0 = (A(I)%v-A(K)%v)
          OpenAD_Symbol_3 = (DENOM%v*OpenAD_Symbol_0)
          OpenAD_Symbol_1 = OpenAD_Symbol_0
          OpenAD_Symbol_2 = DENOM%v
          DENOM%v = OpenAD_Symbol_3
          OpenAD_Symbol_4 = (X-A(K)%v)
          OpenAD_Symbol_8 = (NUMER%v*OpenAD_Symbol_4)
          OpenAD_Symbol_5 = OpenAD_Symbol_4
          OpenAD_Symbol_6 = NUMER%v
          NUMER%v = OpenAD_Symbol_8
          OpenAD_Symbol_11 = (INT((-1_w2f__i8))*OpenAD_Symbol_6)
          CALL setderiv(OpenAD_prop_0,DENOM)
          CALL setderiv(OpenAD_prop_1,NUMER)
          CALL setderiv(OpenAD_prop_2,A(I))
          CALL dec_deriv(OpenAD_prop_2,A(K))
          CALL sax(OpenAD_Symbol_1,OpenAD_prop_0,DENOM)
          CALL saxpy(OpenAD_Symbol_2,OpenAD_prop_2,DENOM)
          CALL sax(OpenAD_Symbol_5,OpenAD_prop_1,NUMER)
          CALL saxpy(OpenAD_Symbol_11,A(K),NUMER)
        ENDIF
      END DO
      LAG%v = (NUMER%v/DENOM%v)
      OpenAD_Symbol_9 = (INT(1_w2f__i8)/DENOM%v)
      OpenAD_Symbol_10 = (-(NUMER%v/(DENOM%v*DENOM%v)))
      CALL sax(OpenAD_Symbol_9,NUMER,LAG)
      CALL saxpy(OpenAD_Symbol_10,DENOM,LAG)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      INTENT(IN) X
      type(active) :: Y(1:1)
      INTENT(OUT) Y
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
