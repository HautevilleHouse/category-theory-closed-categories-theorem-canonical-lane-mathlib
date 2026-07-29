import HautevilleHouse.CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean.MonoidalCategoryCore

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure AdjointFunctorPackage {C D : Type} [Category C] [Category D] (F : C ⥤ D) (G : D ⥤ C) where
  unitNatural : 𝟙 C ⟹ G ⋙ F
  counitNatural : F ⋙ G ⟹ 𝟙 D
  triangleIdentities : Prop
  coherence : Prop

structure AdjointFunctorEvidence {C D : Type} [Category C] [Category D] {F : C ⥤ D} {G : D ⥤ C} (P : AdjointFunctorPackage F G) where
  triangleIdentitiesClosed : P.triangleIdentities
  coherenceClosed : P.coherence

def AdjointFunctorClosed {C D : Type} [Category C] [Category D] {F : C ⥤ D} {G : D ⥤ C} (P : AdjointFunctorPackage F G) : Prop :=
  P.triangleIdentities ∧ P.coherence

theorem adjoint_functor_closed_from_evidence
    {C D : Type} [Category C] [Category D] {F : C ⥤ D} {G : D ⥤ C}
    (P : AdjointFunctorPackage F G) (E : AdjointFunctorEvidence P) : AdjointFunctorClosed P := by
  exact And.intro E.triangleIdentitiesClosed E.coherenceClosed

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse