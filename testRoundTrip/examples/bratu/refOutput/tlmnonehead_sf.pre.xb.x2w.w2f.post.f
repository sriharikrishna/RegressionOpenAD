
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, F)
      use w2f__types
      use OAD_active
      use oad_intrinsics
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
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:9)
      type(active) :: F(1:7)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) H
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_121
      REAL(w2f__8) OpenAD_Symbol_122
      REAL(w2f__8) OpenAD_Symbol_125
      REAL(w2f__8) OpenAD_Symbol_127
      REAL(w2f__8) OpenAD_Symbol_128
      REAL(w2f__8) OpenAD_Symbol_129
      REAL(w2f__8) OpenAD_Symbol_130
      REAL(w2f__8) OpenAD_Symbol_131
      REAL(w2f__8) OpenAD_Symbol_133
      REAL(w2f__8) OpenAD_Symbol_134
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_60
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_62
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_64
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_68
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_84
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_87
      REAL(w2f__8) OpenAD_Symbol_88
      REAL(w2f__8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_Symbol_92
      REAL(w2f__8) OpenAD_Symbol_93
      REAL(w2f__8) OpenAD_Symbol_95
      REAL(w2f__8) OpenAD_Symbol_96
      REAL(w2f__8) OpenAD_Symbol_97
      REAL(w2f__8) OpenAD_Symbol_98
      REAL(w2f__8) OpenAD_Symbol_99
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
      OpenAD_Symbol_8 = (H * H)
      OpenAD_Symbol_5 = (X(8)%v*OpenAD_Symbol_8)
      OpenAD_Symbol_1 = (OpenAD_Symbol_5/1.2D+01)
      OpenAD_Symbol_16 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_14 = (X(1)%v/OpenAD_Symbol_16)
      OpenAD_Symbol_12 = EXP(OpenAD_Symbol_14)
      OpenAD_Symbol_2 = (OpenAD_Symbol_12*1.0D+01+1.0D00)
      F(1)%v = (X(1)%v*(-2.0D00)+OpenAD_Symbol_1*OpenAD_Symbol_2)
      OpenAD_Symbol_9 = OpenAD_Symbol_8
      OpenAD_Symbol_6 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_Symbol_3 = OpenAD_Symbol_2
      OpenAD_Symbol_17 = (INT(1_w2f__i8)/OpenAD_Symbol_16)
      OpenAD_Symbol_20 = X(9)%v
      OpenAD_Symbol_21 = X(1)%v
      OpenAD_Symbol_18 = (-(X(1)%v/(OpenAD_Symbol_16*OpenAD_Symbol_16)))
      OpenAD_Symbol_15 = EXP(OpenAD_Symbol_14)
      OpenAD_Symbol_4 = OpenAD_Symbol_1
      OpenAD_acc_0 = (OpenAD_Symbol_15*1.0D+01)
      OpenAD_acc_1 = (OpenAD_Symbol_9*OpenAD_Symbol_6*OpenAD_Symbol_3)
      OpenAD_acc_2 = (OpenAD_Symbol_17*OpenAD_acc_0*OpenAD_Symbol_4)
      OpenAD_acc_3 = (OpenAD_Symbol_18*OpenAD_acc_0*OpenAD_Symbol_4)
      OpenAD_acc_4 = (OpenAD_Symbol_20*OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_Symbol_21*OpenAD_acc_3)
      CALL sax(-2.0D00,X(1),F(1))
      CALL saxpy(OpenAD_acc_1,X(8),F(1))
      CALL saxpy(OpenAD_acc_2,X(1),F(1))
      CALL saxpy(OpenAD_acc_4,X(1),F(1))
      CALL saxpy(OpenAD_acc_5,X(9),F(1))
      OpenAD_Symbol_28 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_26 = (X(1)%v/OpenAD_Symbol_28)
      OpenAD_Symbol_22 = EXP(OpenAD_Symbol_26)
      OpenAD_Symbol_37 = (H*H)
      OpenAD_Symbol_34 = (X(8)%v*OpenAD_Symbol_37)
      OpenAD_Symbol_23 = (OpenAD_Symbol_34/1.2D+01)
      F(2)%v = (X(1)%v+OpenAD_Symbol_22*OpenAD_Symbol_23)
      OpenAD_Symbol_29 = (INT(1_w2f__i8)/OpenAD_Symbol_28)
      OpenAD_Symbol_32 = X(9)%v
      OpenAD_Symbol_33 = X(1)%v
      OpenAD_Symbol_30 = (-(X(1)%v/(OpenAD_Symbol_28*OpenAD_Symbol_28)))
      OpenAD_Symbol_27 = EXP(OpenAD_Symbol_26)
      OpenAD_Symbol_24 = OpenAD_Symbol_23
      OpenAD_Symbol_38 = OpenAD_Symbol_37
      OpenAD_Symbol_35 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_Symbol_25 = OpenAD_Symbol_22
      OpenAD_acc_6 = (OpenAD_Symbol_27*OpenAD_Symbol_24)
      OpenAD_acc_7 = (OpenAD_Symbol_38*OpenAD_Symbol_35*OpenAD_Symbol_25
     +)
      OpenAD_acc_8 = (OpenAD_Symbol_29*OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_Symbol_30*OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_Symbol_32*OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_Symbol_33*OpenAD_acc_9)
      CALL setderiv(F(2),X(1))
      CALL saxpy(OpenAD_acc_7,X(8),F(2))
      CALL saxpy(OpenAD_acc_8,X(1),F(2))
      CALL saxpy(OpenAD_acc_10,X(1),F(2))
      CALL saxpy(OpenAD_acc_11,X(9),F(2))
      DO I = 2,6,1
        OpenAD_Symbol_46 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_Symbol_44 = (X(I)%v/OpenAD_Symbol_46)
        OpenAD_Symbol_40 = EXP(OpenAD_Symbol_44)
        OpenAD_Symbol_55 = (H*H)
        OpenAD_Symbol_52 = (X(8)%v*OpenAD_Symbol_55)
        OpenAD_Symbol_41 = (OpenAD_Symbol_52/1.2D+01)
        F(INT(I+(-1)))%v = (X(I)%v+F(I+(-1))%v+OpenAD_Symbol_40*OpenAD_S
     +ymbol_41)
        OpenAD_Symbol_47 = (INT(1_w2f__i8)/OpenAD_Symbol_46)
        OpenAD_Symbol_50 = X(9)%v
        OpenAD_Symbol_51 = X(I)%v
        OpenAD_Symbol_48 = (-(X(I)%v/(OpenAD_Symbol_46*OpenAD_Symbol_46)
     +))
        OpenAD_Symbol_45 = EXP(OpenAD_Symbol_44)
        OpenAD_Symbol_42 = OpenAD_Symbol_41
        OpenAD_Symbol_56 = OpenAD_Symbol_55
        OpenAD_Symbol_53 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_Symbol_43 = OpenAD_Symbol_40
        OpenAD_acc_12 = (OpenAD_Symbol_45*OpenAD_Symbol_42)
        OpenAD_acc_13 = (OpenAD_Symbol_56*OpenAD_Symbol_53*OpenAD_Symbol
     +_43)
        OpenAD_acc_14 = (OpenAD_Symbol_47*OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_Symbol_48*OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_Symbol_50*OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_Symbol_51*OpenAD_acc_15)
        CALL setderiv(OpenAD_prop_0,F(I+(-1)))
        CALL setderiv(F(I+(-1)),X(I))
        CALL inc_deriv(F(I+(-1)),OpenAD_prop_0)
        CALL saxpy(OpenAD_acc_13,X(8),F(I+(-1)))
        CALL saxpy(OpenAD_acc_14,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_16,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_17,X(9),F(I+(-1)))
        OpenAD_Symbol_64 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_Symbol_62 = (X(I)%v/OpenAD_Symbol_64)
        OpenAD_Symbol_58 = EXP(OpenAD_Symbol_62)
        OpenAD_Symbol_73 = (H*H)
        OpenAD_Symbol_70 = (X(8)%v*OpenAD_Symbol_73)
        OpenAD_Symbol_59 = (OpenAD_Symbol_70/1.19999999999999995559D00)
        F(INT(I))%v = (OpenAD_Symbol_58*OpenAD_Symbol_59+F(I)%v-X(I)%v*2
     +.0D00)
        OpenAD_Symbol_65 = (INT(1_w2f__i8)/OpenAD_Symbol_64)
        OpenAD_Symbol_68 = X(9)%v
        OpenAD_Symbol_69 = X(I)%v
        OpenAD_Symbol_66 = (-(X(I)%v/(OpenAD_Symbol_64*OpenAD_Symbol_64)
     +))
        OpenAD_Symbol_63 = EXP(OpenAD_Symbol_62)
        OpenAD_Symbol_60 = OpenAD_Symbol_59
        OpenAD_Symbol_74 = OpenAD_Symbol_73
        OpenAD_Symbol_71 = (INT(1_w2f__i8)/1.19999999999999995559D00)
        OpenAD_Symbol_61 = OpenAD_Symbol_58
        OpenAD_acc_18 = (OpenAD_Symbol_63*OpenAD_Symbol_60)
        OpenAD_acc_19 = (OpenAD_Symbol_74*OpenAD_Symbol_71*OpenAD_Symbol
     +_61)
        OpenAD_acc_20 = (OpenAD_Symbol_65*OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_Symbol_66*OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_Symbol_68*OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_Symbol_69*OpenAD_acc_21)
        CALL setderiv(OpenAD_prop_1,F(I))
        CALL setderiv(F(I),OpenAD_prop_1)
        CALL saxpy(-2.0D00,X(I),F(I))
        CALL saxpy(OpenAD_acc_19,X(8),F(I))
        CALL saxpy(OpenAD_acc_20,X(I),F(I))
        CALL saxpy(OpenAD_acc_22,X(I),F(I))
        CALL saxpy(OpenAD_acc_23,X(9),F(I))
        OpenAD_Symbol_83 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_Symbol_81 = (X(I)%v/OpenAD_Symbol_83)
        OpenAD_Symbol_77 = EXP(OpenAD_Symbol_81)
        OpenAD_Symbol_92 = (H*H)
        OpenAD_Symbol_89 = (X(8)%v*OpenAD_Symbol_92)
        OpenAD_Symbol_78 = (OpenAD_Symbol_89/1.2D+01)
        F(INT(I+1))%v = (X(I)%v+OpenAD_Symbol_77*OpenAD_Symbol_78)
        OpenAD_Symbol_84 = (INT(1_w2f__i8)/OpenAD_Symbol_83)
        OpenAD_Symbol_87 = X(9)%v
        OpenAD_Symbol_88 = X(I)%v
        OpenAD_Symbol_85 = (-(X(I)%v/(OpenAD_Symbol_83*OpenAD_Symbol_83)
     +))
        OpenAD_Symbol_82 = EXP(OpenAD_Symbol_81)
        OpenAD_Symbol_79 = OpenAD_Symbol_78
        OpenAD_Symbol_93 = OpenAD_Symbol_92
        OpenAD_Symbol_90 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_Symbol_80 = OpenAD_Symbol_77
        OpenAD_acc_24 = (OpenAD_Symbol_82*OpenAD_Symbol_79)
        OpenAD_acc_25 = (OpenAD_Symbol_93*OpenAD_Symbol_90*OpenAD_Symbol
     +_80)
        OpenAD_acc_26 = (OpenAD_Symbol_84*OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_Symbol_85*OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_Symbol_87*OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_Symbol_88*OpenAD_acc_27)
        CALL setderiv(F(I+1),X(I))
        CALL saxpy(OpenAD_acc_25,X(8),F(I+1))
        CALL saxpy(OpenAD_acc_26,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_28,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_29,X(9),F(I+1))
      END DO
      OpenAD_Symbol_101 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_99 = (X(7)%v/OpenAD_Symbol_101)
      OpenAD_Symbol_95 = EXP(OpenAD_Symbol_99)
      OpenAD_Symbol_110 = (H*H)
      OpenAD_Symbol_107 = (X(8)%v*OpenAD_Symbol_110)
      OpenAD_Symbol_96 = (OpenAD_Symbol_107/1.2D+01)
      F(6)%v = (X(7)%v+F(6)%v+OpenAD_Symbol_95*OpenAD_Symbol_96)
      OpenAD_Symbol_102 = (INT(1_w2f__i8)/OpenAD_Symbol_101)
      OpenAD_Symbol_105 = X(9)%v
      OpenAD_Symbol_106 = X(7)%v
      OpenAD_Symbol_103 = (-(X(7)%v/(OpenAD_Symbol_101*OpenAD_Symbol_101
     +)))
      OpenAD_Symbol_100 = EXP(OpenAD_Symbol_99)
      OpenAD_Symbol_97 = OpenAD_Symbol_96
      OpenAD_Symbol_111 = OpenAD_Symbol_110
      OpenAD_Symbol_108 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_Symbol_98 = OpenAD_Symbol_95
      OpenAD_acc_30 = (OpenAD_Symbol_100*OpenAD_Symbol_97)
      OpenAD_acc_31 = (OpenAD_Symbol_111*OpenAD_Symbol_108*OpenAD_Symbol
     +_98)
      OpenAD_acc_32 = (OpenAD_Symbol_102*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_Symbol_103*OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_Symbol_105*OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_Symbol_106*OpenAD_acc_33)
      CALL setderiv(OpenAD_prop_2,F(6))
      CALL setderiv(F(6),X(7))
      CALL inc_deriv(F(6),OpenAD_prop_2)
      CALL saxpy(OpenAD_acc_31,X(8),F(6))
      CALL saxpy(OpenAD_acc_32,X(7),F(6))
      CALL saxpy(OpenAD_acc_34,X(7),F(6))
      CALL saxpy(OpenAD_acc_35,X(9),F(6))
      F(7)%v = (F(7)%v-X(7)%v*2.0D00)
      CALL setderiv(OpenAD_prop_3,F(7))
      CALL setderiv(F(7),OpenAD_prop_3)
      CALL saxpy(-2.0D00,X(7),F(7))
      OpenAD_Symbol_121 = (H*H)
      OpenAD_Symbol_118 = (X(8)%v*OpenAD_Symbol_121)
      OpenAD_Symbol_114 = (OpenAD_Symbol_118/1.2D+01)
      OpenAD_Symbol_129 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_127 = (X(7)%v/OpenAD_Symbol_129)
      OpenAD_Symbol_125 = EXP(OpenAD_Symbol_127)
      OpenAD_Symbol_115 = (OpenAD_Symbol_125*1.0D+01+1.0D00)
      F(7)%v = (F(7)%v+OpenAD_Symbol_114*OpenAD_Symbol_115)
      OpenAD_Symbol_122 = OpenAD_Symbol_121
      OpenAD_Symbol_119 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_Symbol_116 = OpenAD_Symbol_115
      OpenAD_Symbol_130 = (INT(1_w2f__i8)/OpenAD_Symbol_129)
      OpenAD_Symbol_133 = X(9)%v
      OpenAD_Symbol_134 = X(7)%v
      OpenAD_Symbol_131 = (-(X(7)%v/(OpenAD_Symbol_129*OpenAD_Symbol_129
     +)))
      OpenAD_Symbol_128 = EXP(OpenAD_Symbol_127)
      OpenAD_Symbol_117 = OpenAD_Symbol_114
      OpenAD_acc_36 = (OpenAD_Symbol_128*1.0D+01)
      OpenAD_acc_37 = (OpenAD_Symbol_122*OpenAD_Symbol_119*OpenAD_Symbol
     +_116)
      OpenAD_acc_38 = (OpenAD_Symbol_130*OpenAD_acc_36*OpenAD_Symbol_117
     +)
      OpenAD_acc_39 = (OpenAD_Symbol_131*OpenAD_acc_36*OpenAD_Symbol_117
     +)
      OpenAD_acc_40 = (OpenAD_Symbol_133*OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_Symbol_134*OpenAD_acc_39)
      CALL setderiv(OpenAD_prop_4,F(7))
      CALL setderiv(F(7),OpenAD_prop_4)
      CALL saxpy(OpenAD_acc_37,X(8),F(7))
      CALL saxpy(OpenAD_acc_38,X(7),F(7))
      CALL saxpy(OpenAD_acc_40,X(7),F(7))
      CALL saxpy(OpenAD_acc_41,X(9),F(7))
      END SUBROUTINE
