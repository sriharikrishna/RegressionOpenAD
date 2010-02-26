
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
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
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
      OpenAD_Symbol_0 = (__value__(X(3)) * 2.0D00 - __value__(X(2)) -
     >  __value__(X(1)))
      __value__(MATR(1)) = (SQRT3 * OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
      CALL set_neg_deriv(__deriv__(OpenAD_prop_0), __deriv__(X(1)))
      CALL dec_deriv(__deriv__(OpenAD_prop_0), __deriv__(X(2)))
      CALL saxpy(2.0D00, __deriv__(X(3)), __deriv__(OpenAD_prop_0))
      CALL sax(OpenAD_Symbol_2, __deriv__(OpenAD_prop_0), __deriv__(
     > MATR(1)))
      __value__(MATR(2)) = (__value__(X(5)) - __value__(X(4)))
      CALL setderiv(__deriv__(MATR(2)), __deriv__(X(5)))
      CALL dec_deriv(__deriv__(MATR(2)), __deriv__(X(4)))
      OpenAD_Symbol_4 = (__value__(X(6)) * 2.0D00 - __value__(X(5)) -
     >  __value__(X(4)))
      __value__(MATR(3)) = (SQRT3 * OpenAD_Symbol_4)
      OpenAD_Symbol_6 = SQRT3
      CALL set_neg_deriv(__deriv__(OpenAD_prop_1), __deriv__(X(4)))
      CALL dec_deriv(__deriv__(OpenAD_prop_1), __deriv__(X(5)))
      CALL saxpy(2.0D00, __deriv__(X(6)), __deriv__(OpenAD_prop_1))
      CALL sax(OpenAD_Symbol_6, __deriv__(OpenAD_prop_1), __deriv__(
     > MATR(3)))
      __value__(M03) = (__value__(MATR(0)) * __value__(MATR(3)))
      OpenAD_Symbol_8 = __value__(MATR(3))
      OpenAD_Symbol_9 = __value__(MATR(0))
      __value__(M12) = (__value__(MATR(1)) * __value__(MATR(2)))
      OpenAD_Symbol_10 = __value__(MATR(2))
      OpenAD_Symbol_11 = __value__(MATR(1))
      __value__(G) = (__value__(M03) - __value__(M12))
      D00 = (__value__(M03) * 2.0D00)
      D11 = (__value__(M12) * 2.0D00)
      __value__(M00) = (__value__(MATR(0)) * __value__(MATR(0)))
      OpenAD_Symbol_12 = __value__(MATR(0))
      OpenAD_Symbol_13 = __value__(MATR(0))
      __value__(M11) = (__value__(MATR(1)) * __value__(MATR(1)))
      OpenAD_Symbol_14 = __value__(MATR(1))
      OpenAD_Symbol_15 = __value__(MATR(1))
      __value__(M22) = (__value__(MATR(2)) * __value__(MATR(2)))
      OpenAD_Symbol_16 = __value__(MATR(2))
      OpenAD_Symbol_17 = __value__(MATR(2))
      __value__(M33) = (__value__(MATR(3)) * __value__(MATR(3)))
      OpenAD_Symbol_18 = __value__(MATR(3))
      OpenAD_Symbol_19 = __value__(MATR(3))
      __value__(D12) = (__value__(M00) * __value__(M33))
      OpenAD_Symbol_20 = __value__(M33)
      OpenAD_Symbol_21 = __value__(M00)
      __value__(D03) = (__value__(M11) * __value__(M22))
      OpenAD_Symbol_22 = __value__(M22)
      OpenAD_Symbol_23 = __value__(M11)
      __value__(F) = (__value__(D03) + __value__(D12))
      OpenAD_Symbol_24 = (1.0D00 / __value__(G))
      __value__(LOC1) = (A * OpenAD_Symbol_24)
      OpenAD_Symbol_28 = (-(1.0D00 /(__value__(G) * __value__(G))))
      OpenAD_Symbol_26 = A
      __value__(OBJ(1)) = (__value__(F) * __value__(LOC1))
      OpenAD_Symbol_29 = __value__(LOC1)
      OpenAD_Symbol_30 = __value__(F)
      OpenAD_Symbol_31 = (OpenAD_Symbol_28 * OpenAD_Symbol_26 *
     >  OpenAD_Symbol_30)
      OpenAD_Symbol_32 = (OpenAD_Symbol_16 * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_33 = (OpenAD_Symbol_17 * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_34 = (OpenAD_Symbol_14 * OpenAD_Symbol_22 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_35 = (OpenAD_Symbol_15 * OpenAD_Symbol_22 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_36 = (OpenAD_Symbol_18 * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_37 = (OpenAD_Symbol_19 * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_38 = (OpenAD_Symbol_12 * OpenAD_Symbol_20 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_39 = (OpenAD_Symbol_13 * OpenAD_Symbol_20 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_40 = (INT((-1_w2f__i8)) * OpenAD_Symbol_31)
      OpenAD_Symbol_41 = (OpenAD_Symbol_10 * OpenAD_Symbol_40)
      OpenAD_Symbol_42 = (OpenAD_Symbol_11 * OpenAD_Symbol_40)
      OpenAD_Symbol_43 = (OpenAD_Symbol_8 * OpenAD_Symbol_31)
      OpenAD_Symbol_44 = (OpenAD_Symbol_9 * OpenAD_Symbol_31)
      CALL sax(OpenAD_Symbol_32, __deriv__(MATR(2)), __deriv__(OBJ(1)))
      CALL saxpy(OpenAD_Symbol_33, __deriv__(MATR(2)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_34, __deriv__(MATR(1)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_35, __deriv__(MATR(1)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_36, __deriv__(MATR(3)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_37, __deriv__(MATR(3)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_38, __deriv__(MATR(0)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_39, __deriv__(MATR(0)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_41, __deriv__(MATR(1)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_42, __deriv__(MATR(2)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_43, __deriv__(MATR(0)), __deriv__(OBJ(1)
     > ))
      CALL saxpy(OpenAD_Symbol_44, __deriv__(MATR(3)), __deriv__(OBJ(1)
     > ))
      END SUBROUTINE
