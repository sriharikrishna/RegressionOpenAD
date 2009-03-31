
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
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      TYPE (OpenADTy_active) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 4)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) GAMMA
      TYPE (OpenADTy_active) NU
      TYPE (OpenADTy_active) OMEGA
      TYPE (OpenADTy_active) T
      TYPE (OpenADTy_active) V
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
      __value__(NU) = __value__(X(1))
      __value__(GAMMA) = __value__(X(2))
      __value__(OMEGA) = __value__(X(3))
      __value__(T) = __value__(X(4))
      __value__(V) = TAN(__value__(OMEGA) * __value__(T))
      __value__(Y(1)) = ((__value__(NU) * __value__(V)) /(__value__(
     > GAMMA) - __value__(V)))
      __value__(Y(2)) = (__value__(Y(1)) * __value__(GAMMA))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
      __value__(NU) = __value__(X(1))
      __value__(GAMMA) = __value__(X(2))
      __value__(OMEGA) = __value__(X(3))
      __value__(T) = __value__(X(4))
      OpenAD_Symbol_0 = TAN(__value__(OMEGA) * __value__(T))
      OpenAD_Symbol_2 = __value__(T)
      OpenAD_Symbol_3 = __value__(OMEGA)
      OpenAD_Symbol_1 = (OpenAD_Symbol_0 * OpenAD_Symbol_0 + INT(
     > 1_w2f__i8))
      __value__(V) = OpenAD_Symbol_0
      OpenAD_Symbol_4 = (__value__(NU) * __value__(V))
      OpenAD_Symbol_5 = (__value__(GAMMA) - __value__(V))
      __value__(Y(1)) = (OpenAD_Symbol_4 / OpenAD_Symbol_5)
      OpenAD_Symbol_8 = __value__(V)
      OpenAD_Symbol_9 = __value__(NU)
      OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
      OpenAD_Symbol_7 = (-(OpenAD_Symbol_4 /(OpenAD_Symbol_5 *
     >  OpenAD_Symbol_5)))
      OpenAD_Symbol_13 = (OpenAD_Symbol_9 * OpenAD_Symbol_6 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_7)
      OpenAD_Symbol_14 = (OpenAD_Symbol_8 * OpenAD_Symbol_6)
      OpenAD_Symbol_15 = (OpenAD_Symbol_2 * OpenAD_Symbol_1 *
     >  OpenAD_Symbol_13)
      OpenAD_Symbol_16 = (OpenAD_Symbol_3 * OpenAD_Symbol_1 *
     >  OpenAD_Symbol_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_16)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_7)
      OpenAD_Symbol_12 = (__value__(Y(1)) * __value__(GAMMA))
      OpenAD_Symbol_10 = __value__(GAMMA)
      OpenAD_Symbol_11 = __value__(Y(1))
      __value__(Y(2)) = OpenAD_Symbol_12
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_11)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_18)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_19)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_18, __deriv__(Y(2)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_19, __deriv__(Y(2)), __deriv__(
     > OpenAD_Symbol_17))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_Symbol_17), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_Symbol_17))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_20)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_21)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_22)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_23)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_20, __deriv__(Y(1)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(Y(1)), __deriv__(X(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(Y(1)), __deriv__(X(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(GAMMA), __deriv__(X(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(GAMMA))
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
      __value__(NU) = __value__(X(1))
      __value__(GAMMA) = __value__(X(2))
      __value__(OMEGA) = __value__(X(3))
      __value__(T) = __value__(X(4))
      OpenAD_Symbol_0 = TAN(__value__(OMEGA) * __value__(T))
      OpenAD_Symbol_2 = __value__(T)
      OpenAD_Symbol_3 = __value__(OMEGA)
      OpenAD_Symbol_1 = (OpenAD_Symbol_0 * OpenAD_Symbol_0 + INT(
     > 1_w2f__i8))
      __value__(V) = OpenAD_Symbol_0
      OpenAD_Symbol_4 = (__value__(NU) * __value__(V))
      OpenAD_Symbol_5 = (__value__(GAMMA) - __value__(V))
      __value__(Y(1)) = (OpenAD_Symbol_4 / OpenAD_Symbol_5)
      OpenAD_Symbol_8 = __value__(V)
      OpenAD_Symbol_9 = __value__(NU)
      OpenAD_Symbol_6 = (INT(1_w2f__i8) / OpenAD_Symbol_5)
      OpenAD_Symbol_7 = (-(OpenAD_Symbol_4 /(OpenAD_Symbol_5 *
     >  OpenAD_Symbol_5)))
      OpenAD_Symbol_13 = (OpenAD_Symbol_9 * OpenAD_Symbol_6 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_7)
      OpenAD_Symbol_14 = (OpenAD_Symbol_8 * OpenAD_Symbol_6)
      OpenAD_Symbol_15 = (OpenAD_Symbol_2 * OpenAD_Symbol_1 *
     >  OpenAD_Symbol_13)
      OpenAD_Symbol_16 = (OpenAD_Symbol_3 * OpenAD_Symbol_1 *
     >  OpenAD_Symbol_13)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_14)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_15)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_16)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_7)
      OpenAD_Symbol_12 = (__value__(Y(1)) * __value__(GAMMA))
      OpenAD_Symbol_10 = __value__(GAMMA)
      OpenAD_Symbol_11 = __value__(Y(1))
      __value__(Y(2)) = OpenAD_Symbol_12
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_10)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_11)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_18)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_19)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_18, __deriv__(Y(2)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_19, __deriv__(Y(2)), __deriv__(
     > OpenAD_Symbol_17))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_Symbol_17), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_Symbol_17))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_20)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_21)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_22)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_23)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_20, __deriv__(Y(1)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(Y(1)), __deriv__(X(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(Y(1)), __deriv__(X(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(GAMMA), __deriv__(X(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(GAMMA))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
