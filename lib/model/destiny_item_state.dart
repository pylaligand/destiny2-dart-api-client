part of destiny2_api.api;

@Entity()
class DestinyItemState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyItemState._internal(this.value);

  /// A flags enumeration where each bit represents a different possible state that the item can be in that may effect how the item is displayed to the user and what actions can be performed against it.
  static const DestinyItemState none = const DestinyItemState._internal(0);
  /// If this bit is set, the item has been "locked" by the user and cannot be deleted. You may want to represent this visually with a "lock" icon.
  static const DestinyItemState locked = const DestinyItemState._internal(1);
  /// If this bit is set, the item is a quest that's being tracked by the user. You may want a visual indicator to show that this is a tracked quest.
  static const DestinyItemState tracked = const DestinyItemState._internal(2);
  /// If this bit is set, the item has a Masterwork plug inserted. This usually coincides with having a special "glowing" effect applied to the item's icon.
  static const DestinyItemState masterwork = const DestinyItemState._internal(4);
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
      case 4: return DestinyItemState.masterwork;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

