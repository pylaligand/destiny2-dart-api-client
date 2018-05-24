part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyEquipmentSlotDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* These technically point to \"Equipment Category Definitions\". But don't get excited. There's nothing of significant value in those definitions, so I didn't bother to expose them. You can use the hash here to group equipment slots by common functionality, which serves the same purpose as if we had the Equipment Category definitions exposed. */
  @Property(name: 'equipmentCategoryHash')
  int equipmentCategoryHash = null;
  
/* The inventory bucket that owns this equipment slot. */
  @Property(name: 'bucketTypeHash')
  int bucketTypeHash = null;
  
/* If True, equipped items should have their custom art dyes applied when rendering the item. Otherwise, custom art dyes on an item should be ignored if the item is equipped in this slot. */
  @Property(name: 'applyCustomArtDyes')
  bool applyCustomArtDyes = null;
  
/* The Art Dye Channels that apply to this equipment slot. */
  @Property(name: 'artDyeChannels')
  List<DestinyDefinitionsDestinyArtDyeReference> artDyeChannels = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyEquipmentSlotDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyEquipmentSlotDefinition[displayProperties=$displayProperties, equipmentCategoryHash=$equipmentCategoryHash, bucketTypeHash=$bucketTypeHash, applyCustomArtDyes=$applyCustomArtDyes, artDyeChannels=$artDyeChannels, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

