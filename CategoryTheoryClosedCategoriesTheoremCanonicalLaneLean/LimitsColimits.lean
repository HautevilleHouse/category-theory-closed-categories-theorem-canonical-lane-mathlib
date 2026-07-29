import HautevilleHouse.CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean.AdjunctionCore

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure LimitsColimitsPackage {C : Type} [Category C] where
  hasProducts : Prop
  hasEqualizers : Prop
  hasLimits : Prop
  hasCoproducts : Prop
  hasCoequalizers : Prop
  hasColimits : Prop
  completeness : Prop
  cocompleteness : Prop

structure LimitsColimitsEvidence {C : Type} [Category C] (L : LimitsColimitsPackage C) where
  hasProductsClosed : L.hasProducts
  hasEqualizersClosed : L.hasEqualizers
  hasLimitsClosed : L.hasLimits
  hasCoproductsClosed : L.hasCoproducts
  hasCoequalizersClosed : L.hasCoequalizers
  hasColimitsClosed : L.hasColimits
  completenessClosed : L.completeness
  cocompletenessClosed : L.cocompleteness

def LimitsColimitsClosed {C : Type} [Category C] (L : LimitsColimitsPackage C) : Prop :=
  L.hasProducts ∧ L.hasEqualizers ∧ L.hasLimits ∧
  L.hasCoproducts ∧ L.hasCoequalizers ∧ L.hasColimits ∧
  L.completeness ∧ L.cocompleteness

theorem limits_colimits_closed_from_evidence
    {C : Type} [Category C] (L : LimitsColimitsPackage C) (E : LimitsColimitsEvidence L) :
    LimitsColimitsClosed L := by
  exact And.intro E.hasProductsClosed
    (And.intro E.hasEqualizersClosed
      (And.intro E.hasLimitsClosed
        (And.intro E.hasCoproductsClosed
          (And.intro E.hasCoequalizersClosed
            (And.intro E.hasColimitsClosed
              (And.intro E.completenessClosed E.cocompletenessClosed))))))

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse