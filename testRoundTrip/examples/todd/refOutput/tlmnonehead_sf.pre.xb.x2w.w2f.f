
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
      SUBROUTINE head(X, OBJ)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 6)
      TYPE (OpenADTy_active) OBJ(1 : 1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) D00
      TYPE (OpenADTy_active) D03
      REAL(w2f__8) D11
      TYPE (OpenADTy_active) D12
      TYPE (OpenADTy_active) F
      TYPE (OpenADTy_active) G
      TYPE (OpenADTy_active) LOC1
      TYPE (OpenADTy_active) M00
      TYPE (OpenADTy_active) M03
      TYPE (OpenADTy_active) M11
      TYPE (OpenADTy_active) M12
      TYPE (OpenADTy_active) M22
      TYPE (OpenADTy_active) M33
      TYPE (OpenADTy_active) MATR(0 : 3)
      REAL(w2f__8) SQRT3
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_11
      REAL(w2f__8) OpenAD_acc_12
      REAL(w2f__8) OpenAD_acc_13
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_22
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_24
      REAL(w2f__8) OpenAD_lin_26
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      TYPE (OpenADTy_active) OpenAD_prp_0
      TYPE (OpenADTy_active) OpenAD_prp_1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(OBJ)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      SQRT3 = 5.77350258827209472656D-01
      __value__(MATR(0)) = (__value__(X(2)) - __value__(X(1)))
      CALL setderiv(__deriv__(MATR(0)), __deriv__(X(2)))
      CALL dec_deriv(__deriv__(MATR(0)), __deriv__(X(1)))
      OpenAD_lin_0 = (__value__(X(3)) * 2.0D00 - __value__(X(2)) -
     >  __value__(X(1)))
      __value__(MATR(1)) = (SQRT3 * OpenAD_lin_0)
      OpenAD_lin_2 = SQRT3
      CALL set_neg_deriv(__deriv__(OpenAD_prp_0), __deriv__(X(1)))
      CALL dec_deriv(__deriv__(OpenAD_prp_0), __deriv__(X(2)))
      CALL saxpy(2.0D00, __deriv__(X(3)), __deriv__(OpenAD_prp_0))
      CALL sax(OpenAD_lin_2, __deriv__(OpenAD_prp_0), __deriv__(MATR(1)
     > ))
      __value__(MATR(2)) = (__value__(X(5)) - __value__(X(4)))
      CALL setderiv(__deriv__(MATR(2)), __deriv__(X(5)))
      CALL dec_deriv(__deriv__(MATR(2)), __deriv__(X(4)))
      OpenAD_lin_4 = (__value__(X(6)) * 2.0D00 - __value__(X(5)) -
     >  __value__(X(4)))
      __value__(MATR(3)) = (SQRT3 * OpenAD_lin_4)
      OpenAD_lin_6 = SQRT3
      CALL set_neg_deriv(__deriv__(OpenAD_prp_1), __deriv__(X(4)))
      CALL dec_deriv(__deriv__(OpenAD_prp_1), __deriv__(X(5)))
      CALL saxpy(2.0D00, __deriv__(X(6)), __deriv__(OpenAD_prp_1))
      CALL sax(OpenAD_lin_6, __deriv__(OpenAD_prp_1), __deriv__(MATR(3)
     > ))
      __value__(M03) = (__value__(MATR(0)) * __value__(MATR(3)))
      OpenAD_lin_8 = __value__(MATR(3))
      OpenAD_lin_9 = __value__(MATR(0))
      __value__(M12) = (__value__(MATR(1)) * __value__(MATR(2)))
      OpenAD_lin_10 = __value__(MATR(2))
      OpenAD_lin_11 = __value__(MATR(1))
      __value__(G) = (__value__(M03) - __value__(M12))
      D00 = (__value__(M03) * 2.0D00)
      D11 = (__value__(M12) * 2.0D00)
      __value__(M00) = (__value__(MATR(0)) * __value__(MATR(0)))
      OpenAD_lin_12 = __value__(MATR(0))
      OpenAD_lin_13 = __value__(MATR(0))
      __value__(M11) = (__value__(MATR(1)) * __value__(MATR(1)))
      OpenAD_lin_14 = __value__(MATR(1))
      OpenAD_lin_15 = __value__(MATR(1))
      __value__(M22) = (__value__(MATR(2)) * __value__(MATR(2)))
      OpenAD_lin_16 = __value__(MATR(2))
      OpenAD_lin_17 = __value__(MATR(2))
      __value__(M33) = (__value__(MATR(3)) * __value__(MATR(3)))
      OpenAD_lin_18 = __value__(MATR(3))
      OpenAD_lin_19 = __value__(MATR(3))
      __value__(D12) = (__value__(M00) * __value__(M33))
      OpenAD_lin_20 = __value__(M33)
      OpenAD_lin_21 = __value__(M00)
      __value__(D03) = (__value__(M11) * __value__(M22))
      OpenAD_lin_22 = __value__(M22)
      OpenAD_lin_23 = __value__(M11)
      __value__(F) = (__value__(D03) + __value__(D12))
      OpenAD_lin_24 = (1.0D00 / __value__(G))
      __value__(LOC1) = (A * OpenAD_lin_24)
      OpenAD_lin_28 = (-(1.0D00 /(__value__(G) * __value__(G))))
      OpenAD_lin_26 = A
      __value__(OBJ(1)) = (__value__(F) * __value__(LOC1))
      OpenAD_lin_29 = __value__(LOC1)
      OpenAD_lin_30 = __value__(F)
      OpenAD_acc_0 = (OpenAD_lin_28 * OpenAD_lin_26 * OpenAD_lin_30)
      OpenAD_acc_1 = (OpenAD_lin_16 * OpenAD_lin_23 * OpenAD_lin_29)
      OpenAD_acc_2 = (OpenAD_lin_17 * OpenAD_lin_23 * OpenAD_lin_29)
      OpenAD_acc_3 = (OpenAD_lin_14 * OpenAD_lin_22 * OpenAD_lin_29)
      OpenAD_acc_4 = (OpenAD_lin_15 * OpenAD_lin_22 * OpenAD_lin_29)
      OpenAD_acc_5 = (OpenAD_lin_18 * OpenAD_lin_21 * OpenAD_lin_29)
      OpenAD_acc_6 = (OpenAD_lin_19 * OpenAD_lin_21 * OpenAD_lin_29)
      OpenAD_acc_7 = (OpenAD_lin_12 * OpenAD_lin_20 * OpenAD_lin_29)
      OpenAD_acc_8 = (OpenAD_lin_13 * OpenAD_lin_20 * OpenAD_lin_29)
      OpenAD_acc_9 = (INT((-1_w2f__i8)) * OpenAD_acc_0)
      OpenAD_acc_10 = (OpenAD_lin_10 * OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_11 * OpenAD_acc_9)
      OpenAD_acc_12 = (OpenAD_lin_8 * OpenAD_acc_0)
      OpenAD_acc_13 = (OpenAD_lin_9 * OpenAD_acc_0)
      CALL sax(OpenAD_acc_1, __deriv__(MATR(2)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_2, __deriv__(MATR(2)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_3, __deriv__(MATR(1)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_4, __deriv__(MATR(1)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_5, __deriv__(MATR(3)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_6, __deriv__(MATR(3)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_7, __deriv__(MATR(0)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_8, __deriv__(MATR(0)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_10, __deriv__(MATR(1)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_11, __deriv__(MATR(2)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_12, __deriv__(MATR(0)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_acc_13, __deriv__(MATR(3)), __deriv__(OBJ(1)))
      END SUBROUTINE
