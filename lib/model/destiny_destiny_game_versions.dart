part of destiny2_api.api;

@Entity()
class DestinyDestinyGameVersions {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyGameVersions._internal(this.value);

  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions none = const DestinyDestinyGameVersions._internal(0);
  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions destiny2 = const DestinyDestinyGameVersions._internal(1);
}

class DestinyDestinyGameVersionsTypeTransformer extends TypeTransformer<DestinyDestinyGameVersions> {

  @override
  dynamic encode(DestinyDestinyGameVersions data) {
    return data.value;
  }

  @override
  DestinyDestinyGameVersions decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyGameVersions.none;
      case 1: return DestinyDestinyGameVersions.destiny2;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

