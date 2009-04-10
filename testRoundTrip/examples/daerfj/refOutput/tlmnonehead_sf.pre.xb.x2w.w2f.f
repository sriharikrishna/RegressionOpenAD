
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, FVEC)
      use w2f__types
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
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 4)
      TYPE (OpenADTy_active) FVEC(1 : 11)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      TYPE (OpenADTy_active) TEMP1
      TYPE (OpenADTy_active) TEMP2
      REAL(w2f__8) V(1 : 11)
      REAL(w2f__8) Y(1 : 11)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(FVEC)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      V(1) = 4.0D00
      V(2) = 2.0D00
      V(3) = 1.0D00
      V(4) = 5.0D-01
      V(5) = 2.5D-01
      V(6) = 1.67000000000000009548D-01
      V(7) = 1.25D-01
      V(8) = 1.00000000000000005551D-01
      V(9) = 8.32999999999999990452D-02
      V(10) = 7.14000000000000051292D-02
      V(11) = 6.25D-02
      Y(1) = 1.95700000000000012834D-01
      Y(2) = 1.94700000000000011946D-01
      Y(3) = 1.73499999999999987566D-01
      Y(4) = 1.60000000000000003331D-01
      Y(5) = 8.44000000000000027978D-02
      Y(6) = 6.27000000000000057288D-02
      Y(7) = 4.56000000000000016431D-02
      Y(8) = 3.42000000000000012323D-02
      Y(9) = 3.23000000000000023204D-02
      Y(10) = 2.35000000000000000555D-02
      Y(11) = 2.46000000000000003386D-02
      DO I = 1, 11, 1
        OpenAD_Symbol_0 = (__value__(X(2)) + V(I))
        __value__(TEMP1) = (V(I) * OpenAD_Symbol_0)
        OpenAD_Symbol_2 = V(I)
        OpenAD_Symbol_4 = (__value__(X(3)) + V(I))
        __value__(TEMP2) = (__value__(X(4)) + V(I) * OpenAD_Symbol_4)
        OpenAD_Symbol_6 = V(I)
        OpenAD_Symbol_9 = (__value__(X(1)) * __value__(TEMP1))
        __value__(FVEC(INT(I))) = (Y(I) -(OpenAD_Symbol_9 / __value__(
     > TEMP2)))
        OpenAD_Symbol_12 = __value__(TEMP1)
        OpenAD_Symbol_13 = __value__(X(1))
        OpenAD_Symbol_10 = (INT(1_w2f__i8) / __value__(TEMP2))
        OpenAD_Symbol_11 = (-(OpenAD_Symbol_9 /(__value__(TEMP2) *
     >  __value__(TEMP2))))
        OpenAD_Symbol_14 = (OpenAD_Symbol_11 * INT((-1_w2f__i8)))
        OpenAD_Symbol_15 = (OpenAD_Symbol_12 * OpenAD_Symbol_10 * INT((
     > -1_w2f__i8)))
        OpenAD_Symbol_16 = (OpenAD_Symbol_2 * OpenAD_Symbol_13 *
     >  OpenAD_Symbol_10 * INT((-1_w2f__i8)))
        CALL setderiv(__deriv__(TEMP2), __deriv__(X(4)))
        CALL saxpy(OpenAD_Symbol_6, __deriv__(X(3)), __deriv__(TEMP2))
        CALL sax(OpenAD_Symbol_14, __deriv__(TEMP2), __deriv__(FVEC(I))
     > )
        CALL saxpy(OpenAD_Symbol_15, __deriv__(X(1)), __deriv__(FVEC(I)
     > ))
        CALL saxpy(OpenAD_Symbol_16, __deriv__(X(2)), __deriv__(FVEC(I)
     > ))
      END DO
      END SUBROUTINE
