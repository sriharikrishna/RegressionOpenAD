
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, F)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_11
      REAL(w2f__8) OpenAD_acc_12
      REAL(w2f__8) OpenAD_acc_13
      REAL(w2f__8) OpenAD_acc_14
      REAL(w2f__8) OpenAD_acc_15
      REAL(w2f__8) OpenAD_acc_16
      REAL(w2f__8) OpenAD_acc_17
      REAL(w2f__8) OpenAD_acc_18
      REAL(w2f__8) OpenAD_acc_19
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_20
      REAL(w2f__8) OpenAD_acc_21
      REAL(w2f__8) OpenAD_acc_22
      REAL(w2f__8) OpenAD_acc_23
      REAL(w2f__8) OpenAD_acc_24
      REAL(w2f__8) OpenAD_acc_25
      REAL(w2f__8) OpenAD_acc_26
      REAL(w2f__8) OpenAD_acc_27
      REAL(w2f__8) OpenAD_acc_28
      REAL(w2f__8) OpenAD_acc_29
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_30
      REAL(w2f__8) OpenAD_acc_31
      REAL(w2f__8) OpenAD_acc_32
      REAL(w2f__8) OpenAD_acc_33
      REAL(w2f__8) OpenAD_acc_34
      REAL(w2f__8) OpenAD_acc_35
      REAL(w2f__8) OpenAD_acc_36
      REAL(w2f__8) OpenAD_acc_37
      REAL(w2f__8) OpenAD_acc_38
      REAL(w2f__8) OpenAD_acc_39
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_40
      REAL(w2f__8) OpenAD_acc_41
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_9
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_22
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_34
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_40
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_45
      REAL(w2f__8) OpenAD_lin_46
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_49
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_52
      REAL(w2f__8) OpenAD_lin_53
      REAL(w2f__8) OpenAD_lin_54
      REAL(w2f__8) OpenAD_lin_55
      REAL(w2f__8) OpenAD_lin_56
      REAL(w2f__8) OpenAD_lin_58
      REAL(w2f__8) OpenAD_lin_59
      REAL(w2f__8) OpenAD_lin_60
      REAL(w2f__8) OpenAD_lin_62
      REAL(w2f__8) OpenAD_lin_64
      REAL(w2f__8) OpenAD_lin_65
      REAL(w2f__8) OpenAD_lin_66
      REAL(w2f__8) OpenAD_lin_67
      REAL(w2f__8) OpenAD_lin_68
      REAL(w2f__8) OpenAD_lin_70
      REAL(w2f__8) OpenAD_lin_71
      REAL(w2f__8) OpenAD_lin_72
      REAL(w2f__8) OpenAD_lin_74
      REAL(w2f__8) OpenAD_lin_77
      REAL(w2f__8) OpenAD_lin_78
      REAL(w2f__8) OpenAD_lin_79
      REAL(w2f__8) OpenAD_lin_81
      REAL(w2f__8) OpenAD_lin_85
      REAL(w2f__8) OpenAD_lin_86
      REAL(w2f__8) OpenAD_lin_87
      REAL(w2f__8) OpenAD_lin_89
      REAL(w2f__8) OpenAD_lin_9
      REAL(w2f__8) OpenAD_lin_90
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      TYPE (OpenADTy_active) OpenAD_prop_4
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_10
      REAL(w2f__8) OpenAD_tmp_11
      REAL(w2f__8) OpenAD_tmp_12
      REAL(w2f__8) OpenAD_tmp_13
      REAL(w2f__8) OpenAD_tmp_14
      REAL(w2f__8) OpenAD_tmp_15
      REAL(w2f__8) OpenAD_tmp_16
      REAL(w2f__8) OpenAD_tmp_17
      REAL(w2f__8) OpenAD_tmp_18
      REAL(w2f__8) OpenAD_tmp_19
      REAL(w2f__8) OpenAD_tmp_2
      REAL(w2f__8) OpenAD_tmp_20
      REAL(w2f__8) OpenAD_tmp_21
      REAL(w2f__8) OpenAD_tmp_22
      REAL(w2f__8) OpenAD_tmp_23
      REAL(w2f__8) OpenAD_tmp_24
      REAL(w2f__8) OpenAD_tmp_25
      REAL(w2f__8) OpenAD_tmp_26
      REAL(w2f__8) OpenAD_tmp_27
      REAL(w2f__8) OpenAD_tmp_28
      REAL(w2f__8) OpenAD_tmp_29
      REAL(w2f__8) OpenAD_tmp_3
      REAL(w2f__8) OpenAD_tmp_30
      REAL(w2f__8) OpenAD_tmp_31
      REAL(w2f__8) OpenAD_tmp_32
      REAL(w2f__8) OpenAD_tmp_33
      REAL(w2f__8) OpenAD_tmp_34
      REAL(w2f__8) OpenAD_tmp_35
      REAL(w2f__8) OpenAD_tmp_36
      REAL(w2f__8) OpenAD_tmp_37
      REAL(w2f__8) OpenAD_tmp_38
      REAL(w2f__8) OpenAD_tmp_39
      REAL(w2f__8) OpenAD_tmp_4
      REAL(w2f__8) OpenAD_tmp_40
      REAL(w2f__8) OpenAD_tmp_41
      REAL(w2f__8) OpenAD_tmp_42
      REAL(w2f__8) OpenAD_tmp_43
      REAL(w2f__8) OpenAD_tmp_5
      REAL(w2f__8) OpenAD_tmp_6
      REAL(w2f__8) OpenAD_tmp_7
      REAL(w2f__8) OpenAD_tmp_8
      REAL(w2f__8) OpenAD_tmp_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 9)
      TYPE (OpenADTy_active) F(1 : 7)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) H
      INTEGER(w2f__i4) I
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(F)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      H = 2.5D-01
      OpenAD_tmp_3 = (H * H)
      OpenAD_tmp_2 = (__value__(X(8)) * OpenAD_tmp_3)
      OpenAD_tmp_0 = (OpenAD_tmp_2 / 1.2D+01)
      OpenAD_tmp_6 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_tmp_5 = (__value__(X(1)) / OpenAD_tmp_6)
      OpenAD_tmp_4 = EXP(OpenAD_tmp_5)
      OpenAD_tmp_1 = (OpenAD_tmp_4 * 1.0D+01 + 1.0D00)
      __value__(F(1)) = (__value__(X(1)) *(-2.0D00) + OpenAD_tmp_0 *
     >  OpenAD_tmp_1)
      OpenAD_lin_5 = OpenAD_tmp_3
      OpenAD_lin_3 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_1 = OpenAD_tmp_1
      OpenAD_lin_10 = (INT(1_w2f__i8) / OpenAD_tmp_6)
      OpenAD_lin_13 = __value__(X(9))
      OpenAD_lin_14 = __value__(X(1))
      OpenAD_lin_11 = (-(__value__(X(1)) /(OpenAD_tmp_6 * OpenAD_tmp_6)
     > ))
      OpenAD_lin_9 = EXP(OpenAD_tmp_5)
      OpenAD_lin_2 = OpenAD_tmp_0
      OpenAD_acc_0 = (OpenAD_lin_9 * 1.0D+01)
      OpenAD_acc_1 = (OpenAD_lin_5 * OpenAD_lin_3 * OpenAD_lin_1)
      OpenAD_acc_2 = (OpenAD_lin_10 * OpenAD_acc_0 * OpenAD_lin_2)
      OpenAD_acc_3 = (OpenAD_lin_11 * OpenAD_acc_0 * OpenAD_lin_2)
      OpenAD_acc_4 = (OpenAD_lin_13 * OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_lin_14 * OpenAD_acc_3)
      CALL sax(-2.0D00, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_1, __deriv__(X(8)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_2, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_4, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_5, __deriv__(X(9)), __deriv__(F(1)))
      OpenAD_tmp_10 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_tmp_9 = (__value__(X(1)) / OpenAD_tmp_10)
      OpenAD_tmp_7 = EXP(OpenAD_tmp_9)
      OpenAD_tmp_12 = (H * H)
      OpenAD_tmp_11 = (__value__(X(8)) * OpenAD_tmp_12)
      OpenAD_tmp_8 = (OpenAD_tmp_11 / 1.2D+01)
      __value__(F(2)) = (__value__(X(1)) + OpenAD_tmp_7 * OpenAD_tmp_8)
      OpenAD_lin_18 = (INT(1_w2f__i8) / OpenAD_tmp_10)
      OpenAD_lin_21 = __value__(X(9))
      OpenAD_lin_22 = __value__(X(1))
      OpenAD_lin_19 = (-(__value__(X(1)) /(OpenAD_tmp_10 *
     >  OpenAD_tmp_10)))
      OpenAD_lin_17 = EXP(OpenAD_tmp_9)
      OpenAD_lin_15 = OpenAD_tmp_8
      OpenAD_lin_25 = OpenAD_tmp_12
      OpenAD_lin_23 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_16 = OpenAD_tmp_7
      OpenAD_acc_6 = (OpenAD_lin_17 * OpenAD_lin_15)
      OpenAD_acc_7 = (OpenAD_lin_25 * OpenAD_lin_23 * OpenAD_lin_16)
      OpenAD_acc_8 = (OpenAD_lin_18 * OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_lin_19 * OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_lin_21 * OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_22 * OpenAD_acc_9)
      CALL setderiv(__deriv__(F(2)), __deriv__(X(1)))
      CALL saxpy(OpenAD_acc_7, __deriv__(X(8)), __deriv__(F(2)))
      CALL saxpy(OpenAD_acc_8, __deriv__(X(1)), __deriv__(F(2)))
      CALL saxpy(OpenAD_acc_10, __deriv__(X(1)), __deriv__(F(2)))
      CALL saxpy(OpenAD_acc_11, __deriv__(X(9)), __deriv__(F(2)))
      DO I = 2, 6, 1
        OpenAD_tmp_16 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_tmp_15 = (__value__(X(I)) / OpenAD_tmp_16)
        OpenAD_tmp_13 = EXP(OpenAD_tmp_15)
        OpenAD_tmp_18 = (H * H)
        OpenAD_tmp_17 = (__value__(X(8)) * OpenAD_tmp_18)
        OpenAD_tmp_14 = (OpenAD_tmp_17 / 1.2D+01)
        __value__(F(INT(I +(-1)))) = (__value__(X(I)) + __value__(F(I +
     >  (-1))) + OpenAD_tmp_13 * OpenAD_tmp_14)
        OpenAD_lin_30 = (INT(1_w2f__i8) / OpenAD_tmp_16)
        OpenAD_lin_33 = __value__(X(9))
        OpenAD_lin_34 = __value__(X(I))
        OpenAD_lin_31 = (-(__value__(X(I)) /(OpenAD_tmp_16 *
     >  OpenAD_tmp_16)))
        OpenAD_lin_29 = EXP(OpenAD_tmp_15)
        OpenAD_lin_27 = OpenAD_tmp_14
        OpenAD_lin_37 = OpenAD_tmp_18
        OpenAD_lin_35 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_28 = OpenAD_tmp_13
        OpenAD_acc_12 = (OpenAD_lin_29 * OpenAD_lin_27)
        OpenAD_acc_13 = (OpenAD_lin_37 * OpenAD_lin_35 * OpenAD_lin_28)
        OpenAD_acc_14 = (OpenAD_lin_30 * OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_lin_31 * OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_lin_33 * OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_lin_34 * OpenAD_acc_15)
        CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(F(I + (-1))))
        CALL setderiv(__deriv__(F(I + (-1))), __deriv__(X(I)))
        CALL inc_deriv(__deriv__(F(I + (-1))), __deriv__(OpenAD_prop_0)
     > )
        CALL saxpy(OpenAD_acc_13, __deriv__(X(8)), __deriv__(F(I + (-1)
     > )))
        CALL saxpy(OpenAD_acc_14, __deriv__(X(I)), __deriv__(F(I + (-1)
     > )))
        CALL saxpy(OpenAD_acc_16, __deriv__(X(I)), __deriv__(F(I + (-1)
     > )))
        CALL saxpy(OpenAD_acc_17, __deriv__(X(9)), __deriv__(F(I + (-1)
     > )))
        OpenAD_tmp_22 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_tmp_21 = (__value__(X(I)) / OpenAD_tmp_22)
        OpenAD_tmp_19 = EXP(OpenAD_tmp_21)
        OpenAD_tmp_24 = (H * H)
        OpenAD_tmp_23 = (__value__(X(8)) * OpenAD_tmp_24)
        OpenAD_tmp_20 = (OpenAD_tmp_23 / 1.19999999999999995559D00)
        __value__(F(INT(I))) = (OpenAD_tmp_19 * OpenAD_tmp_20 +
     >  __value__(F(I)) - __value__(X(I)) * 2.0D00)
        OpenAD_lin_42 = (INT(1_w2f__i8) / OpenAD_tmp_22)
        OpenAD_lin_45 = __value__(X(9))
        OpenAD_lin_46 = __value__(X(I))
        OpenAD_lin_43 = (-(__value__(X(I)) /(OpenAD_tmp_22 *
     >  OpenAD_tmp_22)))
        OpenAD_lin_41 = EXP(OpenAD_tmp_21)
        OpenAD_lin_39 = OpenAD_tmp_20
        OpenAD_lin_49 = OpenAD_tmp_24
        OpenAD_lin_47 = (INT(1_w2f__i8) / 1.19999999999999995559D00)
        OpenAD_lin_40 = OpenAD_tmp_19
        OpenAD_acc_18 = (OpenAD_lin_41 * OpenAD_lin_39)
        OpenAD_acc_19 = (OpenAD_lin_49 * OpenAD_lin_47 * OpenAD_lin_40)
        OpenAD_acc_20 = (OpenAD_lin_42 * OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_lin_43 * OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_lin_45 * OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_lin_46 * OpenAD_acc_21)
        CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(F(I)))
        CALL setderiv(__deriv__(F(I)), __deriv__(OpenAD_prop_1))
        CALL saxpy(-2.0D00, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_19, __deriv__(X(8)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_20, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_22, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_23, __deriv__(X(9)), __deriv__(F(I)))
        OpenAD_tmp_28 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_tmp_27 = (__value__(X(I)) / OpenAD_tmp_28)
        OpenAD_tmp_25 = EXP(OpenAD_tmp_27)
        OpenAD_tmp_30 = (H * H)
        OpenAD_tmp_29 = (__value__(X(8)) * OpenAD_tmp_30)
        OpenAD_tmp_26 = (OpenAD_tmp_29 / 1.2D+01)
        __value__(F(INT(I + 1))) = (__value__(X(I)) + OpenAD_tmp_25 *
     >  OpenAD_tmp_26)
        OpenAD_lin_55 = (INT(1_w2f__i8) / OpenAD_tmp_28)
        OpenAD_lin_58 = __value__(X(9))
        OpenAD_lin_59 = __value__(X(I))
        OpenAD_lin_56 = (-(__value__(X(I)) /(OpenAD_tmp_28 *
     >  OpenAD_tmp_28)))
        OpenAD_lin_54 = EXP(OpenAD_tmp_27)
        OpenAD_lin_52 = OpenAD_tmp_26
        OpenAD_lin_62 = OpenAD_tmp_30
        OpenAD_lin_60 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_53 = OpenAD_tmp_25
        OpenAD_acc_24 = (OpenAD_lin_54 * OpenAD_lin_52)
        OpenAD_acc_25 = (OpenAD_lin_62 * OpenAD_lin_60 * OpenAD_lin_53)
        OpenAD_acc_26 = (OpenAD_lin_55 * OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_lin_56 * OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_lin_58 * OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_lin_59 * OpenAD_acc_27)
        CALL setderiv(__deriv__(F(I + 1)), __deriv__(X(I)))
        CALL saxpy(OpenAD_acc_25, __deriv__(X(8)), __deriv__(F(I + 1)))
        CALL saxpy(OpenAD_acc_26, __deriv__(X(I)), __deriv__(F(I + 1)))
        CALL saxpy(OpenAD_acc_28, __deriv__(X(I)), __deriv__(F(I + 1)))
        CALL saxpy(OpenAD_acc_29, __deriv__(X(9)), __deriv__(F(I + 1)))
      END DO
      OpenAD_tmp_34 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_tmp_33 = (__value__(X(7)) / OpenAD_tmp_34)
      OpenAD_tmp_31 = EXP(OpenAD_tmp_33)
      OpenAD_tmp_36 = (H * H)
      OpenAD_tmp_35 = (__value__(X(8)) * OpenAD_tmp_36)
      OpenAD_tmp_32 = (OpenAD_tmp_35 / 1.2D+01)
      __value__(F(6)) = (__value__(X(7)) + __value__(F(6)) +
     >  OpenAD_tmp_31 * OpenAD_tmp_32)
      OpenAD_lin_67 = (INT(1_w2f__i8) / OpenAD_tmp_34)
      OpenAD_lin_70 = __value__(X(9))
      OpenAD_lin_71 = __value__(X(7))
      OpenAD_lin_68 = (-(__value__(X(7)) /(OpenAD_tmp_34 *
     >  OpenAD_tmp_34)))
      OpenAD_lin_66 = EXP(OpenAD_tmp_33)
      OpenAD_lin_64 = OpenAD_tmp_32
      OpenAD_lin_74 = OpenAD_tmp_36
      OpenAD_lin_72 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_65 = OpenAD_tmp_31
      OpenAD_acc_30 = (OpenAD_lin_66 * OpenAD_lin_64)
      OpenAD_acc_31 = (OpenAD_lin_74 * OpenAD_lin_72 * OpenAD_lin_65)
      OpenAD_acc_32 = (OpenAD_lin_67 * OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_68 * OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_lin_70 * OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_lin_71 * OpenAD_acc_33)
      CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(F(6)))
      CALL setderiv(__deriv__(F(6)), __deriv__(X(7)))
      CALL inc_deriv(__deriv__(F(6)), __deriv__(OpenAD_prop_2))
      CALL saxpy(OpenAD_acc_31, __deriv__(X(8)), __deriv__(F(6)))
      CALL saxpy(OpenAD_acc_32, __deriv__(X(7)), __deriv__(F(6)))
      CALL saxpy(OpenAD_acc_34, __deriv__(X(7)), __deriv__(F(6)))
      CALL saxpy(OpenAD_acc_35, __deriv__(X(9)), __deriv__(F(6)))
      __value__(F(7)) = (__value__(F(7)) - __value__(X(7)) * 2.0D00)
      CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(F(7)))
      CALL setderiv(__deriv__(F(7)), __deriv__(OpenAD_prop_3))
      CALL saxpy(-2.0D00, __deriv__(X(7)), __deriv__(F(7)))
      OpenAD_tmp_40 = (H * H)
      OpenAD_tmp_39 = (__value__(X(8)) * OpenAD_tmp_40)
      OpenAD_tmp_37 = (OpenAD_tmp_39 / 1.2D+01)
      OpenAD_tmp_43 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_tmp_42 = (__value__(X(7)) / OpenAD_tmp_43)
      OpenAD_tmp_41 = EXP(OpenAD_tmp_42)
      OpenAD_tmp_38 = (OpenAD_tmp_41 * 1.0D+01 + 1.0D00)
      __value__(F(7)) = (__value__(F(7)) + OpenAD_tmp_37 *
     >  OpenAD_tmp_38)
      OpenAD_lin_81 = OpenAD_tmp_40
      OpenAD_lin_79 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_77 = OpenAD_tmp_38
      OpenAD_lin_86 = (INT(1_w2f__i8) / OpenAD_tmp_43)
      OpenAD_lin_89 = __value__(X(9))
      OpenAD_lin_90 = __value__(X(7))
      OpenAD_lin_87 = (-(__value__(X(7)) /(OpenAD_tmp_43 *
     >  OpenAD_tmp_43)))
      OpenAD_lin_85 = EXP(OpenAD_tmp_42)
      OpenAD_lin_78 = OpenAD_tmp_37
      OpenAD_acc_36 = (OpenAD_lin_85 * 1.0D+01)
      OpenAD_acc_37 = (OpenAD_lin_81 * OpenAD_lin_79 * OpenAD_lin_77)
      OpenAD_acc_38 = (OpenAD_lin_86 * OpenAD_acc_36 * OpenAD_lin_78)
      OpenAD_acc_39 = (OpenAD_lin_87 * OpenAD_acc_36 * OpenAD_lin_78)
      OpenAD_acc_40 = (OpenAD_lin_89 * OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_lin_90 * OpenAD_acc_39)
      CALL setderiv(__deriv__(OpenAD_prop_4), __deriv__(F(7)))
      CALL setderiv(__deriv__(F(7)), __deriv__(OpenAD_prop_4))
      CALL saxpy(OpenAD_acc_37, __deriv__(X(8)), __deriv__(F(7)))
      CALL saxpy(OpenAD_acc_38, __deriv__(X(7)), __deriv__(F(7)))
      CALL saxpy(OpenAD_acc_40, __deriv__(X(7)), __deriv__(F(7)))
      CALL saxpy(OpenAD_acc_41, __deriv__(X(9)), __deriv__(F(7)))
      END SUBROUTINE
