
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
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) II
      INTEGER(w2f__i4) J
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_7
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
      GO TO 3
3     CONTINUE
      J = 1
      GO TO 17
4     CONTINUE
      J = J + 1
17    CONTINUE
      IF(J .LE. 5) THEN
        GO TO 5
      ELSE
        GO TO 15
      ENDIF
5     CONTINUE
      GO TO 6
6     CONTINUE
      II = 1
      GO TO 18
7     CONTINUE
      II = II + 1
18    CONTINUE
      IF(II .LE. 5) THEN
        GO TO 8
      ELSE
        GO TO 9
      ENDIF
8     CONTINUE
      GO TO 9
9     CONTINUE
      GO TO 10
10    CONTINUE
      II = 1
      GO TO 19
11    CONTINUE
      II = II + 1
19    CONTINUE
      IF(II .LE. 5) THEN
        GO TO 12
      ELSE
        GO TO 14
      ENDIF
12    CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 13
13    CONTINUE
      GO TO 11
14    CONTINUE
      GO TO 4
15    CONTINUE
      GO TO 16
16    CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
20    CONTINUE
      GO TO 21
21    CONTINUE
      OpenAD_Symbol_0 = 0_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_0)
      GO TO 22
22    CONTINUE
      GO TO 23
23    CONTINUE
      OpenAD_Symbol_1 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_1)
      GO TO 24
24    CONTINUE
      J = 1
      GO TO 43
25    CONTINUE
      J = J + 1
43    CONTINUE
      IF(J .LE. 5) THEN
        GO TO 26
      ELSE
        GO TO 40
      ENDIF
26    CONTINUE
      GO TO 27
27    CONTINUE
      OpenAD_Symbol_2 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_2)
      GO TO 28
28    CONTINUE
      II = 1
      GO TO 44
29    CONTINUE
      II = II + 1
44    CONTINUE
      IF(II .LE. 5) THEN
        GO TO 30
      ELSE
        GO TO 32
      ENDIF
30    CONTINUE
      GO TO 31
31    CONTINUE
      OpenAD_Symbol_3 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_3)
      GO TO 32
32    CONTINUE
      GO TO 33
33    CONTINUE
      OpenAD_Symbol_4 = 4_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_4)
      GO TO 34
34    CONTINUE
      II = 1
      GO TO 45
35    CONTINUE
      II = II + 1
45    CONTINUE
      IF(II .LE. 5) THEN
        GO TO 36
      ELSE
        GO TO 39
      ENDIF
36    CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 37
37    CONTINUE
      OpenAD_Symbol_5 = 5_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_5)
      GO TO 38
38    CONTINUE
      GO TO 35
39    CONTINUE
      GO TO 25
40    CONTINUE
      GO TO 41
41    CONTINUE
      OpenAD_Symbol_6 = 6_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_6)
      GO TO 42
42    CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_7)
      DO WHILE(INT(OpenAD_Symbol_7) .ne. INT(0_w2f__i8))
        IF ( OpenAD_Symbol_7  .EQ.  1)  GO TO  68
        IF ( OpenAD_Symbol_7  .EQ.  2)  GO TO  69
        IF ( OpenAD_Symbol_7  .EQ.  3)  GO TO  70
        IF ( OpenAD_Symbol_7  .EQ.  4)  GO TO  71
        IF ( OpenAD_Symbol_7  .EQ.  5)  GO TO  72
        IF ( OpenAD_Symbol_7  .EQ.  6)  GO TO  73
68      CONTINUE
        GO TO 65
69      CONTINUE
        GO TO 65
70      CONTINUE
        GO TO 65
71      CONTINUE
        GO TO 65
72      CONTINUE
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        GO TO 65
73      CONTINUE
        GO TO 65
65      CONTINUE
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_7)
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
176   CONTINUE
      GO TO 177
177   CONTINUE
      OpenAD_Symbol_8 = 0_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_8)
      GO TO 178
178   CONTINUE
      GO TO 179
179   CONTINUE
      OpenAD_Symbol_9 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_9)
      GO TO 180
180   CONTINUE
      J = 1
      GO TO 199
181   CONTINUE
      J = J + 1
199   CONTINUE
      IF(J .LE. 5) THEN
        GO TO 182
      ELSE
        GO TO 196
      ENDIF
182   CONTINUE
      GO TO 183
183   CONTINUE
      OpenAD_Symbol_10 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_10)
      GO TO 184
184   CONTINUE
      II = 1
      GO TO 200
185   CONTINUE
      II = II + 1
200   CONTINUE
      IF(II .LE. 5) THEN
        GO TO 186
      ELSE
        GO TO 188
      ENDIF
186   CONTINUE
      GO TO 187
187   CONTINUE
      OpenAD_Symbol_11 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_11)
      GO TO 188
188   CONTINUE
      GO TO 189
189   CONTINUE
      OpenAD_Symbol_12 = 4_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_12)
      GO TO 190
190   CONTINUE
      II = 1
      GO TO 201
191   CONTINUE
      II = II + 1
201   CONTINUE
      IF(II .LE. 5) THEN
        GO TO 192
      ELSE
        GO TO 195
      ENDIF
192   CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 193
193   CONTINUE
      OpenAD_Symbol_13 = 5_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_13)
      GO TO 194
194   CONTINUE
      GO TO 191
195   CONTINUE
      GO TO 181
196   CONTINUE
      GO TO 197
197   CONTINUE
      OpenAD_Symbol_14 = 6_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_14)
      GO TO 198
198   CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_15)
      DO WHILE(INT(OpenAD_Symbol_15) .ne. INT(0_w2f__i8))
        IF ( OpenAD_Symbol_15  .EQ.  1)  GO TO  224
        IF ( OpenAD_Symbol_15  .EQ.  2)  GO TO  225
        IF ( OpenAD_Symbol_15  .EQ.  3)  GO TO  226
        IF ( OpenAD_Symbol_15  .EQ.  4)  GO TO  227
        IF ( OpenAD_Symbol_15  .EQ.  5)  GO TO  228
        IF ( OpenAD_Symbol_15  .EQ.  6)  GO TO  229
224     CONTINUE
        GO TO 221
225     CONTINUE
        GO TO 221
226     CONTINUE
        GO TO 221
227     CONTINUE
        GO TO 221
228     CONTINUE
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        GO TO 221
229     CONTINUE
        GO TO 221
221     CONTINUE
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_15)
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
