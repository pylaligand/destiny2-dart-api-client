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
  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions dLC1 = const DestinyDestinyGameVersions._internal(2);
  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions dLC2 = const DestinyDestinyGameVersions._internal(3);
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
      case 2: return DestinyDestinyGameVersions.dLC1;
      case 3: return DestinyDestinyGameVersions.dLC2;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

