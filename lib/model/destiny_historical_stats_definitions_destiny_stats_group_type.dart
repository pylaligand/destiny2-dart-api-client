part of destiny2_api.api;

@Entity()
enum DestinyHistoricalStatsDefinitionsDestinyStatsGroupType {
  _0,
  _1,
  _2,
  _3,
  _100,
  _101,
  _102,
  _103,
  _104
  
}

class DestinyHistoricalStatsDefinitionsDestinyStatsGroupTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsDestinyStatsGroupType data) {
    switch(data) {
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._0: return 0;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._1: return 1;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._2: return 2;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._3: return 3;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._100: return 100;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._101: return 101;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._102: return 102;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._103: return 103;
      case DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._104: return 104;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyHistoricalStatsDefinitionsDestinyStatsGroupType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._0;
      case 1: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._1;
      case 2: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._2;
      case 3: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._3;
      case 100: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._100;
      case 101: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._101;
      case 102: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._102;
      case 103: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._103;
      case 104: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._104;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

