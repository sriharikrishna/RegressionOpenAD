
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
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
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
      INTEGER(w2f__i4) OpenAD_Symbol_10
      INTEGER(w2f__i4) OpenAD_Symbol_11
      INTEGER(w2f__i4) OpenAD_Symbol_12
      INTEGER(w2f__i4) OpenAD_Symbol_13
      INTEGER(w2f__i4) OpenAD_Symbol_14
      INTEGER(w2f__i4) OpenAD_Symbol_15
      INTEGER(w2f__i4) OpenAD_Symbol_16
      INTEGER(w2f__i4) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      INTEGER(w2f__i4) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_30
      INTEGER(w2f__i4) OpenAD_Symbol_31
      INTEGER(w2f__i4) OpenAD_Symbol_32
      INTEGER(w2f__i4) OpenAD_Symbol_33
      INTEGER(w2f__i4) OpenAD_Symbol_34
      INTEGER(w2f__i4) OpenAD_Symbol_35
      INTEGER(w2f__i4) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_40
      INTEGER(w2f__i4) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      INTEGER(w2f__i4) OpenAD_Symbol_46
      INTEGER(w2f__i4) OpenAD_Symbol_47
      INTEGER(w2f__i4) OpenAD_Symbol_48
      INTEGER(w2f__i4) OpenAD_Symbol_49
      INTEGER(w2f__i4) OpenAD_Symbol_50
      INTEGER(w2f__i4) OpenAD_Symbol_51
      INTEGER(w2f__i4) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_57
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      INTEGER(w2f__i4) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_60
      INTEGER(w2f__i4) OpenAD_Symbol_7
      INTEGER(w2f__i4) OpenAD_Symbol_8
      INTEGER(w2f__i4) OpenAD_Symbol_9
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
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      H = 2.5D-01
      __value__(F(1)) = (__value__(X(1)) *(-2.0D00) +((__value__(X(8))
     >  * H * H) / 1.2D+01) *(EXP(__value__(X(1)) /(__value__(X(1)) *
     >  __value__(X(9)) + 1.0D00)) * 1.0D+01 + 1.0D00))
      __value__(F(2)) = (__value__(X(1)) + EXP(__value__(X(1)) /(
     > __value__(X(1)) * __value__(X(9)) + 1.0D00)) *((__value__(X(8))
     >  * H * H) / 1.2D+01))
      DO I = 2, 6, 1
        __value__(F(INT(I +(-1)))) = (__value__(X(I)) + __value__(F(I +
     >  (-1))) + EXP(__value__(X(I)) /(__value__(X(I)) * __value__(X(9)
     > ) + 1.0D00)) *((__value__(X(8)) * H * H) / 1.2D+01))
        __value__(F(INT(I))) = (EXP(__value__(X(I)) /(__value__(X(I)) *
     >  __value__(X(9)) + 1.0D00)) *((__value__(X(8)) * H * H) /
     >  1.19999999999999995559D00) + __value__(F(I)) - __value__(X(I))
     >  * 2.0D00)
        __value__(F(INT(I + 1))) = (__value__(X(I)) + EXP(__value__(X(I
     > )) /(__value__(X(I)) * __value__(X(9)) + 1.0D00)) *((__value__(X
     > (8)) * H * H) / 1.2D+01))
      END DO
      __value__(F(6)) = (__value__(X(7)) + __value__(F(6)) + EXP(
     > __value__(X(7)) /(__value__(X(7)) * __value__(X(9)) + 1.0D00)) *
     > ((__value__(X(8)) * H * H) / 1.2D+01))
      __value__(F(7)) = (__value__(F(7)) - __value__(X(7)) * 2.0D00)
      __value__(F(7)) = (__value__(F(7)) +((__value__(X(8)) * H * H) /
     >  1.2D+01) *(EXP(__value__(X(7)) /(__value__(X(7)) * __value__(X(
     > 9)) + 1.0D00)) * 1.0D+01 + 1.0D00))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      H = 2.5D-01
      OpenAD_lin_6 = (H * H)
      OpenAD_lin_4 = (__value__(X(8)) * OpenAD_lin_6)
      OpenAD_lin_0 = (OpenAD_lin_4 / 1.2D+01)
      OpenAD_lin_10 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_8 = EXP(__value__(X(1)) / OpenAD_lin_10)
      OpenAD_lin_1 = (OpenAD_lin_8 * 1.0D+01 + 1.0D00)
      __value__(F(1)) = (__value__(X(1)) *(-2.0D00) + OpenAD_lin_0 *
     >  OpenAD_lin_1)
      OpenAD_lin_7 = OpenAD_lin_6
      OpenAD_lin_5 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_2 = OpenAD_lin_1
      OpenAD_lin_11 = (INT(1_w2f__i8) / OpenAD_lin_10)
      OpenAD_lin_13 = __value__(X(9))
      OpenAD_lin_14 = __value__(X(1))
      OpenAD_lin_12 = (-(__value__(X(1)) /(OpenAD_lin_10 *
     >  OpenAD_lin_10)))
      OpenAD_lin_9 = OpenAD_lin_8
      OpenAD_lin_3 = OpenAD_lin_0
      OpenAD_acc_0 = (OpenAD_lin_9 * 1.0D+01)
      OpenAD_acc_1 = (OpenAD_lin_7 * OpenAD_lin_5 * OpenAD_lin_2)
      OpenAD_acc_2 = (OpenAD_lin_11 * OpenAD_acc_0 * OpenAD_lin_3)
      OpenAD_acc_3 = (OpenAD_lin_12 * OpenAD_acc_0 * OpenAD_lin_3)
      OpenAD_acc_4 = (OpenAD_lin_13 * OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_lin_14 * OpenAD_acc_3)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_1)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_2)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_4)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_5)
      OpenAD_lin_20 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_15 = EXP(__value__(X(1)) / OpenAD_lin_20)
      OpenAD_lin_27 = (H * H)
      OpenAD_lin_25 = (__value__(X(8)) * OpenAD_lin_27)
      OpenAD_lin_16 = (OpenAD_lin_25 / 1.2D+01)
      __value__(F(2)) = (__value__(X(1)) + OpenAD_lin_15 *
     >  OpenAD_lin_16)
      OpenAD_lin_21 = (INT(1_w2f__i8) / OpenAD_lin_20)
      OpenAD_lin_23 = __value__(X(9))
      OpenAD_lin_24 = __value__(X(1))
      OpenAD_lin_22 = (-(__value__(X(1)) /(OpenAD_lin_20 *
     >  OpenAD_lin_20)))
      OpenAD_lin_19 = OpenAD_lin_15
      OpenAD_lin_17 = OpenAD_lin_16
      OpenAD_lin_28 = OpenAD_lin_27
      OpenAD_lin_26 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_18 = OpenAD_lin_15
      OpenAD_acc_6 = (OpenAD_lin_19 * OpenAD_lin_17)
      OpenAD_acc_7 = (OpenAD_lin_28 * OpenAD_lin_26 * OpenAD_lin_18)
      OpenAD_acc_8 = (OpenAD_lin_21 * OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_lin_22 * OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_lin_23 * OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_24 * OpenAD_acc_9)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_7)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_8)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_10)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_11)
      OpenAD_Symbol_2 = 0_w2f__i8
      DO I = 2, 6, 1
        OpenAD_lin_34 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_29 = EXP(__value__(X(I)) / OpenAD_lin_34)
        OpenAD_lin_41 = (H * H)
        OpenAD_lin_39 = (__value__(X(8)) * OpenAD_lin_41)
        OpenAD_lin_30 = (OpenAD_lin_39 / 1.2D+01)
        __value__(F(INT(I +(-1)))) = (__value__(X(I)) + __value__(F(I +
     >  (-1))) + OpenAD_lin_29 * OpenAD_lin_30)
        OpenAD_lin_35 = (INT(1_w2f__i8) / OpenAD_lin_34)
        OpenAD_lin_37 = __value__(X(9))
        OpenAD_lin_38 = __value__(X(I))
        OpenAD_lin_36 = (-(__value__(X(I)) /(OpenAD_lin_34 *
     >  OpenAD_lin_34)))
        OpenAD_lin_33 = OpenAD_lin_29
        OpenAD_lin_31 = OpenAD_lin_30
        OpenAD_lin_42 = OpenAD_lin_41
        OpenAD_lin_40 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_32 = OpenAD_lin_29
        OpenAD_acc_12 = (OpenAD_lin_33 * OpenAD_lin_31)
        OpenAD_acc_13 = (OpenAD_lin_42 * OpenAD_lin_40 * OpenAD_lin_32)
        OpenAD_acc_14 = (OpenAD_lin_35 * OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_lin_36 * OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_lin_37 * OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_lin_38 * OpenAD_acc_15)
        OpenAD_Symbol_6 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_6)
        OpenAD_Symbol_7 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_7)
        OpenAD_Symbol_8 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_8)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_13)
        OpenAD_Symbol_9 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_9)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_14)
        OpenAD_Symbol_10 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_10)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_16)
        OpenAD_Symbol_11 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_11)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_17)
        OpenAD_Symbol_12 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_12)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(I)
        OpenAD_lin_48 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_43 = EXP(__value__(X(I)) / OpenAD_lin_48)
        OpenAD_lin_55 = (H * H)
        OpenAD_lin_53 = (__value__(X(8)) * OpenAD_lin_55)
        OpenAD_lin_44 = (OpenAD_lin_53 / 1.19999999999999995559D00)
        __value__(F(INT(I))) = (OpenAD_lin_43 * OpenAD_lin_44 +
     >  __value__(F(I)) - __value__(X(I)) * 2.0D00)
        OpenAD_lin_49 = (INT(1_w2f__i8) / OpenAD_lin_48)
        OpenAD_lin_51 = __value__(X(9))
        OpenAD_lin_52 = __value__(X(I))
        OpenAD_lin_50 = (-(__value__(X(I)) /(OpenAD_lin_48 *
     >  OpenAD_lin_48)))
        OpenAD_lin_47 = OpenAD_lin_43
        OpenAD_lin_45 = OpenAD_lin_44
        OpenAD_lin_56 = OpenAD_lin_55
        OpenAD_lin_54 = (INT(1_w2f__i8) / 1.19999999999999995559D00)
        OpenAD_lin_46 = OpenAD_lin_43
        OpenAD_acc_18 = (OpenAD_lin_47 * OpenAD_lin_45)
        OpenAD_acc_19 = (OpenAD_lin_56 * OpenAD_lin_54 * OpenAD_lin_46)
        OpenAD_acc_20 = (OpenAD_lin_49 * OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_lin_50 * OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_lin_51 * OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_lin_52 * OpenAD_acc_21)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_19)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_20)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_22)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_23)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(I)
        OpenAD_lin_62 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_57 = EXP(__value__(X(I)) / OpenAD_lin_62)
        OpenAD_lin_69 = (H * H)
        OpenAD_lin_67 = (__value__(X(8)) * OpenAD_lin_69)
        OpenAD_lin_58 = (OpenAD_lin_67 / 1.2D+01)
        __value__(F(INT(I + 1))) = (__value__(X(I)) + OpenAD_lin_57 *
     >  OpenAD_lin_58)
        OpenAD_lin_63 = (INT(1_w2f__i8) / OpenAD_lin_62)
        OpenAD_lin_65 = __value__(X(9))
        OpenAD_lin_66 = __value__(X(I))
        OpenAD_lin_64 = (-(__value__(X(I)) /(OpenAD_lin_62 *
     >  OpenAD_lin_62)))
        OpenAD_lin_61 = OpenAD_lin_57
        OpenAD_lin_59 = OpenAD_lin_58
        OpenAD_lin_70 = OpenAD_lin_69
        OpenAD_lin_68 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_60 = OpenAD_lin_57
        OpenAD_acc_24 = (OpenAD_lin_61 * OpenAD_lin_59)
        OpenAD_acc_25 = (OpenAD_lin_70 * OpenAD_lin_68 * OpenAD_lin_60)
        OpenAD_acc_26 = (OpenAD_lin_63 * OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_lin_64 * OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_lin_65 * OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_lin_66 * OpenAD_acc_27)
        OpenAD_Symbol_13 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_13)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_25)
        OpenAD_Symbol_14 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_14)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_26)
        OpenAD_Symbol_15 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_15)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_28)
        OpenAD_Symbol_16 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_16)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_29)
        OpenAD_Symbol_17 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_17)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(I)
        OpenAD_Symbol_2 = (INT(OpenAD_Symbol_2) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i_s0(subst)
      CALL push_i_s0(OpenAD_Symbol_2)
      OpenAD_lin_76 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_71 = EXP(__value__(X(7)) / OpenAD_lin_76)
      OpenAD_lin_83 = (H * H)
      OpenAD_lin_81 = (__value__(X(8)) * OpenAD_lin_83)
      OpenAD_lin_72 = (OpenAD_lin_81 / 1.2D+01)
      __value__(F(6)) = (__value__(X(7)) + __value__(F(6)) +
     >  OpenAD_lin_71 * OpenAD_lin_72)
      OpenAD_lin_77 = (INT(1_w2f__i8) / OpenAD_lin_76)
      OpenAD_lin_79 = __value__(X(9))
      OpenAD_lin_80 = __value__(X(7))
      OpenAD_lin_78 = (-(__value__(X(7)) /(OpenAD_lin_76 *
     >  OpenAD_lin_76)))
      OpenAD_lin_75 = OpenAD_lin_71
      OpenAD_lin_73 = OpenAD_lin_72
      OpenAD_lin_84 = OpenAD_lin_83
      OpenAD_lin_82 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_74 = OpenAD_lin_71
      OpenAD_acc_30 = (OpenAD_lin_75 * OpenAD_lin_73)
      OpenAD_acc_31 = (OpenAD_lin_84 * OpenAD_lin_82 * OpenAD_lin_74)
      OpenAD_acc_32 = (OpenAD_lin_77 * OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_78 * OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_lin_79 * OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_lin_80 * OpenAD_acc_33)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_31)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_32)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_34)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_35)
      __value__(F(7)) = (__value__(F(7)) - __value__(X(7)) * 2.0D00)
      OpenAD_lin_91 = (H * H)
      OpenAD_lin_89 = (__value__(X(8)) * OpenAD_lin_91)
      OpenAD_lin_85 = (OpenAD_lin_89 / 1.2D+01)
      OpenAD_lin_95 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_93 = EXP(__value__(X(7)) / OpenAD_lin_95)
      OpenAD_lin_86 = (OpenAD_lin_93 * 1.0D+01 + 1.0D00)
      __value__(F(7)) = (__value__(F(7)) + OpenAD_lin_85 *
     >  OpenAD_lin_86)
      OpenAD_lin_92 = OpenAD_lin_91
      OpenAD_lin_90 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_87 = OpenAD_lin_86
      OpenAD_lin_96 = (INT(1_w2f__i8) / OpenAD_lin_95)
      OpenAD_lin_98 = __value__(X(9))
      OpenAD_lin_99 = __value__(X(7))
      OpenAD_lin_97 = (-(__value__(X(7)) /(OpenAD_lin_95 *
     >  OpenAD_lin_95)))
      OpenAD_lin_94 = OpenAD_lin_93
      OpenAD_lin_88 = OpenAD_lin_85
      OpenAD_acc_36 = (OpenAD_lin_94 * 1.0D+01)
      OpenAD_acc_37 = (OpenAD_lin_92 * OpenAD_lin_90 * OpenAD_lin_87)
      OpenAD_acc_38 = (OpenAD_lin_96 * OpenAD_acc_36 * OpenAD_lin_88)
      OpenAD_acc_39 = (OpenAD_lin_97 * OpenAD_acc_36 * OpenAD_lin_88)
      OpenAD_acc_40 = (OpenAD_lin_98 * OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_lin_99 * OpenAD_acc_39)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_37)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_38)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_40)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_41)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_53)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_54)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_55)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_56)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_53, __deriv__(F(7)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_54, __deriv__(F(7)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_55, __deriv__(F(7)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_56, __deriv__(F(7)), __deriv__(X(8)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(7)), __deriv__(OpenAD_prp_4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(7)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prp_4), __deriv__(F(7)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prp_4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(F(7)), __deriv__(X(7)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(7)), __deriv__(OpenAD_prp_3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(7)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prp_3), __deriv__(F(7)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prp_3))
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_57)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_58)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_59)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_60)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_57, __deriv__(F(6)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_58, __deriv__(F(6)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_59, __deriv__(F(6)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_60, __deriv__(F(6)), __deriv__(X(8)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(6)), __deriv__(OpenAD_prp_2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(6)), __deriv__(X(7)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(6)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prp_2), __deriv__(F(6)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prp_2))
C     $OpenAD$ INLINE pop_i_s0(subst)
      CALL pop_i_s0(OpenAD_Symbol_0)
      OpenAD_Symbol_1 = 1
      DO WHILE(INT(OpenAD_Symbol_1) .LE. INT(OpenAD_Symbol_0))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_26)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_27)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_28)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_29)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_30)
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_31)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_27, __deriv__(F(OpenAD_Symbol_31)),
     >  __deriv__(X(9)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_32)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_28, __deriv__(F(OpenAD_Symbol_32)),
     >  __deriv__(X(OpenAD_Symbol_26)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_33)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_29, __deriv__(F(OpenAD_Symbol_33)),
     >  __deriv__(X(OpenAD_Symbol_26)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_34)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_30, __deriv__(F(OpenAD_Symbol_34)),
     >  __deriv__(X(8)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_35)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_35)), __deriv__(X(
     > OpenAD_Symbol_26)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(F(OpenAD_Symbol_35)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_36)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_37)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_38)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_39)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_40)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_37, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(9)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_38, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(OpenAD_Symbol_36)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_39, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(OpenAD_Symbol_36)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_40, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(8)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(-2.0D00, __deriv__(F(OpenAD_Symbol_36)), __deriv__(X
     > (OpenAD_Symbol_36)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_36)), __deriv__(
     > OpenAD_prp_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(F(OpenAD_Symbol_36)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_1), __deriv__(F(
     > OpenAD_Symbol_36)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_1))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_41)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_42)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_43)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_44)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_45)
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_46)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_42, __deriv__(F(OpenAD_Symbol_46)),
     >  __deriv__(X(9)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_47)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_43, __deriv__(F(OpenAD_Symbol_47)),
     >  __deriv__(X(OpenAD_Symbol_41)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_48)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_44, __deriv__(F(OpenAD_Symbol_48)),
     >  __deriv__(X(OpenAD_Symbol_41)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_49)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_45, __deriv__(F(OpenAD_Symbol_49)),
     >  __deriv__(X(8)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_50)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_50)), __deriv__(
     > OpenAD_prp_0))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_51)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_51)), __deriv__(X(
     > OpenAD_Symbol_41)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(F(OpenAD_Symbol_51)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_52)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_0), __deriv__(F(
     > OpenAD_Symbol_52)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_0))
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1) + 1
      END DO
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_18)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_19)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_20)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_21)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_18, __deriv__(F(2)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_19, __deriv__(F(2)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_20, __deriv__(F(2)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(F(2)), __deriv__(X(8)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(2)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(2)))
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_22)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_23)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_24)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_25)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(F(1)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(F(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_24, __deriv__(F(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_25, __deriv__(F(1)), __deriv__(X(8)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(F(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      H = 2.5D-01
      OpenAD_lin_6 = (H * H)
      OpenAD_lin_4 = (__value__(X(8)) * OpenAD_lin_6)
      OpenAD_lin_0 = (OpenAD_lin_4 / 1.2D+01)
      OpenAD_lin_10 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_8 = EXP(__value__(X(1)) / OpenAD_lin_10)
      OpenAD_lin_1 = (OpenAD_lin_8 * 1.0D+01 + 1.0D00)
      __value__(F(1)) = (__value__(X(1)) *(-2.0D00) + OpenAD_lin_0 *
     >  OpenAD_lin_1)
      OpenAD_lin_7 = OpenAD_lin_6
      OpenAD_lin_5 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_2 = OpenAD_lin_1
      OpenAD_lin_11 = (INT(1_w2f__i8) / OpenAD_lin_10)
      OpenAD_lin_13 = __value__(X(9))
      OpenAD_lin_14 = __value__(X(1))
      OpenAD_lin_12 = (-(__value__(X(1)) /(OpenAD_lin_10 *
     >  OpenAD_lin_10)))
      OpenAD_lin_9 = OpenAD_lin_8
      OpenAD_lin_3 = OpenAD_lin_0
      OpenAD_acc_0 = (OpenAD_lin_9 * 1.0D+01)
      OpenAD_acc_1 = (OpenAD_lin_7 * OpenAD_lin_5 * OpenAD_lin_2)
      OpenAD_acc_2 = (OpenAD_lin_11 * OpenAD_acc_0 * OpenAD_lin_3)
      OpenAD_acc_3 = (OpenAD_lin_12 * OpenAD_acc_0 * OpenAD_lin_3)
      OpenAD_acc_4 = (OpenAD_lin_13 * OpenAD_acc_3)
      OpenAD_acc_5 = (OpenAD_lin_14 * OpenAD_acc_3)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_1)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_2)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_4)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_5)
      OpenAD_lin_20 = (__value__(X(1)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_15 = EXP(__value__(X(1)) / OpenAD_lin_20)
      OpenAD_lin_27 = (H * H)
      OpenAD_lin_25 = (__value__(X(8)) * OpenAD_lin_27)
      OpenAD_lin_16 = (OpenAD_lin_25 / 1.2D+01)
      __value__(F(2)) = (__value__(X(1)) + OpenAD_lin_15 *
     >  OpenAD_lin_16)
      OpenAD_lin_21 = (INT(1_w2f__i8) / OpenAD_lin_20)
      OpenAD_lin_23 = __value__(X(9))
      OpenAD_lin_24 = __value__(X(1))
      OpenAD_lin_22 = (-(__value__(X(1)) /(OpenAD_lin_20 *
     >  OpenAD_lin_20)))
      OpenAD_lin_19 = OpenAD_lin_15
      OpenAD_lin_17 = OpenAD_lin_16
      OpenAD_lin_28 = OpenAD_lin_27
      OpenAD_lin_26 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_18 = OpenAD_lin_15
      OpenAD_acc_6 = (OpenAD_lin_19 * OpenAD_lin_17)
      OpenAD_acc_7 = (OpenAD_lin_28 * OpenAD_lin_26 * OpenAD_lin_18)
      OpenAD_acc_8 = (OpenAD_lin_21 * OpenAD_acc_6)
      OpenAD_acc_9 = (OpenAD_lin_22 * OpenAD_acc_6)
      OpenAD_acc_10 = (OpenAD_lin_23 * OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_24 * OpenAD_acc_9)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_7)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_8)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_10)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_11)
      OpenAD_Symbol_5 = 0_w2f__i8
      DO I = 2, 6, 1
        OpenAD_lin_34 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_29 = EXP(__value__(X(I)) / OpenAD_lin_34)
        OpenAD_lin_41 = (H * H)
        OpenAD_lin_39 = (__value__(X(8)) * OpenAD_lin_41)
        OpenAD_lin_30 = (OpenAD_lin_39 / 1.2D+01)
        __value__(F(INT(I +(-1)))) = (__value__(X(I)) + __value__(F(I +
     >  (-1))) + OpenAD_lin_29 * OpenAD_lin_30)
        OpenAD_lin_35 = (INT(1_w2f__i8) / OpenAD_lin_34)
        OpenAD_lin_37 = __value__(X(9))
        OpenAD_lin_38 = __value__(X(I))
        OpenAD_lin_36 = (-(__value__(X(I)) /(OpenAD_lin_34 *
     >  OpenAD_lin_34)))
        OpenAD_lin_33 = OpenAD_lin_29
        OpenAD_lin_31 = OpenAD_lin_30
        OpenAD_lin_42 = OpenAD_lin_41
        OpenAD_lin_40 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_32 = OpenAD_lin_29
        OpenAD_acc_12 = (OpenAD_lin_33 * OpenAD_lin_31)
        OpenAD_acc_13 = (OpenAD_lin_42 * OpenAD_lin_40 * OpenAD_lin_32)
        OpenAD_acc_14 = (OpenAD_lin_35 * OpenAD_acc_12)
        OpenAD_acc_15 = (OpenAD_lin_36 * OpenAD_acc_12)
        OpenAD_acc_16 = (OpenAD_lin_37 * OpenAD_acc_15)
        OpenAD_acc_17 = (OpenAD_lin_38 * OpenAD_acc_15)
        OpenAD_Symbol_6 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_6)
        OpenAD_Symbol_7 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_7)
        OpenAD_Symbol_8 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_8)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_13)
        OpenAD_Symbol_9 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_9)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_14)
        OpenAD_Symbol_10 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_10)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_16)
        OpenAD_Symbol_11 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_11)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_17)
        OpenAD_Symbol_12 = (I +(-1))
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_12)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(I)
        OpenAD_lin_48 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_43 = EXP(__value__(X(I)) / OpenAD_lin_48)
        OpenAD_lin_55 = (H * H)
        OpenAD_lin_53 = (__value__(X(8)) * OpenAD_lin_55)
        OpenAD_lin_44 = (OpenAD_lin_53 / 1.19999999999999995559D00)
        __value__(F(INT(I))) = (OpenAD_lin_43 * OpenAD_lin_44 +
     >  __value__(F(I)) - __value__(X(I)) * 2.0D00)
        OpenAD_lin_49 = (INT(1_w2f__i8) / OpenAD_lin_48)
        OpenAD_lin_51 = __value__(X(9))
        OpenAD_lin_52 = __value__(X(I))
        OpenAD_lin_50 = (-(__value__(X(I)) /(OpenAD_lin_48 *
     >  OpenAD_lin_48)))
        OpenAD_lin_47 = OpenAD_lin_43
        OpenAD_lin_45 = OpenAD_lin_44
        OpenAD_lin_56 = OpenAD_lin_55
        OpenAD_lin_54 = (INT(1_w2f__i8) / 1.19999999999999995559D00)
        OpenAD_lin_46 = OpenAD_lin_43
        OpenAD_acc_18 = (OpenAD_lin_47 * OpenAD_lin_45)
        OpenAD_acc_19 = (OpenAD_lin_56 * OpenAD_lin_54 * OpenAD_lin_46)
        OpenAD_acc_20 = (OpenAD_lin_49 * OpenAD_acc_18)
        OpenAD_acc_21 = (OpenAD_lin_50 * OpenAD_acc_18)
        OpenAD_acc_22 = (OpenAD_lin_51 * OpenAD_acc_21)
        OpenAD_acc_23 = (OpenAD_lin_52 * OpenAD_acc_21)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_19)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_20)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_22)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_23)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(I)
        OpenAD_lin_62 = (__value__(X(I)) * __value__(X(9)) + 1.0D00)
        OpenAD_lin_57 = EXP(__value__(X(I)) / OpenAD_lin_62)
        OpenAD_lin_69 = (H * H)
        OpenAD_lin_67 = (__value__(X(8)) * OpenAD_lin_69)
        OpenAD_lin_58 = (OpenAD_lin_67 / 1.2D+01)
        __value__(F(INT(I + 1))) = (__value__(X(I)) + OpenAD_lin_57 *
     >  OpenAD_lin_58)
        OpenAD_lin_63 = (INT(1_w2f__i8) / OpenAD_lin_62)
        OpenAD_lin_65 = __value__(X(9))
        OpenAD_lin_66 = __value__(X(I))
        OpenAD_lin_64 = (-(__value__(X(I)) /(OpenAD_lin_62 *
     >  OpenAD_lin_62)))
        OpenAD_lin_61 = OpenAD_lin_57
        OpenAD_lin_59 = OpenAD_lin_58
        OpenAD_lin_70 = OpenAD_lin_69
        OpenAD_lin_68 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_lin_60 = OpenAD_lin_57
        OpenAD_acc_24 = (OpenAD_lin_61 * OpenAD_lin_59)
        OpenAD_acc_25 = (OpenAD_lin_70 * OpenAD_lin_68 * OpenAD_lin_60)
        OpenAD_acc_26 = (OpenAD_lin_63 * OpenAD_acc_24)
        OpenAD_acc_27 = (OpenAD_lin_64 * OpenAD_acc_24)
        OpenAD_acc_28 = (OpenAD_lin_65 * OpenAD_acc_27)
        OpenAD_acc_29 = (OpenAD_lin_66 * OpenAD_acc_27)
        OpenAD_Symbol_13 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_13)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_25)
        OpenAD_Symbol_14 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_14)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_26)
        OpenAD_Symbol_15 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_15)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_28)
        OpenAD_Symbol_16 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_16)
C       $OpenAD$ INLINE push_s0(subst)
        CALL push_s0(OpenAD_acc_29)
        OpenAD_Symbol_17 = (I + 1)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(OpenAD_Symbol_17)
C       $OpenAD$ INLINE push_i_s0(subst)
        CALL push_i_s0(I)
        OpenAD_Symbol_5 = (INT(OpenAD_Symbol_5) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i_s0(subst)
      CALL push_i_s0(OpenAD_Symbol_5)
      OpenAD_lin_76 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_71 = EXP(__value__(X(7)) / OpenAD_lin_76)
      OpenAD_lin_83 = (H * H)
      OpenAD_lin_81 = (__value__(X(8)) * OpenAD_lin_83)
      OpenAD_lin_72 = (OpenAD_lin_81 / 1.2D+01)
      __value__(F(6)) = (__value__(X(7)) + __value__(F(6)) +
     >  OpenAD_lin_71 * OpenAD_lin_72)
      OpenAD_lin_77 = (INT(1_w2f__i8) / OpenAD_lin_76)
      OpenAD_lin_79 = __value__(X(9))
      OpenAD_lin_80 = __value__(X(7))
      OpenAD_lin_78 = (-(__value__(X(7)) /(OpenAD_lin_76 *
     >  OpenAD_lin_76)))
      OpenAD_lin_75 = OpenAD_lin_71
      OpenAD_lin_73 = OpenAD_lin_72
      OpenAD_lin_84 = OpenAD_lin_83
      OpenAD_lin_82 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_74 = OpenAD_lin_71
      OpenAD_acc_30 = (OpenAD_lin_75 * OpenAD_lin_73)
      OpenAD_acc_31 = (OpenAD_lin_84 * OpenAD_lin_82 * OpenAD_lin_74)
      OpenAD_acc_32 = (OpenAD_lin_77 * OpenAD_acc_30)
      OpenAD_acc_33 = (OpenAD_lin_78 * OpenAD_acc_30)
      OpenAD_acc_34 = (OpenAD_lin_79 * OpenAD_acc_33)
      OpenAD_acc_35 = (OpenAD_lin_80 * OpenAD_acc_33)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_31)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_32)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_34)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_35)
      __value__(F(7)) = (__value__(F(7)) - __value__(X(7)) * 2.0D00)
      OpenAD_lin_91 = (H * H)
      OpenAD_lin_89 = (__value__(X(8)) * OpenAD_lin_91)
      OpenAD_lin_85 = (OpenAD_lin_89 / 1.2D+01)
      OpenAD_lin_95 = (__value__(X(7)) * __value__(X(9)) + 1.0D00)
      OpenAD_lin_93 = EXP(__value__(X(7)) / OpenAD_lin_95)
      OpenAD_lin_86 = (OpenAD_lin_93 * 1.0D+01 + 1.0D00)
      __value__(F(7)) = (__value__(F(7)) + OpenAD_lin_85 *
     >  OpenAD_lin_86)
      OpenAD_lin_92 = OpenAD_lin_91
      OpenAD_lin_90 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_lin_87 = OpenAD_lin_86
      OpenAD_lin_96 = (INT(1_w2f__i8) / OpenAD_lin_95)
      OpenAD_lin_98 = __value__(X(9))
      OpenAD_lin_99 = __value__(X(7))
      OpenAD_lin_97 = (-(__value__(X(7)) /(OpenAD_lin_95 *
     >  OpenAD_lin_95)))
      OpenAD_lin_94 = OpenAD_lin_93
      OpenAD_lin_88 = OpenAD_lin_85
      OpenAD_acc_36 = (OpenAD_lin_94 * 1.0D+01)
      OpenAD_acc_37 = (OpenAD_lin_92 * OpenAD_lin_90 * OpenAD_lin_87)
      OpenAD_acc_38 = (OpenAD_lin_96 * OpenAD_acc_36 * OpenAD_lin_88)
      OpenAD_acc_39 = (OpenAD_lin_97 * OpenAD_acc_36 * OpenAD_lin_88)
      OpenAD_acc_40 = (OpenAD_lin_98 * OpenAD_acc_39)
      OpenAD_acc_41 = (OpenAD_lin_99 * OpenAD_acc_39)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_37)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_38)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_40)
C     $OpenAD$ INLINE push_s0(subst)
      CALL push_s0(OpenAD_acc_41)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_53)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_54)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_55)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_56)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_53, __deriv__(F(7)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_54, __deriv__(F(7)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_55, __deriv__(F(7)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_56, __deriv__(F(7)), __deriv__(X(8)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(7)), __deriv__(OpenAD_prp_4))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(7)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prp_4), __deriv__(F(7)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prp_4))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(F(7)), __deriv__(X(7)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(7)), __deriv__(OpenAD_prp_3))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(7)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prp_3), __deriv__(F(7)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prp_3))
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_57)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_58)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_59)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_60)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_57, __deriv__(F(6)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_58, __deriv__(F(6)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_59, __deriv__(F(6)), __deriv__(X(7)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_60, __deriv__(F(6)), __deriv__(X(8)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(6)), __deriv__(OpenAD_prp_2))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(6)), __deriv__(X(7)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(6)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(OpenAD_prp_2), __deriv__(F(6)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(OpenAD_prp_2))
C     $OpenAD$ INLINE pop_i_s0(subst)
      CALL pop_i_s0(OpenAD_Symbol_3)
      OpenAD_Symbol_4 = 1
      DO WHILE(INT(OpenAD_Symbol_4) .LE. INT(OpenAD_Symbol_3))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_26)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_27)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_28)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_29)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_30)
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_31)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_27, __deriv__(F(OpenAD_Symbol_31)),
     >  __deriv__(X(9)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_32)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_28, __deriv__(F(OpenAD_Symbol_32)),
     >  __deriv__(X(OpenAD_Symbol_26)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_33)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_29, __deriv__(F(OpenAD_Symbol_33)),
     >  __deriv__(X(OpenAD_Symbol_26)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_34)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_30, __deriv__(F(OpenAD_Symbol_34)),
     >  __deriv__(X(8)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_35)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_35)), __deriv__(X(
     > OpenAD_Symbol_26)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(F(OpenAD_Symbol_35)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_36)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_37)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_38)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_39)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_40)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_37, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(9)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_38, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(OpenAD_Symbol_36)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_39, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(OpenAD_Symbol_36)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_40, __deriv__(F(OpenAD_Symbol_36)),
     >  __deriv__(X(8)))
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(-2.0D00, __deriv__(F(OpenAD_Symbol_36)), __deriv__(X
     > (OpenAD_Symbol_36)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_36)), __deriv__(
     > OpenAD_prp_1))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(F(OpenAD_Symbol_36)))
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_1), __deriv__(F(
     > OpenAD_Symbol_36)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_1))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_41)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_42)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_43)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_44)
C       $OpenAD$ INLINE pop_s0(subst)
        CALL pop_s0(OpenAD_Symbol_45)
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_46)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_42, __deriv__(F(OpenAD_Symbol_46)),
     >  __deriv__(X(9)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_47)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_43, __deriv__(F(OpenAD_Symbol_47)),
     >  __deriv__(X(OpenAD_Symbol_41)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_48)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_44, __deriv__(F(OpenAD_Symbol_48)),
     >  __deriv__(X(OpenAD_Symbol_41)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_49)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_45, __deriv__(F(OpenAD_Symbol_49)),
     >  __deriv__(X(8)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_50)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_50)), __deriv__(
     > OpenAD_prp_0))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_51)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(F(OpenAD_Symbol_51)), __deriv__(X(
     > OpenAD_Symbol_41)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(F(OpenAD_Symbol_51)))
C       $OpenAD$ INLINE pop_i_s0(subst)
        CALL pop_i_s0(OpenAD_Symbol_52)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_prp_0), __deriv__(F(
     > OpenAD_Symbol_52)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_prp_0))
        OpenAD_Symbol_4 = INT(OpenAD_Symbol_4) + 1
      END DO
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_18)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_19)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_20)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_21)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_18, __deriv__(F(2)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_19, __deriv__(F(2)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_20, __deriv__(F(2)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_21, __deriv__(F(2)), __deriv__(X(8)))
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(F(2)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(2)))
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_22)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_23)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_24)
C     $OpenAD$ INLINE pop_s0(subst)
      CALL pop_s0(OpenAD_Symbol_25)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_22, __deriv__(F(1)), __deriv__(X(9)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_23, __deriv__(F(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_24, __deriv__(F(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_25, __deriv__(F(1)), __deriv__(X(8)))
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(-2.0D00, __deriv__(F(1)), __deriv__(X(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(F(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
