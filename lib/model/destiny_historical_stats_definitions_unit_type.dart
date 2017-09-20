part of destiny2_api.api;

@Entity()
enum DestinyHistoricalStatsDefinitionsUnitType {
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
  _12
  
}

class DestinyHistoricalStatsDefinitionsUnitTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsUnitType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsUnitType data) {
    switch(data) {
      case DestinyHistoricalStatsDefinitionsUnitType._0: return 0;
      case DestinyHistoricalStatsDefinitionsUnitType._1: return 1;
      case DestinyHistoricalStatsDefinitionsUnitType._2: return 2;
      case DestinyHistoricalStatsDefinitionsUnitType._3: return 3;
      case DestinyHistoricalStatsDefinitionsUnitType._4: return 4;
      case DestinyHistoricalStatsDefinitionsUnitType._5: return 5;
      case DestinyHistoricalStatsDefinitionsUnitType._6: return 6;
      case DestinyHistoricalStatsDefinitionsUnitType._7: return 7;
      case DestinyHistoricalStatsDefinitionsUnitType._8: return 8;
      case DestinyHistoricalStatsDefinitionsUnitType._9: return 9;
      case DestinyHistoricalStatsDefinitionsUnitType._10: return 10;
      case DestinyHistoricalStatsDefinitionsUnitType._11: return 11;
      case DestinyHistoricalStatsDefinitionsUnitType._12: return 12;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyHistoricalStatsDefinitionsUnitType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsUnitType._0;
      case 1: return DestinyHistoricalStatsDefinitionsUnitType._1;
      case 2: return DestinyHistoricalStatsDefinitionsUnitType._2;
      case 3: return DestinyHistoricalStatsDefinitionsUnitType._3;
      case 4: return DestinyHistoricalStatsDefinitionsUnitType._4;
      case 5: return DestinyHistoricalStatsDefinitionsUnitType._5;
      case 6: return DestinyHistoricalStatsDefinitionsUnitType._6;
      case 7: return DestinyHistoricalStatsDefinitionsUnitType._7;
      case 8: return DestinyHistoricalStatsDefinitionsUnitType._8;
      case 9: return DestinyHistoricalStatsDefinitionsUnitType._9;
      case 10: return DestinyHistoricalStatsDefinitionsUnitType._10;
      case 11: return DestinyHistoricalStatsDefinitionsUnitType._11;
      case 12: return DestinyHistoricalStatsDefinitionsUnitType._12;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

