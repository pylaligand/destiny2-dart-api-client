part of destiny2_api.api;

@Entity()
class DestinySpecialItemType {
  /// The underlying value of this enum member.
  final int value;

  const DestinySpecialItemType._internal(this.value);

  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType none = const DestinySpecialItemType._internal(0);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType specialCurrency = const DestinySpecialItemType._internal(1);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType armor = const DestinySpecialItemType._internal(8);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType weapon = const DestinySpecialItemType._internal(9);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType engram = const DestinySpecialItemType._internal(23);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType consumable = const DestinySpecialItemType._internal(24);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType exchangeMaterial = const DestinySpecialItemType._internal(25);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType missionReward = const DestinySpecialItemType._internal(27);
  /// As you run into items that need to be classified for Milestone purposes in ways that we cannot infer via Babel or Bonbobo-sourced data, add a new classification here and use a string constant to represent it in the local item config file.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinySpecialItemType currency = const DestinySpecialItemType._internal(29);
}

class DestinySpecialItemTypeTypeTransformer extends TypeTransformer<DestinySpecialItemType> {

  @override
  dynamic encode(DestinySpecialItemType data) {
    return data.value;
  }

  @override
  DestinySpecialItemType decode(dynamic data) {
    switch (data) {
      case 0: return DestinySpecialItemType.none;
      case 1: return DestinySpecialItemType.specialCurrency;
      case 8: return DestinySpecialItemType.armor;
      case 9: return DestinySpecialItemType.weapon;
      case 23: return DestinySpecialItemType.engram;
      case 24: return DestinySpecialItemType.consumable;
      case 25: return DestinySpecialItemType.exchangeMaterial;
      case 27: return DestinySpecialItemType.missionReward;
      case 29: return DestinySpecialItemType.currency;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

