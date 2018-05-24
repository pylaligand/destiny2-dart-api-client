part of destiny2_api.api;

@Entity()
class DestinyDestinyStatCategory {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyStatCategory._internal(this.value);

  /// At last, stats have categories. Use this for whatever purpose you might wish.
  static const DestinyDestinyStatCategory gameplay = const DestinyDestinyStatCategory._internal(0);
  /// At last, stats have categories. Use this for whatever purpose you might wish.
  static const DestinyDestinyStatCategory weapon = const DestinyDestinyStatCategory._internal(1);
  /// At last, stats have categories. Use this for whatever purpose you might wish.
  static const DestinyDestinyStatCategory defense = const DestinyDestinyStatCategory._internal(2);
  /// At last, stats have categories. Use this for whatever purpose you might wish.
  static const DestinyDestinyStatCategory primary = const DestinyDestinyStatCategory._internal(3);
}

class DestinyDestinyStatCategoryTypeTransformer extends TypeTransformer<DestinyDestinyStatCategory> {

  @override
  dynamic encode(DestinyDestinyStatCategory data) {
    return data.value;
  }

  @override
  DestinyDestinyStatCategory decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyStatCategory.gameplay;
      case 1: return DestinyDestinyStatCategory.weapon;
      case 2: return DestinyDestinyStatCategory.defense;
      case 3: return DestinyDestinyStatCategory.primary;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

