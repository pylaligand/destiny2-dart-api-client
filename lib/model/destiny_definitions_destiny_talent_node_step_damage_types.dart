part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeStepDamageTypes {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDefinitionsDestinyTalentNodeStepDamageTypes._internal(this.value);

  static const DestinyDefinitionsDestinyTalentNodeStepDamageTypes none = const DestinyDefinitionsDestinyTalentNodeStepDamageTypes._internal(0);
  static const DestinyDefinitionsDestinyTalentNodeStepDamageTypes kinetic = const DestinyDefinitionsDestinyTalentNodeStepDamageTypes._internal(1);
  static const DestinyDefinitionsDestinyTalentNodeStepDamageTypes arc = const DestinyDefinitionsDestinyTalentNodeStepDamageTypes._internal(2);
  static const DestinyDefinitionsDestinyTalentNodeStepDamageTypes solar = const DestinyDefinitionsDestinyTalentNodeStepDamageTypes._internal(4);
  static const DestinyDefinitionsDestinyTalentNodeStepDamageTypes void_ = const DestinyDefinitionsDestinyTalentNodeStepDamageTypes._internal(8);
  static const DestinyDefinitionsDestinyTalentNodeStepDamageTypes all = const DestinyDefinitionsDestinyTalentNodeStepDamageTypes._internal(15);
}

class DestinyDefinitionsDestinyTalentNodeStepDamageTypesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepDamageTypes> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepDamageTypes data) {
    return data.value;
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepDamageTypes decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes.none;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes.kinetic;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes.arc;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes.solar;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes.void_;
      case 15: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes.all;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

