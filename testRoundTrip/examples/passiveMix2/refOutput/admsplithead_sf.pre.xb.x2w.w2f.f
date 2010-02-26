
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Top Level Pragmas ****
C
      interface  OAD_S_MIN
        module procedure  OAD_S_MIN_D

      end interface 
      
C
C     **** Statements ****
C
      CONTAINS

        SUBROUTINE OAD_S_MIN_D(A, B, R)
        use w2f__types
        IMPLICIT NONE
C
C       **** Global Variables & Derived Type Definitions ****
C
        INTEGER(w2f__i8) OpenAD_Symbol_10
        INTEGER(w2f__i8) OpenAD_Symbol_5
        INTEGER(w2f__i8) OpenAD_Symbol_6
        INTEGER(w2f__i8) OpenAD_Symbol_7
        INTEGER(w2f__i8) OpenAD_Symbol_8
        INTEGER(w2f__i8) OpenAD_Symbol_9
C
C       **** Parameters and Result ****
C
        TYPE (OpenADTy_active) A
        TYPE (OpenADTy_active) B
        TYPE (OpenADTy_active) R
C
C       **** Statements ****
C
C       $OpenAD$ BEGIN REPLACEMENT 1
        IF(__value__(A) .LT. __value__(B)) THEN
          __value__(R) = __value__(A)
        ELSE
          __value__(R) = __value__(B)
        ENDIF
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 2
        IF(__value__(A) .LT. __value__(B)) THEN
          __value__(R) = __value__(A)
          OpenAD_Symbol_6 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_6)
        ELSE
          __value__(R) = __value__(B)
          OpenAD_Symbol_7 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_7)
        ENDIF
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 3
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_5)
        IF(OpenAD_Symbol_5 .ne. 0) THEN
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(R), __deriv__(A))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(R))
        ELSE
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(R), __deriv__(B))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(R))
        ENDIF
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 4
C       $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
        CALL cp_arg_store_real_scalar_a(__deriv__(A))
C       $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
        CALL cp_arg_store_real_scalar_a(__deriv__(B))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 5
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 6
C       $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
        CALL cp_arg_restore_real_scalar_a(__deriv__(B))
C       $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
        CALL cp_arg_restore_real_scalar_a(__deriv__(A))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 7
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 8
C       $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
        CALL cp_arg_store_real_scalar_a(__deriv__(R))
C       $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
        CALL cp_arg_store_real_scalar_a(__deriv__(A))
C       $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
        CALL cp_arg_store_real_scalar_a(__deriv__(B))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 9
C       $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
        CALL cp_arg_restore_real_scalar_a(__deriv__(B))
C       $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
        CALL cp_arg_restore_real_scalar_a(__deriv__(A))
C       $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
        CALL cp_arg_restore_real_scalar_a(__deriv__(R))
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 10
        IF(__value__(A) .LT. __value__(B)) THEN
          __value__(R) = __value__(A)
          OpenAD_Symbol_9 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_9)
        ELSE
          __value__(R) = __value__(B)
          OpenAD_Symbol_10 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_10)
        ENDIF
C       $OpenAD$ END REPLACEMENT
C       $OpenAD$ BEGIN REPLACEMENT 11
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_8)
        IF(OpenAD_Symbol_8 .ne. 0) THEN
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(R), __deriv__(A))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(R))
        ELSE
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(R), __deriv__(B))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(R))
        ENDIF
C       $OpenAD$ END REPLACEMENT
        END SUBROUTINE
      END

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
      TYPE (OpenADTy_active) OpenAD_Symbol_0
      TYPE (OpenADTy_active) OpenAD_Symbol_1
      TYPE (OpenADTy_active) OpenAD_Symbol_11
      TYPE (OpenADTy_active) OpenAD_Symbol_12
      TYPE (OpenADTy_active) OpenAD_Symbol_13
      TYPE (OpenADTy_active) OpenAD_Symbol_17
      TYPE (OpenADTy_active) OpenAD_Symbol_19
      TYPE (OpenADTy_active) OpenAD_Symbol_2
      TYPE (OpenADTy_active) OpenAD_Symbol_3
      TYPE (OpenADTy_active) OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) OAD_CTMP0
      TYPE (OpenADTy_active) OAD_CTMP1
      REAL(w2f__8) OAD_CTMP2
      REAL(w2f__8) OAD_CTMP3
      REAL(w2f__8) T
      TYPE (OpenADTy_active) T1
      REAL(w2f__8) T2
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
      T = 2.0D00
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_0), T)
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_0), __deriv__(X(1)),
     >  __deriv__(OAD_CTMP0))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_0))
      __value__(T1) = __value__(OAD_CTMP0)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_1), T)
      CALL OAD_S_MIN_D(__deriv__(T1), __deriv__(OpenAD_Symbol_1),
     >  __deriv__(OAD_CTMP1))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_1))
      __value__(Y(1)) = __value__(OAD_CTMP1)
      OAD_CTMP3 = 2.5D00
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_2), T)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_3), OAD_CTMP3)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_4), OAD_CTMP2)
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_2), __deriv__(
     > OpenAD_Symbol_3), __deriv__(OpenAD_Symbol_4))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_2))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(OAD_CTMP3, __deriv__(OpenAD_Symbol_3))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(OAD_CTMP2, __deriv__(OpenAD_Symbol_4))
      T2 = OAD_CTMP2
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      T = 2.0D00
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_0), T)
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_0), __deriv__(X(1)),
     >  __deriv__(OAD_CTMP0))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_0))
      __value__(T1) = __value__(OAD_CTMP0)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_1), T)
      CALL OAD_S_MIN_D(__deriv__(T1), __deriv__(OpenAD_Symbol_1),
     >  __deriv__(OAD_CTMP1))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_1))
      __value__(Y(1)) = __value__(OAD_CTMP1)
      OAD_CTMP3 = 2.5D00
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_2), T)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_3), OAD_CTMP3)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_4), OAD_CTMP2)
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_2), __deriv__(
     > OpenAD_Symbol_3), __deriv__(OpenAD_Symbol_4))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_2))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(OAD_CTMP3, __deriv__(OpenAD_Symbol_3))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(OAD_CTMP2, __deriv__(OpenAD_Symbol_4))
      T2 = OAD_CTMP2
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_11), __deriv__(
     > OpenAD_Symbol_12), __deriv__(OpenAD_Symbol_13))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(OAD_CTMP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      CALL OAD_S_MIN_D(__deriv__(T1), __deriv__(OpenAD_Symbol_17),
     >  __deriv__(OAD_CTMP1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(T1), __deriv__(OAD_CTMP0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T1))
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_19), __deriv__(X(1)),
     >  __deriv__(OAD_CTMP0))
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
      T = 2.0D00
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_0), T)
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_0), __deriv__(X(1)),
     >  __deriv__(OAD_CTMP0))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_0))
      __value__(T1) = __value__(OAD_CTMP0)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_1), T)
      CALL OAD_S_MIN_D(__deriv__(T1), __deriv__(OpenAD_Symbol_1),
     >  __deriv__(OAD_CTMP1))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_1))
      __value__(Y(1)) = __value__(OAD_CTMP1)
      OAD_CTMP3 = 2.5D00
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_2), T)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_3), OAD_CTMP3)
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(__deriv__(OpenAD_Symbol_4), OAD_CTMP2)
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_2), __deriv__(
     > OpenAD_Symbol_3), __deriv__(OpenAD_Symbol_4))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(T, __deriv__(OpenAD_Symbol_2))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(OAD_CTMP3, __deriv__(OpenAD_Symbol_3))
C     $OpenAD$ INLINE oad_convert(subst,subst)
      CALL oad_convert(OAD_CTMP2, __deriv__(OpenAD_Symbol_4))
      T2 = OAD_CTMP2
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_11), __deriv__(
     > OpenAD_Symbol_12), __deriv__(OpenAD_Symbol_13))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(OAD_CTMP1))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
      CALL OAD_S_MIN_D(__deriv__(T1), __deriv__(OpenAD_Symbol_17),
     >  __deriv__(OAD_CTMP1))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(T1), __deriv__(OAD_CTMP0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T1))
      CALL OAD_S_MIN_D(__deriv__(OpenAD_Symbol_19), __deriv__(X(1)),
     >  __deriv__(OAD_CTMP0))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
