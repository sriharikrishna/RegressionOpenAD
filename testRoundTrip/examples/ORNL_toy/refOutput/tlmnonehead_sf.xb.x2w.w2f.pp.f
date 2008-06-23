
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) P
      REAL(w2f__8) Q
      EXTERNAL sq
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      CALL sq(2,X,Y)
      P = 2.0D00
      Q = (P * P)
      END SUBROUTINE

      SUBROUTINE sq(N, U, V)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      type(active) :: U(1 : 2)
      type(active) :: V(1 : 2)
C
C     **** Statements ****
C
      OpenAD_Symbol_0 = SQRT((U(1)%v**2)+(U(2)%v**2))
      OpenAD_Symbol_4 = (2*(U(1)%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_2 = 1_w2f__i8
      OpenAD_Symbol_6 = (2*(U(2)%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_3 = 1_w2f__i8
      OpenAD_Symbol_1 = (5.0D-01 / OpenAD_Symbol_0)
      V(1)%v = OpenAD_Symbol_0
      OpenAD_Symbol_31 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_Symbol_32 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      CALL sax(OpenAD_Symbol_31,U(1),V(1))
      CALL saxpy(OpenAD_Symbol_32,U(2),V(1))
      OpenAD_Symbol_26 = (U(1)%v*2.0D00)
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*OpenAD_Symbol_26)
      OpenAD_Symbol_14 = (3*(U(1)%v**(3-INT(1 _w2f__i8))))
      OpenAD_Symbol_12 = 1_w2f__i8
      OpenAD_Symbol_20 = COS(U(2)%v)
      OpenAD_Symbol_18 = 1_w2f__i8
      OpenAD_Symbol_21 = (INT(1 _w2f__i8)/U(1)%v)
      OpenAD_Symbol_22 = (-(U(2)%v/(U(1)%v*U(1)%v)))
      OpenAD_Symbol_19 = 1_w2f__i8
      OpenAD_Symbol_16 = 1_w2f__i8
      OpenAD_Symbol_23 = (-SIN(U(1)%v))
      OpenAD_Symbol_17 = (-1_w2f__i8)
      OpenAD_Symbol_13 = 1_w2f__i8
      OpenAD_Symbol_10 = 1_w2f__i8
      OpenAD_Symbol_24 = (3*(U(2)%v**(3-INT(1 _w2f__i8))))
      OpenAD_Symbol_11 = 1_w2f__i8
      OpenAD_Symbol_8 = 1_w2f__i8
      OpenAD_Symbol_27 = OpenAD_Symbol_26
      OpenAD_Symbol_29 = 2.0D00
      OpenAD_Symbol_28 = U(2)%v
      OpenAD_Symbol_9 = 1_w2f__i8
      OpenAD_Symbol_33 = (2.0D00 * OpenAD_Symbol_28)
      OpenAD_Symbol_34 = (OpenAD_Symbol_23 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_27,U(2),V(2))
      CALL saxpy(OpenAD_Symbol_21,U(2),V(2))
      CALL saxpy(OpenAD_Symbol_22,U(1),V(2))
      CALL saxpy(OpenAD_Symbol_33,U(1),V(2))
      CALL saxpy(OpenAD_Symbol_24,U(2),V(2))
      CALL saxpy(OpenAD_Symbol_34,U(1),V(2))
      CALL saxpy(OpenAD_Symbol_20,U(2),V(2))
      CALL saxpy(OpenAD_Symbol_14,U(1),V(2))
      END SUBROUTINE
