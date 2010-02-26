C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC, FLD
     +NOW, FLDOLD, FLDNEW)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_82
      INTEGER(w2f__i8) OpenAD_Symbol_83
      INTEGER(w2f__i8) OpenAD_Symbol_84
      INTEGER(w2f__i8) OpenAD_Symbol_85
      INTEGER(w2f__i8) OpenAD_Symbol_86
      INTEGER(w2f__i8) OpenAD_Symbol_87
      INTEGER(w2f__i8) OpenAD_Symbol_88
      INTEGER(w2f__i8) OpenAD_Symbol_89
      INTEGER(w2f__i8) OpenAD_Symbol_90
      INTEGER(w2f__i8) OpenAD_Symbol_91
      INTEGER(w2f__i8) OpenAD_Symbol_92
      INTEGER(w2f__i8) OpenAD_Symbol_93
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_4
      type(active) :: OpenAD_prop_5
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) GAMMALOC
      REAL(w2f__8) FLDSTAR(1 : 2)
      REAL(w2f__8) EXTFORLOC(1 : 2)
      REAL(w2f__8) UVELLOC
      type(active) :: FLDNOW(1:3)
      REAL(w2f__8) FLDOLD(1 : 3)
      type(active) :: FLDNEW(1:3)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) DELTA_T
      type(active) :: DFLDDT(1:3)
      INTEGER(w2f__i4) L
      REAL(w2f__8) VOL(1 : 3)
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_76
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_Symbol_94
      REAL(w2f__8) OpenAD_Symbol_95
      REAL(w2f__8) OpenAD_Symbol_96
      REAL(w2f__8) OpenAD_Symbol_97
      REAL(w2f__8) OpenAD_Symbol_98
      INTEGER(w2f__i8) OpenAD_Symbol_99


          integer iaddr
          external iaddr
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(FLDNOW)
C$OPENAD DEPENDENT(FLDNEW)
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        DFLDDT(1)%v = ((EXTFORLOC(1)+VOL(1)*GAMMALOC*(FLDSTAR(1)-FLDNOW(
     +1)%v)+UVELLOC*(FLDNOW(3)%v-FLDNOW(1)%v))/VOL(1))
        DFLDDT(2)%v = ((EXTFORLOC(2)+VOL(2)*GAMMALOC*(FLDSTAR(2)-FLDNOW(
     +2)%v)+UVELLOC*(FLDNOW(1)%v-FLDNOW(2)%v))/VOL(2))
        DFLDDT(3)%v = ((UVELLOC*(FLDNOW(2)%v-FLDNOW(3)%v))/VOL(3))
      ELSE
        DFLDDT(1)%v = ((EXTFORLOC(1)+VOL(1)*GAMMALOC*(FLDSTAR(1)-FLDNOW(
     +1)%v)-UVELLOC*(FLDNOW(2)%v-FLDNOW(1)%v))/VOL(1))
        DFLDDT(2)%v = ((EXTFORLOC(2)+VOL(2)*GAMMALOC*(FLDSTAR(2)-FLDNOW(
     +2)%v)-UVELLOC*(FLDNOW(3)%v-FLDNOW(2)%v))/VOL(2))
        DFLDDT(3)%v = (-((UVELLOC*(FLDNOW(1)%v-FLDNOW(3)%v))/VOL(3)))
      ENDIF
      DO L = 1,3,1
        FLDNEW(INT(L))%v = (FLDOLD(L)+DFLDDT(L)%v*DELTA_T*2.0D00)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF (UVELLOC.GE.0.0D00) THEN
        OpenAD_Symbol_7 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_4 = (GAMMALOC*OpenAD_Symbol_7)
        OpenAD_Symbol_11 = (FLDNOW(3)%v-FLDNOW(1)%v)
        OpenAD_Symbol_0 = (EXTFORLOC(1)+VOL(1)*OpenAD_Symbol_4+UVELLOC*O
     +penAD_Symbol_11)
        DFLDDT(1)%v = (OpenAD_Symbol_0/VOL(1))
        OpenAD_Symbol_9 = GAMMALOC
        OpenAD_Symbol_6 = VOL(1)
        OpenAD_Symbol_13 = UVELLOC
        OpenAD_Symbol_1 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_Symbol_72 = (OpenAD_Symbol_13*OpenAD_Symbol_1)
        OpenAD_Symbol_73 = (INT((-1_w2f__i8))*OpenAD_Symbol_9*OpenAD_Sym
     +bol_6*OpenAD_Symbol_1)
        double_tape(double_tape_pointer) = OpenAD_Symbol_72
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_Symbol_73
        double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_21 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_18 = (GAMMALOC*OpenAD_Symbol_21)
        OpenAD_Symbol_25 = (FLDNOW(1)%v-FLDNOW(2)%v)
        OpenAD_Symbol_14 = (EXTFORLOC(2)+VOL(2)*OpenAD_Symbol_18+UVELLOC
     +*OpenAD_Symbol_25)
        DFLDDT(2)%v = (OpenAD_Symbol_14/VOL(2))
        OpenAD_Symbol_23 = GAMMALOC
        OpenAD_Symbol_20 = VOL(2)
        OpenAD_Symbol_27 = UVELLOC
        OpenAD_Symbol_15 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_Symbol_74 = (OpenAD_Symbol_27*OpenAD_Symbol_15)
        OpenAD_Symbol_75 = (INT((-1_w2f__i8))*OpenAD_Symbol_23*OpenAD_Sy
     +mbol_20*OpenAD_Symbol_15)
        double_tape(double_tape_pointer) = OpenAD_Symbol_74
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_Symbol_75
        double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_31 = (FLDNOW(2)%v-FLDNOW(3)%v)
        OpenAD_Symbol_28 = (UVELLOC*OpenAD_Symbol_31)
        DFLDDT(3)%v = (OpenAD_Symbol_28/VOL(3))
        OpenAD_Symbol_33 = UVELLOC
        OpenAD_Symbol_29 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_Symbol_76 = (OpenAD_Symbol_33*OpenAD_Symbol_29)
        double_tape(double_tape_pointer) = OpenAD_Symbol_76
        double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_85 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_85
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_45 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_42 = (GAMMALOC*OpenAD_Symbol_45)
        OpenAD_Symbol_49 = (FLDNOW(2)%v-FLDNOW(1)%v)
        OpenAD_Symbol_38 = (EXTFORLOC(1)+VOL(1)*OpenAD_Symbol_42-UVELLOC
     +*OpenAD_Symbol_49)
        DFLDDT(1)%v = (OpenAD_Symbol_38/VOL(1))
        OpenAD_Symbol_47 = GAMMALOC
        OpenAD_Symbol_44 = VOL(1)
        OpenAD_Symbol_51 = UVELLOC
        OpenAD_Symbol_39 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_Symbol_77 = (OpenAD_Symbol_51*INT((-1_w2f__i8))*OpenAD_Sy
     +mbol_39)
        OpenAD_Symbol_78 = (INT((-1_w2f__i8))*OpenAD_Symbol_47*OpenAD_Sy
     +mbol_44*OpenAD_Symbol_39)
        double_tape(double_tape_pointer) = OpenAD_Symbol_77
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_Symbol_78
        double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_59 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_56 = (GAMMALOC*OpenAD_Symbol_59)
        OpenAD_Symbol_63 = (FLDNOW(3)%v-FLDNOW(2)%v)
        OpenAD_Symbol_52 = (EXTFORLOC(2)+VOL(2)*OpenAD_Symbol_56-UVELLOC
     +*OpenAD_Symbol_63)
        DFLDDT(2)%v = (OpenAD_Symbol_52/VOL(2))
        OpenAD_Symbol_61 = GAMMALOC
        OpenAD_Symbol_58 = VOL(2)
        OpenAD_Symbol_65 = UVELLOC
        OpenAD_Symbol_53 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_Symbol_79 = (OpenAD_Symbol_65*INT((-1_w2f__i8))*OpenAD_Sy
     +mbol_53)
        OpenAD_Symbol_80 = (INT((-1_w2f__i8))*OpenAD_Symbol_61*OpenAD_Sy
     +mbol_58*OpenAD_Symbol_53)
        double_tape(double_tape_pointer) = OpenAD_Symbol_79
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_Symbol_80
        double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_69 = (FLDNOW(1)%v-FLDNOW(3)%v)
        OpenAD_Symbol_66 = (UVELLOC*OpenAD_Symbol_69)
        DFLDDT(3)%v = (-(OpenAD_Symbol_66/VOL(3)))
        OpenAD_Symbol_71 = UVELLOC
        OpenAD_Symbol_67 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_Symbol_81 = (OpenAD_Symbol_71*OpenAD_Symbol_67*INT((-1_w2
     +f__i8)))
        double_tape(double_tape_pointer) = OpenAD_Symbol_81
        double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_86 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_86
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
      OpenAD_Symbol_87 = 0_w2f__i8
      DO L = 1,3,1
        OpenAD_Symbol_35 = (DELTA_T*2.0D00)
        FLDNEW(INT(L))%v = (FLDOLD(L)+DFLDDT(L)%v*OpenAD_Symbol_35)
        OpenAD_Symbol_36 = OpenAD_Symbol_35
        double_tape(double_tape_pointer) = OpenAD_Symbol_36
        double_tape_pointer = double_tape_pointer+1
        integer_tape(integer_tape_pointer) = L
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_87 = (INT(OpenAD_Symbol_87)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_87
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_82 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_83 = 1
      do while (INT(OpenAD_Symbol_83).LE.INT(OpenAD_Symbol_82))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_99 = integer_tape(integer_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_100 = double_tape(double_tape_pointer)
        DFLDDT(INT(OpenAD_Symbol_99))%d = DFLDDT(INT(OpenAD_Symbol_99))%
     +d+FLDNEW(INT(OpenAD_Symbol_99))%d*(OpenAD_Symbol_100)
        FLDNEW(INT(OpenAD_Symbol_99))%d = 0.0d0
        OpenAD_Symbol_83 = INT(OpenAD_Symbol_83)+1
      END DO
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_84 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_84.ne.0) THEN
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_94 = double_tape(double_tape_pointer)
        OpenAD_prop_2%d = OpenAD_prop_2%d+DFLDDT(3)%d*(OpenAD_Symbol_94)
        DFLDDT(3)%d = 0.0d0
        FLDNOW(3)%d = FLDNOW(3)%d-OpenAD_prop_2%d
        FLDNOW(2)%d = FLDNOW(2)%d+OpenAD_prop_2%d
        OpenAD_prop_2%d = 0.0d0
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_95 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_96 = double_tape(double_tape_pointer)
        FLDNOW(2)%d = FLDNOW(2)%d+DFLDDT(2)%d*(OpenAD_Symbol_95)
        OpenAD_prop_1%d = OpenAD_prop_1%d+DFLDDT(2)%d*(OpenAD_Symbol_96)
        DFLDDT(2)%d = 0.0d0
        FLDNOW(2)%d = FLDNOW(2)%d-OpenAD_prop_1%d
        FLDNOW(1)%d = FLDNOW(1)%d+OpenAD_prop_1%d
        OpenAD_prop_1%d = 0.0d0
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_97 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_98 = double_tape(double_tape_pointer)
        FLDNOW(1)%d = FLDNOW(1)%d+DFLDDT(1)%d*(OpenAD_Symbol_97)
        OpenAD_prop_0%d = OpenAD_prop_0%d+DFLDDT(1)%d*(OpenAD_Symbol_98)
        DFLDDT(1)%d = 0.0d0
        FLDNOW(1)%d = FLDNOW(1)%d-OpenAD_prop_0%d
        FLDNOW(3)%d = FLDNOW(3)%d+OpenAD_prop_0%d
        OpenAD_prop_0%d = 0.0d0
      ELSE
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_101 = double_tape(double_tape_pointer)
        OpenAD_prop_5%d = OpenAD_prop_5%d+DFLDDT(3)%d*(OpenAD_Symbol_101
     +)
        DFLDDT(3)%d = 0.0d0
        FLDNOW(3)%d = FLDNOW(3)%d-OpenAD_prop_5%d
        FLDNOW(1)%d = FLDNOW(1)%d+OpenAD_prop_5%d
        OpenAD_prop_5%d = 0.0d0
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_102 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_103 = double_tape(double_tape_pointer)
        FLDNOW(2)%d = FLDNOW(2)%d+DFLDDT(2)%d*(OpenAD_Symbol_102)
        OpenAD_prop_4%d = OpenAD_prop_4%d+DFLDDT(2)%d*(OpenAD_Symbol_103
     +)
        DFLDDT(2)%d = 0.0d0
        FLDNOW(2)%d = FLDNOW(2)%d-OpenAD_prop_4%d
        FLDNOW(3)%d = FLDNOW(3)%d+OpenAD_prop_4%d
        OpenAD_prop_4%d = 0.0d0
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_104 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_105 = double_tape(double_tape_pointer)
        FLDNOW(1)%d = FLDNOW(1)%d+DFLDDT(1)%d*(OpenAD_Symbol_104)
        OpenAD_prop_3%d = OpenAD_prop_3%d+DFLDDT(1)%d*(OpenAD_Symbol_105
     +)
        DFLDDT(1)%d = 0.0d0
        FLDNOW(1)%d = FLDNOW(1)%d-OpenAD_prop_3%d
        FLDNOW(2)%d = FLDNOW(2)%d+OpenAD_prop_3%d
        OpenAD_prop_3%d = 0.0d0
      ENDIF
          end if
        end subroutine box_timestep
