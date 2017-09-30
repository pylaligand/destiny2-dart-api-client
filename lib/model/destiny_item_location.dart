part of destiny2_api.api;

@Entity()
class DestinyItemLocation {
  /// The underlying value of this enum member.
  final int value;

  const DestinyItemLocation._internal(this.value);

  static const DestinyItemLocation unknown = const DestinyItemLocation._internal(0);
  static const DestinyItemLocation inventory = const DestinyItemLocation._internal(1);
  static const DestinyItemLocation vault = const DestinyItemLocation._internal(2);
  static const DestinyItemLocation vendor = const DestinyItemLocation._internal(3);
  static const DestinyItemLocation postmaster = const DestinyItemLocation._internal(4);
}

class DestinyItemLocationTypeTransformer extends TypeTransformer<DestinyItemLocation> {

  @override
  dynamic encode(DestinyItemLocation data) {
    return data.value;
  }

  @override
  DestinyItemLocation decode(dynamic data) {
    switch (data) {
      case 0: return DestinyItemLocation.unknown;
      case 1: return DestinyItemLocation.inventory;
      case 2: return DestinyItemLocation.vault;
      case 3: return DestinyItemLocation.vendor;
      case 4: return DestinyItemLocation.postmaster;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

