part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeStepImpactEffects {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(this.value);

  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects none = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(0);
  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects armorPiercing = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(1);
  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects ricochet = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(2);
  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects flinch = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(4);
  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects collateralDamage = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(8);
  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects disorient = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(16);
  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects highlightTarget = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(32);
  static const DestinyDefinitionsDestinyTalentNodeStepImpactEffects all = const DestinyDefinitionsDestinyTalentNodeStepImpactEffects._internal(63);
}

class DestinyDefinitionsDestinyTalentNodeStepImpactEffectsTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepImpactEffects> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepImpactEffects data) {
    return data.value;
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepImpactEffects decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.none;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.armorPiercing;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.ricochet;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.flinch;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.collateralDamage;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.disorient;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.highlightTarget;
      case 63: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects.all;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

