      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine foo(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_0 = X(2)%v
      OpenAD_lin_1 = X(1)%v
      CALL sax(OpenAD_lin_0,X(1),Y)
      CALL saxpy(OpenAD_lin_1,X(2),Y)
      END SUBROUTINE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0(1:2,1:2)
      type(active) :: OpenAD_Symbol_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      real(w2f__8) :: APX(1:2,1:2)
      type(active) :: AX(1:2,1:2)
      integer(w2f__i4) :: I
      integer(w2f__i4) :: J
      real(w2f__8) :: PY
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        subroutine foo(X,Y)
        use w2f__types
      use OAD_active
        type(active) :: X(1:2)
        type(active) :: Y
        END SUBROUTINE
       end interface
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        DO J = 1,2,1
          AX(INT(I),INT(J))%v = X(I)%v
          APX(INT(I),INT(J)) = (I*DBLE(4.0))
          CALL setderiv(AX(I,J),X(I))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        CALL foo(AX(I,1:2),Y(1))
C       $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
        CALL convert_p2a_matrix(OpenAD_Symbol_0,APX)
C       $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
        CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
        CALL foo(OpenAD_Symbol_0(I,1:2),OpenAD_Symbol_1)
C       $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
        CALL convert_a2p_matrix(APX,OpenAD_Symbol_0)
C       $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
        CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)
      END DO
      END SUBROUTINE
