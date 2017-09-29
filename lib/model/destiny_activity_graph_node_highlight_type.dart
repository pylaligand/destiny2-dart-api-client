part of destiny2_api.api;

@Entity()
class DestinyActivityGraphNodeHighlightType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyActivityGraphNodeHighlightType._internal(this.value);

  /// The various known UI styles in which an item can be highlighted. It'll be up to you to determine what you want to show based on this highlighting, BNet doesn't have any assets that correspond to these states. And yeah, RiseOfIron and Comet have their own special highlight states. Don't ask me, I can't imagine they're still used.
  static const DestinyActivityGraphNodeHighlightType none = const DestinyActivityGraphNodeHighlightType._internal(0);
  /// The various known UI styles in which an item can be highlighted. It'll be up to you to determine what you want to show based on this highlighting, BNet doesn't have any assets that correspond to these states. And yeah, RiseOfIron and Comet have their own special highlight states. Don't ask me, I can't imagine they're still used.
  static const DestinyActivityGraphNodeHighlightType normal = const DestinyActivityGraphNodeHighlightType._internal(1);
  /// The various known UI styles in which an item can be highlighted. It'll be up to you to determine what you want to show based on this highlighting, BNet doesn't have any assets that correspond to these states. And yeah, RiseOfIron and Comet have their own special highlight states. Don't ask me, I can't imagine they're still used.
  static const DestinyActivityGraphNodeHighlightType hyper = const DestinyActivityGraphNodeHighlightType._internal(2);
  /// The various known UI styles in which an item can be highlighted. It'll be up to you to determine what you want to show based on this highlighting, BNet doesn't have any assets that correspond to these states. And yeah, RiseOfIron and Comet have their own special highlight states. Don't ask me, I can't imagine they're still used.
  static const DestinyActivityGraphNodeHighlightType comet = const DestinyActivityGraphNodeHighlightType._internal(3);
  /// The various known UI styles in which an item can be highlighted. It'll be up to you to determine what you want to show based on this highlighting, BNet doesn't have any assets that correspond to these states. And yeah, RiseOfIron and Comet have their own special highlight states. Don't ask me, I can't imagine they're still used.
  static const DestinyActivityGraphNodeHighlightType riseOfIron = const DestinyActivityGraphNodeHighlightType._internal(4);
}

class DestinyActivityGraphNodeHighlightTypeTypeTransformer extends TypeTransformer<DestinyActivityGraphNodeHighlightType> {

  @override
  dynamic encode(DestinyActivityGraphNodeHighlightType data) {
    return data.value;
  }

  @override
  DestinyActivityGraphNodeHighlightType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyActivityGraphNodeHighlightType.none;
      case 1: return DestinyActivityGraphNodeHighlightType.normal;
      case 2: return DestinyActivityGraphNodeHighlightType.hyper;
      case 3: return DestinyActivityGraphNodeHighlightType.comet;
      case 4: return DestinyActivityGraphNodeHighlightType.riseOfIron;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

