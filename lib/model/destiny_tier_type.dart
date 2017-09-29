part of destiny2_api.api;

@Entity()
class DestinyTierType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyTierType._internal(this.value);

  static const DestinyTierType unknown = const DestinyTierType._internal(0);
  static const DestinyTierType currency = const DestinyTierType._internal(1);
  static const DestinyTierType basic = const DestinyTierType._internal(2);
  static const DestinyTierType common = const DestinyTierType._internal(3);
  static const DestinyTierType rare = const DestinyTierType._internal(4);
  static const DestinyTierType superior = const DestinyTierType._internal(5);
  static const DestinyTierType exotic = const DestinyTierType._internal(6);
}

class DestinyTierTypeTypeTransformer extends TypeTransformer<DestinyTierType> {

  @override
  dynamic encode(DestinyTierType data) {
    return data.value;
  }

  @override
  DestinyTierType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyTierType.unknown;
      case 1: return DestinyTierType.currency;
      case 2: return DestinyTierType.basic;
      case 3: return DestinyTierType.common;
      case 4: return DestinyTierType.rare;
      case 5: return DestinyTierType.superior;
      case 6: return DestinyTierType.exotic;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

