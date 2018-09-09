part of destiny2_api.api;

@Entity()
class DestinyDestinyPresentationNodeState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyPresentationNodeState._internal(this.value);

  /// I know this doesn't look like a Flags Enumeration right now, but I assure you it is. This is the possible states that a Presentation Node can be in, and it is almost certain that its potential states will increase in the future. So don't treat it like a straight up enumeration.
  static const DestinyDestinyPresentationNodeState none = const DestinyDestinyPresentationNodeState._internal(0);
  /// If this is set, the game recommends that you not show this node. But you know your life, do what you've got to do.
  static const DestinyDestinyPresentationNodeState invisible = const DestinyDestinyPresentationNodeState._internal(1);
}

class DestinyDestinyPresentationNodeStateTypeTransformer extends TypeTransformer<DestinyDestinyPresentationNodeState> {

  @override
  dynamic encode(DestinyDestinyPresentationNodeState data) {
    return data.value;
  }

  @override
  DestinyDestinyPresentationNodeState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyPresentationNodeState.none;
      case 1: return DestinyDestinyPresentationNodeState.invisible;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

