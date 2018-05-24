part of destiny2_api.api;

@Entity()
class DestinyPlugUiStyles {
  /// The underlying value of this enum member.
  final int value;

  const DestinyPlugUiStyles._internal(this.value);

  /// If the plug has a specific custom style, this enumeration will represent that style/those styles.
  static const DestinyPlugUiStyles none = const DestinyPlugUiStyles._internal(0);
  /// If the plug has a specific custom style, this enumeration will represent that style/those styles.
  static const DestinyPlugUiStyles masterwork = const DestinyPlugUiStyles._internal(1);
}

class DestinyPlugUiStylesTypeTransformer extends TypeTransformer<DestinyPlugUiStyles> {

  @override
  dynamic encode(DestinyPlugUiStyles data) {
    return data.value;
  }

  @override
  DestinyPlugUiStyles decode(dynamic data) {
    switch (data) {
      case 0: return DestinyPlugUiStyles.none;
      case 1: return DestinyPlugUiStyles.masterwork;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

