part of destiny2_api.api;

@Entity()
class DestinyVendorDisplayCategorySortOrder {
  /// The underlying value of this enum member.
  final int value;

  const DestinyVendorDisplayCategorySortOrder._internal(this.value);

  /// Display categories can have custom sort orders. These are the possible options.
  static const DestinyVendorDisplayCategorySortOrder default_ = const DestinyVendorDisplayCategorySortOrder._internal(0);
  /// Display categories can have custom sort orders. These are the possible options.
  static const DestinyVendorDisplayCategorySortOrder sortByTier = const DestinyVendorDisplayCategorySortOrder._internal(1);
}

class DestinyVendorDisplayCategorySortOrderTypeTransformer extends TypeTransformer<DestinyVendorDisplayCategorySortOrder> {

  @override
  dynamic encode(DestinyVendorDisplayCategorySortOrder data) {
    return data.value;
  }

  @override
  DestinyVendorDisplayCategorySortOrder decode(dynamic data) {
    switch (data) {
      case 0: return DestinyVendorDisplayCategorySortOrder.default_;
      case 1: return DestinyVendorDisplayCategorySortOrder.sortByTier;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

