import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.unitNatural ∧ A.counitNatural ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (h1 : A.leftAdjointExists) (h2 : A.rightAdjointExists) (h3 : A.unitNatural) (h4 : A.counitNatural) (h5 : A.triangleIdentities) : AdjointFunctorClosed A :=
  And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
