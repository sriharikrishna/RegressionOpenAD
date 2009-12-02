
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
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) P
      REAL(w2f__8) Q
      EXTERNAL sq
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      CALL sq(2, __deriv__(X), __deriv__(Y))
      P = 2.0D00
      Q = (P * P)
      END SUBROUTINE

      SUBROUTINE sq(N, U, V)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      TYPE (OpenADTy_active) U(1 : 2)
      TYPE (OpenADTy_active) V(1 : 2)
C
C     **** Statements ****
C
      OpenAD_tmp_0 = SQRT((__value__(U(1)) ** 2) +(__value__(U(2)) ** 2
     > ))
      OpenAD_lin_1 = (2 *(__value__(U(1)) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_3 = (2 *(__value__(U(2)) **(2 - INT(1_w2f__i8))))
      OpenAD_lin_0 = (5.0D-01 / OpenAD_tmp_0)
      __value__(V(1)) = OpenAD_tmp_0
      OpenAD_acc_0 = (OpenAD_lin_3 * OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_1 * OpenAD_lin_0)
      CALL sax(OpenAD_acc_0, __deriv__(U(2)), __deriv__(V(1)))
      CALL saxpy(OpenAD_acc_1, __deriv__(U(1)), __deriv__(V(1)))
      OpenAD_tmp_1 = (__value__(U(1)) * 2.0D00)
      __value__(V(2)) = ((__value__(U(1)) ** 3) + SIN(__value__(U(2)))
     >  +(__value__(U(2)) / __value__(U(1))) - COS(__value__(U(1))) +(
     > __value__(U(2)) ** 3) + __value__(U(2)) * OpenAD_tmp_1)
      OpenAD_lin_5 = (3 *(__value__(U(1)) **(3 - INT(1_w2f__i8))))
      OpenAD_lin_7 = COS(__value__(U(2)))
      OpenAD_lin_8 = (INT(1_w2f__i8) / __value__(U(1)))
      OpenAD_lin_9 = (-(__value__(U(2)) /(__value__(U(1)) * __value__(U
     > (1)))))
      OpenAD_lin_10 = (- SIN(__value__(U(1))))
      OpenAD_lin_11 = (3 *(__value__(U(2)) **(3 - INT(1_w2f__i8))))
      OpenAD_lin_13 = OpenAD_tmp_1
      OpenAD_lin_14 = __value__(U(2))
      OpenAD_acc_2 = (OpenAD_lin_10 * INT((-1_w2f__i8)))
      OpenAD_acc_3 = (2.0D00 * OpenAD_lin_14)
      CALL sax(OpenAD_lin_11, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_lin_5, __deriv__(U(1)), __deriv__(V(2)))
      CALL saxpy(OpenAD_acc_2, __deriv__(U(1)), __deriv__(V(2)))
      CALL saxpy(OpenAD_lin_7, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_lin_8, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_lin_9, __deriv__(U(1)), __deriv__(V(2)))
      CALL saxpy(OpenAD_lin_13, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_acc_3, __deriv__(U(1)), __deriv__(V(2)))
      END SUBROUTINE
