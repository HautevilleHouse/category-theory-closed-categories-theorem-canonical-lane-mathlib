import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure ClosedCategoryPackage where
  internalHom : Type u
  evaluationMap : Type v
  compositionMap : Type w
  tensorUnit : Type x
  tensorProduct : Type u -> Type u -> Type u
  internalHomLawful : Prop
  evaluationNatural : Prop
  compositionNatural : Prop
  tensorUnitIso : Prop

structure ClosedCategoryEvidence (P : ClosedCategoryPackage) where
  internalHomLawfulClosed : P.internalHomLawful
  evaluationNaturalClosed : P.evaluationNatural
  compositionNaturalClosed : P.compositionNatural
  tensorUnitIsoClosed : P.tensorUnitIso

def ClosedCategoryClosed (P : ClosedCategoryPackage) : Prop :=
  P.internalHomLawful ∧ P.evaluationNatural ∧ P.compositionNatural ∧ P.tensorUnitIso

theorem closed_category_closed_from_evidence (P : ClosedCategoryPackage) (E : ClosedCategoryEvidence P) :
    ClosedCategoryClosed P := by
  exact And.intro E.internalHomLawfulClosed
    (And.intro E.evaluationNaturalClosed
      (And.intro E.compositionNaturalClosed E.tensorUnitIsoClosed))

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
