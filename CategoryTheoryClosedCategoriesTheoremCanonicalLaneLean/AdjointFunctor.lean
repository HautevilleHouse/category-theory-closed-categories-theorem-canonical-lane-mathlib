import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure AdjointFunctorPackage (C D : Type u) [Category C] [Category D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  unit : 𝟭 C ⟶ leftAdjoint ⋙ rightAdjoint
  counit : rightAdjoint ⋙ leftAdjoint ⟶ 𝟭 D
  triangleLeft : Prop
  triangleRight : Prop

structure AdjointFunctorEvidence {C D : Type u} [Category C] [Category D]
    (P : AdjointFunctorPackage C D) where
  triangleLeftClosed : P.triangleLeft
  triangleRightClosed : P.triangleRight

def AdjointFunctorClosed {C D : Type u} [Category C] [Category D]
    (P : AdjointFunctorPackage C D) : Prop :=
  P.triangleLeft ∧ P.triangleRight

theorem adjoint_functor_closed_from_evidence {C D : Type u} [Category C] [Category D]
    (P : AdjointFunctorPackage C D) (E : AdjointFunctorEvidence P) :
    AdjointFunctorClosed P := by
  exact And.intro E.triangleLeftClosed E.triangleRightClosed

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
