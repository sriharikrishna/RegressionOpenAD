
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
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I(1 : 3)
      INTEGER(w2f__i4) MAXI
      TYPE (OpenADTy_active) T
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
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
      I(1) = 1
      I(2) = 0
      I(3) = (-1)
      MAXI = MAXVAL(I)
      __value__(T) = (__value__(X(MAXI)) * __value__(X(2)))
      __value__(Y(INT(MAXI))) = SIN(__value__(T))
      __value__(Y(2)) = COS(__value__(T))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      I(1) = 1
      I(2) = 0
      I(3) = (-1)
      MAXI = MAXVAL(I)
      __value__(T) = (__value__(X(MAXI)) * __value__(X(2)))
      OpenAD_Symbol_0 = __value__(X(2))
      OpenAD_Symbol_1 = __value__(X(MAXI))
      __value__(Y(INT(MAXI))) = SIN(__value__(T))
      OpenAD_Symbol_2 = COS(__value__(T))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_2)
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(MAXI)
      __value__(Y(2)) = COS(__value__(T))
      OpenAD_Symbol_3 = (- SIN(__value__(T)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_3)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_4)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_4, __deriv__(Y(2)), __deriv__(T))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_5)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_6)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_7)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_8)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_6, __deriv__(Y(INT(OpenAD_Symbol_5))),
     >  __deriv__(T))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_5))))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_7, __deriv__(T), __deriv__(X(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_8, __deriv__(T), __deriv__(X(INT(
     > OpenAD_Symbol_5))))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T))
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
      I(1) = 1
      I(2) = 0
      I(3) = (-1)
      MAXI = MAXVAL(I)
      __value__(T) = (__value__(X(MAXI)) * __value__(X(2)))
      OpenAD_Symbol_0 = __value__(X(2))
      OpenAD_Symbol_1 = __value__(X(MAXI))
      __value__(Y(INT(MAXI))) = SIN(__value__(T))
      OpenAD_Symbol_2 = COS(__value__(T))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_0)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_1)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_2)
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(MAXI)
      __value__(Y(2)) = COS(__value__(T))
      OpenAD_Symbol_3 = (- SIN(__value__(T)))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_3)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_4)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_4, __deriv__(Y(2)), __deriv__(T))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_5)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_6)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_7)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_8)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_6, __deriv__(Y(INT(OpenAD_Symbol_5))),
     >  __deriv__(T))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_5))))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_7, __deriv__(T), __deriv__(X(2)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_8, __deriv__(T), __deriv__(X(INT(
     > OpenAD_Symbol_5))))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
