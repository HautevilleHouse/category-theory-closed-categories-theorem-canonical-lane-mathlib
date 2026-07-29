import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure ClosedMonoidalPackage (A : AdmissibleClass) where
  internalHomExists : Prop
  tensorHomAdjunction : Prop
  evaluationMap : Prop
  compositionMap : Prop
  coherenceConditions : Prop

structure ClosedMonoidalEvidence {A : AdmissibleClass} (P : ClosedMonoidalPackage A) where
  internalHomExistsClosed : P.internalHomExists
  tensorHomAdjunctionClosed : P.tensorHomAdjunction
  evaluationMapClosed : P.evaluationMap
  compositionMapClosed : P.compositionMap
  coherenceConditionsClosed : P.coherenceConditions

def ClosedMonoidalClosed {A : AdmissibleClass} (P : ClosedMonoidalPackage A) : Prop :=
  P.internalHomExists ∧ P.tensorHomAdjunction ∧ P.evaluationMap ∧ P.compositionMap ∧ P.coherenceConditions

theorem closed_monoidal_closed_from_evidence
    {A : AdmissibleClass} (P : ClosedMonoidalPackage A) (E : ClosedMonoidalEvidence P) :
    ClosedMonoidalClosed P := by
  exact And.intro E.internalHomExistsClosed
    (And.intro E.tensorHomAdjunctionClosed
      (And.intro E.evaluationMapClosed (And.intro E.compositionMapClosed E.coherenceConditionsClosed)))

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse