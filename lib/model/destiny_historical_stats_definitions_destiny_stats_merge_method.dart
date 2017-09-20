part of destiny2_api.api;

@Entity()
enum DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod {
  _0,
  _1,
  _2
  
}

class DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethodTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod data) {
    switch(data) {
      case DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._0: return 0;
      case DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._1: return 1;
      case DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._0;
      case 1: return DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._1;
      case 2: return DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

