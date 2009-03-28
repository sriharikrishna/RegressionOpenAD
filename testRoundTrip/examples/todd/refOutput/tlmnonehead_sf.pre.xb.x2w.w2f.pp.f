
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, OBJ)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
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
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_30
      type(active) :: OpenAD_Symbol_31
      type(active) :: OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 6)
      type(active) :: OBJ(1 : 1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) D00
      type(active) :: D03
      REAL(w2f__8) D11
      type(active) :: D12
      type(active) :: F
      type(active) :: G
      type(active) :: LOC1
      type(active) :: M00
      type(active) :: M03
      type(active) :: M11
      type(active) :: M12
      type(active) :: M22
      type(active) :: M33
      type(active) :: MATR(0 : 3)
      REAL(w2f__8) SQRT3
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(OBJ)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      SQRT3 = 5.77350258827209472656D-01
      MATR(0)%v = (X(2)%v-X(1)%v)
      CALL sax(1 _w2f__i8,X(2),MATR(0))
      CALL saxpy(-1 _w2f__i8,X(1),MATR(0))
      OpenAD_Symbol_0 = (X(3)%v*2.0D00-X(2)%v-X(1)%v)
      MATR(1)%v = (SQRT3*OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
      CALL sax(-1 _w2f__i8,X(1),OpenAD_Symbol_31)
      CALL saxpy(-1 _w2f__i8,X(2),OpenAD_Symbol_31)
      CALL saxpy(2.0D00,X(3),OpenAD_Symbol_31)
      CALL sax(OpenAD_Symbol_2,OpenAD_Symbol_31,MATR(1))
      MATR(2)%v = (X(5)%v-X(4)%v)
      CALL sax(1 _w2f__i8,X(5),MATR(2))
      CALL saxpy(-1 _w2f__i8,X(4),MATR(2))
      OpenAD_Symbol_4 = (X(6)%v*2.0D00-X(5)%v-X(4)%v)
      MATR(3)%v = (SQRT3*OpenAD_Symbol_4)
      OpenAD_Symbol_6 = SQRT3
      CALL sax(-1 _w2f__i8,X(4),OpenAD_Symbol_32)
      CALL saxpy(-1 _w2f__i8,X(5),OpenAD_Symbol_32)
      CALL saxpy(2.0D00,X(6),OpenAD_Symbol_32)
      CALL sax(OpenAD_Symbol_6,OpenAD_Symbol_32,MATR(3))
      M03%v = (MATR(0)%v*MATR(3)%v)
      OpenAD_Symbol_8 = MATR(3)%v
      OpenAD_Symbol_9 = MATR(0)%v
      M12%v = (MATR(1)%v*MATR(2)%v)
      OpenAD_Symbol_10 = MATR(2)%v
      OpenAD_Symbol_11 = MATR(1)%v
      G%v = (M03%v-M12%v)
      D00 = (M03%v*2.0D00)
      D11 = (M12%v*2.0D00)
      M00%v = (MATR(0)%v*MATR(0)%v)
      OpenAD_Symbol_12 = MATR(0)%v
      OpenAD_Symbol_13 = MATR(0)%v
      M11%v = (MATR(1)%v*MATR(1)%v)
      OpenAD_Symbol_14 = MATR(1)%v
      OpenAD_Symbol_15 = MATR(1)%v
      M22%v = (MATR(2)%v*MATR(2)%v)
      OpenAD_Symbol_16 = MATR(2)%v
      OpenAD_Symbol_17 = MATR(2)%v
      M33%v = (MATR(3)%v*MATR(3)%v)
      OpenAD_Symbol_18 = MATR(3)%v
      OpenAD_Symbol_19 = MATR(3)%v
      D12%v = (M00%v*M33%v)
      OpenAD_Symbol_20 = M33%v
      OpenAD_Symbol_21 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_Symbol_22 = M22%v
      OpenAD_Symbol_23 = M11%v
      F%v = (D03%v+D12%v)
      OpenAD_Symbol_24 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_Symbol_24)
      OpenAD_Symbol_28 = (-(1.0D00/(G%v*G%v)))
      OpenAD_Symbol_26 = A
      OBJ(1)%v = (F%v*LOC1%v)
      OpenAD_Symbol_29 = LOC1%v
      OpenAD_Symbol_30 = F%v
      OpenAD_Symbol_33 = (OpenAD_Symbol_28 * OpenAD_Symbol_26 *
     >  OpenAD_Symbol_30)
      OpenAD_Symbol_34 = (OpenAD_Symbol_16 * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_35 = (OpenAD_Symbol_17 * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_36 = (OpenAD_Symbol_14 * OpenAD_Symbol_22 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_37 = (OpenAD_Symbol_15 * OpenAD_Symbol_22 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_38 = (OpenAD_Symbol_18 * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_39 = (OpenAD_Symbol_19 * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_40 = (OpenAD_Symbol_12 * OpenAD_Symbol_20 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_41 = (OpenAD_Symbol_13 * OpenAD_Symbol_20 *
     >  OpenAD_Symbol_29)
      CALL sax(OpenAD_Symbol_8,MATR(0),M03)
      CALL saxpy(OpenAD_Symbol_9,MATR(3),M03)
      CALL sax(OpenAD_Symbol_10,MATR(1),M12)
      CALL saxpy(OpenAD_Symbol_11,MATR(2),M12)
      CALL sax(1 _w2f__i8,M03,G)
      CALL saxpy(-1 _w2f__i8,M12,G)
      CALL sax(OpenAD_Symbol_33,G,OBJ(1))
      CALL saxpy(OpenAD_Symbol_34,MATR(2),OBJ(1))
      CALL saxpy(OpenAD_Symbol_35,MATR(2),OBJ(1))
      CALL saxpy(OpenAD_Symbol_36,MATR(1),OBJ(1))
      CALL saxpy(OpenAD_Symbol_37,MATR(1),OBJ(1))
      CALL saxpy(OpenAD_Symbol_38,MATR(3),OBJ(1))
      CALL saxpy(OpenAD_Symbol_39,MATR(3),OBJ(1))
      CALL saxpy(OpenAD_Symbol_40,MATR(0),OBJ(1))
      CALL saxpy(OpenAD_Symbol_41,MATR(0),OBJ(1))
      END SUBROUTINE
