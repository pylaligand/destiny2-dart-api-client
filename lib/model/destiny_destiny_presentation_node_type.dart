part of destiny2_api.api;

@Entity()
class DestinyDestinyPresentationNodeType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyPresentationNodeType._internal(this.value);

  static const DestinyDestinyPresentationNodeType default_ = const DestinyDestinyPresentationNodeType._internal(0);
  static const DestinyDestinyPresentationNodeType category = const DestinyDestinyPresentationNodeType._internal(1);
  static const DestinyDestinyPresentationNodeType collectibles = const DestinyDestinyPresentationNodeType._internal(2);
  static const DestinyDestinyPresentationNodeType records = const DestinyDestinyPresentationNodeType._internal(3);
}

class DestinyDestinyPresentationNodeTypeTypeTransformer extends TypeTransformer<DestinyDestinyPresentationNodeType> {

  @override
  dynamic encode(DestinyDestinyPresentationNodeType data) {
    return data.value;
  }

  @override
  DestinyDestinyPresentationNodeType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyPresentationNodeType.default_;
      case 1: return DestinyDestinyPresentationNodeType.category;
      case 2: return DestinyDestinyPresentationNodeType.collectibles;
      case 3: return DestinyDestinyPresentationNodeType.records;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

