part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemInstanceComponent {
  /* If the item has a damage type, this is the item's current damage type. */
  @Property(name: 'damageType')
  Object damageType = null;
  
/* The current damage type's hash, so you can look up localized info and icons for it. */
  @Property(name: 'damageTypeHash')
  int damageTypeHash = null;
  
/* The item stat that we consider to be \"primary\" for the item. For instance, this would be \"Attack\" for Weapons or \"Defense\" for armor. */
  @Property(name: 'primaryStat')
  Object primaryStat = null;
  
/* The Item's \"Level\" has the most significant bearing on its stats, such as Light and Power. */
  @Property(name: 'itemLevel')
  int itemLevel = null;
  
/* The \"Quality\" of the item has a lesser - but still impactful - bearing on stats like Light and Power. */
  @Property(name: 'quality')
  int quality = null;
  
/* Is the item currently equipped on the given character? */
  @Property(name: 'isEquipped')
  bool isEquipped = null;
  
/* If this is an equippable item, you can check it here. There are permanent as well as transitory reasons why an item might not be able to be equipped: check cannotEquipReason for details. */
  @Property(name: 'canEquip')
  bool canEquip = null;
  
/* If the item cannot be equipped until you reach a certain level, that level will be reflected here. */
  @Property(name: 'equipRequiredLevel')
  int equipRequiredLevel = null;
  
/* Sometimes, there are limitations to equipping that are represented by character-level flags called \"unlocks\".  This is a list of flags that they need in order to equip the item that the character has not met. Use these to look up the descriptions to show in your UI by looking up the relevant DestinyUnlockDefinitions for the hashes. */
  @Property(name: 'unlockHashesRequiredToEquip')
  List<int> unlockHashesRequiredToEquip = [];
  
/* If you cannot equip the item, this is a flags enum that enumerates all of the reasons why you couldn't equip the item. You may need to refine your UI further by using unlockHashesRequiredToEquip and equipRequiredLevel. */
  @Property(name: 'cannotEquipReason')
  Object cannotEquipReason = null;
  
  DestinyEntitiesItemsDestinyItemInstanceComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemInstanceComponent[damageType=$damageType, damageTypeHash=$damageTypeHash, primaryStat=$primaryStat, itemLevel=$itemLevel, quality=$quality, isEquipped=$isEquipped, canEquip=$canEquip, equipRequiredLevel=$equipRequiredLevel, unlockHashesRequiredToEquip=$unlockHashesRequiredToEquip, cannotEquipReason=$cannotEquipReason, ]';
  }
}

