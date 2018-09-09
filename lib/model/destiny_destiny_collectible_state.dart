part of destiny2_api.api;

@Entity()
class DestinyDestinyCollectibleState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyCollectibleState._internal(this.value);

  /// A Flags Enumeration where each bit represents a different state that the Collectible can be in. A collectible can be in any number of these states, and you can choose to use or ignore any or all of them when making your own UI that shows Collectible info. Our displays are going to honor them, but we're also the kind of people who only pretend to inhale before quickly passing it to the left. So, you know, do what you got to do.
  static const DestinyDestinyCollectibleState none = const DestinyDestinyCollectibleState._internal(0);
  /// If this flag is set, you have not yet obtained this collectible.
  static const DestinyDestinyCollectibleState notAcquired = const DestinyDestinyCollectibleState._internal(1);
  /// If this flag is set, the item is "obscured" to you: you can/should use the alternate item hash found in DestinyCollectibleDefinition.stateInfo.obscuredOverrideItemHash when displaying this collectible instead of the default display info.
  static const DestinyDestinyCollectibleState obscured = const DestinyDestinyCollectibleState._internal(2);
  /// If this flag is set, the collectible should not be shown to the user. But, I mean do what you want: I'm not your mom. It's much more likely that I'm your Dad - wait, I promised your mom that I wouldn't tell you. Don't tell her that I told you.
  static const DestinyDestinyCollectibleState invisible = const DestinyDestinyCollectibleState._internal(4);
  /// If this flag is set, the collectible requires payment for creating an instance of the item, and you are lacking in currency. Bring the benjamins next time. Or spinmetal. Whatever.
  static const DestinyDestinyCollectibleState cannotAffordMaterialRequirements = const DestinyDestinyCollectibleState._internal(8);
  /// If this flag is set, you can't pull this item out of your collection because there's no room left in your inventory.
  static const DestinyDestinyCollectibleState inventorySpaceUnavailable = const DestinyDestinyCollectibleState._internal(16);
  /// If this flag is set, you already have one of these items and can't have a second one.
  static const DestinyDestinyCollectibleState uniquenessViolation = const DestinyDestinyCollectibleState._internal(32);
  /// If this flag is set, the ability to pull this item out of your collection has been disabled.
  static const DestinyDestinyCollectibleState purchaseDisabled = const DestinyDestinyCollectibleState._internal(64);
}

class DestinyDestinyCollectibleStateTypeTransformer extends TypeTransformer<DestinyDestinyCollectibleState> {

  @override
  dynamic encode(DestinyDestinyCollectibleState data) {
    return data.value;
  }

  @override
  DestinyDestinyCollectibleState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyCollectibleState.none;
      case 1: return DestinyDestinyCollectibleState.notAcquired;
      case 2: return DestinyDestinyCollectibleState.obscured;
      case 4: return DestinyDestinyCollectibleState.invisible;
      case 8: return DestinyDestinyCollectibleState.cannotAffordMaterialRequirements;
      case 16: return DestinyDestinyCollectibleState.inventorySpaceUnavailable;
      case 32: return DestinyDestinyCollectibleState.uniquenessViolation;
      case 64: return DestinyDestinyCollectibleState.purchaseDisabled;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

