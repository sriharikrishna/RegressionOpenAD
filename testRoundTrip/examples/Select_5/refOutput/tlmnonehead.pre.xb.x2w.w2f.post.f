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
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_Symbol_1
      real(w2f__8) :: OpenAD_Symbol_2
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_6
      real(w2f__8) :: OpenAD_lin_8
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
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
      integer(w2f__i4) :: select_expr_temp_1
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
        goto 5
      ELSE
        goto 4
      ENDIF
4     CONTINUE
      goto 10
5     CONTINUE
      select_expr_temp_0 = I
      goto 6
6     CONTINUE
      IF (select_expr_temp_0.ne.0) THEN
        goto 17
      ELSE
        goto 7
      ENDIF
7     CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_3 = I
      CALL sax(OpenAD_lin_3,X(1),Y(1))
      goto 8
8     CONTINUE
      goto 9
9     CONTINUE
      goto 10
10    CONTINUE
      goto 11
11    CONTINUE
      OpenAD_Symbol_0 = (Y(1)%v*4.0D00)
      Y(1)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,Y(1))
      CALL sax(4.0D00,OpenAD_prop_0,Y(1))
      select_expr_temp_1 = I
      goto 12
12    CONTINUE
      IF (select_expr_temp_1.ne.0) THEN
        goto 16
      ELSE
        goto 13
      ENDIF
13    CONTINUE
      OpenAD_Symbol_2 = (I*Y(1)%v)
      OpenAD_lin_8 = I
      Y(1)%v = OpenAD_Symbol_2
      CALL setderiv(OpenAD_prop_2,Y(1))
      CALL sax(OpenAD_lin_8,OpenAD_prop_2,Y(1))
      goto 14
14    CONTINUE
      goto 15
15    CONTINUE
      goto 18
16    CONTINUE
      OpenAD_Symbol_1 = (I*Y(1)%v)
      OpenAD_lin_6 = I
      Y(1)%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_1,Y(1))
      CALL sax(OpenAD_lin_6,OpenAD_prop_1,Y(1))
      RETURN
      goto 18
17    CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_1 = I
      CALL sax(OpenAD_lin_1,X(1),Y(1))
      RETURN
      goto 18
18    CONTINUE
      END SUBROUTINE
