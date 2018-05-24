part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsUnitType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyHistoricalStatsDefinitionsUnitType._internal(this.value);

  static const DestinyHistoricalStatsDefinitionsUnitType none = const DestinyHistoricalStatsDefinitionsUnitType._internal(0);
  /// Indicates the statistic is a simple count of something.
  static const DestinyHistoricalStatsDefinitionsUnitType count = const DestinyHistoricalStatsDefinitionsUnitType._internal(1);
  /// Indicates the statistic is a per game average.
  static const DestinyHistoricalStatsDefinitionsUnitType perGame = const DestinyHistoricalStatsDefinitionsUnitType._internal(2);
  /// Indicates the number of seconds
  static const DestinyHistoricalStatsDefinitionsUnitType seconds = const DestinyHistoricalStatsDefinitionsUnitType._internal(3);
  /// Indicates the number of points earned
  static const DestinyHistoricalStatsDefinitionsUnitType points = const DestinyHistoricalStatsDefinitionsUnitType._internal(4);
  /// Values represents a team ID
  static const DestinyHistoricalStatsDefinitionsUnitType team = const DestinyHistoricalStatsDefinitionsUnitType._internal(5);
  /// Values represents a distance (units to-be-determined)
  static const DestinyHistoricalStatsDefinitionsUnitType distance = const DestinyHistoricalStatsDefinitionsUnitType._internal(6);
  /// Ratio represented as a whole value from 0 to 100.
  static const DestinyHistoricalStatsDefinitionsUnitType percent = const DestinyHistoricalStatsDefinitionsUnitType._internal(7);
  /// Ratio of something, shown with decimal places
  static const DestinyHistoricalStatsDefinitionsUnitType ratio = const DestinyHistoricalStatsDefinitionsUnitType._internal(8);
  /// True or false
  static const DestinyHistoricalStatsDefinitionsUnitType boolean = const DestinyHistoricalStatsDefinitionsUnitType._internal(9);
  /// The stat is actually a weapon type.
  static const DestinyHistoricalStatsDefinitionsUnitType weaponType = const DestinyHistoricalStatsDefinitionsUnitType._internal(10);
  /// Indicates victory, defeat, or something in between.
  static const DestinyHistoricalStatsDefinitionsUnitType standing = const DestinyHistoricalStatsDefinitionsUnitType._internal(11);
  /// Number of milliseconds some event spanned. For example, race time, or lap time.
  static const DestinyHistoricalStatsDefinitionsUnitType milliseconds = const DestinyHistoricalStatsDefinitionsUnitType._internal(12);
  /// The value is a enumeration of the Completion Reason type.
  static const DestinyHistoricalStatsDefinitionsUnitType completionReason = const DestinyHistoricalStatsDefinitionsUnitType._internal(13);
}

class DestinyHistoricalStatsDefinitionsUnitTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsUnitType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsUnitType data) {
    return data.value;
  }

  @override
  DestinyHistoricalStatsDefinitionsUnitType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsUnitType.none;
      case 1: return DestinyHistoricalStatsDefinitionsUnitType.count;
      case 2: return DestinyHistoricalStatsDefinitionsUnitType.perGame;
      case 3: return DestinyHistoricalStatsDefinitionsUnitType.seconds;
      case 4: return DestinyHistoricalStatsDefinitionsUnitType.points;
      case 5: return DestinyHistoricalStatsDefinitionsUnitType.team;
      case 6: return DestinyHistoricalStatsDefinitionsUnitType.distance;
      case 7: return DestinyHistoricalStatsDefinitionsUnitType.percent;
      case 8: return DestinyHistoricalStatsDefinitionsUnitType.ratio;
      case 9: return DestinyHistoricalStatsDefinitionsUnitType.boolean;
      case 10: return DestinyHistoricalStatsDefinitionsUnitType.weaponType;
      case 11: return DestinyHistoricalStatsDefinitionsUnitType.standing;
      case 12: return DestinyHistoricalStatsDefinitionsUnitType.milliseconds;
      case 13: return DestinyHistoricalStatsDefinitionsUnitType.completionReason;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

