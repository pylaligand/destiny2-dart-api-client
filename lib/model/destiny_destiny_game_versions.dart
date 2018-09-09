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
  static const DestinyDestinyGameVersions dropout = const DestinyDestinyGameVersions._internal(3);
  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions dLC2 = const DestinyDestinyGameVersions._internal(4);
  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions yearOne = const DestinyDestinyGameVersions._internal(7);
  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions forsaken = const DestinyDestinyGameVersions._internal(8);
  /// A flags enumeration indicating the versions of the game that a given user has purchased.
  static const DestinyDestinyGameVersions allOfTheAbove = const DestinyDestinyGameVersions._internal(15);
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
      case 3: return DestinyDestinyGameVersions.dropout;
      case 4: return DestinyDestinyGameVersions.dLC2;
      case 7: return DestinyDestinyGameVersions.yearOne;
      case 8: return DestinyDestinyGameVersions.forsaken;
      case 15: return DestinyDestinyGameVersions.allOfTheAbove;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

