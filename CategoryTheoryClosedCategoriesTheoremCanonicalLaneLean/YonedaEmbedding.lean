import HautevilleHouse.CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean.CategoryWithYoneda

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure YonedaEmbeddingPackage {C : Type} [Category C] (Y : YonedaStructure C) where
  yonedaEmbeddingFullFaithful : Prop
  yonedaLemmaHolds : Prop
  representableFunctorsCharacterized : Prop

structure YonedaEmbeddingEvidence {C : Type} [Category C] {Y : YonedaStructure C} (P : YonedaEmbeddingPackage Y) where
  yonedaEmbeddingFullFaithfulClosed : P.yonedaEmbeddingFullFaithful
  yonedaLemmaHoldsClosed : P.yonedaLemmaHolds
  representableFunctorsCharacterizedClosed : P.representableFunctorsCharacterized

def YonedaEmbeddingClosed {C : Type} [Category C] {Y : YonedaStructure C} (P : YonedaEmbeddingPackage Y) : Prop :=
  P.yonedaEmbeddingFullFaithful ∧ P.yonedaLemmaHolds ∧ P.representableFunctorsCharacterized

theorem yoneda_embedding_closed_from_evidence
    {C : Type} [Category C] {Y : YonedaStructure C} (P : YonedaEmbeddingPackage Y)
    (E : YonedaEmbeddingEvidence P) : YonedaEmbeddingClosed P := by
  exact And.intro E.yonedaEmbeddingFullFaithfulClosed
    (And.intro E.yonedaLemmaHoldsClosed E.representableFunctorsCharacterizedClosed)

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse