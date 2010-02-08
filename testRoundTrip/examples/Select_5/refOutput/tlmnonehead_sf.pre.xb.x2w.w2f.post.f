
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
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_8
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN) X
      type(active) :: Y(1:1)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) select_expr_temp_0
      INTEGER(w2f__i4) select_expr_temp_1
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
 2    CONTINUE
      GO TO 3
 3    CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 4
 4    CONTINUE
      IF (X(1)%v.LT.1.0D00) THEN
        GO TO 6
      ELSE
        GO TO 5
      ENDIF
 5    CONTINUE
      GO TO 11
 6    CONTINUE
      select_expr_temp_0 = I
      GO TO 7
 7    CONTINUE
      IF (select_expr_temp_0.ne.0) THEN
        GO TO 18
      ELSE
        GO TO 8
      ENDIF
 8    CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_Symbol_3 = I
      CALL sax(OpenAD_Symbol_3,X(1),Y(1))
      GO TO 9
 9    CONTINUE
      GO TO 10
 10   CONTINUE
      GO TO 11
 11   CONTINUE
      GO TO 12
 12   CONTINUE
      OpenAD_Symbol_5 = (Y(1)%v*4.0D00)
      Y(1)%v = OpenAD_Symbol_5
      CALL setderiv(OpenAD_prop_0,Y(1))
      CALL sax(4.0D00,OpenAD_prop_0,Y(1))
      select_expr_temp_1 = I
      GO TO 13
 13   CONTINUE
      IF (select_expr_temp_1.ne.0) THEN
        GO TO 17
      ELSE
        GO TO 14
      ENDIF
 14   CONTINUE
      OpenAD_Symbol_11 = (I*Y(1)%v)
      OpenAD_Symbol_10 = I
      Y(1)%v = OpenAD_Symbol_11
      CALL setderiv(OpenAD_prop_2,Y(1))
      CALL sax(OpenAD_Symbol_10,OpenAD_prop_2,Y(1))
      GO TO 15
 15   CONTINUE
      GO TO 16
 16   CONTINUE
      GO TO 19
 17   CONTINUE
      OpenAD_Symbol_8 = (I*Y(1)%v)
      OpenAD_Symbol_7 = I
      Y(1)%v = OpenAD_Symbol_8
      CALL setderiv(OpenAD_prop_1,Y(1))
      CALL sax(OpenAD_Symbol_7,OpenAD_prop_1,Y(1))
      RETURN
      GO TO 19
 18   CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_Symbol_1 = I
      CALL sax(OpenAD_Symbol_1,X(1),Y(1))
      GO TO 1
      GO TO 19
 19   CONTINUE
      GO TO 1
 1    CONTINUE
      END SUBROUTINE
