part of destiny2_api.api;

@Entity()
enum DestinyDefinitionsDestinyRewardSourceCategory {
  _0,
  _1,
  _2,
  _3
  
}

class DestinyDefinitionsDestinyRewardSourceCategoryTypeTransformer extends TypeTransformer<DestinyDefinitionsDestinyRewardSourceCategory> {

  @override
  dynamic encode(DestinyDefinitionsDestinyRewardSourceCategory data) {
    switch(data) {
      case DestinyDefinitionsDestinyRewardSourceCategory._0: return 0;
      case DestinyDefinitionsDestinyRewardSourceCategory._1: return 1;
      case DestinyDefinitionsDestinyRewardSourceCategory._2: return 2;
      case DestinyDefinitionsDestinyRewardSourceCategory._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDefinitionsDestinyRewardSourceCategory decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsDestinyRewardSourceCategory._0;
      case 1: return DestinyDefinitionsDestinyRewardSourceCategory._1;
      case 2: return DestinyDefinitionsDestinyRewardSourceCategory._2;
      case 3: return DestinyDefinitionsDestinyRewardSourceCategory._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

