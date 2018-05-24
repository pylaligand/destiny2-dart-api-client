part of destiny2_api.api;

@Entity()
class DestinyDestinyVendorItemState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyVendorItemState._internal(this.value);

  /// There are no augments on the item.
  static const DestinyDestinyVendorItemState none = const DestinyDestinyVendorItemState._internal(0);
  /// DEPRECATED, for now...
  static const DestinyDestinyVendorItemState incomplete = const DestinyDestinyVendorItemState._internal(1);
  /// DEPRECATED, for now...
  static const DestinyDestinyVendorItemState rewardAvailable = const DestinyDestinyVendorItemState._internal(2);
  /// DEPRECATED, for now...
  static const DestinyDestinyVendorItemState complete = const DestinyDestinyVendorItemState._internal(4);
  /// This item is considered to be "newly available", and should have some UI showing how shiny it is.
  static const DestinyDestinyVendorItemState new_ = const DestinyDestinyVendorItemState._internal(8);
  /// This item is being "featured", and should be shiny in a different way from items that are merely new.
  static const DestinyDestinyVendorItemState featured = const DestinyDestinyVendorItemState._internal(16);
  /// This item is only available for a limited time, and that time is approaching.
  static const DestinyDestinyVendorItemState ending = const DestinyDestinyVendorItemState._internal(32);
  /// This item is "on sale". Get it while it's hot.
  static const DestinyDestinyVendorItemState onSale = const DestinyDestinyVendorItemState._internal(64);
  /// This item is already owned.
  static const DestinyDestinyVendorItemState owned = const DestinyDestinyVendorItemState._internal(128);
}

class DestinyDestinyVendorItemStateTypeTransformer extends TypeTransformer<DestinyDestinyVendorItemState> {

  @override
  dynamic encode(DestinyDestinyVendorItemState data) {
    return data.value;
  }

  @override
  DestinyDestinyVendorItemState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyVendorItemState.none;
      case 1: return DestinyDestinyVendorItemState.incomplete;
      case 2: return DestinyDestinyVendorItemState.rewardAvailable;
      case 4: return DestinyDestinyVendorItemState.complete;
      case 8: return DestinyDestinyVendorItemState.new_;
      case 16: return DestinyDestinyVendorItemState.featured;
      case 32: return DestinyDestinyVendorItemState.ending;
      case 64: return DestinyDestinyVendorItemState.onSale;
      case 128: return DestinyDestinyVendorItemState.owned;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

