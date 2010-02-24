
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
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
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
      __value__(Y(1)) = 2.0
      IF(__value__(X(1)) .GT. 0.0D00) THEN
        __value__(Y(1)) = __value__(X(1))
        IF(__value__(X(1)) .GT. 1.0D00) THEN
        ELSE
          IF(__value__(X(1)) .GT. 0.0D00) THEN
            __value__(Y(1)) = __value__(X(1))
          ENDIF
        ENDIF
      ENDIF
      __value__(Y(1)) = (__value__(Y(1)) * __value__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = 2.0
      IF(__value__(X(1)) .GT. 0.0D00) THEN
        __value__(Y(1)) = __value__(X(1))
        IF(__value__(X(1)) .GT. 1.0D00) THEN
          OpenAD_Symbol_8 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_8)
        ELSE
          IF(__value__(X(1)) .GT. 0.0D00) THEN
            __value__(Y(1)) = __value__(X(1))
            OpenAD_Symbol_6 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_6)
          ELSE
            OpenAD_Symbol_7 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_7)
          ENDIF
          OpenAD_Symbol_9 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_9)
        ENDIF
        OpenAD_Symbol_11 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_11)
      ELSE
        OpenAD_Symbol_10 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_10)
      ENDIF
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
      CALL pop_s0(OpenAD_Symbol_21)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_22)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_3)
      IF(OpenAD_Symbol_3 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_4)
        IF(OpenAD_Symbol_4 .ne. 0) THEN
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(1)), __deriv__(OpenAD_prop_0))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        ELSE
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_5)
          IF(OpenAD_Symbol_5 .ne. 0) THEN
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(Y(1)))
          ENDIF
        ENDIF
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
      ENDIF
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
      __value__(Y(1)) = 2.0
      IF(__value__(X(1)) .GT. 0.0D00) THEN
        __value__(Y(1)) = __value__(X(1))
        IF(__value__(X(1)) .GT. 1.0D00) THEN
          OpenAD_Symbol_17 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_17)
        ELSE
          IF(__value__(X(1)) .GT. 0.0D00) THEN
            __value__(Y(1)) = __value__(X(1))
            OpenAD_Symbol_15 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_15)
          ELSE
            OpenAD_Symbol_16 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_16)
          ENDIF
          OpenAD_Symbol_18 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_18)
        ENDIF
        OpenAD_Symbol_20 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_20)
      ELSE
        OpenAD_Symbol_19 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_19)
      ENDIF
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
      CALL pop_s0(OpenAD_Symbol_21)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_22)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_2))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_12)
      IF(OpenAD_Symbol_12 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_13)
        IF(OpenAD_Symbol_13 .ne. 0) THEN
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(1)), __deriv__(OpenAD_prop_0))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        ELSE
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_14)
          IF(OpenAD_Symbol_14 .ne. 0) THEN
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(Y(1)))
          ENDIF
        ENDIF
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
      ENDIF
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
