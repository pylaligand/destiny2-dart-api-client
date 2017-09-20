part of destiny2_api.api;

@Entity()
enum DestinyHistoricalStatsDefinitionsPeriodType {
  _0,
  _1,
  _2,
  _3
  
}

class DestinyHistoricalStatsDefinitionsPeriodTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsPeriodType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsPeriodType data) {
    switch(data) {
      case DestinyHistoricalStatsDefinitionsPeriodType._0: return 0;
      case DestinyHistoricalStatsDefinitionsPeriodType._1: return 1;
      case DestinyHistoricalStatsDefinitionsPeriodType._2: return 2;
      case DestinyHistoricalStatsDefinitionsPeriodType._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyHistoricalStatsDefinitionsPeriodType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsPeriodType._0;
      case 1: return DestinyHistoricalStatsDefinitionsPeriodType._1;
      case 2: return DestinyHistoricalStatsDefinitionsPeriodType._2;
      case 3: return DestinyHistoricalStatsDefinitionsPeriodType._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

