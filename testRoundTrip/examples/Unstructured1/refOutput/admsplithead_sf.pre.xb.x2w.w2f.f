
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_lin_1
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
1     CONTINUE
      GO TO 2
2     CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 3
3     CONTINUE
      IF(__value__(X(1)) .LT. 1.0D00) THEN
        GO TO 7
      ELSE
        GO TO 4
      ENDIF
4     CONTINUE
      GO TO 5
5     CONTINUE
      GO TO 6
6     CONTINUE
      __value__(Y(1)) = (__value__(Y(1)) * 2.0D00)
      GO TO 9
7     CONTINUE
      __value__(Y(1)) = (I * __value__(X(1)))
      GO TO 8
8     CONTINUE
      __value__(Y(1)) = (__value__(Y(1)) * 3.0D00)
      GO TO 9
9     CONTINUE
      GO TO 10
10    CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
11    CONTINUE
      GO TO 12
12    CONTINUE
      OpenAD_Symbol_2 = 0_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_2)
      GO TO 13
13    CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 14
14    CONTINUE
      OpenAD_Symbol_3 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_3)
      GO TO 15
15    CONTINUE
      IF(__value__(X(1)) .LT. 1.0D00) THEN
        GO TO 21
      ELSE
        GO TO 16
      ENDIF
16    CONTINUE
      GO TO 17
17    CONTINUE
      OpenAD_Symbol_7 = 5_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_7)
      GO TO 18
18    CONTINUE
      GO TO 19
19    CONTINUE
      OpenAD_Symbol_1 = (__value__(Y(1)) * 2.0D00)
      __value__(Y(1)) = OpenAD_Symbol_1
      GO TO 20
20    CONTINUE
      OpenAD_Symbol_8 = 6_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_8)
      GO TO 25
21    CONTINUE
      __value__(Y(1)) = (I * __value__(X(1)))
      OpenAD_lin_1 = I
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_1)
      GO TO 22
22    CONTINUE
      OpenAD_Symbol_4 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_4)
      GO TO 23
23    CONTINUE
      OpenAD_Symbol_0 = (__value__(Y(1)) * 3.0D00)
      __value__(Y(1)) = OpenAD_Symbol_0
      GO TO 24
24    CONTINUE
      OpenAD_Symbol_5 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_5)
      GO TO 25
25    CONTINUE
      GO TO 26
26    CONTINUE
      OpenAD_Symbol_6 = 4_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_6)
      GO TO 27
27    CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_9)
      DO WHILE(INT(OpenAD_Symbol_9) .ne. INT(0_w2f__i8))
        IF ( OpenAD_Symbol_9  .EQ.  1)  GO TO  50
        IF ( OpenAD_Symbol_9  .EQ.  2)  GO TO  51
        IF ( OpenAD_Symbol_9  .EQ.  3)  GO TO  52
        IF ( OpenAD_Symbol_9  .EQ.  4)  GO TO  53
        IF ( OpenAD_Symbol_9  .EQ.  5)  GO TO  54
        IF ( OpenAD_Symbol_9  .EQ.  6)  GO TO  55
50      CONTINUE
        GO TO 47
51      CONTINUE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_18)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_18, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        GO TO 47
52      CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(3.0D00, __deriv__(Y(1)), __deriv__(OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        GO TO 47
53      CONTINUE
        GO TO 47
54      CONTINUE
        GO TO 47
55      CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(2.0D00, __deriv__(Y(1)), __deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
        GO TO 47
47      CONTINUE
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_9)
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
158   CONTINUE
      GO TO 159
159   CONTINUE
      OpenAD_Symbol_10 = 0_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_10)
      GO TO 160
160   CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 161
161   CONTINUE
      OpenAD_Symbol_11 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_11)
      GO TO 162
162   CONTINUE
      IF(__value__(X(1)) .LT. 1.0D00) THEN
        GO TO 168
      ELSE
        GO TO 163
      ENDIF
163   CONTINUE
      GO TO 164
164   CONTINUE
      OpenAD_Symbol_15 = 5_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_15)
      GO TO 165
165   CONTINUE
      GO TO 166
166   CONTINUE
      OpenAD_Symbol_1 = (__value__(Y(1)) * 2.0D00)
      __value__(Y(1)) = OpenAD_Symbol_1
      GO TO 167
167   CONTINUE
      OpenAD_Symbol_16 = 6_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_16)
      GO TO 172
168   CONTINUE
      __value__(Y(1)) = (I * __value__(X(1)))
      OpenAD_lin_1 = I
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_1)
      GO TO 169
169   CONTINUE
      OpenAD_Symbol_12 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_12)
      GO TO 170
170   CONTINUE
      OpenAD_Symbol_0 = (__value__(Y(1)) * 3.0D00)
      __value__(Y(1)) = OpenAD_Symbol_0
      GO TO 171
171   CONTINUE
      OpenAD_Symbol_13 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_13)
      GO TO 172
172   CONTINUE
      GO TO 173
173   CONTINUE
      OpenAD_Symbol_14 = 4_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_14)
      GO TO 174
174   CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_17)
      DO WHILE(INT(OpenAD_Symbol_17) .ne. INT(0_w2f__i8))
        IF ( OpenAD_Symbol_17  .EQ.  1)  GO TO  197
        IF ( OpenAD_Symbol_17  .EQ.  2)  GO TO  198
        IF ( OpenAD_Symbol_17  .EQ.  3)  GO TO  199
        IF ( OpenAD_Symbol_17  .EQ.  4)  GO TO  200
        IF ( OpenAD_Symbol_17  .EQ.  5)  GO TO  201
        IF ( OpenAD_Symbol_17  .EQ.  6)  GO TO  202
197     CONTINUE
        GO TO 194
198     CONTINUE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_18)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_18, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        GO TO 194
199     CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(3.0D00, __deriv__(Y(1)), __deriv__(OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        GO TO 194
200     CONTINUE
        GO TO 194
201     CONTINUE
        GO TO 194
202     CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(2.0D00, __deriv__(Y(1)), __deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
        GO TO 194
194     CONTINUE
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_17)
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
