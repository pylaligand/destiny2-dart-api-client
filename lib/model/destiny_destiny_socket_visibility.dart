part of destiny2_api.api;

@Entity()
class DestinyDestinySocketVisibility {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinySocketVisibility._internal(this.value);

  static const DestinyDestinySocketVisibility visible = const DestinyDestinySocketVisibility._internal(0);
  static const DestinyDestinySocketVisibility hidden = const DestinyDestinySocketVisibility._internal(1);
  static const DestinyDestinySocketVisibility hiddenWhenEmpty = const DestinyDestinySocketVisibility._internal(2);
}

class DestinyDestinySocketVisibilityTypeTransformer extends TypeTransformer<DestinyDestinySocketVisibility> {

  @override
  dynamic encode(DestinyDestinySocketVisibility data) {
    return data.value;
  }

  @override
  DestinyDestinySocketVisibility decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinySocketVisibility.visible;
      case 1: return DestinyDestinySocketVisibility.hidden;
      case 2: return DestinyDestinySocketVisibility.hiddenWhenEmpty;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

