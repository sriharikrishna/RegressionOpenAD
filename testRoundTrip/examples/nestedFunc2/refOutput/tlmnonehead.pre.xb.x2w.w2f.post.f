      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      external foo
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL foo(X,Y)
      END SUBROUTINE
      subroutine foo(FX,FY)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: FX(1:1)
      type(active) :: FY(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: FVAR
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL BAR(FX,FY)
      contains
        subroutine BAR(BX,BY)
        use w2f__types
        use OAD_active
        implicit none
C
C       **** Parameters and Result ****
C
        type(active) :: BX(1:1)
        type(active) :: BY(1:1)
C
C       **** Statements ****
C
        FVAR%v = BX(1)%v
        BY(1)%v = FVAR%v
        CALL setderiv(FVAR,BX(1))
        CALL setderiv(BY(1),FVAR)
        END SUBROUTINE
      END
