part of destiny2_api.api;

@Entity()
class DestinyItemState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyItemState._internal(this.value);

  static const DestinyItemState none = const DestinyItemState._internal(0);
  static const DestinyItemState locked = const DestinyItemState._internal(1);
  static const DestinyItemState tracked = const DestinyItemState._internal(2);
}

class DestinyItemStateTypeTransformer extends TypeTransformer<DestinyItemState> {

  @override
  dynamic encode(DestinyItemState data) {
    return data.value;
  }

  @override
  DestinyItemState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyItemState.none;
      case 1: return DestinyItemState.locked;
      case 2: return DestinyItemState.tracked;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

