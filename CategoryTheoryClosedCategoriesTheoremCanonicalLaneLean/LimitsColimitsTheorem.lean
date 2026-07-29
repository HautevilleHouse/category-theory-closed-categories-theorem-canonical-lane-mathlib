import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure LimitsPackage where
  hasTerminalObject : Prop
  hasBinaryProducts : Prop
  hasEqualizers : Prop
  hasPullbacks : Prop

def LimitsClosed (L : LimitsPackage) : Prop :=
  L.hasTerminalObject ∧ L.hasBinaryProducts ∧ L.hasEqualizers ∧ L.hasPullbacks

structure ColimitsPackage where
  hasInitialObject : Prop
  hasBinaryCoproducts : Prop
  hasCoequalizers : Prop
  hasPushouts : Prop

def ColimitsClosed (C : ColimitsPackage) : Prop :=
  C.hasInitialObject ∧ C.hasBinaryCoproducts ∧ C.hasCoequalizers ∧ C.hasPushouts

theorem limits_closed_from_evidence (L : LimitsPackage) (h1 : L.hasTerminalObject) (h2 : L.hasBinaryProducts) (h3 : L.hasEqualizers) (h4 : L.hasPullbacks) : LimitsClosed L :=
  And.intro h1 (And.intro h2 (And.intro h3 h4))

theorem colimits_closed_from_evidence (C : ColimitsPackage) (h1 : C.hasInitialObject) (h2 : C.hasBinaryCoproducts) (h3 : C.hasCoequalizers) (h4 : C.hasPushouts) : ColimitsClosed C :=
  And.intro h1 (And.intro h2 (And.intro h3 h4))

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
