
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A, B, C, D)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
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
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_dly_1
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
C
C     **** Statements ****
C
      OpenAD_dly_0 = (A%v*2.0D00)
      C%v = OpenAD_dly_0
      CALL setderiv(OpenAD_prp_0,A)
      CALL sax(2.0D00,OpenAD_prp_0,C)
      t__1 = .TRUE.
      IF (.not. PRESENT(B)) THEN
        t__1 = .FALSE.
      ELSE
        IF (.not. PRESENT(D)) THEN
          t__1 = .FALSE.
        ENDIF
      ENDIF
      IF(t__1) THEN
        OpenAD_dly_1 = (B%v*3.0D00)
        D%v = OpenAD_dly_1
        CALL setderiv(OpenAD_prp_1,B)
        CALL sax(3.0D00,OpenAD_prp_1,D)
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
