
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
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      TYPE (OpenADTy_active) OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_2
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
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
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
      OpenAD_tmp_0 = TAN(__value__(OMEGA) * __value__(T))
      OpenAD_lin_1 = __value__(T)
      OpenAD_lin_2 = __value__(OMEGA)
      OpenAD_lin_0 = (OpenAD_tmp_0 * OpenAD_tmp_0 + INT(1_w2f__i8))
      __value__(V) = OpenAD_tmp_0
      OpenAD_tmp_1 = (__value__(NU) * __value__(V))
      OpenAD_tmp_2 = (__value__(GAMMA) - __value__(V))
      __value__(Y(1)) = (OpenAD_tmp_1 / OpenAD_tmp_2)
      OpenAD_lin_5 = __value__(V)
      OpenAD_lin_6 = __value__(NU)
      OpenAD_lin_3 = (INT(1_w2f__i8) / OpenAD_tmp_2)
      OpenAD_lin_4 = (-(OpenAD_tmp_1 /(OpenAD_tmp_2 * OpenAD_tmp_2)))
      OpenAD_acc_0 = (OpenAD_lin_6 * OpenAD_lin_3 + INT((-1_w2f__i8)) *
     >  OpenAD_lin_4)
      OpenAD_acc_1 = (OpenAD_lin_5 * OpenAD_lin_3)
      OpenAD_acc_2 = (OpenAD_lin_1 * OpenAD_lin_0 * OpenAD_acc_0)
      OpenAD_acc_3 = (OpenAD_lin_2 * OpenAD_lin_0 * OpenAD_acc_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_2)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_4)
      OpenAD_Symbol_0 = (__value__(Y(1)) * __value__(GAMMA))
      OpenAD_lin_7 = __value__(GAMMA)
      OpenAD_lin_8 = __value__(Y(1))
      __value__(Y(2)) = OpenAD_Symbol_0
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_7)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_8)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_1)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_2)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_1, __deriv__(Y(2)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_2, __deriv__(Y(2)), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_3)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_4)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_5)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_6)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_3, __deriv__(Y(1)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_4, __deriv__(Y(1)), __deriv__(X(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_5, __deriv__(Y(1)), __deriv__(X(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_6, __deriv__(Y(1)), __deriv__(X(1)))
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
      OpenAD_tmp_0 = TAN(__value__(OMEGA) * __value__(T))
      OpenAD_lin_1 = __value__(T)
      OpenAD_lin_2 = __value__(OMEGA)
      OpenAD_lin_0 = (OpenAD_tmp_0 * OpenAD_tmp_0 + INT(1_w2f__i8))
      __value__(V) = OpenAD_tmp_0
      OpenAD_tmp_1 = (__value__(NU) * __value__(V))
      OpenAD_tmp_2 = (__value__(GAMMA) - __value__(V))
      __value__(Y(1)) = (OpenAD_tmp_1 / OpenAD_tmp_2)
      OpenAD_lin_5 = __value__(V)
      OpenAD_lin_6 = __value__(NU)
      OpenAD_lin_3 = (INT(1_w2f__i8) / OpenAD_tmp_2)
      OpenAD_lin_4 = (-(OpenAD_tmp_1 /(OpenAD_tmp_2 * OpenAD_tmp_2)))
      OpenAD_acc_0 = (OpenAD_lin_6 * OpenAD_lin_3 + INT((-1_w2f__i8)) *
     >  OpenAD_lin_4)
      OpenAD_acc_1 = (OpenAD_lin_5 * OpenAD_lin_3)
      OpenAD_acc_2 = (OpenAD_lin_1 * OpenAD_lin_0 * OpenAD_acc_0)
      OpenAD_acc_3 = (OpenAD_lin_2 * OpenAD_lin_0 * OpenAD_acc_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_2)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_acc_3)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_4)
      OpenAD_Symbol_0 = (__value__(Y(1)) * __value__(GAMMA))
      OpenAD_lin_7 = __value__(GAMMA)
      OpenAD_lin_8 = __value__(Y(1))
      __value__(Y(2)) = OpenAD_Symbol_0
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_7)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_lin_8)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_1)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_2)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_1, __deriv__(Y(2)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_2, __deriv__(Y(2)), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_3)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_4)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_5)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_6)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_3, __deriv__(Y(1)), __deriv__(GAMMA))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_4, __deriv__(Y(1)), __deriv__(X(4)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_5, __deriv__(Y(1)), __deriv__(X(3)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_6, __deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(GAMMA), __deriv__(X(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(GAMMA))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
