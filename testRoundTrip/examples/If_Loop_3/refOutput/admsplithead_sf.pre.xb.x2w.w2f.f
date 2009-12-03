
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
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
      INTEGER(w2f__i8) OpenAD_Symbol_24
      INTEGER(w2f__i8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      INTEGER(w2f__i8) OpenAD_Symbol_27
      INTEGER(w2f__i8) OpenAD_Symbol_28
      INTEGER(w2f__i8) OpenAD_Symbol_29
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_30
      INTEGER(w2f__i8) OpenAD_Symbol_31
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
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
      DO I = 1, 1, 1
        __value__(Y(1)) = __value__(X(1))
        IF(__value__(Y(1)) .GT. 0.0D00) THEN
          __value__(Y(1)) = __value__(X(1))
          DO J = 1, 3, 1
            __value__(Y(1)) = __value__(X(1))
            DO K = 1, 3, 1
              __value__(Y(1)) = __value__(X(1))
              IF(__value__(X(1)) .GT. 0.0D00) THEN
                __value__(Y(1)) = (__value__(X(1)) * __value__(Y(1)))
              ENDIF
            END DO
          END DO
        ELSE
          __value__(Y(1)) = (__value__(Y(1)) / __value__(X(1)))
        ENDIF
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_10 = 0_w2f__i8
      DO I = 1, 1, 1
        __value__(Y(1)) = __value__(X(1))
        IF(__value__(Y(1)) .GT. 0.0D00) THEN
          __value__(Y(1)) = __value__(X(1))
          OpenAD_Symbol_11 = 0_w2f__i8
          DO J = 1, 3, 1
            __value__(Y(1)) = __value__(X(1))
            OpenAD_Symbol_12 = 0_w2f__i8
            DO K = 1, 3, 1
              __value__(Y(1)) = __value__(X(1))
              IF(__value__(X(1)) .GT. 0.0D00) THEN
                OpenAD_Symbol_0 = (__value__(X(1)) * __value__(Y(1)))
                OpenAD_lin_0 = __value__(Y(1))
                OpenAD_lin_1 = __value__(X(1))
                __value__(Y(1)) = OpenAD_Symbol_0
C               $OpenAD$ INLINE push(subst)
                CALL push(OpenAD_lin_0)
C               $OpenAD$ INLINE push(subst)
                CALL push(OpenAD_lin_1)
                OpenAD_Symbol_13 = 1_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_13)
              ELSE
                OpenAD_Symbol_14 = 0_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_14)
              ENDIF
              OpenAD_Symbol_12 = (INT(OpenAD_Symbol_12) + INT(1_w2f__i8
     > ))
            END DO
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_12)
            OpenAD_Symbol_11 = (INT(OpenAD_Symbol_11) + INT(1_w2f__i8))
          END DO
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_11)
          OpenAD_Symbol_16 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_16)
        ELSE
          OpenAD_Symbol_1 = (__value__(Y(1)) / __value__(X(1)))
          OpenAD_lin_2 = (INT(1_w2f__i8) / __value__(X(1)))
          OpenAD_lin_3 = (-(__value__(Y(1)) /(__value__(X(1)) *
     >  __value__(X(1)))))
          __value__(Y(1)) = OpenAD_Symbol_1
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_3)
          OpenAD_Symbol_15 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_15)
        ENDIF
        OpenAD_Symbol_10 = (INT(OpenAD_Symbol_10) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_10)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_2)
      OpenAD_Symbol_3 = 1
      DO WHILE(INT(OpenAD_Symbol_3) .LE. INT(OpenAD_Symbol_2))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_4)
        IF(OpenAD_Symbol_4 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_5)
          OpenAD_Symbol_6 = 1
          DO WHILE(INT(OpenAD_Symbol_6) .LE. INT(OpenAD_Symbol_5))
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_7)
            OpenAD_Symbol_8 = 1
            DO WHILE(INT(OpenAD_Symbol_8) .LE. INT(OpenAD_Symbol_7))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_9)
              IF(OpenAD_Symbol_9 .ne. 0) THEN
C               $OpenAD$ INLINE Pop(subst)
                CALL Pop(OpenAD_Symbol_32)
C               $OpenAD$ INLINE Pop(subst)
                CALL Pop(OpenAD_Symbol_33)
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(OpenAD_Symbol_32, __deriv__(Y(1)), __deriv__
     > (OpenAD_prop_0))
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(OpenAD_Symbol_33, __deriv__(Y(1)), __deriv__
     > (X(1)))
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(Y(1)))
C               $OpenAD$ INLINE IncDeriv(subst,subst)
                CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1))
     > )
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
              ENDIF
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(Y(1)))
              OpenAD_Symbol_8 = INT(OpenAD_Symbol_8) + 1
            END DO
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(Y(1)))
            OpenAD_Symbol_6 = INT(OpenAD_Symbol_6) + 1
          END DO
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
        ELSE
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_34)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_35)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_34, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_35, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
        ENDIF
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        OpenAD_Symbol_3 = INT(OpenAD_Symbol_3) + 1
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
      OpenAD_Symbol_25 = 0_w2f__i8
      DO I = 1, 1, 1
        __value__(Y(1)) = __value__(X(1))
        IF(__value__(Y(1)) .GT. 0.0D00) THEN
          __value__(Y(1)) = __value__(X(1))
          OpenAD_Symbol_26 = 0_w2f__i8
          DO J = 1, 3, 1
            __value__(Y(1)) = __value__(X(1))
            OpenAD_Symbol_27 = 0_w2f__i8
            DO K = 1, 3, 1
              __value__(Y(1)) = __value__(X(1))
              IF(__value__(X(1)) .GT. 0.0D00) THEN
                OpenAD_Symbol_0 = (__value__(X(1)) * __value__(Y(1)))
                OpenAD_lin_0 = __value__(Y(1))
                OpenAD_lin_1 = __value__(X(1))
                __value__(Y(1)) = OpenAD_Symbol_0
C               $OpenAD$ INLINE push(subst)
                CALL push(OpenAD_lin_0)
C               $OpenAD$ INLINE push(subst)
                CALL push(OpenAD_lin_1)
                OpenAD_Symbol_28 = 1_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_28)
              ELSE
                OpenAD_Symbol_29 = 0_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_29)
              ENDIF
              OpenAD_Symbol_27 = (INT(OpenAD_Symbol_27) + INT(1_w2f__i8
     > ))
            END DO
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_27)
            OpenAD_Symbol_26 = (INT(OpenAD_Symbol_26) + INT(1_w2f__i8))
          END DO
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_26)
          OpenAD_Symbol_31 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_31)
        ELSE
          OpenAD_Symbol_1 = (__value__(Y(1)) / __value__(X(1)))
          OpenAD_lin_2 = (INT(1_w2f__i8) / __value__(X(1)))
          OpenAD_lin_3 = (-(__value__(Y(1)) /(__value__(X(1)) *
     >  __value__(X(1)))))
          __value__(Y(1)) = OpenAD_Symbol_1
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_2)
C         $OpenAD$ INLINE push(subst)
          CALL push(OpenAD_lin_3)
          OpenAD_Symbol_30 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_30)
        ENDIF
        OpenAD_Symbol_25 = (INT(OpenAD_Symbol_25) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_25)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_17)
      OpenAD_Symbol_18 = 1
      DO WHILE(INT(OpenAD_Symbol_18) .LE. INT(OpenAD_Symbol_17))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_19)
        IF(OpenAD_Symbol_19 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_20)
          OpenAD_Symbol_21 = 1
          DO WHILE(INT(OpenAD_Symbol_21) .LE. INT(OpenAD_Symbol_20))
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_22)
            OpenAD_Symbol_23 = 1
            DO WHILE(INT(OpenAD_Symbol_23) .LE. INT(OpenAD_Symbol_22))
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_24)
              IF(OpenAD_Symbol_24 .ne. 0) THEN
C               $OpenAD$ INLINE Pop(subst)
                CALL Pop(OpenAD_Symbol_32)
C               $OpenAD$ INLINE Pop(subst)
                CALL Pop(OpenAD_Symbol_33)
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(OpenAD_Symbol_32, __deriv__(Y(1)), __deriv__
     > (OpenAD_prop_0))
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(OpenAD_Symbol_33, __deriv__(Y(1)), __deriv__
     > (X(1)))
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(Y(1)))
C               $OpenAD$ INLINE IncDeriv(subst,subst)
                CALL IncDeriv(__deriv__(OpenAD_prop_0), __deriv__(Y(1))
     > )
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(OpenAD_prop_0))
              ENDIF
C             $OpenAD$ INLINE IncDeriv(subst,subst)
              CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C             $OpenAD$ INLINE ZeroDeriv(subst)
              CALL ZeroDeriv(__deriv__(Y(1)))
              OpenAD_Symbol_23 = INT(OpenAD_Symbol_23) + 1
            END DO
C           $OpenAD$ INLINE IncDeriv(subst,subst)
            CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(Y(1)))
            OpenAD_Symbol_21 = INT(OpenAD_Symbol_21) + 1
          END DO
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
        ELSE
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_34)
C         $OpenAD$ INLINE Pop(subst)
          CALL Pop(OpenAD_Symbol_35)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_34, __deriv__(Y(1)), __deriv__(X(1))
     > )
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_35, __deriv__(Y(1)), __deriv__(
     > OpenAD_prop_1))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(1)))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(OpenAD_prop_1))
        ENDIF
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(Y(1)), __deriv__(X(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(Y(1)))
        OpenAD_Symbol_18 = INT(OpenAD_Symbol_18) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
