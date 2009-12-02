
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
      SUBROUTINE foo(A, B, C, D)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
      OPTIONAL B
      type(active) :: C
      type(active) :: D
      OPTIONAL D
C
C     **** Local Variables and Functions ****
C
      LOGICAL(w2f__i4) t__1
C
C     **** Statements ****
C
      OpenAD_Symbol_0 = (A%v*2.0D00)
      C%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,A)
      CALL sax(2.0D00,OpenAD_prop_0,C)
      t__1 = .true.
      IF (.not. PRESENT(B)) THEN
        t__1 = .false.
      ELSE
        IF (.not. PRESENT(D)) THEN
          t__1 = .false.
        ENDIF
      ENDIF
      IF (t__1) THEN
        OpenAD_Symbol_1 = (B%v*3.0D00)
        D%v = OpenAD_Symbol_1
        CALL setderiv(OpenAD_prop_1,B)
        CALL sax(3.0D00,OpenAD_prop_1,D)
      ENDIF
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        SUBROUTINE foo(A, B, C, D)
        use w2f__types
      use OAD_active
        type(active) :: A
        type(active) :: B
        OPTIONAL B
        type(active) :: C
        type(active) :: D
        OPTIONAL D
        END SUBROUTINE

      end interface

C
C     **** Statements ****
C
      CALL foo(A=X(1),C=Y(1))
      CALL foo(X(2),X(3),Y(2),Y(3))
      END SUBROUTINE
