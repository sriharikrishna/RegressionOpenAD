
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
      REAL(w2f__8) OpenAD_Symbol_12
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: GAMMA
      type(active) :: NU
      type(active) :: OMEGA
      type(active) :: T
      type(active) :: V
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
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
      NU%v = X(1)%v
      GAMMA%v = X(2)%v
      OMEGA%v = X(3)%v
      T%v = X(4)%v
      OpenAD_Symbol_0 = TAN(OMEGA%v*T%v)
      OpenAD_Symbol_2 = T%v
      OpenAD_Symbol_3 = OMEGA%v
      OpenAD_Symbol_1 = (OpenAD_Symbol_0*OpenAD_Symbol_0+INT(1_w2f__i8))
      V%v = OpenAD_Symbol_0
      OpenAD_Symbol_4 = (NU%v*V%v)
      OpenAD_Symbol_5 = (GAMMA%v-V%v)
      Y(1)%v = (OpenAD_Symbol_4/OpenAD_Symbol_5)
      OpenAD_Symbol_8 = V%v
      OpenAD_Symbol_9 = NU%v
      OpenAD_Symbol_6 = (INT(1_w2f__i8)/OpenAD_Symbol_5)
      OpenAD_Symbol_7 = (-(OpenAD_Symbol_4/(OpenAD_Symbol_5*OpenAD_Symbo
     +l_5)))
      OpenAD_Symbol_13 = (OpenAD_Symbol_9*OpenAD_Symbol_6+INT((-1_w2f__i
     +8))*OpenAD_Symbol_7)
      OpenAD_Symbol_14 = (OpenAD_Symbol_8*OpenAD_Symbol_6)
      OpenAD_Symbol_15 = (OpenAD_Symbol_2*OpenAD_Symbol_1*OpenAD_Symbol_
     +13)
      OpenAD_Symbol_16 = (OpenAD_Symbol_3*OpenAD_Symbol_1*OpenAD_Symbol_
     +13)
      CALL setderiv(GAMMA,X(2))
      CALL sax(OpenAD_Symbol_14,X(1),Y(1))
      CALL saxpy(OpenAD_Symbol_15,X(3),Y(1))
      CALL saxpy(OpenAD_Symbol_16,X(4),Y(1))
      CALL saxpy(OpenAD_Symbol_7,GAMMA,Y(1))
      OpenAD_Symbol_12 = (Y(1)%v*GAMMA%v)
      OpenAD_Symbol_10 = GAMMA%v
      OpenAD_Symbol_11 = Y(1)%v
      Y(2)%v = OpenAD_Symbol_12
      CALL setderiv(OpenAD_prop_0,Y(1))
      CALL sax(OpenAD_Symbol_10,OpenAD_prop_0,Y(2))
      CALL saxpy(OpenAD_Symbol_11,GAMMA,Y(2))
      END SUBROUTINE
