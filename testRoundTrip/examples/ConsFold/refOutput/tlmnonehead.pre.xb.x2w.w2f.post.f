
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
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
      type(active) :: T1
      type(active) :: T2
      type(active) :: T3
      type(active) :: T4
      type(active) :: T5
      type(active) :: T6
      type(active) :: T7
      type(active) :: Y1
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T1%v = X(1)%v
      T2%v = (T1%v+2.0D00)
      T3%v = (T2%v*5.0D-01)
      T4%v = (T3%v*2.0D00)
      T5%v = (T4%v+4.0D00)
      T6%v = (T5%v+3.0D00)
      T7%v = (T6%v+(-9.0D00))
      Y1%v = EXP(T7%v)
      OpenAD_Symbol_6 = EXP(T7%v)
      Y(1)%v = Y1%v
      OpenAD_Symbol_7 = (1.0D00*OpenAD_Symbol_6)
      CALL sax(OpenAD_Symbol_7,X(1),Y(1))
      END SUBROUTINE
