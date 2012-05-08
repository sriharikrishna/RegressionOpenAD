C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: T(1:INT(SIZE(X)))
      type(active) :: U(1:INT(SIZE(Y)))
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_11(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_12(:)
      ALLOCATABLE OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_19
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8(:)
      ALLOCATABLE OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_aux_0(:)
      ALLOCATABLE OpenAD_aux_0
      REAL(w2f__8) OpenAD_lin_0(1 : 2)
      REAL(w2f__8) OpenAD_lin_1(:)
      ALLOCATABLE OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2(1 : 2)
      REAL(w2f__8) OpenAD_lin_3(:)
      ALLOCATABLE OpenAD_lin_3
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      T(1:INT(SIZE(X)))%v = SIN(X%v)
      U(1:INT(SIZE(Y)))%v = (X(1:2)%v*T(1:INT(SIZE(X)))%v+5.0D00)
      Y(1:2)%v = SQRT(U%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_0 = COS(X%v)
      T(1:INT(SIZE(X)))%v = SIN(X%v)
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_0)-1) = OpenAD_lin_0(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_0)
      OpenAD_Symbol_0 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_0
      integer_tape_pointer = integer_tape_pointer+1
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_1,T(1:INT(SIZE(X))))
      OpenAD_lin_1 = T(1:INT(SIZE(X)))%v
      OpenAD_lin_2 = X(1:2)%v
      U(1:INT(SIZE(Y)))%v = (X(1:2)%v*T(1:INT(SIZE(X)))%v+5.0D00)
      OpenAD_Symbol_1 = SIZE(OpenAD_lin_1,1_w2f__i8)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_1)-1) = OpenAD_lin_1(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_1)
      OpenAD_Symbol_3 = SIZE(Y)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_2)-1) = OpenAD_lin_2(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_2)
      OpenAD_Symbol_4 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_5 = SIZE(Y)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_aux_0,U)
      OpenAD_aux_0 = SQRT(U%v)
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_3,OpenAD_aux_0)
      OpenAD_lin_3 = (5.0D-01/OpenAD_aux_0)
      Y(1:2)%v = OpenAD_aux_0
      OpenAD_Symbol_6 = SIZE(OpenAD_lin_3,1_w2f__i8)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_3)-1) = OpenAD_lin_3(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_3)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
C!! requested inline of 'oad_AllocateShape' has no defn
      CALL oad_AllocateShape(OpenAD_Symbol_8,OpenAD_Symbol_9)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_8)
      OpenAD_Symbol_8(:) = double_tape(double_tape_pointer:double_tape_p
     +ointer+size(OpenAD_Symbol_8)-1)
      U%d = U%d+Y(1:2)%d*(OpenAD_Symbol_8)
      Y(1:2)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_11)
      OpenAD_Symbol_11(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_11)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_13 = integer_tape(integer_tape_pointer)
C!! requested inline of 'oad_AllocateShape' has no defn
      CALL oad_AllocateShape(OpenAD_Symbol_12,OpenAD_Symbol_13)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_12)
      OpenAD_Symbol_12(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_12)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_15 = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_16 = integer_tape(integer_tape_pointer)
      T(1:INT(OpenAD_Symbol_16))%d = T(1:INT(OpenAD_Symbol_16))%d+U(1:IN
     +T(OpenAD_Symbol_15))%d*(OpenAD_Symbol_11)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_17 = integer_tape(integer_tape_pointer)
      X(1:2)%d = X(1:2)%d+U(1:INT(OpenAD_Symbol_17))%d*(OpenAD_Symbol_12
     +)
      U(1:INT(OpenAD_Symbol_17))%d = 0.0d0
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_18)
      OpenAD_Symbol_18(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_18)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_19 = integer_tape(integer_tape_pointer)
      X%d = X%d+T(1:INT(OpenAD_Symbol_19))%d*(OpenAD_Symbol_18)
      T(1:INT(OpenAD_Symbol_19))%d = 0.0d0
          end if
        end subroutine head