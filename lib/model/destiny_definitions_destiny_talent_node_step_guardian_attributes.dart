part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(this.value);

  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes none = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(0);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes stats = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(1);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes shields = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(2);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes health = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(4);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes revive = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(8);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes aimUnderFire = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(16);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes radar = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(32);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes invisibility = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(64);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes reputations = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(128);
  static const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes all = const DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._internal(255);
}

class DestinyDefinitionsDestinyTalentNodeStepGuardianAttributesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes data) {
    return data.value;
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.none;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.stats;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.shields;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.health;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.revive;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.aimUnderFire;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.radar;
      case 64: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.invisibility;
      case 128: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.reputations;
      case 255: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes.all;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

