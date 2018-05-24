part of destiny2_api.api;

@Entity()
class DestinyAdvancedAwaUserSelection {
  /// The underlying value of this enum member.
  final int value;

  const DestinyAdvancedAwaUserSelection._internal(this.value);

  static const DestinyAdvancedAwaUserSelection none = const DestinyAdvancedAwaUserSelection._internal(0);
  static const DestinyAdvancedAwaUserSelection rejected = const DestinyAdvancedAwaUserSelection._internal(1);
  static const DestinyAdvancedAwaUserSelection approved = const DestinyAdvancedAwaUserSelection._internal(2);
}

class DestinyAdvancedAwaUserSelectionTypeTransformer extends TypeTransformer<DestinyAdvancedAwaUserSelection> {

  @override
  dynamic encode(DestinyAdvancedAwaUserSelection data) {
    return data.value;
  }

  @override
  DestinyAdvancedAwaUserSelection decode(dynamic data) {
    switch (data) {
      case 0: return DestinyAdvancedAwaUserSelection.none;
      case 1: return DestinyAdvancedAwaUserSelection.rejected;
      case 2: return DestinyAdvancedAwaUserSelection.approved;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

