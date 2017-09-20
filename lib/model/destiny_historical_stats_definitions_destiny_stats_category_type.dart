part of destiny2_api.api;

@Entity()
enum DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6,
  _7,
  _8,
  _9,
  _10,
  _11,
  _12,
  _13,
  _14,
  _15
  
}

class DestinyHistoricalStatsDefinitionsDestinyStatsCategoryTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType data) {
    switch(data) {
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._0: return 0;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._1: return 1;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._2: return 2;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._3: return 3;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._4: return 4;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._5: return 5;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._6: return 6;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._7: return 7;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._8: return 8;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._9: return 9;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._10: return 10;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._11: return 11;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._12: return 12;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._13: return 13;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._14: return 14;
      case DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._15: return 15;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._0;
      case 1: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._1;
      case 2: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._2;
      case 3: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._3;
      case 4: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._4;
      case 5: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._5;
      case 6: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._6;
      case 7: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._7;
      case 8: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._8;
      case 9: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._9;
      case 10: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._10;
      case 11: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._11;
      case 12: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._12;
      case 13: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._13;
      case 14: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._14;
      case 15: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._15;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

