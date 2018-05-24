part of destiny2_api.api;

@Entity()
class FireteamFireteamPublicSearchOption {
  /// The underlying value of this enum member.
  final int value;

  const FireteamFireteamPublicSearchOption._internal(this.value);

  static const FireteamFireteamPublicSearchOption publicAndPrivate = const FireteamFireteamPublicSearchOption._internal(0);
  static const FireteamFireteamPublicSearchOption publicOnly = const FireteamFireteamPublicSearchOption._internal(1);
  static const FireteamFireteamPublicSearchOption privateOnly = const FireteamFireteamPublicSearchOption._internal(2);
}

class FireteamFireteamPublicSearchOptionTypeTransformer extends TypeTransformer<FireteamFireteamPublicSearchOption> {

  @override
  dynamic encode(FireteamFireteamPublicSearchOption data) {
    return data.value;
  }

  @override
  FireteamFireteamPublicSearchOption decode(dynamic data) {
    switch (data) {
      case 0: return FireteamFireteamPublicSearchOption.publicAndPrivate;
      case 1: return FireteamFireteamPublicSearchOption.publicOnly;
      case 2: return FireteamFireteamPublicSearchOption.privateOnly;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

