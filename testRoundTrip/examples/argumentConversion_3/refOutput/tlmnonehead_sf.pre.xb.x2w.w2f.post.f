       module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
       module globals
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: GX
      type(active) :: GY
C
C     **** Statements ****
C
      END MODULE
       subroutine bar(BARX,BARY)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      real(w2f__8) :: BARX
      real(w2f__8) :: BARY
C
C     **** Local Variables and Functions ****
C
      real(w2f__8) :: T
C
C     **** Statements ****
C
      T = BARX
      BARX = BARY
      BARY = T
      END SUBROUTINE
       subroutine foo()
      use w2f__types
      use OAD_active
      use globals
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_Symbol_1
C
C     **** Local Variables and Functions ****
C
      external bar
C
C     **** Statements ****
C
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(OpenAD_Symbol_0,GX)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(OpenAD_Symbol_1,GY)
      CALL bar(OpenAD_Symbol_0,OpenAD_Symbol_1)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(GX,OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(GY,OpenAD_Symbol_1)
      END SUBROUTINE
       subroutine head(X,Y)
      use w2f__types
      use OAD_active
      use globals
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      GX%v = X(1)%v
      GY%v = GX%v
      Y(1)%v = GY%v
      CALL setderiv(GX,X(1))
      CALL setderiv(GY,GX)
      CALL setderiv(Y(1),GY)
      END SUBROUTINE
