
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
      TYPE (OpenADTy_active) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
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
      IF(__value__(X(1)) .LE. __value__(X(2))) THEN
        IF(__value__(X(1)) .eq. __value__(X(2))) THEN
          __value__(Y(1)) = (__value__(X(1)) * __value__(X(1)))
        ELSE
          __value__(Y(1)) = (__value__(X(2)) - __value__(X(1)))
        ENDIF
      ELSE
        __value__(Y(1)) = (__value__(X(1)) - __value__(X(2)))
      ENDIF
      __value__(Y(2)) = __value__(Y(1))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      IF(__value__(X(1)) .LE. __value__(X(2))) THEN
        IF(__value__(X(1)) .eq. __value__(X(2))) THEN
          __value__(Y(1)) = (__value__(X(1)) * __value__(X(1)))
          OpenAD_Symbol_0 = __value__(X(1))
          OpenAD_Symbol_1 = __value__(X(1))
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_1)
          OpenAD_Symbol_5 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_5)
        ELSE
          __value__(Y(1)) = (__value__(X(2)) - __value__(X(1)))
          OpenAD_Symbol_6 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_6)
        ENDIF
        OpenAD_Symbol_8 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_8)
      ELSE
        __value__(Y(1)) = (__value__(X(1)) - __value__(X(2)))
        OpenAD_Symbol_7 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_7)
      ENDIF
      __value__(Y(2)) = __value__(Y(1))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(2)), __deriv__(OpenAD_Symbol_2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_Symbol_2), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_Symbol_2))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_3)
      IF(OpenAD_Symbol_3 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_4)
        IF(OpenAD_Symbol_4 .ne. 0) THEN
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_15)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_15, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_16)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_16, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
        ELSE
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-1_w2f__i8, __deriv__(Y(1)), __deriv__(X(1)))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(Y(1)), __deriv__(X(2)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
        ENDIF
      ELSE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(-1_w2f__i8, __deriv__(Y(1)), __deriv__(X(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
      ENDIF
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
      IF(__value__(X(1)) .LE. __value__(X(2))) THEN
        IF(__value__(X(1)) .eq. __value__(X(2))) THEN
          __value__(Y(1)) = (__value__(X(1)) * __value__(X(1)))
          OpenAD_Symbol_0 = __value__(X(1))
          OpenAD_Symbol_1 = __value__(X(1))
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_0)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_1)
          OpenAD_Symbol_11 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_11)
        ELSE
          __value__(Y(1)) = (__value__(X(2)) - __value__(X(1)))
          OpenAD_Symbol_12 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_12)
        ENDIF
        OpenAD_Symbol_14 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_14)
      ELSE
        __value__(Y(1)) = (__value__(X(1)) - __value__(X(2)))
        OpenAD_Symbol_13 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_13)
      ENDIF
      __value__(Y(2)) = __value__(Y(1))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(2)), __deriv__(OpenAD_Symbol_2))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(2)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_Symbol_2), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_Symbol_2))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_9)
      IF(OpenAD_Symbol_9 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_10)
        IF(OpenAD_Symbol_10 .ne. 0) THEN
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_15)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_15, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_16)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_16, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
        ELSE
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(-1_w2f__i8, __deriv__(Y(1)), __deriv__(X(1)))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(1_w2f__i8, __deriv__(Y(1)), __deriv__(X(2)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
        ENDIF
      ELSE
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(-1_w2f__i8, __deriv__(Y(1)), __deriv__(X(2)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
      ENDIF
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
