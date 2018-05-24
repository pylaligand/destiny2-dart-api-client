part of destiny2_api.api;

@Entity()
class FireteamFireteamPlatformInviteResult {
  /// The underlying value of this enum member.
  final int value;

  const FireteamFireteamPlatformInviteResult._internal(this.value);

  static const FireteamFireteamPlatformInviteResult none = const FireteamFireteamPlatformInviteResult._internal(0);
  static const FireteamFireteamPlatformInviteResult success = const FireteamFireteamPlatformInviteResult._internal(1);
  static const FireteamFireteamPlatformInviteResult alreadyInFireteam = const FireteamFireteamPlatformInviteResult._internal(2);
  static const FireteamFireteamPlatformInviteResult throttled = const FireteamFireteamPlatformInviteResult._internal(3);
  static const FireteamFireteamPlatformInviteResult serviceError = const FireteamFireteamPlatformInviteResult._internal(4);
}

class FireteamFireteamPlatformInviteResultTypeTransformer extends TypeTransformer<FireteamFireteamPlatformInviteResult> {

  @override
  dynamic encode(FireteamFireteamPlatformInviteResult data) {
    return data.value;
  }

  @override
  FireteamFireteamPlatformInviteResult decode(dynamic data) {
    switch (data) {
      case 0: return FireteamFireteamPlatformInviteResult.none;
      case 1: return FireteamFireteamPlatformInviteResult.success;
      case 2: return FireteamFireteamPlatformInviteResult.alreadyInFireteam;
      case 3: return FireteamFireteamPlatformInviteResult.throttled;
      case 4: return FireteamFireteamPlatformInviteResult.serviceError;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

