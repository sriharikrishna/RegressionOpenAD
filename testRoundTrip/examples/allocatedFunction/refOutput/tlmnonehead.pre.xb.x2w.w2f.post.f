      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: A(:)
      allocatable A
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      ALLOCATE(A(2))
      A(1)%v = (X(1)%v*2.0D00)
      CALL sax(2.0D00,X(1),A(1))
      A(2)%v = (X(2)%v*2.0D00)
      CALL sax(2.0D00,X(2),A(2))
      IF (ALLOCATED(A)) THEN
        Y(1)%v = (A(1)%v*A(2)%v)
        OpenAD_lin_2 = A(2)%v
        OpenAD_lin_3 = A(1)%v
        CALL sax(OpenAD_lin_2,A(1),Y(1))
        CALL saxpy(OpenAD_lin_3,A(2),Y(1))
      ELSE
        Y(1)%v = 0
        CALL zero_deriv(Y(1))
      ENDIF
      deallocate(A)
      END SUBROUTINE
