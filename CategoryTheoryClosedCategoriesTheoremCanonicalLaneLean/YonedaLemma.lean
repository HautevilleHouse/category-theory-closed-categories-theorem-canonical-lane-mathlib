import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure YonedaLemmaPackage (C : Type u) [Category C] where
  yonedaEmbedding : C ⥤ (Cᵒᵖ ⥤ Type u)
  yonedaLemma : Prop
  fullyFaithful : Prop

structure YonedaLemmaEvidence {C : Type u} [Category C] (P : YonedaLemmaPackage C) where
  yonedaLemmaClosed : P.yonedaLemma
  fullyFaithfulClosed : P.fullyFaithful

def YonedaLemmaClosed {C : Type u} [Category C] (P : YonedaLemmaPackage C) : Prop :=
  P.yonedaLemma ∧ P.fullyFaithful

theorem yoneda_lemma_closed_from_evidence {C : Type u} [Category C]
    (P : YonedaLemmaPackage C) (E : YonedaLemmaEvidence P) :
    YonedaLemmaClosed P := by
  exact And.intro E.yonedaLemmaClosed E.fullyFaithfulClosed

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
