part of destiny2_api.api;

@Entity()
class DestinyDestinyItemSubType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyItemSubType._internal(this.value);

  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType none = const DestinyDestinyItemSubType._internal(0);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType crucible = const DestinyDestinyItemSubType._internal(1);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType vanguard = const DestinyDestinyItemSubType._internal(2);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType exotic = const DestinyDestinyItemSubType._internal(5);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType autoRifle = const DestinyDestinyItemSubType._internal(6);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType shotgun = const DestinyDestinyItemSubType._internal(7);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType machinegun = const DestinyDestinyItemSubType._internal(8);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType handCannon = const DestinyDestinyItemSubType._internal(9);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType rocketLauncher = const DestinyDestinyItemSubType._internal(10);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType fusionRifle = const DestinyDestinyItemSubType._internal(11);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType sniperRifle = const DestinyDestinyItemSubType._internal(12);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType pulseRifle = const DestinyDestinyItemSubType._internal(13);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType scoutRifle = const DestinyDestinyItemSubType._internal(14);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType crm = const DestinyDestinyItemSubType._internal(16);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType sidearm = const DestinyDestinyItemSubType._internal(17);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType sword = const DestinyDestinyItemSubType._internal(18);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType mask = const DestinyDestinyItemSubType._internal(19);
  /// This Enumeration further classifies items by more specific categorizations than DestinyItemType. The \"Sub-Type\" is where we classify and categorize items one step further in specificity: \"Auto Rifle\" instead of just \"Weapon\" for example, or \"Vanguard Bounty\" instead of merely \"Bounty\".  These sub-types are provided for historical compatibility with Destiny 1, but an ideal alternative is to use DestinyItemCategoryDefinitions and the DestinyItemDefinition.itemCategories property instead. Item Categories allow for arbitrary hierarchies of specificity, and for items to belong to multiple categories across multiple hierarchies simultaneously. For this enum, we pick a single type as a \"best guess\" fit.  NOTE: This is not all of the item types available, and some of these are holdovers from Destiny 1 that may or may not still exist.
  static const DestinyDestinyItemSubType shader = const DestinyDestinyItemSubType._internal(20);
}

class DestinyDestinyItemSubTypeTypeTransformer extends TypeTransformer<DestinyDestinyItemSubType> {

  @override
  dynamic encode(DestinyDestinyItemSubType data) {
    return data.value;
  }

  @override
  DestinyDestinyItemSubType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyItemSubType.none;
      case 1: return DestinyDestinyItemSubType.crucible;
      case 2: return DestinyDestinyItemSubType.vanguard;
      case 5: return DestinyDestinyItemSubType.exotic;
      case 6: return DestinyDestinyItemSubType.autoRifle;
      case 7: return DestinyDestinyItemSubType.shotgun;
      case 8: return DestinyDestinyItemSubType.machinegun;
      case 9: return DestinyDestinyItemSubType.handCannon;
      case 10: return DestinyDestinyItemSubType.rocketLauncher;
      case 11: return DestinyDestinyItemSubType.fusionRifle;
      case 12: return DestinyDestinyItemSubType.sniperRifle;
      case 13: return DestinyDestinyItemSubType.pulseRifle;
      case 14: return DestinyDestinyItemSubType.scoutRifle;
      case 16: return DestinyDestinyItemSubType.crm;
      case 17: return DestinyDestinyItemSubType.sidearm;
      case 18: return DestinyDestinyItemSubType.sword;
      case 19: return DestinyDestinyItemSubType.mask;
      case 20: return DestinyDestinyItemSubType.shader;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

