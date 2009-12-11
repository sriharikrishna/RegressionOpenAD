
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_2
      type(active) :: OpenAD_Symbol_3
      type(active) :: OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      type(active) :: OAD_CTMP1
      REAL(w2f__8) OAD_CTMP2
      REAL(w2f__8) T
      type(active) :: T1
      REAL(w2f__8) T2
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T = 2.0D00
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_0,T)
      CALL OAD_S_MIN_D(OpenAD_Symbol_0,X(1),OAD_CTMP0)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(T,OpenAD_Symbol_0)
      T1%v = OAD_CTMP0%v
      CALL setderiv(T1,OAD_CTMP0)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_1,T)
      CALL OAD_S_MIN_D(T1,OpenAD_Symbol_1,OAD_CTMP1)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(T,OpenAD_Symbol_1)
      Y(1)%v = OAD_CTMP1%v
      CALL setderiv(Y(1),OAD_CTMP1)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_2,T)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_3,2.5D00)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_4,OAD_CTMP2)
      CALL OAD_S_MIN_D(OpenAD_Symbol_2,OpenAD_Symbol_3,OpenAD_Symbol_4)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(T,OpenAD_Symbol_2)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(OAD_CTMP2,OpenAD_Symbol_4)
      T2 = OAD_CTMP2
      END SUBROUTINE
