part of destiny2_api.api;

@Entity()
enum DestinyDefinitionsDestinyTalentNodeStepImpactEffects {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32,
  _63
  
}

class DestinyDefinitionsDestinyTalentNodeStepImpactEffectsTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyTalentNodeStepImpactEffects> {

  @override
  dynamic encode(DestinyDefinitionsDestinyTalentNodeStepImpactEffects data) {
    switch(data) {
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._0: return 0;
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._1: return 1;
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._2: return 2;
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._4: return 4;
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._8: return 8;
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._16: return 16;
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._32: return 32;
      case DestinyDefinitionsDestinyTalentNodeStepImpactEffects._63: return 63;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDefinitionsDestinyTalentNodeStepImpactEffects decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._0;
      case 1: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._1;
      case 2: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._2;
      case 4: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._4;
      case 8: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._8;
      case 16: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._16;
      case 32: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._32;
      case 63: return DestinyDefinitionsDestinyTalentNodeStepImpactEffects._63;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

