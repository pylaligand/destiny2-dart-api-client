part of destiny2_api.api;

@Entity()
class DestinyEquippingItemBlockAttributes {
  /// The underlying value of this enum member.
  final int value;

  const DestinyEquippingItemBlockAttributes._internal(this.value);

  static const DestinyEquippingItemBlockAttributes none = const DestinyEquippingItemBlockAttributes._internal(0);
  static const DestinyEquippingItemBlockAttributes equipOnAcquire = const DestinyEquippingItemBlockAttributes._internal(1);
}

class DestinyEquippingItemBlockAttributesTypeTransformer extends TypeTransformer<DestinyEquippingItemBlockAttributes> {

  @override
  dynamic encode(DestinyEquippingItemBlockAttributes data) {
    return data.value;
  }

  @override
  DestinyEquippingItemBlockAttributes decode(dynamic data) {
    switch (data) {
      case 0: return DestinyEquippingItemBlockAttributes.none;
      case 1: return DestinyEquippingItemBlockAttributes.equipOnAcquire;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

