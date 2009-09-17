
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X
      type(active) :: Y
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y%v = (X%v*2.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      Y%v = (X%v*2.0D00)
          end if 
          if (our_rev_mode%adjoint) then
C adjoint
      X%d = X%d+Y%d*(2.0D00)
      Y%d = 0.0d0
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
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_2
      type(active) :: OpenAD_Symbol_4
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) L
      REAL(w2f__8) P(1 : 2)
      type(active) :: Q(1:2)
      REAL(w2f__8) R


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
      K = 1
      CALL foo(X(K),Y)
      Q(1)%v = Y%v
      Y%v = Q(1)%v
      P(1) = 1.0
      L = 1
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,P(K))
      CALL foo(OpenAD_Symbol_0,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(P(K),OpenAD_Symbol_0)
      R = P(1)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,R)
      CALL foo(OpenAD_Symbol_1,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(R,OpenAD_Symbol_1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      K = 1
      CALL foo(X(K),Y)
      integer_tape(integer_tape_pointer) = K
      integer_tape_pointer = integer_tape_pointer+1
      Q(1)%v = Y%v
      Y%v = Q(1)%v
      P(1) = 1.0
      L = 1
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,P(K))
      CALL foo(OpenAD_Symbol_0,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(P(K),OpenAD_Symbol_0)
      integer_tape(integer_tape_pointer) = K
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = L
      integer_tape_pointer = integer_tape_pointer+1
      R = P(1)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,R)
      CALL foo(OpenAD_Symbol_1,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(R,OpenAD_Symbol_1)
      integer_tape(integer_tape_pointer) = L
      integer_tape_pointer = integer_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      L = integer_tape(integer_tape_pointer)
      CALL foo(OpenAD_Symbol_2,Q(L))
      integer_tape_pointer = integer_tape_pointer-1
      L = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      K = integer_tape(integer_tape_pointer)
      CALL foo(OpenAD_Symbol_4,Q(L))
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y%d
      Y%d = 0.0d0
      Q(1)%d = Q(1)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      OpenAD_prop_0%d = OpenAD_prop_0%d+Q(1)%d
      Q(1)%d = 0.0d0
      Y%d = Y%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      K = integer_tape(integer_tape_pointer)
      CALL foo(X(K),Y)
          end if 
        end subroutine head
