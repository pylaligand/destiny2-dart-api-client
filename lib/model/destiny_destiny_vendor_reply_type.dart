part of destiny2_api.api;

@Entity()
class DestinyDestinyVendorReplyType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyVendorReplyType._internal(this.value);

  /// This determines the type of reply that a Vendor will have during an Interaction.
  static const DestinyDestinyVendorReplyType accept = const DestinyDestinyVendorReplyType._internal(0);
  /// This determines the type of reply that a Vendor will have during an Interaction.
  static const DestinyDestinyVendorReplyType decline = const DestinyDestinyVendorReplyType._internal(1);
  /// This determines the type of reply that a Vendor will have during an Interaction.
  static const DestinyDestinyVendorReplyType complete = const DestinyDestinyVendorReplyType._internal(2);
}

class DestinyDestinyVendorReplyTypeTypeTransformer extends TypeTransformer<DestinyDestinyVendorReplyType> {

  @override
  dynamic encode(DestinyDestinyVendorReplyType data) {
    return data.value;
  }

  @override
  DestinyDestinyVendorReplyType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyVendorReplyType.accept;
      case 1: return DestinyDestinyVendorReplyType.decline;
      case 2: return DestinyDestinyVendorReplyType.complete;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

