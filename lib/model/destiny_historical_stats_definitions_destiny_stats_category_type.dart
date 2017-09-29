part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(this.value);

  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType none = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(0);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType kills = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(1);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType assists = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(2);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType deaths = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(3);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType criticals = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(4);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType kDa = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(5);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType kD = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(6);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType score = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(7);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType entered = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(8);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType timePlayed = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(9);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType medalWins = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(10);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType medalGame = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(11);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType medalSpecialKills = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(12);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType medalSprees = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(13);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType medalMultiKills = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(14);
  static const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType medalAbilities = const DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType._internal(15);
}

class DestinyHistoricalStatsDefinitionsDestinyStatsCategoryTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType data) {
    return data.value;
  }

  @override
  DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.none;
      case 1: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.kills;
      case 2: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.assists;
      case 3: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.deaths;
      case 4: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.criticals;
      case 5: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.kDa;
      case 6: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.kD;
      case 7: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.score;
      case 8: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.entered;
      case 9: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.timePlayed;
      case 10: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.medalWins;
      case 11: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.medalGame;
      case 12: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.medalSpecialKills;
      case 13: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.medalSprees;
      case 14: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.medalMultiKills;
      case 15: return DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType.medalAbilities;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

