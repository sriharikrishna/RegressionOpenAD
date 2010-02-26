
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
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_8
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 10)
      TYPE (OpenADTy_active) Y(1 : 10)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) PI
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      INTEGER(w2f__i8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_9
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
      PI = 3.14149999618530273438D00
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          __value__(Y(INT(I))) = (PI * SIN(__value__(X(I))))
        ELSE
          __value__(Y(INT(I))) = (PI + COS(__value__(X(I))))
        ENDIF
      END DO
      __value__(Y(10)) = (__value__(Y(1)) * __value__(Y(9)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      PI = 3.14149999618530273438D00
      OpenAD_Symbol_13 = 0_w2f__i8
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          OpenAD_Symbol_0 = SIN(__value__(X(I)))
          __value__(Y(INT(I))) = (PI * OpenAD_Symbol_0)
          OpenAD_Symbol_3 = COS(__value__(X(I)))
          OpenAD_Symbol_2 = PI
          OpenAD_Symbol_9 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_9)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
          OpenAD_Symbol_14 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_14)
        ELSE
          __value__(Y(INT(I))) = (PI + COS(__value__(X(I))))
          OpenAD_Symbol_5 = (- SIN(__value__(X(I))))
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_5)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
          OpenAD_Symbol_15 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_15)
        ENDIF
        OpenAD_Symbol_13 = (INT(OpenAD_Symbol_13) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_13)
      OpenAD_Symbol_8 = (__value__(Y(1)) * __value__(Y(9)))
      OpenAD_Symbol_6 = __value__(Y(9))
      OpenAD_Symbol_7 = __value__(Y(1))
      __value__(Y(10)) = OpenAD_Symbol_8
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_6)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_7)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_26)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_27)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_26, __deriv__(Y(10)), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_27, __deriv__(Y(10)), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(10)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(9)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_10)
      OpenAD_Symbol_11 = 1
      DO WHILE(INT(OpenAD_Symbol_11) .LE. INT(OpenAD_Symbol_10))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_12)
        IF(OpenAD_Symbol_12 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_22)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_23)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_23, __deriv__(Y(INT(OpenAD_Symbol_22
     > ))), __deriv__(X(INT(OpenAD_Symbol_22))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_22))))
        ELSE
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_24)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_25)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_25, __deriv__(Y(INT(OpenAD_Symbol_24
     > ))), __deriv__(X(INT(OpenAD_Symbol_24))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_24))))
        ENDIF
        OpenAD_Symbol_11 = INT(OpenAD_Symbol_11) + 1
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
C$OPENAD XXX Template ad_template.f
      PI = 3.14149999618530273438D00
      OpenAD_Symbol_19 = 0_w2f__i8
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          OpenAD_Symbol_0 = SIN(__value__(X(I)))
          __value__(Y(INT(I))) = (PI * OpenAD_Symbol_0)
          OpenAD_Symbol_3 = COS(__value__(X(I)))
          OpenAD_Symbol_2 = PI
          OpenAD_Symbol_9 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_9)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
          OpenAD_Symbol_20 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_20)
        ELSE
          __value__(Y(INT(I))) = (PI + COS(__value__(X(I))))
          OpenAD_Symbol_5 = (- SIN(__value__(X(I))))
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_5)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
          OpenAD_Symbol_21 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_21)
        ENDIF
        OpenAD_Symbol_19 = (INT(OpenAD_Symbol_19) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_19)
      OpenAD_Symbol_8 = (__value__(Y(1)) * __value__(Y(9)))
      OpenAD_Symbol_6 = __value__(Y(9))
      OpenAD_Symbol_7 = __value__(Y(1))
      __value__(Y(10)) = OpenAD_Symbol_8
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_6)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_Symbol_7)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_26)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_27)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_26, __deriv__(Y(10)), __deriv__(
     > OpenAD_prop_1))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_27, __deriv__(Y(10)), __deriv__(
     > OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(10)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(9)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_16)
      OpenAD_Symbol_17 = 1
      DO WHILE(INT(OpenAD_Symbol_17) .LE. INT(OpenAD_Symbol_16))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_18)
        IF(OpenAD_Symbol_18 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_22)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_23)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_23, __deriv__(Y(INT(OpenAD_Symbol_22
     > ))), __deriv__(X(INT(OpenAD_Symbol_22))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_22))))
        ELSE
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_24)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_25)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_25, __deriv__(Y(INT(OpenAD_Symbol_24
     > ))), __deriv__(X(INT(OpenAD_Symbol_24))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_24))))
        ENDIF
        OpenAD_Symbol_17 = INT(OpenAD_Symbol_17) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
