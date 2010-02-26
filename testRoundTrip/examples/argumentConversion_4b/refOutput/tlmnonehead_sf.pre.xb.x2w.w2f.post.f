
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
      SUBROUTINE foo(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_Symbol_2 = X(2)%v
      OpenAD_Symbol_3 = X(1)%v
      CALL sax(OpenAD_Symbol_2,X(1),Y)
      CALL saxpy(OpenAD_Symbol_3,X(2),Y)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0(1:2,1:2)
      type(active) :: OpenAD_Symbol_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) APX(1 : 2, 1 : 2)
      type(active) :: AX(1:2,1:2)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      REAL(w2f__8) PY
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        SUBROUTINE foo(X, Y)
        use w2f__types
      use OAD_active
        type(active) :: X(1:2)
        type(active) :: Y
        END SUBROUTINE

      end interface

C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          AX(INT(I),INT(J))%v = X(I)%v
          APX(INT(I),INT(J)) = (I*DBLE(4.0))
          CALL setderiv(AX(I,J),X(I))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        CALL foo(AX(I,1:2),Y(1))
C       $OpenAD$ INLINE oad_convert(subst,subst)
        CALL oad_convert(OpenAD_Symbol_0,APX)
C       $OpenAD$ INLINE oad_convert(subst,subst)
        CALL oad_convert(OpenAD_Symbol_1,PY)
        CALL foo(OpenAD_Symbol_0(I,1:2),OpenAD_Symbol_1)
C       $OpenAD$ INLINE oad_convert(subst,subst)
        CALL oad_convert(APX,OpenAD_Symbol_0)
C       $OpenAD$ INLINE oad_convert(subst,subst)
        CALL oad_convert(PY,OpenAD_Symbol_1)
      END DO
      END SUBROUTINE
