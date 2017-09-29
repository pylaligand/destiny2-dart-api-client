part of destiny2_api.api;

@Entity()
class DestinyDestinyVendorInteractionRewardSelection {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyVendorInteractionRewardSelection._internal(this.value);

  /// When a Vendor Interaction provides rewards, they'll either let you choose one or let you have all of them. This determines which it will be.
  static const DestinyDestinyVendorInteractionRewardSelection none = const DestinyDestinyVendorInteractionRewardSelection._internal(0);
  /// When a Vendor Interaction provides rewards, they'll either let you choose one or let you have all of them. This determines which it will be.
  static const DestinyDestinyVendorInteractionRewardSelection one = const DestinyDestinyVendorInteractionRewardSelection._internal(1);
  /// When a Vendor Interaction provides rewards, they'll either let you choose one or let you have all of them. This determines which it will be.
  static const DestinyDestinyVendorInteractionRewardSelection all = const DestinyDestinyVendorInteractionRewardSelection._internal(2);
}

class DestinyDestinyVendorInteractionRewardSelectionTypeTransformer extends TypeTransformer<DestinyDestinyVendorInteractionRewardSelection> {

  @override
  dynamic encode(DestinyDestinyVendorInteractionRewardSelection data) {
    return data.value;
  }

  @override
  DestinyDestinyVendorInteractionRewardSelection decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyVendorInteractionRewardSelection.none;
      case 1: return DestinyDestinyVendorInteractionRewardSelection.one;
      case 2: return DestinyDestinyVendorInteractionRewardSelection.all;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

