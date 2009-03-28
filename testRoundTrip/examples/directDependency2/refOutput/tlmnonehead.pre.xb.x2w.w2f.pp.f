

      SUBROUTINE foo()
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      type(active) :: T
      type(active) :: T1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T%v = (X(1)%v+X(2)%v)
      T1%v = (T%v*2.0D00)
      CALL sax(1 _w2f__i8,X(1),T)
      CALL saxpy(1 _w2f__i8,X(2),T)
      CALL sax(2.0D00,T,T1)
      CALL foo()
      Y%v = (T%v*2.0D00+T1%v*3.0D00)
      CALL sax(2.0D00,T,Y)
      CALL saxpy(3.0D00,T1,Y)
      END SUBROUTINE
