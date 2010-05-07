C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A, X)
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
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      CHARACTER(*) A
      type(active) :: X
C
C     **** Local Variables and Functions ****
C
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      IF(A(1 : LEN(A)) .EQ. 'two') THEN
        X%v = (X%v*2.0D00)
      ENDIF
      IF (A(1:LEN(A)).EQ.'three') THEN
        X%v = (X%v*3.0D00)
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      IF (A(1:LEN(A)).EQ.'two') THEN
        X%v = (X%v*2.0D00)
        OpenAD_Symbol_2 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_3 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
      IF (A(1:LEN(A)).EQ.'three') THEN
        X%v = (X%v*3.0D00)
        OpenAD_Symbol_4 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_5 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_0.ne.0) THEN
        OpenAD_prp_1%d = OpenAD_prp_1%d+X%d*(3.0D00)
        X%d = 0.0d0
        X%d = X%d+OpenAD_prp_1%d
        OpenAD_prp_1%d = 0.0d0
      ENDIF
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_1.ne.0) THEN
        OpenAD_prp_0%d = OpenAD_prp_0%d+X%d*(2.0D00)
        X%d = 0.0d0
        X%d = X%d+OpenAD_prp_0%d
        OpenAD_prp_0%d = 0.0d0
      ENDIF
          end if
        end subroutine foo
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE head(X, Y)
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      CHARACTER(10) A
      EXTERNAL foo


          integer iaddr
          external iaddr
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      A = 'two'
      CALL foo(A,X)
      A = 'three'
      CALL foo(A,X)
      A = 'four'
      Y(1)%v = X(1)%v
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      A = 'two'
      CALL foo(A,X)
      A = 'three'
      CALL foo(A,X)
      A = 'four'
      Y(1)%v = X(1)%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL foo(A,X)
      CALL foo(A,X)
          end if
        end subroutine head
