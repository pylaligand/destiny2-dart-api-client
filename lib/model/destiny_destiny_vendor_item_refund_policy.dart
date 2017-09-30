part of destiny2_api.api;

@Entity()
class DestinyDestinyVendorItemRefundPolicy {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyVendorItemRefundPolicy._internal(this.value);

  /// The action that happens when the user attempts to refund an item.
  static const DestinyDestinyVendorItemRefundPolicy notRefundable = const DestinyDestinyVendorItemRefundPolicy._internal(0);
  /// The action that happens when the user attempts to refund an item.
  static const DestinyDestinyVendorItemRefundPolicy deletesItem = const DestinyDestinyVendorItemRefundPolicy._internal(1);
  /// The action that happens when the user attempts to refund an item.
  static const DestinyDestinyVendorItemRefundPolicy revokesLicense = const DestinyDestinyVendorItemRefundPolicy._internal(2);
}

class DestinyDestinyVendorItemRefundPolicyTypeTransformer extends TypeTransformer<DestinyDestinyVendorItemRefundPolicy> {

  @override
  dynamic encode(DestinyDestinyVendorItemRefundPolicy data) {
    return data.value;
  }

  @override
  DestinyDestinyVendorItemRefundPolicy decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyVendorItemRefundPolicy.notRefundable;
      case 1: return DestinyDestinyVendorItemRefundPolicy.deletesItem;
      case 2: return DestinyDestinyVendorItemRefundPolicy.revokesLicense;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

