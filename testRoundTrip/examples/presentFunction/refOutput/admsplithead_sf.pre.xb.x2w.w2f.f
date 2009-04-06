
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE opt(REQARG, OPTARG, OUTARG)
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
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      TYPE (OpenADTy_active) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) REQARG
      TYPE (OpenADTy_active) OPTARG
      OPTIONAL  OPTARG
      TYPE (OpenADTy_active) OUTARG
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      IF(PRESENT(__value__(OPTARG))) THEN
        IF(__value__(OPTARG) .LE. 2.0D00) THEN
          __value__(OUTARG) = (__value__(REQARG) * __value__(OPTARG) *
     >  __value__(OUTARG))
        ENDIF
      ELSE
        __value__(OUTARG) = __value__(REQARG)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      IF(PRESENT(__value__(OPTARG))) THEN
        IF(__value__(OPTARG) .LE. 2.0D00) THEN
          OpenAD_Symbol_0 = (__value__(OPTARG) * __value__(OUTARG))
          OpenAD_Symbol_5 = (__value__(REQARG) * OpenAD_Symbol_0)
          OpenAD_Symbol_1 = OpenAD_Symbol_0
          OpenAD_Symbol_3 = __value__(OUTARG)
          OpenAD_Symbol_4 = __value__(OPTARG)
          OpenAD_Symbol_2 = __value__(REQARG)
          __value__(OUTARG) = OpenAD_Symbol_5
          OpenAD_Symbol_7 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
          OpenAD_Symbol_8 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_1)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_7)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_8)
          OpenAD_Symbol_12 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_12)
        ELSE
          OpenAD_Symbol_13 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_13)
        ENDIF
        OpenAD_Symbol_15 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_15)
      ELSE
        __value__(OUTARG) = __value__(REQARG)
        OpenAD_Symbol_14 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_14)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_10)
      IF(OpenAD_Symbol_10 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_11)
        IF(OpenAD_Symbol_11 .ne. 0) THEN
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_22)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_23)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_24)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_22, __deriv__(OUTARG), __deriv__(
     > OpenAD_Symbol_9))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_23, __deriv__(OUTARG), __deriv__(
     > OPTARG))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_24, __deriv__(OUTARG), __deriv__(
     > REQARG))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OUTARG))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_Symbol_9), __deriv__(OUTARG))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_9))
        ENDIF
      ELSE
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OUTARG), __deriv__(REQARG))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OUTARG))
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(REQARG))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(OPTARG))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(OUTARG))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(OUTARG))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(OPTARG))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(REQARG))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(OUTARG))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(REQARG))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(OPTARG))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(OUTARG))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(OUTARG))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(OPTARG))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(REQARG))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(OUTARG))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      IF(PRESENT(__value__(OPTARG))) THEN
        IF(__value__(OPTARG) .LE. 2.0D00) THEN
          OpenAD_Symbol_0 = (__value__(OPTARG) * __value__(OUTARG))
          OpenAD_Symbol_5 = (__value__(REQARG) * OpenAD_Symbol_0)
          OpenAD_Symbol_1 = OpenAD_Symbol_0
          OpenAD_Symbol_3 = __value__(OUTARG)
          OpenAD_Symbol_4 = __value__(OPTARG)
          OpenAD_Symbol_2 = __value__(REQARG)
          __value__(OUTARG) = OpenAD_Symbol_5
          OpenAD_Symbol_7 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
          OpenAD_Symbol_8 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_1)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_7)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_Symbol_8)
          OpenAD_Symbol_18 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_18)
        ELSE
          OpenAD_Symbol_19 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_19)
        ENDIF
        OpenAD_Symbol_21 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_21)
      ELSE
        __value__(OUTARG) = __value__(REQARG)
        OpenAD_Symbol_20 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_20)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_16)
      IF(OpenAD_Symbol_16 .ne. 0) THEN
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_17)
        IF(OpenAD_Symbol_17 .ne. 0) THEN
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_22)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_23)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_24)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_22, __deriv__(OUTARG), __deriv__(
     > OpenAD_Symbol_9))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_23, __deriv__(OUTARG), __deriv__(
     > OPTARG))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_24, __deriv__(OUTARG), __deriv__(
     > REQARG))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OUTARG))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_Symbol_9), __deriv__(OUTARG))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_Symbol_9))
        ENDIF
      ELSE
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OUTARG), __deriv__(REQARG))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OUTARG))
      ENDIF
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface 
        SUBROUTINE opt(REQARG, OPTARG, OUTARG)
        use w2f__types
        TYPE (OpenADTy_active) REQARG
        INTENT(in)  REQARG
        TYPE (OpenADTy_active) OPTARG
        OPTIONAL  OPTARG
        INTENT(in)  OPTARG
        TYPE (OpenADTy_active) OUTARG
        END SUBROUTINE

      end interface 
      
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
      __value__(Y(1)) = (__value__(X(1)) * 2.0D00)
      CALL opt(__deriv__(X(2)), __deriv__(X(1)), __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
      __value__(Y(1)) = (__value__(X(1)) * 2.0D00)
      CALL opt(__deriv__(X(2)), __deriv__(X(1)), __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL opt(__deriv__(X(2)), __deriv__(X(1)), __deriv__(Y(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(2.0D00, __deriv__(Y(1)), __deriv__(X(1)))
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
      __value__(Y(1)) = (__value__(X(1)) * 2.0D00)
      CALL opt(__deriv__(X(2)), __deriv__(X(1)), __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL opt(__deriv__(X(2)), __deriv__(X(1)), __deriv__(Y(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(2.0D00, __deriv__(Y(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
