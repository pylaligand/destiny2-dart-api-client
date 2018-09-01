part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition {
  /* If the flyout is locked, this is the reason why. */
  @Property(name: 'lockedDescription')
  String lockedDescription = null;
  
/* The title and other common properties of the flyout. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* A list of inventory buckets and other metadata to show on the screen. */
  @Property(name: 'buckets')
  List<DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition> buckets = [];
  
/* An identifier for the flyout, in case anything else needs to refer to them. */
  @Property(name: 'flyoutId')
  int flyoutId = null;
  
/* If this is true, don't show any of the glistening \"this is a new item\" UI elements, like we show on the inventory items themselves in in-game UI. */
  @Property(name: 'suppressNewness')
  bool suppressNewness = null;
  
/* If this flyout is meant to show you the contents of the player's equipment slot, this is the slot to show. */
  @Property(name: 'equipmentSlotHash')
  int equipmentSlotHash = null;
  
  DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition[lockedDescription=$lockedDescription, displayProperties=$displayProperties, buckets=$buckets, flyoutId=$flyoutId, suppressNewness=$suppressNewness, equipmentSlotHash=$equipmentSlotHash, ]';
  }
}

