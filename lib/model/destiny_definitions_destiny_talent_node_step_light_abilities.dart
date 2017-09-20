part of destiny2_api.api;

@Entity()
enum DestinyDefinitionsDestinyTalentNodeStepLightAbilities {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32,
  _63
  
}

class DestinyDefinitionsDestinyTalentNodeStepLightAbilitiesTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepLightAbilities> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepLightAbilities data) {
    switch(data) {
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._0: return 0;
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._1: return 1;
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._2: return 2;
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._4: return 4;
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._8: return 8;
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._16: return 16;
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._32: return 32;
      case DestinyDefinitionsDestinyTalentNodeStepLightAbilities._63: return 63;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepLightAbilities decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._0;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._1;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._2;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._4;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._8;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._16;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._32;
      case 63: return DestinyDefinitionsDestinyTalentNodeStepLightAbilities._63;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

