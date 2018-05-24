part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsDestinyStatsGroupType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(this.value);

  /// If the enum value is > 100, it is a \"special\" group that cannot be queried for directly (special cases apply to when they are returned, and are not relevant in general cases)
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType none = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(0);
  /// If the enum value is > 100, it is a \"special\" group that cannot be queried for directly (special cases apply to when they are returned, and are not relevant in general cases)
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType general = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(1);
  /// If the enum value is > 100, it is a \"special\" group that cannot be queried for directly (special cases apply to when they are returned, and are not relevant in general cases)
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType weapons = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(2);
  /// If the enum value is > 100, it is a \"special\" group that cannot be queried for directly (special cases apply to when they are returned, and are not relevant in general cases)
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType medals = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(3);
  /// This is purely to serve as the dividing line between filterable and un-filterable groups. Below this number is a group you can pass as a filter. Above it are groups used in very specific circumstances and not relevant for filtering.
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType reservedGroups = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(100);
  /// Only applicable while generating leaderboards.
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType leaderboard = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(101);
  /// These will *only* be consumed by GetAggregateStatsByActivity
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType activity = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(102);
  /// These are only consumed and returned by GetUniqueWeaponHistory
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType uniqueWeapon = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(103);
  /// If the enum value is > 100, it is a \"special\" group that cannot be queried for directly (special cases apply to when they are returned, and are not relevant in general cases)
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType internal = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(104);
}

class DestinyHistoricalStatsDefinitionsDestinyStatsGroupTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsDestinyStatsGroupType data) {
    return data.value;
  }

  @override
  DestinyHistoricalStatsDefinitionsDestinyStatsGroupType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.none;
      case 1: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.general;
      case 2: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.weapons;
      case 3: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.medals;
      case 100: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.reservedGroups;
      case 101: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.leaderboard;
      case 102: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.activity;
      case 103: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.uniqueWeapon;
      case 104: return DestinyHistoricalStatsDefinitionsDestinyStatsGroupType.internal;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

