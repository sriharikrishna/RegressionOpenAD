
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
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
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
2     CONTINUE
      GO TO 3
3     CONTINUE
C$OPENAD XXX Template ad_template.f
      GO TO 4
4     CONTINUE
      __value__(X(1)) = (__value__(X(1)) * __value__(X(1)))
      GO TO 5
5     CONTINUE
      __value__(X(1)) = (__value__(X(1)) * 3.0D00)
      GO TO 6
6     CONTINUE
      __value__(X(1)) = (__value__(X(1)) * 2.0D00)
      GO TO 7
7     CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 8
8     CONTINUE
      GO TO 1
1     CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
10    CONTINUE
      GO TO 11
11    CONTINUE
      OpenAD_Symbol_3 = 0_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_3)
      GO TO 12
12    CONTINUE
C$OPENAD XXX Template ad_template.f
      GO TO 13
13    CONTINUE
      OpenAD_Symbol_4 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_4)
      GO TO 14
14    CONTINUE
      OpenAD_Symbol_0 = (__value__(X(1)) * __value__(X(1)))
      OpenAD_lin_0 = __value__(X(1))
      OpenAD_lin_1 = __value__(X(1))
      __value__(X(1)) = OpenAD_Symbol_0
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_1)
      GO TO 15
15    CONTINUE
      OpenAD_Symbol_5 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_5)
      GO TO 16
16    CONTINUE
      OpenAD_Symbol_1 = (__value__(X(1)) * 3.0D00)
      __value__(X(1)) = OpenAD_Symbol_1
      GO TO 17
17    CONTINUE
      OpenAD_Symbol_6 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_6)
      GO TO 18
18    CONTINUE
      OpenAD_Symbol_2 = (__value__(X(1)) * 2.0D00)
      __value__(X(1)) = OpenAD_Symbol_2
      GO TO 19
19    CONTINUE
      OpenAD_Symbol_7 = 4_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_7)
      GO TO 20
20    CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 21
21    CONTINUE
      OpenAD_Symbol_8 = 5_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_8)
      GO TO 22
22    CONTINUE
      GO TO 9
9     CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_9)
      DO WHILE(INT(OpenAD_Symbol_9) .ne. INT(0_w2f__i8))
        IF ( OpenAD_Symbol_9  .EQ.  1)  GO TO  44
        IF ( OpenAD_Symbol_9  .EQ.  2)  GO TO  45
        IF ( OpenAD_Symbol_9  .EQ.  3)  GO TO  46
        IF ( OpenAD_Symbol_9  .EQ.  4)  GO TO  47
        IF ( OpenAD_Symbol_9  .EQ.  5)  GO TO  48
44      CONTINUE
        GO TO 41
45      CONTINUE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_17)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_18)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_17, __deriv__(X(1)), __deriv__(
     > OpenAD_prop_1))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_18, __deriv__(X(1)), __deriv__(
     > OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(X(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        GO TO 41
46      CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(3.0D00, __deriv__(X(1)), __deriv__(OpenAD_prop_2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(X(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
        GO TO 41
47      CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(2.0D00, __deriv__(X(1)), __deriv__(OpenAD_prop_3))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(X(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_3), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
        GO TO 41
48      CONTINUE
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        GO TO 41
41      CONTINUE
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
133   CONTINUE
      GO TO 134
134   CONTINUE
      OpenAD_Symbol_10 = 0_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_10)
      GO TO 135
135   CONTINUE
C$OPENAD XXX Template ad_template.f
      GO TO 136
136   CONTINUE
      OpenAD_Symbol_11 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_11)
      GO TO 137
137   CONTINUE
      OpenAD_Symbol_0 = (__value__(X(1)) * __value__(X(1)))
      OpenAD_lin_0 = __value__(X(1))
      OpenAD_lin_1 = __value__(X(1))
      __value__(X(1)) = OpenAD_Symbol_0
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_1)
      GO TO 138
138   CONTINUE
      OpenAD_Symbol_12 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_12)
      GO TO 139
139   CONTINUE
      OpenAD_Symbol_1 = (__value__(X(1)) * 3.0D00)
      __value__(X(1)) = OpenAD_Symbol_1
      GO TO 140
140   CONTINUE
      OpenAD_Symbol_13 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_13)
      GO TO 141
141   CONTINUE
      OpenAD_Symbol_2 = (__value__(X(1)) * 2.0D00)
      __value__(X(1)) = OpenAD_Symbol_2
      GO TO 142
142   CONTINUE
      OpenAD_Symbol_14 = 4_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_14)
      GO TO 143
143   CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 144
144   CONTINUE
      OpenAD_Symbol_15 = 5_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_15)
      GO TO 145
145   CONTINUE
      GO TO 132
132   CONTINUE
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_16)
      DO WHILE(INT(OpenAD_Symbol_16) .ne. INT(0_w2f__i8))
        IF ( OpenAD_Symbol_16  .EQ.  1)  GO TO  167
        IF ( OpenAD_Symbol_16  .EQ.  2)  GO TO  168
        IF ( OpenAD_Symbol_16  .EQ.  3)  GO TO  169
        IF ( OpenAD_Symbol_16  .EQ.  4)  GO TO  170
        IF ( OpenAD_Symbol_16  .EQ.  5)  GO TO  171
167     CONTINUE
        GO TO 164
168     CONTINUE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_17)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_18)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_17, __deriv__(X(1)), __deriv__(
     > OpenAD_prop_1))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_18, __deriv__(X(1)), __deriv__(
     > OpenAD_prop_0))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(X(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        GO TO 164
169     CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(3.0D00, __deriv__(X(1)), __deriv__(OpenAD_prop_2))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(X(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
        GO TO 164
170     CONTINUE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(2.0D00, __deriv__(X(1)), __deriv__(OpenAD_prop_3))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(X(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_3), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_3))
        GO TO 164
171     CONTINUE
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        GO TO 164
164     CONTINUE
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_16)
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
