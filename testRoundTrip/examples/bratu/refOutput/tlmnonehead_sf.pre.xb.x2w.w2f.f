
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
      SUBROUTINE head(X, F)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
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
      REAL(w2f__8) OpenAD_lin_100
      REAL(w2f__8) OpenAD_lin_101
      REAL(w2f__8) OpenAD_lin_102
      REAL(w2f__8) OpenAD_lin_104
      REAL(w2f__8) OpenAD_lin_105
      REAL(w2f__8) OpenAD_lin_108
      REAL(w2f__8) OpenAD_lin_109
      REAL(w2f__8) OpenAD_lin_110
      REAL(w2f__8) OpenAD_lin_111
      REAL(w2f__8) OpenAD_lin_112
      REAL(w2f__8) OpenAD_lin_113
      REAL(w2f__8) OpenAD_lin_115
      REAL(w2f__8) OpenAD_lin_116
      REAL(w2f__8) OpenAD_lin_119
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_121
      REAL(w2f__8) OpenAD_lin_122
      REAL(w2f__8) OpenAD_lin_123
      REAL(w2f__8) OpenAD_lin_124
      REAL(w2f__8) OpenAD_lin_126
      REAL(w2f__8) OpenAD_lin_127
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_22
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_24
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_26
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_32
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_36
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_40
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_44
      REAL(w2f__8) OpenAD_lin_45
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_48
      REAL(w2f__8) OpenAD_lin_49
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_50
      REAL(w2f__8) OpenAD_lin_52
      REAL(w2f__8) OpenAD_lin_53
      REAL(w2f__8) OpenAD_lin_55
      REAL(w2f__8) OpenAD_lin_56
      REAL(w2f__8) OpenAD_lin_57
      REAL(w2f__8) OpenAD_lin_58
      REAL(w2f__8) OpenAD_lin_59
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_60
      REAL(w2f__8) OpenAD_lin_61
      REAL(w2f__8) OpenAD_lin_62
      REAL(w2f__8) OpenAD_lin_64
      REAL(w2f__8) OpenAD_lin_65
      REAL(w2f__8) OpenAD_lin_66
      REAL(w2f__8) OpenAD_lin_67
      REAL(w2f__8) OpenAD_lin_69
      REAL(w2f__8) OpenAD_lin_70
      REAL(w2f__8) OpenAD_lin_73
      REAL(w2f__8) OpenAD_lin_74
      REAL(w2f__8) OpenAD_lin_75
      REAL(w2f__8) OpenAD_lin_76
      REAL(w2f__8) OpenAD_lin_77
      REAL(w2f__8) OpenAD_lin_78
      REAL(w2f__8) OpenAD_lin_79
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_80
      REAL(w2f__8) OpenAD_lin_82
      REAL(w2f__8) OpenAD_lin_83
      REAL(w2f__8) OpenAD_lin_84
      REAL(w2f__8) OpenAD_lin_85
      REAL(w2f__8) OpenAD_lin_87
      REAL(w2f__8) OpenAD_lin_88
      REAL(w2f__8) OpenAD_lin_9
      REAL(w2f__8) OpenAD_lin_90
      REAL(w2f__8) OpenAD_lin_91
      REAL(w2f__8) OpenAD_lin_92
      REAL(w2f__8) OpenAD_lin_93
      REAL(w2f__8) OpenAD_lin_94
      REAL(w2f__8) OpenAD_lin_95
      REAL(w2f__8) OpenAD_lin_96
      REAL(w2f__8) OpenAD_lin_97
      REAL(w2f__8) OpenAD_lin_99
      TYPE (OpenADTy_active) OpenAD_prp_0
      TYPE (OpenADTy_active) OpenAD_prp_1
      TYPE (OpenADTy_active) OpenAD_prp_2
      TYPE (OpenADTy_active) OpenAD_prp_3
      TYPE (OpenADTy_active) OpenAD_prp_4
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
      OpenAD_lin_8 = (H * H)
      OpenAD_lin_5 = (__value__(X(8)) * OpenAD_lin_8)
      OpenAD_lin_1 = (OpenAD_lin_5 / 1.2D+01)
      OpenAD_lin_15 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_12 = EXP(__value__(X(1)) / OpenAD_lin_15)
      OpenAD_lin_2 = (OpenAD_lin_12 * 1.0D+01 + 1.0D00)
      __value__(F(1)) = (__value__(X(1)) *(-2.0D00) + OpenAD_lin_1 *
     >  OpenAD_lin_2)
      OpenAD_lin_9 = OpenAD_lin_8
      OpenAD_lin_6 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_3 = OpenAD_lin_2
      OpenAD_lin_16 = (INT(1_w2f__i8) / OpenAD_lin_15)
      OpenAD_lin_19 = __value__(X(9))
      OpenAD_lin_20 = __value__(X(1))
      OpenAD_lin_17 = (-(__value__(X(1)) /(OpenAD_lin_15 *
     >  OpenAD_lin_15)))
      OpenAD_lin_14 = OpenAD_lin_12
      OpenAD_lin_4 = OpenAD_lin_1
      OpenAD_acc_0 = (OpenAD_lin_14 * 1.0D+01)
      OpenAD_acc_1 = (OpenAD_lin_9 * OpenAD_lin_6 * OpenAD_lin_3)
      OpenAD_acc_2 = (OpenAD_lin_16 * OpenAD_acc_0 * OpenAD_lin_4)
      OpenAD_acc_3 = (OpenAD_lin_17 * OpenAD_acc_0 * OpenAD_lin_4)
      OpenAD_acc_4 = (OpenAD_lin_19 * OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_lin_20 * OpenAD_acc_3)
      CALL sax(-2.0D00, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_1, __deriv__(X(8)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_2, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_4, __deriv__(X(1)), __deriv__(F(1)))
      CALL saxpy(OpenAD_acc_5, __deriv__(X(9)), __deriv__(F(1)))
      OpenAD_lin_26 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_21 = EXP(__value__(X(1)) / OpenAD_lin_26)
      OpenAD_lin_35 = (H * H)
      OpenAD_lin_32 = (__value__(X(8)) * OpenAD_lin_35)
      OpenAD_lin_22 = (OpenAD_lin_32 / 1.2D+01)
      __value__(F(2)) = (__value__(X(1)) + OpenAD_lin_21 *
     >  OpenAD_lin_22)
      OpenAD_lin_27 = (INT(1_w2f__i8) / OpenAD_lin_26)
      OpenAD_lin_30 = __value__(X(9))
      OpenAD_lin_31 = __value__(X(1))
      OpenAD_lin_28 = (-(__value__(X(1)) /(OpenAD_lin_26 *
     >  OpenAD_lin_26)))
      OpenAD_lin_25 = OpenAD_lin_21
      OpenAD_lin_23 = OpenAD_lin_22
      OpenAD_lin_36 = OpenAD_lin_35
      OpenAD_lin_33 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_24 = OpenAD_lin_21
      OpenAD_acc_6 = (OpenAD_lin_25 * OpenAD_lin_23)
      OpenAD_acc_7 = (OpenAD_lin_36 * OpenAD_lin_33 * OpenAD_lin_24)
      OpenAD_acc_8 = (OpenAD_lin_27 * OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_lin_28 * OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_lin_30 * OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_31 * OpenAD_acc_9)
      CALL setderiv(__deriv__(F(2)), __deriv__(X(1)))
      CALL saxpy(OpenAD_acc_7, __deriv__(X(8)), __deriv__(F(2)))
      CALL saxpy(OpenAD_acc_8, __deriv__(X(1)), __deriv__(F(2)))
      CALL saxpy(OpenAD_acc_10, __deriv__(X(1)), __deriv__(F(2)))
      CALL saxpy(OpenAD_acc_11, __deriv__(X(9)), __deriv__(F(2)))
      DO I = 2, 6, 1
        OpenAD_lin_43 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_38 = EXP(__value__(X(I)) / OpenAD_lin_43)
        OpenAD_lin_52 = (H * H)
        OpenAD_lin_49 = (__value__(X(8)) * OpenAD_lin_52)
        OpenAD_lin_39 = (OpenAD_lin_49 / 1.2D+01)
        __value__(F(INT(I +(-1)))) = (__value__(X(I)) + __value__(F(I +
     >  (-1))) + OpenAD_lin_38 * OpenAD_lin_39)
        OpenAD_lin_44 = (INT(1_w2f__i8) / OpenAD_lin_43)
        OpenAD_lin_47 = __value__(X(9))
        OpenAD_lin_48 = __value__(X(I))
        OpenAD_lin_45 = (-(__value__(X(I)) /(OpenAD_lin_43 *
     >  OpenAD_lin_43)))
        OpenAD_lin_42 = OpenAD_lin_38
        OpenAD_lin_40 = OpenAD_lin_39
        OpenAD_lin_53 = OpenAD_lin_52
        OpenAD_lin_50 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_41 = OpenAD_lin_38
        OpenAD_acc_12 = (OpenAD_lin_42 * OpenAD_lin_40)
        OpenAD_acc_13 = (OpenAD_lin_53 * OpenAD_lin_50 * OpenAD_lin_41)
        OpenAD_acc_14 = (OpenAD_lin_44 * OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_lin_45 * OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_lin_47 * OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_lin_48 * OpenAD_acc_15)
        CALL setderiv(__deriv__(OpenAD_prp_0), __deriv__(F(I + (-1))))
        CALL setderiv(__deriv__(F(I + (-1))), __deriv__(X(I)))
        CALL inc_deriv(__deriv__(F(I + (-1))), __deriv__(OpenAD_prp_0))
        CALL saxpy(OpenAD_acc_13, __deriv__(X(8)), __deriv__(F(I + (-1)
     > )))
        CALL saxpy(OpenAD_acc_14, __deriv__(X(I)), __deriv__(F(I + (-1)
     > )))
        CALL saxpy(OpenAD_acc_16, __deriv__(X(I)), __deriv__(F(I + (-1)
     > )))
        CALL saxpy(OpenAD_acc_17, __deriv__(X(9)), __deriv__(F(I + (-1)
     > )))
        OpenAD_lin_60 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_55 = EXP(__value__(X(I)) / OpenAD_lin_60)
        OpenAD_lin_69 = (H * H)
        OpenAD_lin_66 = (__value__(X(8)) * OpenAD_lin_69)
        OpenAD_lin_56 = (OpenAD_lin_66 / 1.19999999999999995559D00)
        __value__(F(INT(I))) = (OpenAD_lin_55 * OpenAD_lin_56 +
     >  __value__(F(I)) - __value__(X(I)) * 2.0D00)
        OpenAD_lin_61 = (INT(1_w2f__i8) / OpenAD_lin_60)
        OpenAD_lin_64 = __value__(X(9))
        OpenAD_lin_65 = __value__(X(I))
        OpenAD_lin_62 = (-(__value__(X(I)) /(OpenAD_lin_60 *
     >  OpenAD_lin_60)))
        OpenAD_lin_59 = OpenAD_lin_55
        OpenAD_lin_57 = OpenAD_lin_56
        OpenAD_lin_70 = OpenAD_lin_69
        OpenAD_lin_67 = (INT(1_w2f__i8) / 1.19999999999999995559D00)
        OpenAD_lin_58 = OpenAD_lin_55
        OpenAD_acc_18 = (OpenAD_lin_59 * OpenAD_lin_57)
        OpenAD_acc_19 = (OpenAD_lin_70 * OpenAD_lin_67 * OpenAD_lin_58)
        OpenAD_acc_20 = (OpenAD_lin_61 * OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_lin_62 * OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_lin_64 * OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_lin_65 * OpenAD_acc_21)
        CALL setderiv(__deriv__(OpenAD_prp_1), __deriv__(F(I)))
        CALL setderiv(__deriv__(F(I)), __deriv__(OpenAD_prp_1))
        CALL saxpy(-2.0D00, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_19, __deriv__(X(8)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_20, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_22, __deriv__(X(I)), __deriv__(F(I)))
        CALL saxpy(OpenAD_acc_23, __deriv__(X(9)), __deriv__(F(I)))
        OpenAD_lin_78 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_73 = EXP(__value__(X(I)) / OpenAD_lin_78)
        OpenAD_lin_87 = (H * H)
        OpenAD_lin_84 = (__value__(X(8)) * OpenAD_lin_87)
        OpenAD_lin_74 = (OpenAD_lin_84 / 1.2D+01)
        __value__(F(INT(I + 1))) = (__value__(X(I)) + OpenAD_lin_73 *
     >  OpenAD_lin_74)
        OpenAD_lin_79 = (INT(1_w2f__i8) / OpenAD_lin_78)
        OpenAD_lin_82 = __value__(X(9))
        OpenAD_lin_83 = __value__(X(I))
        OpenAD_lin_80 = (-(__value__(X(I)) /(OpenAD_lin_78 *
     >  OpenAD_lin_78)))
        OpenAD_lin_77 = OpenAD_lin_73
        OpenAD_lin_75 = OpenAD_lin_74
        OpenAD_lin_88 = OpenAD_lin_87
        OpenAD_lin_85 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_76 = OpenAD_lin_73
        OpenAD_acc_24 = (OpenAD_lin_77 * OpenAD_lin_75)
        OpenAD_acc_25 = (OpenAD_lin_88 * OpenAD_lin_85 * OpenAD_lin_76)
        OpenAD_acc_26 = (OpenAD_lin_79 * OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_lin_80 * OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_lin_82 * OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_lin_83 * OpenAD_acc_27)
        CALL setderiv(__deriv__(F(I + 1)), __deriv__(X(I)))
        CALL saxpy(OpenAD_acc_25, __deriv__(X(8)), __deriv__(F(I + 1)))
        CALL saxpy(OpenAD_acc_26, __deriv__(X(I)), __deriv__(F(I + 1)))
        CALL saxpy(OpenAD_acc_28, __deriv__(X(I)), __deriv__(F(I + 1)))
        CALL saxpy(OpenAD_acc_29, __deriv__(X(9)), __deriv__(F(I + 1)))
      END DO
      OpenAD_lin_95 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_90 = EXP(__value__(X(7)) / OpenAD_lin_95)
      OpenAD_lin_104 = (H * H)
      OpenAD_lin_101 = (__value__(X(8)) * OpenAD_lin_104)
      OpenAD_lin_91 = (OpenAD_lin_101 / 1.2D+01)
      __value__(F(6)) = (__value__(X(7)) + __value__(F(6)) +
     >  OpenAD_lin_90 * OpenAD_lin_91)
      OpenAD_lin_96 = (INT(1_w2f__i8) / OpenAD_lin_95)
      OpenAD_lin_99 = __value__(X(9))
      OpenAD_lin_100 = __value__(X(7))
      OpenAD_lin_97 = (-(__value__(X(7)) /(OpenAD_lin_95 *
     >  OpenAD_lin_95)))
      OpenAD_lin_94 = OpenAD_lin_90
      OpenAD_lin_92 = OpenAD_lin_91
      OpenAD_lin_105 = OpenAD_lin_104
      OpenAD_lin_102 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_93 = OpenAD_lin_90
      OpenAD_acc_30 = (OpenAD_lin_94 * OpenAD_lin_92)
      OpenAD_acc_31 = (OpenAD_lin_105 * OpenAD_lin_102 * OpenAD_lin_93)
      OpenAD_acc_32 = (OpenAD_lin_96 * OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_97 * OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_lin_99 * OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_lin_100 * OpenAD_acc_33)
      CALL setderiv(__deriv__(OpenAD_prp_2), __deriv__(F(6)))
      CALL setderiv(__deriv__(F(6)), __deriv__(X(7)))
      CALL inc_deriv(__deriv__(F(6)), __deriv__(OpenAD_prp_2))
      CALL saxpy(OpenAD_acc_31, __deriv__(X(8)), __deriv__(F(6)))
      CALL saxpy(OpenAD_acc_32, __deriv__(X(7)), __deriv__(F(6)))
      CALL saxpy(OpenAD_acc_34, __deriv__(X(7)), __deriv__(F(6)))
      CALL saxpy(OpenAD_acc_35, __deriv__(X(9)), __deriv__(F(6)))
      __value__(F(7)) = (__value__(F(7)) - __value__(X(7)) * 2.0D00)
      CALL setderiv(__deriv__(OpenAD_prp_3), __deriv__(F(7)))
      CALL setderiv(__deriv__(F(7)), __deriv__(OpenAD_prp_3))
      CALL saxpy(-2.0D00, __deriv__(X(7)), __deriv__(F(7)))
      OpenAD_lin_115 = (H * H)
      OpenAD_lin_112 = (__value__(X(8)) * OpenAD_lin_115)
      OpenAD_lin_108 = (OpenAD_lin_112 / 1.2D+01)
      OpenAD_lin_122 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_119 = EXP(__value__(X(7)) / OpenAD_lin_122)
      OpenAD_lin_109 = (OpenAD_lin_119 * 1.0D+01 + 1.0D00)
      __value__(F(7)) = (__value__(F(7)) + OpenAD_lin_108 *
     >  OpenAD_lin_109)
      OpenAD_lin_116 = OpenAD_lin_115
      OpenAD_lin_113 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_110 = OpenAD_lin_109
      OpenAD_lin_123 = (INT(1_w2f__i8) / OpenAD_lin_122)
      OpenAD_lin_126 = __value__(X(9))
      OpenAD_lin_127 = __value__(X(7))
      OpenAD_lin_124 = (-(__value__(X(7)) /(OpenAD_lin_122 *
     >  OpenAD_lin_122)))
      OpenAD_lin_121 = OpenAD_lin_119
      OpenAD_lin_111 = OpenAD_lin_108
      OpenAD_acc_36 = (OpenAD_lin_121 * 1.0D+01)
      OpenAD_acc_37 = (OpenAD_lin_116 * OpenAD_lin_113 * OpenAD_lin_110
     > )
      OpenAD_acc_38 = (OpenAD_lin_123 * OpenAD_acc_36 * OpenAD_lin_111)
      OpenAD_acc_39 = (OpenAD_lin_124 * OpenAD_acc_36 * OpenAD_lin_111)
      OpenAD_acc_40 = (OpenAD_lin_126 * OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_lin_127 * OpenAD_acc_39)
      CALL setderiv(__deriv__(OpenAD_prp_4), __deriv__(F(7)))
      CALL setderiv(__deriv__(F(7)), __deriv__(OpenAD_prp_4))
      CALL saxpy(OpenAD_acc_37, __deriv__(X(8)), __deriv__(F(7)))
      CALL saxpy(OpenAD_acc_38, __deriv__(X(7)), __deriv__(F(7)))
      CALL saxpy(OpenAD_acc_40, __deriv__(X(7)), __deriv__(F(7)))
      CALL saxpy(OpenAD_acc_41, __deriv__(X(9)), __deriv__(F(7)))
      END SUBROUTINE
