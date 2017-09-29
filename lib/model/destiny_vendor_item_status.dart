part of destiny2_api.api;

@Entity()
class DestinyVendorItemStatus {
  /// The underlying value of this enum member.
  final int value;

  const DestinyVendorItemStatus._internal(this.value);

  static const DestinyVendorItemStatus success = const DestinyVendorItemStatus._internal(0);
  static const DestinyVendorItemStatus noInventorySpace = const DestinyVendorItemStatus._internal(1);
  static const DestinyVendorItemStatus noFunds = const DestinyVendorItemStatus._internal(2);
  static const DestinyVendorItemStatus noProgression = const DestinyVendorItemStatus._internal(4);
  static const DestinyVendorItemStatus noUnlock = const DestinyVendorItemStatus._internal(8);
  static const DestinyVendorItemStatus noQuantity = const DestinyVendorItemStatus._internal(16);
  static const DestinyVendorItemStatus outsidePurchaseWindow = const DestinyVendorItemStatus._internal(32);
  static const DestinyVendorItemStatus notAvailable = const DestinyVendorItemStatus._internal(64);
  static const DestinyVendorItemStatus uniquenessViolation = const DestinyVendorItemStatus._internal(128);
  static const DestinyVendorItemStatus unknownError = const DestinyVendorItemStatus._internal(256);
  static const DestinyVendorItemStatus alreadySelling = const DestinyVendorItemStatus._internal(512);
  static const DestinyVendorItemStatus unsellable = const DestinyVendorItemStatus._internal(1024);
  static const DestinyVendorItemStatus sellingInhibited = const DestinyVendorItemStatus._internal(2048);
  static const DestinyVendorItemStatus alreadyOwned = const DestinyVendorItemStatus._internal(4096);
}

class DestinyVendorItemStatusTypeTransformer extends TypeTransformer<DestinyVendorItemStatus> {

  @override
  dynamic encode(DestinyVendorItemStatus data) {
    return data.value;
  }

  @override
  DestinyVendorItemStatus decode(dynamic data) {
    switch (data) {
      case 0: return DestinyVendorItemStatus.success;
      case 1: return DestinyVendorItemStatus.noInventorySpace;
      case 2: return DestinyVendorItemStatus.noFunds;
      case 4: return DestinyVendorItemStatus.noProgression;
      case 8: return DestinyVendorItemStatus.noUnlock;
      case 16: return DestinyVendorItemStatus.noQuantity;
      case 32: return DestinyVendorItemStatus.outsidePurchaseWindow;
      case 64: return DestinyVendorItemStatus.notAvailable;
      case 128: return DestinyVendorItemStatus.uniquenessViolation;
      case 256: return DestinyVendorItemStatus.unknownError;
      case 512: return DestinyVendorItemStatus.alreadySelling;
      case 1024: return DestinyVendorItemStatus.unsellable;
      case 2048: return DestinyVendorItemStatus.sellingInhibited;
      case 4096: return DestinyVendorItemStatus.alreadyOwned;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

