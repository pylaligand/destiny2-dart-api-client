part of destiny2_api.api;

@Entity()
class FireteamFireteamActivityType {
  /// The underlying value of this enum member.
  final int value;

  const FireteamFireteamActivityType._internal(this.value);

  static const FireteamFireteamActivityType all = const FireteamFireteamActivityType._internal(0);
  static const FireteamFireteamActivityType raid = const FireteamFireteamActivityType._internal(1);
  static const FireteamFireteamActivityType crucible = const FireteamFireteamActivityType._internal(2);
  static const FireteamFireteamActivityType trials = const FireteamFireteamActivityType._internal(3);
  static const FireteamFireteamActivityType nightfall = const FireteamFireteamActivityType._internal(4);
  static const FireteamFireteamActivityType anything = const FireteamFireteamActivityType._internal(5);
}

class FireteamFireteamActivityTypeTypeTransformer extends TypeTransformer<FireteamFireteamActivityType> {

  @override
  dynamic encode(FireteamFireteamActivityType data) {
    return data.value;
  }

  @override
  FireteamFireteamActivityType decode(dynamic data) {
    switch (data) {
      case 0: return FireteamFireteamActivityType.all;
      case 1: return FireteamFireteamActivityType.raid;
      case 2: return FireteamFireteamActivityType.crucible;
      case 3: return FireteamFireteamActivityType.trials;
      case 4: return FireteamFireteamActivityType.nightfall;
      case 5: return FireteamFireteamActivityType.anything;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

