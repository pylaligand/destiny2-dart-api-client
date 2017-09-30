part of destiny2_api.api;

@Entity()
class DestinyDestinyItemSortType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyItemSortType._internal(this.value);

  /// Determines how items are sorted in an inventory bucket.
  static const DestinyDestinyItemSortType itemId = const DestinyDestinyItemSortType._internal(0);
  /// Determines how items are sorted in an inventory bucket.
  static const DestinyDestinyItemSortType timestamp = const DestinyDestinyItemSortType._internal(1);
  /// Determines how items are sorted in an inventory bucket.
  static const DestinyDestinyItemSortType stackSize = const DestinyDestinyItemSortType._internal(2);
}

class DestinyDestinyItemSortTypeTypeTransformer extends TypeTransformer<DestinyDestinyItemSortType> {

  @override
  dynamic encode(DestinyDestinyItemSortType data) {
    return data.value;
  }

  @override
  DestinyDestinyItemSortType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyItemSortType.itemId;
      case 1: return DestinyDestinyItemSortType.timestamp;
      case 2: return DestinyDestinyItemSortType.stackSize;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

