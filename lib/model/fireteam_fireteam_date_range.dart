part of destiny2_api.api;

@Entity()
class FireteamFireteamDateRange {
  /// The underlying value of this enum member.
  final int value;

  const FireteamFireteamDateRange._internal(this.value);

  static const FireteamFireteamDateRange all = const FireteamFireteamDateRange._internal(0);
  static const FireteamFireteamDateRange now = const FireteamFireteamDateRange._internal(1);
  static const FireteamFireteamDateRange twentyFourHours = const FireteamFireteamDateRange._internal(2);
  static const FireteamFireteamDateRange fortyEightHours = const FireteamFireteamDateRange._internal(3);
  static const FireteamFireteamDateRange thisWeek = const FireteamFireteamDateRange._internal(4);
}

class FireteamFireteamDateRangeTypeTransformer extends TypeTransformer<FireteamFireteamDateRange> {

  @override
  dynamic encode(FireteamFireteamDateRange data) {
    return data.value;
  }

  @override
  FireteamFireteamDateRange decode(dynamic data) {
    switch (data) {
      case 0: return FireteamFireteamDateRange.all;
      case 1: return FireteamFireteamDateRange.now;
      case 2: return FireteamFireteamDateRange.twentyFourHours;
      case 3: return FireteamFireteamDateRange.fortyEightHours;
      case 4: return FireteamFireteamDateRange.thisWeek;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

