part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsPeriodType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyHistoricalStatsDefinitionsPeriodType._internal(this.value);

  static const DestinyHistoricalStatsDefinitionsPeriodType none = const DestinyHistoricalStatsDefinitionsPeriodType._internal(0);
  static const DestinyHistoricalStatsDefinitionsPeriodType daily = const DestinyHistoricalStatsDefinitionsPeriodType._internal(1);
  static const DestinyHistoricalStatsDefinitionsPeriodType allTime = const DestinyHistoricalStatsDefinitionsPeriodType._internal(2);
  static const DestinyHistoricalStatsDefinitionsPeriodType activity = const DestinyHistoricalStatsDefinitionsPeriodType._internal(3);
}

class DestinyHistoricalStatsDefinitionsPeriodTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsPeriodType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsPeriodType data) {
    return data.value;
  }

  @override
  DestinyHistoricalStatsDefinitionsPeriodType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsPeriodType.none;
      case 1: return DestinyHistoricalStatsDefinitionsPeriodType.daily;
      case 2: return DestinyHistoricalStatsDefinitionsPeriodType.allTime;
      case 3: return DestinyHistoricalStatsDefinitionsPeriodType.activity;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

