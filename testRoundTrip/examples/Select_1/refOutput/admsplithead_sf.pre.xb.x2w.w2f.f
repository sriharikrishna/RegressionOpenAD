
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
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
      INTEGER(w2f__i4) select_expr_temp_0
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      I = 1
      __value__(Y(1)) = 2.0
      select_expr_temp_0 = I
      IF ( select_expr_temp_0  .EQ.  1)  GO TO  4
      IF ( select_expr_temp_0  .EQ.  2)  GO TO  8
      GO TO 9
9     CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 6
4     CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 6
8     CONTINUE
      __value__(Y(1)) = __value__(X(1))
      GO TO 6
6     CONTINUE
      __value__(Y(1)) = (__value__(Y(1)) * __value__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      I = 1
      __value__(Y(1)) = 2.0
      select_expr_temp_0 = I
      IF ( select_expr_temp_0  .EQ.  1)  GO TO  40
      IF ( select_expr_temp_0  .EQ.  2)  GO TO  44
      GO TO 45
45    CONTINUE
      __value__(Y(1)) = __value__(X(1))
      OpenAD_Symbol_6 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_6)
      GO TO 49
40    CONTINUE
      __value__(Y(1)) = __value__(X(1))
      OpenAD_Symbol_4 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_4)
      GO TO 49
44    CONTINUE
      __value__(Y(1)) = __value__(X(1))
      OpenAD_Symbol_5 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_5)
      GO TO 49
49    CONTINUE
      OpenAD_Symbol_2 = (__value__(Y(1)) * __value__(Y(1)))
      OpenAD_Symbol_0 = __value__(Y(1))
      OpenAD_Symbol_1 = __value__(Y(1))
      __value__(Y(1)) = OpenAD_Symbol_2
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_0)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_1)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_11)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_12)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_11, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_12, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_3)
      IF ( OpenAD_Symbol_3  .EQ.  1)  GO TO  94
      IF ( OpenAD_Symbol_3  .EQ.  2)  GO TO  93
      IF ( OpenAD_Symbol_3  .EQ.  3)  GO TO  92
94    CONTINUE
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      GO TO 96
93    CONTINUE
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      GO TO 96
92    CONTINUE
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      GO TO 96
96    CONTINUE
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
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
C$OPENAD XXX Template ad_template.f
      I = 1
      __value__(Y(1)) = 2.0
      select_expr_temp_0 = I
      IF ( select_expr_temp_0  .EQ.  1)  GO TO  150
      IF ( select_expr_temp_0  .EQ.  2)  GO TO  154
      GO TO 155
155   CONTINUE
      __value__(Y(1)) = __value__(X(1))
      OpenAD_Symbol_10 = 3_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_10)
      GO TO 159
150   CONTINUE
      __value__(Y(1)) = __value__(X(1))
      OpenAD_Symbol_8 = 1_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_8)
      GO TO 159
154   CONTINUE
      __value__(Y(1)) = __value__(X(1))
      OpenAD_Symbol_9 = 2_w2f__i8
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_9)
      GO TO 159
159   CONTINUE
      OpenAD_Symbol_2 = (__value__(Y(1)) * __value__(Y(1)))
      OpenAD_Symbol_0 = __value__(Y(1))
      OpenAD_Symbol_1 = __value__(Y(1))
      __value__(Y(1)) = OpenAD_Symbol_2
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_0)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_1)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_11)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_12)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_11, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_12, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_7)
      IF ( OpenAD_Symbol_7  .EQ.  1)  GO TO  204
      IF ( OpenAD_Symbol_7  .EQ.  2)  GO TO  203
      IF ( OpenAD_Symbol_7  .EQ.  3)  GO TO  202
204   CONTINUE
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      GO TO 206
203   CONTINUE
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      GO TO 206
202   CONTINUE
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      GO TO 206
206   CONTINUE
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
