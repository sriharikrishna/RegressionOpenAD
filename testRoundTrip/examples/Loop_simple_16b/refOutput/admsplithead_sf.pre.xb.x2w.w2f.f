
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
      SUBROUTINE lagran(I, X, A, SP, LAG)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_acc_0
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) X
      TYPE (OpenADTy_active) A(1 : 4)
      INTEGER(w2f__i4) SP
      TYPE (OpenADTy_active) LAG
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) DENOM
      INTEGER(w2f__i4) K
      TYPE (OpenADTy_active) NUMER
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      __value__(NUMER) = 1.0D00
      __value__(DENOM) = 1.0D00
C$OPENAD XXX Simple loop
      DO K = 1, SP, 1
        IF(I .ne. K) THEN
          __value__(DENOM) = (__value__(DENOM) *(__value__(A(I)) -
     >  __value__(A(K))))
          __value__(NUMER) = (__value__(NUMER) *(X - __value__(A(K))))
        ENDIF
      END DO
      __value__(LAG) = (__value__(NUMER) / __value__(DENOM))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      __value__(NUMER) = 1.0D00
      __value__(DENOM) = 1.0D00
C$OPENAD XXX Simple loop
      DO K = 1, SP, 1
        IF(I .ne. K) THEN
          OpenAD_Symbol_0 = (__value__(A(I)) - __value__(A(K)))
          OpenAD_Symbol_3 = (__value__(DENOM) * OpenAD_Symbol_0)
          OpenAD_Symbol_1 = OpenAD_Symbol_0
          OpenAD_Symbol_2 = __value__(DENOM)
          __value__(DENOM) = OpenAD_Symbol_3
          OpenAD_Symbol_4 = (X - __value__(A(K)))
          OpenAD_Symbol_8 = (__value__(NUMER) * OpenAD_Symbol_4)
          OpenAD_Symbol_5 = OpenAD_Symbol_4
          OpenAD_Symbol_6 = __value__(NUMER)
          __value__(NUMER) = OpenAD_Symbol_8
          OpenAD_acc_0 = (INT((-1_w2f__i8)) * OpenAD_Symbol_6)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_1)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_5)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_0)
        ENDIF
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(SP)
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(I)
      __value__(LAG) = (__value__(NUMER) / __value__(DENOM))
      OpenAD_Symbol_9 = (INT(1_w2f__i8) / __value__(DENOM))
      OpenAD_Symbol_10 = (-(__value__(NUMER) /(__value__(DENOM) *
     >  __value__(DENOM))))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_10)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_23)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_24)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(LAG), __deriv__(DENOM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_24, __deriv__(LAG), __deriv__(NUMER))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAG))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(I)
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(SP)
      K = 1 + 1 *((SP - 1) / 1)
      DO WHILE(K .GE. 1)
        IF(I .ne. K) THEN
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_19)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_20)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_21)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_22)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_19, __deriv__(NUMER), __deriv__(A(K)
     > ))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_20, __deriv__(NUMER), __deriv__(
     > OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(NUMER))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_21, __deriv__(DENOM), __deriv__(
     > OpenAD_prop_2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_22, __deriv__(DENOM), __deriv__(
     > OpenAD_prop_0))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DENOM))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_2), __deriv__(A(K)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(A(I)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(NUMER))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(DENOM))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        ENDIF
        K = K - 1
      END DO
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DENOM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NUMER))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(I)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(X)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(SP)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(A))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(A))
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(SP)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(X)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(I)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(LAG))
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(I)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(X)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(SP)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(A))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(A))
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(SP)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(X)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(I)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(LAG))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      __value__(NUMER) = 1.0D00
      __value__(DENOM) = 1.0D00
C$OPENAD XXX Simple loop
      OpenAD_Symbol_14 = 0_w2f__i8
      DO K = 1, SP, 1
        IF(I .ne. K) THEN
          OpenAD_Symbol_0 = (__value__(A(I)) - __value__(A(K)))
          OpenAD_Symbol_3 = (__value__(DENOM) * OpenAD_Symbol_0)
          OpenAD_Symbol_1 = OpenAD_Symbol_0
          OpenAD_Symbol_2 = __value__(DENOM)
          __value__(DENOM) = OpenAD_Symbol_3
          OpenAD_Symbol_4 = (X - __value__(A(K)))
          OpenAD_Symbol_8 = (__value__(NUMER) * OpenAD_Symbol_4)
          OpenAD_Symbol_5 = OpenAD_Symbol_4
          OpenAD_Symbol_6 = __value__(NUMER)
          __value__(NUMER) = OpenAD_Symbol_8
          OpenAD_acc_0 = (INT((-1_w2f__i8)) * OpenAD_Symbol_6)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_1)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_5)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_acc_0)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
          OpenAD_Symbol_15 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_15)
        ELSE
          OpenAD_Symbol_16 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_16)
        ENDIF
        OpenAD_Symbol_14 = (INT(OpenAD_Symbol_14) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_14)
      __value__(LAG) = (__value__(NUMER) / __value__(DENOM))
      OpenAD_Symbol_9 = (INT(1_w2f__i8) / __value__(DENOM))
      OpenAD_Symbol_10 = (-(__value__(NUMER) /(__value__(DENOM) *
     >  __value__(DENOM))))
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_9)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_10)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_23)
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_24)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(LAG), __deriv__(DENOM))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_24, __deriv__(LAG), __deriv__(NUMER))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(LAG))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_11)
      OpenAD_Symbol_12 = 1
      DO WHILE(INT(OpenAD_Symbol_12) .LE. INT(OpenAD_Symbol_11))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_13)
        IF(OpenAD_Symbol_13 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_17)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_18)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_19)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_20)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_21)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_22)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_19, __deriv__(NUMER), __deriv__(A(
     > INT(OpenAD_Symbol_17))))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_20, __deriv__(NUMER), __deriv__(
     > OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(NUMER))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_21, __deriv__(DENOM), __deriv__(
     > OpenAD_prop_2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_22, __deriv__(DENOM), __deriv__(
     > OpenAD_prop_0))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(DENOM))
C         $OpenAD$ INLINE DecDeriv(subst,subst)
          CALL DecDeriv(__deriv__(OpenAD_prop_2), __deriv__(A(INT(
     > OpenAD_Symbol_17))))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_2), __deriv__(A(INT(
     > OpenAD_Symbol_18))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_2))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(NUMER))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(DENOM))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
        ENDIF
        OpenAD_Symbol_12 = INT(OpenAD_Symbol_12) + 1
      END DO
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(DENOM))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(NUMER))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 4)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL lagran
      INTEGER(w2f__i4) OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      INTEGER(w2f__i4) OAD_CTMP2
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
      OAD_CTMP0 = 2
      OAD_CTMP1 = 2.0D00
      OAD_CTMP2 = 4
      CALL lagran(OAD_CTMP0, OAD_CTMP1, __deriv__(X), OAD_CTMP2,
     >  __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OAD_CTMP0 = 2
      OAD_CTMP1 = 2.0D00
      OAD_CTMP2 = 4
      CALL lagran(OAD_CTMP0, OAD_CTMP1, __deriv__(X), OAD_CTMP2,
     >  __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL lagran(OAD_CTMP0, OAD_CTMP1, __deriv__(X), OAD_CTMP2,
     >  __deriv__(Y(1)))
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
      OAD_CTMP0 = 2
      OAD_CTMP1 = 2.0D00
      OAD_CTMP2 = 4
      CALL lagran(OAD_CTMP0, OAD_CTMP1, __deriv__(X), OAD_CTMP2,
     >  __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL lagran(OAD_CTMP0, OAD_CTMP1, __deriv__(X), OAD_CTMP2,
     >  __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
