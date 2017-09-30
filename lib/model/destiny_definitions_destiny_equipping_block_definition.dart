part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyEquippingBlockDefinition {
  /* If the item is part of a gearset, this is a reference to that gearset item. */
  @Property(name: 'gearsetItemHash')
  int gearsetItemHash = null;
  
/* If defined, this is the label used to check if the item has other items of matching types already equipped.   For instance, when you aren't allowed to equip more than one Exotic Weapon, that's because all exotic weapons have identical uniqueLabels and the game checks the to-be-equipped item's uniqueLabel vs. all other already equipped items (other than the item in the slot that's about to be occupied). */
  @Property(name: 'uniqueLabel')
  String uniqueLabel = null;
  
/* The hash of that unique label. Does not point to a specific definition. */
  @Property(name: 'uniqueLabelHash')
  int uniqueLabelHash = null;
  
/* An equipped item *must* be equipped in an Equipment Slot. This is the hash identifier of the DestinyEquipmentSlotDefinition into which it must be equipped. */
  @Property(name: 'equipmentSlotTypeHash')
  int equipmentSlotTypeHash = null;
  
/* These are custom attributes on the equippability of the item.  For now, this can only be \"equip on acquire\", which would mean that the item will be automatically equipped as soon as you pick it up. */
  @Property(name: 'attributes')
  DestinyEquippingItemBlockAttributes attributes = null;
  
/* These are strings that represent the possible Game/Account/Character state failure conditions that can occur when trying to equip the item. They match up one-to-one with requiredUnlockExpressions. */
  @Property(name: 'displayStrings')
  List<String> displayStrings = [];
  
  DestinyDefinitionsDestinyEquippingBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyEquippingBlockDefinition[gearsetItemHash=$gearsetItemHash, uniqueLabel=$uniqueLabel, uniqueLabelHash=$uniqueLabelHash, equipmentSlotTypeHash=$equipmentSlotTypeHash, attributes=$attributes, displayStrings=$displayStrings, ]';
  }
}

