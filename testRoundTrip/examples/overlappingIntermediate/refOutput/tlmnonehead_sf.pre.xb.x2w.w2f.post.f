
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
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      INTENT(IN) X
      type(active) :: Y(1:3)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      type(active) :: T
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (X(1)%v*X(2)%v)
      T%v = (X(3)%v*OpenAD_Symbol_0)
      OpenAD_Symbol_1 = OpenAD_Symbol_0
      OpenAD_Symbol_3 = X(2)%v
      OpenAD_Symbol_4 = X(1)%v
      OpenAD_Symbol_2 = X(3)%v
      Y(1)%v = SIN(T%v)
      OpenAD_Symbol_5 = COS(T%v)
      OpenAD_acc_0 = (OpenAD_Symbol_3*OpenAD_Symbol_2)
      OpenAD_acc_1 = (OpenAD_Symbol_4*OpenAD_Symbol_2)
      CALL sax(OpenAD_Symbol_1,X(3),T)
      CALL saxpy(OpenAD_acc_0,X(1),T)
      CALL saxpy(OpenAD_acc_1,X(2),T)
      CALL sax(OpenAD_Symbol_5,T,Y(1))
      OpenAD_Symbol_6 = (X(4)%v*T%v)
      OpenAD_Symbol_11 = (X(5)%v*OpenAD_Symbol_6)
      OpenAD_Symbol_7 = OpenAD_Symbol_6
      OpenAD_Symbol_9 = T%v
      OpenAD_Symbol_10 = X(4)%v
      OpenAD_Symbol_8 = X(5)%v
      T%v = OpenAD_Symbol_11
      Y(2)%v = SIN(T%v)
      OpenAD_Symbol_12 = COS(T%v)
      OpenAD_acc_2 = (OpenAD_Symbol_9*OpenAD_Symbol_8)
      OpenAD_acc_3 = (OpenAD_Symbol_10*OpenAD_Symbol_8)
      CALL setderiv(OpenAD_prop_0,T)
      CALL sax(OpenAD_Symbol_7,X(5),T)
      CALL saxpy(OpenAD_acc_2,X(4),T)
      CALL saxpy(OpenAD_acc_3,OpenAD_prop_0,T)
      CALL sax(OpenAD_Symbol_12,T,Y(2))
      Y(3)%v = COS(T%v)
      OpenAD_Symbol_13 = (-SIN(T%v))
      CALL sax(OpenAD_Symbol_13,T,Y(3))
      END SUBROUTINE
