
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
      SUBROUTINE head(X1, X2, Y1, Y2)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
C
C     **** Parameters and Result ****
C
      type(active) :: X1
      type(active) :: X2
      type(active) :: Y1
      type(active) :: Y2
C
C     **** Local Variables and Functions ****
C
      type(active) :: V3
      type(active) :: V4
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
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
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      V3%v = (X1%v*X2%v)
      OpenAD_Symbol_0 = X2%v
      OpenAD_Symbol_1 = X1%v
      V4%v = (X1%v*V3%v)
      OpenAD_Symbol_2 = V3%v
      OpenAD_Symbol_3 = X1%v
      OpenAD_Symbol_4 = (X2%v*V3%v)
      Y1%v = (V4%v*OpenAD_Symbol_4)
      OpenAD_Symbol_5 = OpenAD_Symbol_4
      OpenAD_Symbol_7 = V3%v
      OpenAD_Symbol_8 = X2%v
      OpenAD_Symbol_6 = V4%v
      Y2%v = SIN(V4%v)
      OpenAD_Symbol_9 = COS(V4%v)
      OpenAD_acc_0 = (OpenAD_Symbol_7*OpenAD_Symbol_6)
      OpenAD_acc_1 = (OpenAD_Symbol_8*OpenAD_Symbol_6+OpenAD_Symbol_3*Op
     +enAD_Symbol_5)
      OpenAD_acc_2 = (OpenAD_Symbol_3*OpenAD_Symbol_9)
      OpenAD_acc_3 = (OpenAD_Symbol_2*OpenAD_Symbol_5)
      OpenAD_acc_4 = (OpenAD_Symbol_2*OpenAD_Symbol_9)
      CALL sax(OpenAD_Symbol_0,X1,V3)
      CALL saxpy(OpenAD_Symbol_1,X2,V3)
      CALL sax(OpenAD_acc_2,V3,Y2)
      CALL saxpy(OpenAD_acc_4,X1,Y2)
      CALL sax(OpenAD_acc_0,X2,Y1)
      CALL saxpy(OpenAD_acc_1,V3,Y1)
      CALL saxpy(OpenAD_acc_3,X1,Y1)
      END SUBROUTINE
