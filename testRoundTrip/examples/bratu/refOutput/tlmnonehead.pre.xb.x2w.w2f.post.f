
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
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_4
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
      type(active) :: X(1:9)
      type(active) :: F(1:7)
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
      OpenAD_tmp_3 = (H*H)
      OpenAD_tmp_2 = (X(8)%v*OpenAD_tmp_3)
      OpenAD_tmp_0 = (OpenAD_tmp_2/1.2D+01)
      OpenAD_tmp_6 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_tmp_5 = (X(1)%v/OpenAD_tmp_6)
      OpenAD_tmp_4 = EXP(OpenAD_tmp_5)
      OpenAD_tmp_1 = (OpenAD_tmp_4*1.0D+01+1.0D00)
      F(1)%v = (X(1)%v*(-2.0D00)+OpenAD_tmp_0*OpenAD_tmp_1)
      OpenAD_lin_5 = OpenAD_tmp_3
      OpenAD_lin_3 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_1 = OpenAD_tmp_1
      OpenAD_lin_10 = (INT(1_w2f__i8)/OpenAD_tmp_6)
      OpenAD_lin_13 = X(9)%v
      OpenAD_lin_14 = X(1)%v
      OpenAD_lin_11 = (-(X(1)%v/(OpenAD_tmp_6*OpenAD_tmp_6)))
      OpenAD_lin_9 = EXP(OpenAD_tmp_5)
      OpenAD_lin_2 = OpenAD_tmp_0
      OpenAD_acc_0 = (OpenAD_lin_9*1.0D+01)
      OpenAD_acc_1 = (OpenAD_lin_5*OpenAD_lin_3*OpenAD_lin_1)
      OpenAD_acc_2 = (OpenAD_lin_10*OpenAD_acc_0*OpenAD_lin_2)
      OpenAD_acc_3 = (OpenAD_lin_11*OpenAD_acc_0*OpenAD_lin_2)
      OpenAD_acc_4 = (OpenAD_lin_13*OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_lin_14*OpenAD_acc_3)
      CALL sax(-2.0D00,X(1),F(1))
      CALL saxpy(OpenAD_acc_1,X(8),F(1))
      CALL saxpy(OpenAD_acc_2,X(1),F(1))
      CALL saxpy(OpenAD_acc_4,X(1),F(1))
      CALL saxpy(OpenAD_acc_5,X(9),F(1))
      OpenAD_tmp_10 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_tmp_9 = (X(1)%v/OpenAD_tmp_10)
      OpenAD_tmp_7 = EXP(OpenAD_tmp_9)
      OpenAD_tmp_12 = (H*H)
      OpenAD_tmp_11 = (X(8)%v*OpenAD_tmp_12)
      OpenAD_tmp_8 = (OpenAD_tmp_11/1.2D+01)
      F(2)%v = (X(1)%v+OpenAD_tmp_7*OpenAD_tmp_8)
      OpenAD_lin_18 = (INT(1_w2f__i8)/OpenAD_tmp_10)
      OpenAD_lin_21 = X(9)%v
      OpenAD_lin_22 = X(1)%v
      OpenAD_lin_19 = (-(X(1)%v/(OpenAD_tmp_10*OpenAD_tmp_10)))
      OpenAD_lin_17 = EXP(OpenAD_tmp_9)
      OpenAD_lin_15 = OpenAD_tmp_8
      OpenAD_lin_25 = OpenAD_tmp_12
      OpenAD_lin_23 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_16 = OpenAD_tmp_7
      OpenAD_acc_6 = (OpenAD_lin_17*OpenAD_lin_15)
      OpenAD_acc_7 = (OpenAD_lin_25*OpenAD_lin_23*OpenAD_lin_16)
      OpenAD_acc_8 = (OpenAD_lin_18*OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_lin_19*OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_lin_21*OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_22*OpenAD_acc_9)
      CALL setderiv(F(2),X(1))
      CALL saxpy(OpenAD_acc_7,X(8),F(2))
      CALL saxpy(OpenAD_acc_8,X(1),F(2))
      CALL saxpy(OpenAD_acc_10,X(1),F(2))
      CALL saxpy(OpenAD_acc_11,X(9),F(2))
      DO I = 2,6,1
        OpenAD_tmp_16 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_tmp_15 = (X(I)%v/OpenAD_tmp_16)
        OpenAD_tmp_13 = EXP(OpenAD_tmp_15)
        OpenAD_tmp_18 = (H*H)
        OpenAD_tmp_17 = (X(8)%v*OpenAD_tmp_18)
        OpenAD_tmp_14 = (OpenAD_tmp_17/1.2D+01)
        F(INT(I+(-1)))%v = (X(I)%v+F(I+(-1))%v+OpenAD_tmp_13*OpenAD_tmp_
     +14)
        OpenAD_lin_30 = (INT(1_w2f__i8)/OpenAD_tmp_16)
        OpenAD_lin_33 = X(9)%v
        OpenAD_lin_34 = X(I)%v
        OpenAD_lin_31 = (-(X(I)%v/(OpenAD_tmp_16*OpenAD_tmp_16)))
        OpenAD_lin_29 = EXP(OpenAD_tmp_15)
        OpenAD_lin_27 = OpenAD_tmp_14
        OpenAD_lin_37 = OpenAD_tmp_18
        OpenAD_lin_35 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_lin_28 = OpenAD_tmp_13
        OpenAD_acc_12 = (OpenAD_lin_29*OpenAD_lin_27)
        OpenAD_acc_13 = (OpenAD_lin_37*OpenAD_lin_35*OpenAD_lin_28)
        OpenAD_acc_14 = (OpenAD_lin_30*OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_lin_31*OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_lin_33*OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_lin_34*OpenAD_acc_15)
        CALL setderiv(OpenAD_prop_0,F(I+(-1)))
        CALL setderiv(F(I+(-1)),X(I))
        CALL inc_deriv(F(I+(-1)),OpenAD_prop_0)
        CALL saxpy(OpenAD_acc_13,X(8),F(I+(-1)))
        CALL saxpy(OpenAD_acc_14,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_16,X(I),F(I+(-1)))
        CALL saxpy(OpenAD_acc_17,X(9),F(I+(-1)))
        OpenAD_tmp_22 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_tmp_21 = (X(I)%v/OpenAD_tmp_22)
        OpenAD_tmp_19 = EXP(OpenAD_tmp_21)
        OpenAD_tmp_24 = (H*H)
        OpenAD_tmp_23 = (X(8)%v*OpenAD_tmp_24)
        OpenAD_tmp_20 = (OpenAD_tmp_23/1.19999999999999995559D00)
        F(INT(I))%v = (OpenAD_tmp_19*OpenAD_tmp_20+F(I)%v-X(I)%v*2.0D00)
        OpenAD_lin_42 = (INT(1_w2f__i8)/OpenAD_tmp_22)
        OpenAD_lin_45 = X(9)%v
        OpenAD_lin_46 = X(I)%v
        OpenAD_lin_43 = (-(X(I)%v/(OpenAD_tmp_22*OpenAD_tmp_22)))
        OpenAD_lin_41 = EXP(OpenAD_tmp_21)
        OpenAD_lin_39 = OpenAD_tmp_20
        OpenAD_lin_49 = OpenAD_tmp_24
        OpenAD_lin_47 = (INT(1_w2f__i8)/1.19999999999999995559D00)
        OpenAD_lin_40 = OpenAD_tmp_19
        OpenAD_acc_18 = (OpenAD_lin_41*OpenAD_lin_39)
        OpenAD_acc_19 = (OpenAD_lin_49*OpenAD_lin_47*OpenAD_lin_40)
        OpenAD_acc_20 = (OpenAD_lin_42*OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_lin_43*OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_lin_45*OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_lin_46*OpenAD_acc_21)
        CALL setderiv(OpenAD_prop_1,F(I))
        CALL setderiv(F(I),OpenAD_prop_1)
        CALL saxpy(-2.0D00,X(I),F(I))
        CALL saxpy(OpenAD_acc_19,X(8),F(I))
        CALL saxpy(OpenAD_acc_20,X(I),F(I))
        CALL saxpy(OpenAD_acc_22,X(I),F(I))
        CALL saxpy(OpenAD_acc_23,X(9),F(I))
        OpenAD_tmp_28 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_tmp_27 = (X(I)%v/OpenAD_tmp_28)
        OpenAD_tmp_25 = EXP(OpenAD_tmp_27)
        OpenAD_tmp_30 = (H*H)
        OpenAD_tmp_29 = (X(8)%v*OpenAD_tmp_30)
        OpenAD_tmp_26 = (OpenAD_tmp_29/1.2D+01)
        F(INT(I+1))%v = (X(I)%v+OpenAD_tmp_25*OpenAD_tmp_26)
        OpenAD_lin_55 = (INT(1_w2f__i8)/OpenAD_tmp_28)
        OpenAD_lin_58 = X(9)%v
        OpenAD_lin_59 = X(I)%v
        OpenAD_lin_56 = (-(X(I)%v/(OpenAD_tmp_28*OpenAD_tmp_28)))
        OpenAD_lin_54 = EXP(OpenAD_tmp_27)
        OpenAD_lin_52 = OpenAD_tmp_26
        OpenAD_lin_62 = OpenAD_tmp_30
        OpenAD_lin_60 = (INT(1_w2f__i8)/1.2D+01)
        OpenAD_lin_53 = OpenAD_tmp_25
        OpenAD_acc_24 = (OpenAD_lin_54*OpenAD_lin_52)
        OpenAD_acc_25 = (OpenAD_lin_62*OpenAD_lin_60*OpenAD_lin_53)
        OpenAD_acc_26 = (OpenAD_lin_55*OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_lin_56*OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_lin_58*OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_lin_59*OpenAD_acc_27)
        CALL setderiv(F(I+1),X(I))
        CALL saxpy(OpenAD_acc_25,X(8),F(I+1))
        CALL saxpy(OpenAD_acc_26,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_28,X(I),F(I+1))
        CALL saxpy(OpenAD_acc_29,X(9),F(I+1))
      enddo
      OpenAD_tmp_34 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_tmp_33 = (X(7)%v/OpenAD_tmp_34)
      OpenAD_tmp_31 = EXP(OpenAD_tmp_33)
      OpenAD_tmp_36 = (H*H)
      OpenAD_tmp_35 = (X(8)%v*OpenAD_tmp_36)
      OpenAD_tmp_32 = (OpenAD_tmp_35/1.2D+01)
      F(6)%v = (X(7)%v+F(6)%v+OpenAD_tmp_31*OpenAD_tmp_32)
      OpenAD_lin_67 = (INT(1_w2f__i8)/OpenAD_tmp_34)
      OpenAD_lin_70 = X(9)%v
      OpenAD_lin_71 = X(7)%v
      OpenAD_lin_68 = (-(X(7)%v/(OpenAD_tmp_34*OpenAD_tmp_34)))
      OpenAD_lin_66 = EXP(OpenAD_tmp_33)
      OpenAD_lin_64 = OpenAD_tmp_32
      OpenAD_lin_74 = OpenAD_tmp_36
      OpenAD_lin_72 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_65 = OpenAD_tmp_31
      OpenAD_acc_30 = (OpenAD_lin_66*OpenAD_lin_64)
      OpenAD_acc_31 = (OpenAD_lin_74*OpenAD_lin_72*OpenAD_lin_65)
      OpenAD_acc_32 = (OpenAD_lin_67*OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_68*OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_lin_70*OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_lin_71*OpenAD_acc_33)
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
      OpenAD_tmp_40 = (H*H)
      OpenAD_tmp_39 = (X(8)%v*OpenAD_tmp_40)
      OpenAD_tmp_37 = (OpenAD_tmp_39/1.2D+01)
      OpenAD_tmp_43 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_tmp_42 = (X(7)%v/OpenAD_tmp_43)
      OpenAD_tmp_41 = EXP(OpenAD_tmp_42)
      OpenAD_tmp_38 = (OpenAD_tmp_41*1.0D+01+1.0D00)
      F(7)%v = (F(7)%v+OpenAD_tmp_37*OpenAD_tmp_38)
      OpenAD_lin_81 = OpenAD_tmp_40
      OpenAD_lin_79 = (INT(1_w2f__i8)/1.2D+01)
      OpenAD_lin_77 = OpenAD_tmp_38
      OpenAD_lin_86 = (INT(1_w2f__i8)/OpenAD_tmp_43)
      OpenAD_lin_89 = X(9)%v
      OpenAD_lin_90 = X(7)%v
      OpenAD_lin_87 = (-(X(7)%v/(OpenAD_tmp_43*OpenAD_tmp_43)))
      OpenAD_lin_85 = EXP(OpenAD_tmp_42)
      OpenAD_lin_78 = OpenAD_tmp_37
      OpenAD_acc_36 = (OpenAD_lin_85*1.0D+01)
      OpenAD_acc_37 = (OpenAD_lin_81*OpenAD_lin_79*OpenAD_lin_77)
      OpenAD_acc_38 = (OpenAD_lin_86*OpenAD_acc_36*OpenAD_lin_78)
      OpenAD_acc_39 = (OpenAD_lin_87*OpenAD_acc_36*OpenAD_lin_78)
      OpenAD_acc_40 = (OpenAD_lin_89*OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_lin_90*OpenAD_acc_39)
      CALL setderiv(OpenAD_prop_4,F(7))
      CALL setderiv(F(7),OpenAD_prop_4)
      CALL saxpy(OpenAD_acc_37,X(8),F(7))
      CALL saxpy(OpenAD_acc_38,X(7),F(7))
      CALL saxpy(OpenAD_acc_40,X(7),F(7))
      CALL saxpy(OpenAD_acc_41,X(9),F(7))
      END SUBROUTINE
