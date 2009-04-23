
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
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_2
      REAL(w2f__8) OpenAD_tmp_3
      REAL(w2f__8) OpenAD_tmp_4
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 12)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 1)
      INTENT(OUT)  Y
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_3 = (__value__(X(8)) + __value__(X(7)) + __value__(X(5
     > )) + __value__(X(6)))
      OpenAD_tmp_1 = (__value__(X(1)) * OpenAD_tmp_3 + __value__(X(2))
     >  * __value__(X(4)))
      OpenAD_tmp_4 = (__value__(X(12)) + __value__(X(11)) + __value__(X
     > (9)) + __value__(X(10)))
      OpenAD_tmp_2 = (__value__(X(2)) + __value__(X(1)) * OpenAD_tmp_4)
      OpenAD_tmp_0 = (OpenAD_tmp_1 / OpenAD_tmp_2)
      __value__(Y(1)) = (__value__(X(3)) * OpenAD_tmp_0)
      OpenAD_lin_0 = OpenAD_tmp_0
      OpenAD_lin_4 = OpenAD_tmp_3
      OpenAD_lin_5 = __value__(X(1))
      OpenAD_lin_6 = __value__(X(4))
      OpenAD_lin_7 = __value__(X(2))
      OpenAD_lin_2 = (INT(1_w2f__i8) / OpenAD_tmp_2)
      OpenAD_lin_8 = OpenAD_tmp_4
      OpenAD_lin_9 = __value__(X(1))
      OpenAD_lin_3 = (-(OpenAD_tmp_1 /(OpenAD_tmp_2 * OpenAD_tmp_2)))
      OpenAD_lin_1 = __value__(X(3))
      OpenAD_acc_0 = (OpenAD_lin_2 * OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_3 * OpenAD_lin_1)
      OpenAD_acc_2 = (OpenAD_lin_8 * OpenAD_acc_1)
      OpenAD_acc_3 = (OpenAD_lin_9 * OpenAD_acc_1)
      OpenAD_acc_4 = (OpenAD_lin_4 * OpenAD_acc_0)
      OpenAD_acc_5 = (OpenAD_lin_5 * OpenAD_acc_0)
      OpenAD_acc_6 = (OpenAD_lin_6 * OpenAD_acc_0)
      OpenAD_acc_7 = (OpenAD_lin_7 * OpenAD_acc_0)
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(X(8)))
      CALL inc_deriv(__deriv__(OpenAD_prop_0), __deriv__(X(7)))
      CALL inc_deriv(__deriv__(OpenAD_prop_0), __deriv__(X(5)))
      CALL inc_deriv(__deriv__(OpenAD_prop_0), __deriv__(X(6)))
      CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(X(12)))
      CALL inc_deriv(__deriv__(OpenAD_prop_1), __deriv__(X(11)))
      CALL inc_deriv(__deriv__(OpenAD_prop_1), __deriv__(X(9)))
      CALL inc_deriv(__deriv__(OpenAD_prop_1), __deriv__(X(10)))
      CALL sax(OpenAD_lin_0, __deriv__(X(3)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_acc_2, __deriv__(X(1)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_acc_3, __deriv__(OpenAD_prop_1), __deriv__(Y(1)
     > ))
      CALL saxpy(OpenAD_acc_1, __deriv__(X(2)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_acc_4, __deriv__(X(1)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_acc_5, __deriv__(OpenAD_prop_0), __deriv__(Y(1)
     > ))
      CALL saxpy(OpenAD_acc_6, __deriv__(X(2)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_acc_7, __deriv__(X(4)), __deriv__(Y(1)))
      END SUBROUTINE
