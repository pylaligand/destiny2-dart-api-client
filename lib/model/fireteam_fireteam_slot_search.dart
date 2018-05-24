part of destiny2_api.api;

@Entity()
class FireteamFireteamSlotSearch {
  /// The underlying value of this enum member.
  final int value;

  const FireteamFireteamSlotSearch._internal(this.value);

  static const FireteamFireteamSlotSearch noSlotRestriction = const FireteamFireteamSlotSearch._internal(0);
  static const FireteamFireteamSlotSearch hasOpenPlayerSlots = const FireteamFireteamSlotSearch._internal(1);
  static const FireteamFireteamSlotSearch hasOpenPlayerOrAltSlots = const FireteamFireteamSlotSearch._internal(2);
}

class FireteamFireteamSlotSearchTypeTransformer extends TypeTransformer<FireteamFireteamSlotSearch> {

  @override
  dynamic encode(FireteamFireteamSlotSearch data) {
    return data.value;
  }

  @override
  FireteamFireteamSlotSearch decode(dynamic data) {
    switch (data) {
      case 0: return FireteamFireteamSlotSearch.noSlotRestriction;
      case 1: return FireteamFireteamSlotSearch.hasOpenPlayerSlots;
      case 2: return FireteamFireteamSlotSearch.hasOpenPlayerOrAltSlots;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

