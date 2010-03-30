
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:9)
      type(active) :: F(1:7)
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
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
      type(active) :: OpenAD_prp_2
      type(active) :: OpenAD_prp_3
      type(active) :: OpenAD_prp_4
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
      OpenAD_lin_5 = (X(8)%v*OpenAD_lin_8)
      OpenAD_lin_1 = (OpenAD_lin_5/1.2D+01)
      OpenAD_lin_15 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_lin_12 = EXP(X(1)%v/OpenAD_lin_15)
      OpenAD_lin_2 = (OpenAD_lin_12*1.0D+01+1.0D00)
      F(1)%v = (X(1)%v*(-2.0D00)+OpenAD_lin_1*OpenAD_lin_2)
      OpenAD_lin_9 = OpenAD_lin_8
      OpenAD_lin_6 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_3 = OpenAD_lin_2
      OpenAD_lin_16 = (INT(1_w2f__i8)/OpenAD_lin_15)
      OpenAD_lin_19 = X(9)%v
      OpenAD_lin_20 = X(1)%v
      OpenAD_lin_17 = (-(X(1)%v/(OpenAD_lin_15*OpenAD_lin_15)))
      OpenAD_lin_14 = OpenAD_lin_12
      OpenAD_lin_4 = OpenAD_lin_1
      OpenAD_acc_0 = (OpenAD_lin_14*1.0D+01)
      OpenAD_acc_1 = (OpenAD_lin_9*OpenAD_lin_6*OpenAD_lin_3)
      OpenAD_acc_2 = (OpenAD_lin_16*OpenAD_acc_0*OpenAD_lin_4)
      OpenAD_acc_3 = (OpenAD_lin_17*OpenAD_acc_0*OpenAD_lin_4)
      OpenAD_acc_4 = (OpenAD_lin_19*OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_lin_20*OpenAD_acc_3)
      CALL sax(-2.0D00,X(1),F(1))
      CALL saxpy(OpenAD_acc_1,X(8),F(1))
      CALL saxpy(OpenAD_acc_2,X(1),F(1))
      CALL saxpy(OpenAD_acc_4,X(1),F(1))
      CALL saxpy(OpenAD_acc_5,X(9),F(1))
      OpenAD_lin_26 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_lin_21 = EXP(X(1)%v/OpenAD_lin_26)
      OpenAD_lin_35 = (H*H)
      OpenAD_lin_32 = (X(8)%v*OpenAD_lin_35)
      OpenAD_lin_22 = (OpenAD_lin_32/1.2D+01)
      F(2)%v = (X(1)%v+OpenAD_lin_21*OpenAD_lin_22)
      OpenAD_lin_27 = (INT(1_w2f__i8)/OpenAD_lin_26)
      OpenAD_lin_30 = X(9)%v
      OpenAD_lin_31 = X(1)%v
      OpenAD_lin_28 = (-(X(1)%v/(OpenAD_lin_26*OpenAD_lin_26)))
      OpenAD_lin_25 = OpenAD_lin_21
      OpenAD_lin_23 = OpenAD_lin_22
      OpenAD_lin_36 = OpenAD_lin_35
      OpenAD_lin_33 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_24 = OpenAD_lin_21
      OpenAD_acc_6 = (OpenAD_lin_25*OpenAD_lin_23)
      OpenAD_acc_7 = (OpenAD_lin_36*OpenAD_lin_33*OpenAD_lin_24)
      OpenAD_acc_8 = (OpenAD_lin_27*OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_lin_28*OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_lin_30*OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_31*OpenAD_acc_9)
      CALL setderiv(F(2),X(1))
      CALL saxpy(OpenAD_acc_7,X(8),F(2))
      CALL saxpy(OpenAD_acc_8,X(1),F(2))
      CALL saxpy(OpenAD_acc_10,X(1),F(2))
      CALL saxpy(OpenAD_acc_11,X(9),F(2))
      DO I = 2,6,1
        OpenAD_lin_43 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_lin_38 = EXP(X(I)%v/OpenAD_lin_43)
        OpenAD_lin_52 = (H*H)
        OpenAD_lin_49 = (X(8)%v*OpenAD_lin_52)
        OpenAD_lin_39 = (OpenAD_lin_49/1.2D+01)
        F(INT(I+(-1)))%v = (X(I)%v+F(I+(-1))%v+OpenAD_lin_38*OpenAD_lin_
     +39)
        OpenAD_lin_44 = (INT(1_w2f__i8)/OpenAD_lin_43)
        OpenAD_lin_47 = X(9)%v
        OpenAD_lin_48 = X(I)%v
        OpenAD_lin_45 = (-(X(I)%v/(OpenAD_lin_43*OpenAD_lin_43)))
        OpenAD_lin_42 = OpenAD_lin_38
        OpenAD_lin_40 = OpenAD_lin_39
        OpenAD_lin_53 = OpenAD_lin_52
        OpenAD_lin_50 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_lin_41 = OpenAD_lin_38
        OpenAD_acc_12 = (OpenAD_lin_42*OpenAD_lin_40)
        OpenAD_acc_13 = (OpenAD_lin_53*OpenAD_lin_50*OpenAD_lin_41)
        OpenAD_acc_14 = (OpenAD_lin_44*OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_lin_45*OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_lin_47*OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_lin_48*OpenAD_acc_15)
        CALL setderiv(OpenAD_prp_0,F(I+(-1)))
        CALL setderiv(F(I+(-1)),X(I))
        CALL inc_deriv(F(I+(-1)),OpenAD_prp_0)
        CALL saxpy(OpenAD_acc_13,X(8),F(I+(-1)))
        CALL saxpy(OpenAD_acc_14,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_16,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_17,X(9),F(I+(-1)))
        OpenAD_lin_60 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_lin_55 = EXP(X(I)%v/OpenAD_lin_60)
        OpenAD_lin_69 = (H*H)
        OpenAD_lin_66 = (X(8)%v*OpenAD_lin_69)
        OpenAD_lin_56 = (OpenAD_lin_66/1.19999999999999995559D00)
        F(INT(I))%v = (OpenAD_lin_55*OpenAD_lin_56+F(I)%v-X(I)%v*2.0D00)
        OpenAD_lin_61 = (INT(1_w2f__i8)/OpenAD_lin_60)
        OpenAD_lin_64 = X(9)%v
        OpenAD_lin_65 = X(I)%v
        OpenAD_lin_62 = (-(X(I)%v/(OpenAD_lin_60*OpenAD_lin_60)))
        OpenAD_lin_59 = OpenAD_lin_55
        OpenAD_lin_57 = OpenAD_lin_56
        OpenAD_lin_70 = OpenAD_lin_69
        OpenAD_lin_67 = (INT(1_w2f__i8)/1.19999999999999995559D00)
        OpenAD_lin_58 = OpenAD_lin_55
        OpenAD_acc_18 = (OpenAD_lin_59*OpenAD_lin_57)
        OpenAD_acc_19 = (OpenAD_lin_70*OpenAD_lin_67*OpenAD_lin_58)
        OpenAD_acc_20 = (OpenAD_lin_61*OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_lin_62*OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_lin_64*OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_lin_65*OpenAD_acc_21)
        CALL setderiv(OpenAD_prp_1,F(I))
        CALL setderiv(F(I),OpenAD_prp_1)
        CALL saxpy(-2.0D00,X(I),F(I))
        CALL saxpy(OpenAD_acc_19,X(8),F(I))
        CALL saxpy(OpenAD_acc_20,X(I),F(I))
        CALL saxpy(OpenAD_acc_22,X(I),F(I))
        CALL saxpy(OpenAD_acc_23,X(9),F(I))
        OpenAD_lin_78 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_lin_73 = EXP(X(I)%v/OpenAD_lin_78)
        OpenAD_lin_87 = (H*H)
        OpenAD_lin_84 = (X(8)%v*OpenAD_lin_87)
        OpenAD_lin_74 = (OpenAD_lin_84/1.2D+01)
        F(INT(I+1))%v = (X(I)%v+OpenAD_lin_73*OpenAD_lin_74)
        OpenAD_lin_79 = (INT(1_w2f__i8)/OpenAD_lin_78)
        OpenAD_lin_82 = X(9)%v
        OpenAD_lin_83 = X(I)%v
        OpenAD_lin_80 = (-(X(I)%v/(OpenAD_lin_78*OpenAD_lin_78)))
        OpenAD_lin_77 = OpenAD_lin_73
        OpenAD_lin_75 = OpenAD_lin_74
        OpenAD_lin_88 = OpenAD_lin_87
        OpenAD_lin_85 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_lin_76 = OpenAD_lin_73
        OpenAD_acc_24 = (OpenAD_lin_77*OpenAD_lin_75)
        OpenAD_acc_25 = (OpenAD_lin_88*OpenAD_lin_85*OpenAD_lin_76)
        OpenAD_acc_26 = (OpenAD_lin_79*OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_lin_80*OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_lin_82*OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_lin_83*OpenAD_acc_27)
        CALL setderiv(F(I+1),X(I))
        CALL saxpy(OpenAD_acc_25,X(8),F(I+1))
        CALL saxpy(OpenAD_acc_26,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_28,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_29,X(9),F(I+1))
      END DO
      OpenAD_lin_95 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_lin_90 = EXP(X(7)%v/OpenAD_lin_95)
      OpenAD_lin_104 = (H*H)
      OpenAD_lin_101 = (X(8)%v*OpenAD_lin_104)
      OpenAD_lin_91 = (OpenAD_lin_101/1.2D+01)
      F(6)%v = (X(7)%v+F(6)%v+OpenAD_lin_90*OpenAD_lin_91)
      OpenAD_lin_96 = (INT(1_w2f__i8)/OpenAD_lin_95)
      OpenAD_lin_99 = X(9)%v
      OpenAD_lin_100 = X(7)%v
      OpenAD_lin_97 = (-(X(7)%v/(OpenAD_lin_95*OpenAD_lin_95)))
      OpenAD_lin_94 = OpenAD_lin_90
      OpenAD_lin_92 = OpenAD_lin_91
      OpenAD_lin_105 = OpenAD_lin_104
      OpenAD_lin_102 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_93 = OpenAD_lin_90
      OpenAD_acc_30 = (OpenAD_lin_94*OpenAD_lin_92)
      OpenAD_acc_31 = (OpenAD_lin_105*OpenAD_lin_102*OpenAD_lin_93)
      OpenAD_acc_32 = (OpenAD_lin_96*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_97*OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_lin_99*OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_lin_100*OpenAD_acc_33)
      CALL setderiv(OpenAD_prp_2,F(6))
      CALL setderiv(F(6),X(7))
      CALL inc_deriv(F(6),OpenAD_prp_2)
      CALL saxpy(OpenAD_acc_31,X(8),F(6))
      CALL saxpy(OpenAD_acc_32,X(7),F(6))
      CALL saxpy(OpenAD_acc_34,X(7),F(6))
      CALL saxpy(OpenAD_acc_35,X(9),F(6))
      F(7)%v = (F(7)%v-X(7)%v*2.0D00)
      CALL setderiv(OpenAD_prp_3,F(7))
      CALL setderiv(F(7),OpenAD_prp_3)
      CALL saxpy(-2.0D00,X(7),F(7))
      OpenAD_lin_115 = (H*H)
      OpenAD_lin_112 = (X(8)%v*OpenAD_lin_115)
      OpenAD_lin_108 = (OpenAD_lin_112/1.2D+01)
      OpenAD_lin_122 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_lin_119 = EXP(X(7)%v/OpenAD_lin_122)
      OpenAD_lin_109 = (OpenAD_lin_119*1.0D+01+1.0D00)
      F(7)%v = (F(7)%v+OpenAD_lin_108*OpenAD_lin_109)
      OpenAD_lin_116 = OpenAD_lin_115
      OpenAD_lin_113 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_110 = OpenAD_lin_109
      OpenAD_lin_123 = (INT(1_w2f__i8)/OpenAD_lin_122)
      OpenAD_lin_126 = X(9)%v
      OpenAD_lin_127 = X(7)%v
      OpenAD_lin_124 = (-(X(7)%v/(OpenAD_lin_122*OpenAD_lin_122)))
      OpenAD_lin_121 = OpenAD_lin_119
      OpenAD_lin_111 = OpenAD_lin_108
      OpenAD_acc_36 = (OpenAD_lin_121*1.0D+01)
      OpenAD_acc_37 = (OpenAD_lin_116*OpenAD_lin_113*OpenAD_lin_110)
      OpenAD_acc_38 = (OpenAD_lin_123*OpenAD_acc_36*OpenAD_lin_111)
      OpenAD_acc_39 = (OpenAD_lin_124*OpenAD_acc_36*OpenAD_lin_111)
      OpenAD_acc_40 = (OpenAD_lin_126*OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_lin_127*OpenAD_acc_39)
      CALL setderiv(OpenAD_prp_4,F(7))
      CALL setderiv(F(7),OpenAD_prp_4)
      CALL saxpy(OpenAD_acc_37,X(8),F(7))
      CALL saxpy(OpenAD_acc_38,X(7),F(7))
      CALL saxpy(OpenAD_acc_40,X(7),F(7))
      CALL saxpy(OpenAD_acc_41,X(9),F(7))
      END SUBROUTINE
