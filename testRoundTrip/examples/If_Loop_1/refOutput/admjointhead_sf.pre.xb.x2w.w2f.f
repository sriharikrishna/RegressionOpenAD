
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
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
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
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
      __value__(Y(1)) = __value__(X(1))
      IF(__value__(Y(1)) .GT. 0.0D00) THEN
        DO I = 1, 3, 1
          __value__(Y(1)) = (__value__(X(1)) * __value__(Y(1)))
        END DO
      ELSE
        __value__(Y(1)) = (__value__(Y(1)) / __value__(X(1)))
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = __value__(X(1))
      IF(__value__(Y(1)) .GT. 0.0D00) THEN
        OpenAD_Symbol_5 = 0_w2f__i8
        DO I = 1, 3, 1
          OpenAD_Symbol_0 = (__value__(X(1)) * __value__(Y(1)))
          OpenAD_lin_0 = __value__(Y(1))
          OpenAD_lin_1 = __value__(X(1))
          __value__(Y(1)) = OpenAD_Symbol_0
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_1)
          OpenAD_Symbol_5 = (INT(OpenAD_Symbol_5) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_5)
        OpenAD_Symbol_7 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_7)
      ELSE
        OpenAD_Symbol_1 = (__value__(Y(1)) / __value__(X(1)))
        OpenAD_lin_2 = (INT(1_w2f__i8) / __value__(X(1)))
        OpenAD_lin_3 = (-(__value__(Y(1)) /(__value__(X(1)) * __value__
     > (X(1)))))
        __value__(Y(1)) = OpenAD_Symbol_1
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_2)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_3)
        OpenAD_Symbol_6 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_6)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_2)
      IF(OpenAD_Symbol_2 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_3)
        OpenAD_Symbol_4 = 1
        DO WHILE(INT(OpenAD_Symbol_4) .LE. INT(OpenAD_Symbol_3))
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_14)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_15)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_14, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_15, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
          OpenAD_Symbol_4 = INT(OpenAD_Symbol_4) + 1
        END DO
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_16)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_17)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_16, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_17, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
      ENDIF
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
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
      __value__(Y(1)) = __value__(X(1))
      IF(__value__(Y(1)) .GT. 0.0D00) THEN
        OpenAD_Symbol_11 = 0_w2f__i8
        DO I = 1, 3, 1
          OpenAD_Symbol_0 = (__value__(X(1)) * __value__(Y(1)))
          OpenAD_lin_0 = __value__(Y(1))
          OpenAD_lin_1 = __value__(X(1))
          __value__(Y(1)) = OpenAD_Symbol_0
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_1)
          OpenAD_Symbol_11 = (INT(OpenAD_Symbol_11) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_11)
        OpenAD_Symbol_13 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_13)
      ELSE
        OpenAD_Symbol_1 = (__value__(Y(1)) / __value__(X(1)))
        OpenAD_lin_2 = (INT(1_w2f__i8) / __value__(X(1)))
        OpenAD_lin_3 = (-(__value__(Y(1)) /(__value__(X(1)) * __value__
     > (X(1)))))
        __value__(Y(1)) = OpenAD_Symbol_1
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_2)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_lin_3)
        OpenAD_Symbol_12 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_12)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_8)
      IF(OpenAD_Symbol_8 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_9)
        OpenAD_Symbol_10 = 1
        DO WHILE(INT(OpenAD_Symbol_10) .LE. INT(OpenAD_Symbol_9))
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_14)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_15)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_14, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_15, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
          OpenAD_Symbol_10 = INT(OpenAD_Symbol_10) + 1
        END DO
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_16)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_17)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_16, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_17, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
      ENDIF
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
