part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsDestinyStatsGroupType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(this.value);

  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType none = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(0);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType general = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(1);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType weapons = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(2);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType medals = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(3);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType reservedGroups = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(100);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType leaderboard = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(101);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType activity = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(102);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType uniqueWeapon = const DestinyHistoricalStatsDefinitionsDestinyStatsGroupType._internal(103);
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

