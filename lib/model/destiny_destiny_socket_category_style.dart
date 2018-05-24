part of destiny2_api.api;

@Entity()
class DestinyDestinySocketCategoryStyle {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinySocketCategoryStyle._internal(this.value);

  /// Represents the possible and known UI styles used by the game for rendering Socket Categories.
  static const DestinyDestinySocketCategoryStyle unknown = const DestinyDestinySocketCategoryStyle._internal(0);
  /// Represents the possible and known UI styles used by the game for rendering Socket Categories.
  static const DestinyDestinySocketCategoryStyle reusable = const DestinyDestinySocketCategoryStyle._internal(1);
  /// Represents the possible and known UI styles used by the game for rendering Socket Categories.
  static const DestinyDestinySocketCategoryStyle consumable = const DestinyDestinySocketCategoryStyle._internal(2);
  /// Represents the possible and known UI styles used by the game for rendering Socket Categories.
  static const DestinyDestinySocketCategoryStyle unlockable = const DestinyDestinySocketCategoryStyle._internal(3);
  /// Represents the possible and known UI styles used by the game for rendering Socket Categories.
  static const DestinyDestinySocketCategoryStyle intrinsic = const DestinyDestinySocketCategoryStyle._internal(4);
}

class DestinyDestinySocketCategoryStyleTypeTransformer extends TypeTransformer<DestinyDestinySocketCategoryStyle> {

  @override
  dynamic encode(DestinyDestinySocketCategoryStyle data) {
    return data.value;
  }

  @override
  DestinyDestinySocketCategoryStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinySocketCategoryStyle.unknown;
      case 1: return DestinyDestinySocketCategoryStyle.reusable;
      case 2: return DestinyDestinySocketCategoryStyle.consumable;
      case 3: return DestinyDestinySocketCategoryStyle.unlockable;
      case 4: return DestinyDestinySocketCategoryStyle.intrinsic;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

