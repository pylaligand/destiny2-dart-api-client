part of destiny2_api.api;

@Entity()
class DestinyDamageType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDamageType._internal(this.value);

  static const DestinyDamageType none = const DestinyDamageType._internal(0);
  static const DestinyDamageType kinetic = const DestinyDamageType._internal(1);
  static const DestinyDamageType arc = const DestinyDamageType._internal(2);
  static const DestinyDamageType thermal = const DestinyDamageType._internal(3);
  static const DestinyDamageType void_ = const DestinyDamageType._internal(4);
  static const DestinyDamageType raid = const DestinyDamageType._internal(5);
}

class DestinyDamageTypeTypeTransformer extends TypeTransformer<DestinyDamageType> {

  @override
  dynamic encode(DestinyDamageType data) {
    return data.value;
  }

  @override
  DestinyDamageType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDamageType.none;
      case 1: return DestinyDamageType.kinetic;
      case 2: return DestinyDamageType.arc;
      case 3: return DestinyDamageType.thermal;
      case 4: return DestinyDamageType.void_;
      case 5: return DestinyDamageType.raid;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

