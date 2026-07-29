import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure LimitPackage (C : Type u) [Category C] (J : Type v) [Category J] where
  diagram : J ⥤ C
  cone : Cone diagram
  universalProperty : Prop

structure LimitEvidence {C : Type u} [Category C] {J : Type v} [Category J]
    (P : LimitPackage C J) where
  universalPropertyClosed : P.universalProperty

def LimitClosed {C : Type u} [Category C] {J : Type v} [Category J]
    (P : LimitPackage C J) : Prop :=
  P.universalProperty

theorem limit_closed_from_evidence {C : Type u} [Category C] {J : Type v} [Category J]
    (P : LimitPackage C J) (E : LimitEvidence P) : LimitClosed P :=
  E.universalPropertyClosed

structure ColimitPackage (C : Type u) [Category C] (J : Type v) [Category J] where
  diagram : J ⥤ C
  cocone : Cocone diagram
  universalProperty : Prop

structure ColimitEvidence {C : Type u} [Category C] {J : Type v} [Category J]
    (P : ColimitPackage C J) where
  universalPropertyClosed : P.universalProperty

def ColimitClosed {C : Type u} [Category C] {J : Type v} [Category J]
    (P : ColimitPackage C J) : Prop :=
  P.universalProperty

theorem colimit_closed_from_evidence {C : Type u} [Category C] {J : Type v} [Category J]
    (P : ColimitPackage C J) (E : ColimitEvidence P) : ColimitClosed P :=
  E.universalPropertyClosed

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
