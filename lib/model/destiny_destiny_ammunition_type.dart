part of destiny2_api.api;

@Entity()
class DestinyDestinyAmmunitionType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyAmmunitionType._internal(this.value);

  static const DestinyDestinyAmmunitionType none = const DestinyDestinyAmmunitionType._internal(0);
  static const DestinyDestinyAmmunitionType primary = const DestinyDestinyAmmunitionType._internal(1);
  static const DestinyDestinyAmmunitionType special = const DestinyDestinyAmmunitionType._internal(2);
  static const DestinyDestinyAmmunitionType heavy = const DestinyDestinyAmmunitionType._internal(3);
  static const DestinyDestinyAmmunitionType unknown = const DestinyDestinyAmmunitionType._internal(4);
}

class DestinyDestinyAmmunitionTypeTypeTransformer extends TypeTransformer<DestinyDestinyAmmunitionType> {

  @override
  dynamic encode(DestinyDestinyAmmunitionType data) {
    return data.value;
  }

  @override
  DestinyDestinyAmmunitionType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyAmmunitionType.none;
      case 1: return DestinyDestinyAmmunitionType.primary;
      case 2: return DestinyDestinyAmmunitionType.special;
      case 3: return DestinyDestinyAmmunitionType.heavy;
      case 4: return DestinyDestinyAmmunitionType.unknown;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

