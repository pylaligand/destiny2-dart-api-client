part of destiny2_api.api;

@Entity()
enum DestinyDefinitionsDestinyTalentNodeStepDamageTypes {
  _0,
  _1,
  _2,
  _4,
  _8,
  _15
  
}

class DestinyDefinitionsDestinyTalentNodeStepDamageTypesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepDamageTypes> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepDamageTypes data) {
    switch(data) {
      case DestinyDefinitionsDestinyTalentNodeStepDamageTypes._0: return 0;
      case DestinyDefinitionsDestinyTalentNodeStepDamageTypes._1: return 1;
      case DestinyDefinitionsDestinyTalentNodeStepDamageTypes._2: return 2;
      case DestinyDefinitionsDestinyTalentNodeStepDamageTypes._4: return 4;
      case DestinyDefinitionsDestinyTalentNodeStepDamageTypes._8: return 8;
      case DestinyDefinitionsDestinyTalentNodeStepDamageTypes._15: return 15;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepDamageTypes decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes._0;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes._1;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes._2;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes._4;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes._8;
      case 15: return DestinyDefinitionsDestinyTalentNodeStepDamageTypes._15;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

