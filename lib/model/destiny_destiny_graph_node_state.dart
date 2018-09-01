part of destiny2_api.api;

@Entity()
class DestinyDestinyGraphNodeState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyGraphNodeState._internal(this.value);

  /// Represents a potential state of an Activity Graph node.
  static const DestinyDestinyGraphNodeState hidden = const DestinyDestinyGraphNodeState._internal(0);
  /// Represents a potential state of an Activity Graph node.
  static const DestinyDestinyGraphNodeState visible = const DestinyDestinyGraphNodeState._internal(1);
  /// Represents a potential state of an Activity Graph node.
  static const DestinyDestinyGraphNodeState teaser = const DestinyDestinyGraphNodeState._internal(2);
  /// Represents a potential state of an Activity Graph node.
  static const DestinyDestinyGraphNodeState incomplete = const DestinyDestinyGraphNodeState._internal(3);
  /// Represents a potential state of an Activity Graph node.
  static const DestinyDestinyGraphNodeState completed = const DestinyDestinyGraphNodeState._internal(4);
}

class DestinyDestinyGraphNodeStateTypeTransformer extends TypeTransformer<DestinyDestinyGraphNodeState> {

  @override
  dynamic encode(DestinyDestinyGraphNodeState data) {
    return data.value;
  }

  @override
  DestinyDestinyGraphNodeState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyGraphNodeState.hidden;
      case 1: return DestinyDestinyGraphNodeState.visible;
      case 2: return DestinyDestinyGraphNodeState.teaser;
      case 3: return DestinyDestinyGraphNodeState.incomplete;
      case 4: return DestinyDestinyGraphNodeState.completed;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

