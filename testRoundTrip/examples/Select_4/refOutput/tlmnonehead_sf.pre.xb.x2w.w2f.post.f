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
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: I
      integer(w2f__i4) :: select_expr_temp_0
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
1     CONTINUE
      goto 2
2     CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      goto 3
3     CONTINUE
      IF (X(1)%v.LT.1.0D00) THEN
        goto 4
      ELSE
        goto 9
      ENDIF
4     CONTINUE
      select_expr_temp_0 = I
      goto 5
5     CONTINUE
      IF (select_expr_temp_0.ne.0) THEN
        goto 6
      ELSE
        goto 8
      ENDIF
6     CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_1 = I
      CALL sax(OpenAD_lin_1,X(1),Y(1))
      RETURN
      goto 7
7     CONTINUE
8     CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_3 = I
      CALL sax(OpenAD_lin_3,X(1),Y(1))
      RETURN
      goto 7
9     CONTINUE
      goto 10
10    CONTINUE
      goto 11
11    CONTINUE
      Y(1)%v = (X(1)%v*3.0D00)
      CALL sax(3.0D00,X(1),Y(1))
      goto 7
      END SUBROUTINE
