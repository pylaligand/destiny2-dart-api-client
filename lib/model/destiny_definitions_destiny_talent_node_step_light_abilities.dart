part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeStepLightAbilities {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(this.value);

  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities none = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(0);
  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities grenades = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(1);
  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities melee = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(2);
  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities movementModes = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(4);
  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities orbs = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(8);
  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities superEnergy = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(16);
  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities superMods = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(32);
  static const DestinyDefinitionsDestinyTalentNodeStepLightAbilities all = const DestinyDefinitionsDestinyTalentNodeStepLightAbilities._internal(63);
}

class DestinyDefinitionsDestinyTalentNodeStepLightAbilitiesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepLightAbilities> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepLightAbilities data) {
    return data.value;
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepLightAbilities decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.none;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.grenades;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.melee;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.movementModes;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.orbs;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.superEnergy;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.superMods;
      case 63: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities.all;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

