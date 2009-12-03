
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
      SUBROUTINE foo(A, B, C, D)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
      TYPE (OpenADTy_active) B
      OPTIONAL  B
      TYPE (OpenADTy_active) C
      TYPE (OpenADTy_active) D
      OPTIONAL  D
C
C     **** Local Variables and Functions ****
C
      LOGICAL(w2f__i4) t__1
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
      __value__(C) = (__value__(A) * 2.0D00)
      t__1 = .TRUE.
      IF(.NOT. PRESENT(__value__(B))) THEN
        t__1 = .FALSE.
      ELSE
        IF(.NOT. PRESENT(__value__(D))) THEN
          t__1 = .FALSE.
        ENDIF
      ENDIF
      IF(t__1) THEN
        __value__(D) = (__value__(B) * 3.0D00)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
      OpenAD_Symbol_0 = (__value__(A) * 2.0D00)
      __value__(C) = OpenAD_Symbol_0
      t__1 = .TRUE.
      IF(.NOT. PRESENT(__value__(B))) THEN
        t__1 = .FALSE.
        OpenAD_Symbol_7 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_7)
      ELSE
        IF(.NOT. PRESENT(__value__(D))) THEN
          t__1 = .FALSE.
          OpenAD_Symbol_5 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_5)
        ELSE
          OpenAD_Symbol_6 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_6)
        ENDIF
        OpenAD_Symbol_8 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_8)
      ENDIF
      IF(t__1) THEN
        OpenAD_Symbol_1 = (__value__(B) * 3.0D00)
        __value__(D) = OpenAD_Symbol_1
        OpenAD_Symbol_9 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_9)
      ELSE
        OpenAD_Symbol_10 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_10)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_2)
      IF(OpenAD_Symbol_2 .ne. 0) THEN
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(3.0D00, __deriv__(D), __deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(D))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(B))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
      ENDIF
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_3)
      IF(OpenAD_Symbol_3 .ne. 0) THEN
      ELSE
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_4)
        IF(OpenAD_Symbol_4 .ne. 0) THEN
        ENDIF
      ENDIF
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(2.0D00, __deriv__(C), __deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(C))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(A))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(A))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(B))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(C))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(D))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(D))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(C))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(B))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(A))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(A))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(B))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(C))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(D))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(A))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(B))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(C))
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(D))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(D))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(C))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(B))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(A))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(D))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(C))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(B))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(A))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
      OpenAD_Symbol_0 = (__value__(A) * 2.0D00)
      __value__(C) = OpenAD_Symbol_0
      t__1 = .TRUE.
      IF(.NOT. PRESENT(__value__(B))) THEN
        t__1 = .FALSE.
        OpenAD_Symbol_16 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_16)
      ELSE
        IF(.NOT. PRESENT(__value__(D))) THEN
          t__1 = .FALSE.
          OpenAD_Symbol_14 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_14)
        ELSE
          OpenAD_Symbol_15 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_15)
        ENDIF
        OpenAD_Symbol_17 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_17)
      ENDIF
      IF(t__1) THEN
        OpenAD_Symbol_1 = (__value__(B) * 3.0D00)
        __value__(D) = OpenAD_Symbol_1
        OpenAD_Symbol_18 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_18)
      ELSE
        OpenAD_Symbol_19 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_19)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_11)
      IF(OpenAD_Symbol_11 .ne. 0) THEN
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(3.0D00, __deriv__(D), __deriv__(OpenAD_prop_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(D))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(B))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
      ENDIF
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_12)
      IF(OpenAD_Symbol_12 .ne. 0) THEN
      ELSE
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_13)
        IF(OpenAD_Symbol_13 .ne. 0) THEN
        ENDIF
      ENDIF
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(2.0D00, __deriv__(C), __deriv__(OpenAD_prop_0))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(C))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(A))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
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
      TYPE (OpenADTy_active) X(1 : 3)
      TYPE (OpenADTy_active) Y(1 : 3)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface 
        SUBROUTINE foo(A, B, C, D)
        use w2f__types
        TYPE (OpenADTy_active) A
        TYPE (OpenADTy_active) B
        OPTIONAL  B
        TYPE (OpenADTy_active) C
        TYPE (OpenADTy_active) D
        OPTIONAL  D
        END SUBROUTINE

      end interface 
      
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
      CALL foo(A = __deriv__(X(1)), C = __deriv__(Y(1)))
      CALL foo(__deriv__(X(2)), __deriv__(X(3)), __deriv__(Y(2)),
     >  __deriv__(Y(3)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
      CALL foo(A = __deriv__(X(1)), C = __deriv__(Y(1)))
      CALL foo(__deriv__(X(2)), __deriv__(X(3)), __deriv__(Y(2)),
     >  __deriv__(Y(3)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL foo(__deriv__(X(2)), __deriv__(X(3)), __deriv__(Y(2)),
     >  __deriv__(Y(3)))
      CALL foo(A = __deriv__(X(1)), C = __deriv__(Y(1)))
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
      CALL foo(A = __deriv__(X(1)), C = __deriv__(Y(1)))
      CALL foo(__deriv__(X(2)), __deriv__(X(3)), __deriv__(Y(2)),
     >  __deriv__(Y(3)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL foo(__deriv__(X(2)), __deriv__(X(3)), __deriv__(Y(2)),
     >  __deriv__(Y(3)))
      CALL foo(A = __deriv__(X(1)), C = __deriv__(Y(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
