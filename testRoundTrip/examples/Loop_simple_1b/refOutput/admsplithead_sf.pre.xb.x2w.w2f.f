
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
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
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
C$OPENAD XXX Simple loop
      DO I = 2, 6, 1
        __value__(Y(1)) = (I * __value__(X(1)) * __value__(Y(1)))
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = __value__(X(1))
C$OPENAD XXX Simple loop
      DO I = 2, 6, 1
        OpenAD_tmp_0 = (__value__(X(1)) * __value__(Y(1)))
        OpenAD_Symbol_0 = (I * OpenAD_tmp_0)
        OpenAD_lin_2 = __value__(Y(1))
        OpenAD_lin_3 = __value__(X(1))
        OpenAD_lin_1 = I
        __value__(Y(1)) = OpenAD_Symbol_0
        OpenAD_acc_0 = (OpenAD_lin_2 * OpenAD_lin_1)
        OpenAD_acc_1 = (OpenAD_lin_3 * OpenAD_lin_1)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_0)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_1)
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
      I = 2 + 1 *((6 - 2) / 1)
      DO WHILE(I .GE. 2)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_4)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_5)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_4, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_5, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        I = I - 1
      END DO
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
C$OPENAD XXX Simple loop
      OpenAD_Symbol_3 = 0_w2f__i8
      DO I = 2, 6, 1
        OpenAD_tmp_0 = (__value__(X(1)) * __value__(Y(1)))
        OpenAD_Symbol_0 = (I * OpenAD_tmp_0)
        OpenAD_lin_2 = __value__(Y(1))
        OpenAD_lin_3 = __value__(X(1))
        OpenAD_lin_1 = I
        __value__(Y(1)) = OpenAD_Symbol_0
        OpenAD_acc_0 = (OpenAD_lin_2 * OpenAD_lin_1)
        OpenAD_acc_1 = (OpenAD_lin_3 * OpenAD_lin_1)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_0)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_acc_1)
        OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_3)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_1)
      OpenAD_Symbol_2 = 1
      DO WHILE(INT(OpenAD_Symbol_2) .LE. INT(OpenAD_Symbol_1))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_4)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_5)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_4, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_0))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_5, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2) + 1
      END DO
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
