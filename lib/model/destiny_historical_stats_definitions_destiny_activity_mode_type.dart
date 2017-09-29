part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDefinitionsDestinyActivityModeType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(this.value);

  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType none = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(0);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType story = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(2);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType strike = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(3);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType raid = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(4);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType allPvP = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(5);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType patrol = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(6);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType allPvE = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(7);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved9 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(9);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType control = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(10);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved11 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(11);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType clash = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(12);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved13 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(13);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved15 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(15);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType nightfall = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(16);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType heroicNightfall = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(17);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType allStrikes = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(18);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType ironBanner = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(19);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved20 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(20);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved21 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(21);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved22 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(22);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved24 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(24);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved25 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(25);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved26 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(26);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved27 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(27);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved28 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(28);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved29 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(29);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved30 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(30);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType supremacy = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(31);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType reserved32 = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(32);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType survival = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(37);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType countdown = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(38);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType trialsOfTheNine = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(39);
  static const DestinyHistoricalStatsDefinitionsDestinyActivityModeType social = const DestinyHistoricalStatsDefinitionsDestinyActivityModeType._internal(40);
}

class DestinyHistoricalStatsDefinitionsDestinyActivityModeTypeTypeTransformer extends TypeTransformer<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> {

  @override
  dynamic encode(DestinyHistoricalStatsDefinitionsDestinyActivityModeType data) {
    return data.value;
  }

  @override
  DestinyHistoricalStatsDefinitionsDestinyActivityModeType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.none;
      case 2: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.story;
      case 3: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.strike;
      case 4: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.raid;
      case 5: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.allPvP;
      case 6: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.patrol;
      case 7: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.allPvE;
      case 9: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved9;
      case 10: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.control;
      case 11: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved11;
      case 12: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.clash;
      case 13: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved13;
      case 15: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved15;
      case 16: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.nightfall;
      case 17: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.heroicNightfall;
      case 18: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.allStrikes;
      case 19: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.ironBanner;
      case 20: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved20;
      case 21: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved21;
      case 22: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved22;
      case 24: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved24;
      case 25: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved25;
      case 26: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved26;
      case 27: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved27;
      case 28: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved28;
      case 29: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved29;
      case 30: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved30;
      case 31: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.supremacy;
      case 32: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.reserved32;
      case 37: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.survival;
      case 38: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.countdown;
      case 39: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.trialsOfTheNine;
      case 40: return DestinyHistoricalStatsDefinitionsDestinyActivityModeType.social;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

