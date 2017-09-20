part of destiny2_api.api;

@Entity()
enum DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32,
  _64,
  _128,
  _255
  
}

class DestinyDefinitionsDestinyTalentNodeStepGuardianAttributesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes data) {
    switch(data) {
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._0: return 0;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._1: return 1;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._2: return 2;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._4: return 4;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._8: return 8;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._16: return 16;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._32: return 32;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._64: return 64;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._128: return 128;
      case DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._255: return 255;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._0;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._1;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._2;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._4;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._8;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._16;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._32;
      case 64: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._64;
      case 128: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._128;
      case 255: return DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes._255;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

