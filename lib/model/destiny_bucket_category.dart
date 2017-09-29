part of destiny2_api.api;

@Entity()
class DestinyBucketCategory {
  /// The underlying value of this enum member.
  final int value;

  const DestinyBucketCategory._internal(this.value);

  static const DestinyBucketCategory invisible = const DestinyBucketCategory._internal(0);
  static const DestinyBucketCategory item = const DestinyBucketCategory._internal(1);
  static const DestinyBucketCategory currency = const DestinyBucketCategory._internal(2);
  static const DestinyBucketCategory equippable = const DestinyBucketCategory._internal(3);
  static const DestinyBucketCategory ignored = const DestinyBucketCategory._internal(4);
}

class DestinyBucketCategoryTypeTransformer extends TypeTransformer<DestinyBucketCategory> {

  @override
  dynamic encode(DestinyBucketCategory data) {
    return data.value;
  }

  @override
  DestinyBucketCategory decode(dynamic data) {
    switch (data) {
      case 0: return DestinyBucketCategory.invisible;
      case 1: return DestinyBucketCategory.item;
      case 2: return DestinyBucketCategory.currency;
      case 3: return DestinyBucketCategory.equippable;
      case 4: return DestinyBucketCategory.ignored;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

