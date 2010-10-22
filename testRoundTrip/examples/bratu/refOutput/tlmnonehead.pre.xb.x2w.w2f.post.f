
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, F)
      use OAD_active
      use w2f__types
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
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
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
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_26
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_31
      REAL(w2f__8) OpenAD_lin_32
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_34
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_36
      REAL(w2f__8) OpenAD_lin_37
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_39
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_40
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_44
      REAL(w2f__8) OpenAD_lin_45
      REAL(w2f__8) OpenAD_lin_46
      REAL(w2f__8) OpenAD_lin_47
      REAL(w2f__8) OpenAD_lin_48
      REAL(w2f__8) OpenAD_lin_49
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_50
      REAL(w2f__8) OpenAD_lin_51
      REAL(w2f__8) OpenAD_lin_52
      REAL(w2f__8) OpenAD_lin_53
      REAL(w2f__8) OpenAD_lin_54
      REAL(w2f__8) OpenAD_lin_55
      REAL(w2f__8) OpenAD_lin_56
      REAL(w2f__8) OpenAD_lin_57
      REAL(w2f__8) OpenAD_lin_58
      REAL(w2f__8) OpenAD_lin_59
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_60
      REAL(w2f__8) OpenAD_lin_61
      REAL(w2f__8) OpenAD_lin_62
      REAL(w2f__8) OpenAD_lin_63
      REAL(w2f__8) OpenAD_lin_64
      REAL(w2f__8) OpenAD_lin_65
      REAL(w2f__8) OpenAD_lin_66
      REAL(w2f__8) OpenAD_lin_67
      REAL(w2f__8) OpenAD_lin_68
      REAL(w2f__8) OpenAD_lin_69
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_70
      REAL(w2f__8) OpenAD_lin_71
      REAL(w2f__8) OpenAD_lin_72
      REAL(w2f__8) OpenAD_lin_73
      REAL(w2f__8) OpenAD_lin_74
      REAL(w2f__8) OpenAD_lin_75
      REAL(w2f__8) OpenAD_lin_76
      REAL(w2f__8) OpenAD_lin_77
      REAL(w2f__8) OpenAD_lin_78
      REAL(w2f__8) OpenAD_lin_79
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_80
      REAL(w2f__8) OpenAD_lin_81
      REAL(w2f__8) OpenAD_lin_82
      REAL(w2f__8) OpenAD_lin_83
      REAL(w2f__8) OpenAD_lin_84
      REAL(w2f__8) OpenAD_lin_85
      REAL(w2f__8) OpenAD_lin_86
      REAL(w2f__8) OpenAD_lin_87
      REAL(w2f__8) OpenAD_lin_88
      REAL(w2f__8) OpenAD_lin_89
      REAL(w2f__8) OpenAD_lin_9
      REAL(w2f__8) OpenAD_lin_90
      REAL(w2f__8) OpenAD_lin_91
      REAL(w2f__8) OpenAD_lin_92
      REAL(w2f__8) OpenAD_lin_93
      REAL(w2f__8) OpenAD_lin_94
      REAL(w2f__8) OpenAD_lin_95
      REAL(w2f__8) OpenAD_lin_96
      REAL(w2f__8) OpenAD_lin_97
      REAL(w2f__8) OpenAD_lin_98
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
      OpenAD_lin_6 = (H * H)
      OpenAD_lin_4 = (X(8)%v*OpenAD_lin_6)
      OpenAD_lin_0 = (OpenAD_lin_4/1.2D+01)
      OpenAD_lin_10 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_lin_8 = EXP(X(1)%v/OpenAD_lin_10)
      OpenAD_lin_1 = (OpenAD_lin_8*1.0D+01+1.0D00)
      F(1)%v = (X(1)%v*(-2.0D00)+OpenAD_lin_0*OpenAD_lin_1)
      OpenAD_lin_7 = OpenAD_lin_6
      OpenAD_lin_5 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_2 = OpenAD_lin_1
      OpenAD_lin_11 = (INT(1_w2f__i8)/OpenAD_lin_10)
      OpenAD_lin_13 = X(9)%v
      OpenAD_lin_14 = X(1)%v
      OpenAD_lin_12 = (-(X(1)%v/(OpenAD_lin_10*OpenAD_lin_10)))
      OpenAD_lin_9 = OpenAD_lin_8
      OpenAD_lin_3 = OpenAD_lin_0
      OpenAD_acc_0 = (OpenAD_lin_9*1.0D+01)
      OpenAD_acc_1 = (OpenAD_lin_7*OpenAD_lin_5*OpenAD_lin_2)
      OpenAD_acc_2 = (OpenAD_lin_11*OpenAD_acc_0*OpenAD_lin_3)
      OpenAD_acc_3 = (OpenAD_lin_12*OpenAD_acc_0*OpenAD_lin_3)
      OpenAD_acc_4 = (OpenAD_lin_13*OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_lin_14*OpenAD_acc_3)
      CALL sax(-2.0D00,X(1),F(1))
      CALL saxpy(OpenAD_acc_1,X(8),F(1))
      CALL saxpy(OpenAD_acc_2,X(1),F(1))
      CALL saxpy(OpenAD_acc_4,X(1),F(1))
      CALL saxpy(OpenAD_acc_5,X(9),F(1))
      OpenAD_lin_20 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_lin_15 = EXP(X(1)%v/OpenAD_lin_20)
      OpenAD_lin_27 = (H*H)
      OpenAD_lin_25 = (X(8)%v*OpenAD_lin_27)
      OpenAD_lin_16 = (OpenAD_lin_25/1.2D+01)
      F(2)%v = (X(1)%v+OpenAD_lin_15*OpenAD_lin_16)
      OpenAD_lin_21 = (INT(1_w2f__i8)/OpenAD_lin_20)
      OpenAD_lin_23 = X(9)%v
      OpenAD_lin_24 = X(1)%v
      OpenAD_lin_22 = (-(X(1)%v/(OpenAD_lin_20*OpenAD_lin_20)))
      OpenAD_lin_19 = OpenAD_lin_15
      OpenAD_lin_17 = OpenAD_lin_16
      OpenAD_lin_28 = OpenAD_lin_27
      OpenAD_lin_26 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_18 = OpenAD_lin_15
      OpenAD_acc_6 = (OpenAD_lin_19*OpenAD_lin_17)
      OpenAD_acc_7 = (OpenAD_lin_28*OpenAD_lin_26*OpenAD_lin_18)
      OpenAD_acc_8 = (OpenAD_lin_21*OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_lin_22*OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_lin_23*OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_24*OpenAD_acc_9)
      CALL setderiv(F(2),X(1))
      CALL saxpy(OpenAD_acc_7,X(8),F(2))
      CALL saxpy(OpenAD_acc_8,X(1),F(2))
      CALL saxpy(OpenAD_acc_10,X(1),F(2))
      CALL saxpy(OpenAD_acc_11,X(9),F(2))
      DO I = 2,6,1
        OpenAD_lin_34 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_lin_29 = EXP(X(I)%v/OpenAD_lin_34)
        OpenAD_lin_41 = (H*H)
        OpenAD_lin_39 = (X(8)%v*OpenAD_lin_41)
        OpenAD_lin_30 = (OpenAD_lin_39/1.2D+01)
        F(INT(I+(-1)))%v = (X(I)%v+F(I+(-1))%v+OpenAD_lin_29*OpenAD_lin_
     +30)
        OpenAD_lin_35 = (INT(1_w2f__i8)/OpenAD_lin_34)
        OpenAD_lin_37 = X(9)%v
        OpenAD_lin_38 = X(I)%v
        OpenAD_lin_36 = (-(X(I)%v/(OpenAD_lin_34*OpenAD_lin_34)))
        OpenAD_lin_33 = OpenAD_lin_29
        OpenAD_lin_31 = OpenAD_lin_30
        OpenAD_lin_42 = OpenAD_lin_41
        OpenAD_lin_40 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_lin_32 = OpenAD_lin_29
        OpenAD_acc_12 = (OpenAD_lin_33*OpenAD_lin_31)
        OpenAD_acc_13 = (OpenAD_lin_42*OpenAD_lin_40*OpenAD_lin_32)
        OpenAD_acc_14 = (OpenAD_lin_35*OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_lin_36*OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_lin_37*OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_lin_38*OpenAD_acc_15)
        CALL setderiv(OpenAD_prp_0,F(I+(-1)))
        CALL setderiv(F(I+(-1)),X(I))
        CALL inc_deriv(F(I+(-1)),OpenAD_prp_0)
        CALL saxpy(OpenAD_acc_13,X(8),F(I+(-1)))
        CALL saxpy(OpenAD_acc_14,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_16,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_17,X(9),F(I+(-1)))
        OpenAD_lin_48 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_lin_43 = EXP(X(I)%v/OpenAD_lin_48)
        OpenAD_lin_55 = (H*H)
        OpenAD_lin_53 = (X(8)%v*OpenAD_lin_55)
        OpenAD_lin_44 = (OpenAD_lin_53/1.19999999999999995559D00)
        F(INT(I))%v = (OpenAD_lin_43*OpenAD_lin_44+F(I)%v-X(I)%v*2.0D00)
        OpenAD_lin_49 = (INT(1_w2f__i8)/OpenAD_lin_48)
        OpenAD_lin_51 = X(9)%v
        OpenAD_lin_52 = X(I)%v
        OpenAD_lin_50 = (-(X(I)%v/(OpenAD_lin_48*OpenAD_lin_48)))
        OpenAD_lin_47 = OpenAD_lin_43
        OpenAD_lin_45 = OpenAD_lin_44
        OpenAD_lin_56 = OpenAD_lin_55
        OpenAD_lin_54 = (INT(1_w2f__i8)/1.19999999999999995559D00)
        OpenAD_lin_46 = OpenAD_lin_43
        OpenAD_acc_18 = (OpenAD_lin_47*OpenAD_lin_45)
        OpenAD_acc_19 = (OpenAD_lin_56*OpenAD_lin_54*OpenAD_lin_46)
        OpenAD_acc_20 = (OpenAD_lin_49*OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_lin_50*OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_lin_51*OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_lin_52*OpenAD_acc_21)
        CALL setderiv(OpenAD_prp_1,F(I))
        CALL setderiv(F(I),OpenAD_prp_1)
        CALL saxpy(-2.0D00,X(I),F(I))
        CALL saxpy(OpenAD_acc_19,X(8),F(I))
        CALL saxpy(OpenAD_acc_20,X(I),F(I))
        CALL saxpy(OpenAD_acc_22,X(I),F(I))
        CALL saxpy(OpenAD_acc_23,X(9),F(I))
        OpenAD_lin_62 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_lin_57 = EXP(X(I)%v/OpenAD_lin_62)
        OpenAD_lin_69 = (H*H)
        OpenAD_lin_67 = (X(8)%v*OpenAD_lin_69)
        OpenAD_lin_58 = (OpenAD_lin_67/1.2D+01)
        F(INT(I+1))%v = (X(I)%v+OpenAD_lin_57*OpenAD_lin_58)
        OpenAD_lin_63 = (INT(1_w2f__i8)/OpenAD_lin_62)
        OpenAD_lin_65 = X(9)%v
        OpenAD_lin_66 = X(I)%v
        OpenAD_lin_64 = (-(X(I)%v/(OpenAD_lin_62*OpenAD_lin_62)))
        OpenAD_lin_61 = OpenAD_lin_57
        OpenAD_lin_59 = OpenAD_lin_58
        OpenAD_lin_70 = OpenAD_lin_69
        OpenAD_lin_68 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_lin_60 = OpenAD_lin_57
        OpenAD_acc_24 = (OpenAD_lin_61*OpenAD_lin_59)
        OpenAD_acc_25 = (OpenAD_lin_70*OpenAD_lin_68*OpenAD_lin_60)
        OpenAD_acc_26 = (OpenAD_lin_63*OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_lin_64*OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_lin_65*OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_lin_66*OpenAD_acc_27)
        CALL setderiv(F(I+1),X(I))
        CALL saxpy(OpenAD_acc_25,X(8),F(I+1))
        CALL saxpy(OpenAD_acc_26,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_28,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_29,X(9),F(I+1))
      END DO
      OpenAD_lin_76 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_lin_71 = EXP(X(7)%v/OpenAD_lin_76)
      OpenAD_lin_83 = (H*H)
      OpenAD_lin_81 = (X(8)%v*OpenAD_lin_83)
      OpenAD_lin_72 = (OpenAD_lin_81/1.2D+01)
      F(6)%v = (X(7)%v+F(6)%v+OpenAD_lin_71*OpenAD_lin_72)
      OpenAD_lin_77 = (INT(1_w2f__i8)/OpenAD_lin_76)
      OpenAD_lin_79 = X(9)%v
      OpenAD_lin_80 = X(7)%v
      OpenAD_lin_78 = (-(X(7)%v/(OpenAD_lin_76*OpenAD_lin_76)))
      OpenAD_lin_75 = OpenAD_lin_71
      OpenAD_lin_73 = OpenAD_lin_72
      OpenAD_lin_84 = OpenAD_lin_83
      OpenAD_lin_82 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_74 = OpenAD_lin_71
      OpenAD_acc_30 = (OpenAD_lin_75*OpenAD_lin_73)
      OpenAD_acc_31 = (OpenAD_lin_84*OpenAD_lin_82*OpenAD_lin_74)
      OpenAD_acc_32 = (OpenAD_lin_77*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_78*OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_lin_79*OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_lin_80*OpenAD_acc_33)
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
      OpenAD_lin_91 = (H*H)
      OpenAD_lin_89 = (X(8)%v*OpenAD_lin_91)
      OpenAD_lin_85 = (OpenAD_lin_89/1.2D+01)
      OpenAD_lin_95 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_lin_93 = EXP(X(7)%v/OpenAD_lin_95)
      OpenAD_lin_86 = (OpenAD_lin_93*1.0D+01+1.0D00)
      F(7)%v = (F(7)%v+OpenAD_lin_85*OpenAD_lin_86)
      OpenAD_lin_92 = OpenAD_lin_91
      OpenAD_lin_90 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_87 = OpenAD_lin_86
      OpenAD_lin_96 = (INT(1_w2f__i8)/OpenAD_lin_95)
      OpenAD_lin_98 = X(9)%v
      OpenAD_lin_99 = X(7)%v
      OpenAD_lin_97 = (-(X(7)%v/(OpenAD_lin_95*OpenAD_lin_95)))
      OpenAD_lin_94 = OpenAD_lin_93
      OpenAD_lin_88 = OpenAD_lin_85
      OpenAD_acc_36 = (OpenAD_lin_94*1.0D+01)
      OpenAD_acc_37 = (OpenAD_lin_92*OpenAD_lin_90*OpenAD_lin_87)
      OpenAD_acc_38 = (OpenAD_lin_96*OpenAD_acc_36*OpenAD_lin_88)
      OpenAD_acc_39 = (OpenAD_lin_97*OpenAD_acc_36*OpenAD_lin_88)
      OpenAD_acc_40 = (OpenAD_lin_98*OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_lin_99*OpenAD_acc_39)
      CALL setderiv(OpenAD_prp_4,F(7))
      CALL setderiv(F(7),OpenAD_prp_4)
      CALL saxpy(OpenAD_acc_37,X(8),F(7))
      CALL saxpy(OpenAD_acc_38,X(7),F(7))
      CALL saxpy(OpenAD_acc_40,X(7),F(7))
      CALL saxpy(OpenAD_acc_41,X(9),F(7))
      END SUBROUTINE
