part of destiny2_api.api;

@Entity()
class FireteamFireteamPlatform {
  /// The underlying value of this enum member.
  final int value;

  const FireteamFireteamPlatform._internal(this.value);

  static const FireteamFireteamPlatform unknown = const FireteamFireteamPlatform._internal(0);
  static const FireteamFireteamPlatform playstation4 = const FireteamFireteamPlatform._internal(1);
  static const FireteamFireteamPlatform xboxOne = const FireteamFireteamPlatform._internal(2);
  static const FireteamFireteamPlatform blizzard = const FireteamFireteamPlatform._internal(3);
}

class FireteamFireteamPlatformTypeTransformer extends TypeTransformer<FireteamFireteamPlatform> {

  @override
  dynamic encode(FireteamFireteamPlatform data) {
    return data.value;
  }

  @override
  FireteamFireteamPlatform decode(dynamic data) {
    switch (data) {
      case 0: return FireteamFireteamPlatform.unknown;
      case 1: return FireteamFireteamPlatform.playstation4;
      case 2: return FireteamFireteamPlatform.xboxOne;
      case 3: return FireteamFireteamPlatform.blizzard;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

