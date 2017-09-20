part of destiny2_api.api;

@Entity()
class DestinyDefinitionsItemsDestinyDerivedItemDefinition {
  /* The hash for the DestinyInventoryItemDefinition of this derived item, if there is one. Sometimes we are given this information as a manual override, in which case there won't be an actual DestinyInventoryItemDefinition for what we display, but you can still show the strings from this object itself. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* The name of the derived item. */
  @Property(name: 'itemName')
  String itemName = null;
  
/* Additional details about the derived item, in addition to the description. */
  @Property(name: 'itemDetail')
  String itemDetail = null;
  
/* A brief description of the item. */
  @Property(name: 'itemDescription')
  String itemDescription = null;
  
/* An icon for the item. */
  @Property(name: 'iconPath')
  String iconPath = null;
  
/* If the item was derived from a \"Preview Vendor\", this will be an index into the DestinyVendorDefinition's itemList property. Otherwise, -1. */
  @Property(name: 'vendorItemIndex')
  int vendorItemIndex = null;
  
  DestinyDefinitionsItemsDestinyDerivedItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyDerivedItemDefinition[itemHash=$itemHash, itemName=$itemName, itemDetail=$itemDetail, itemDescription=$itemDescription, iconPath=$iconPath, vendorItemIndex=$vendorItemIndex, ]';
  }
}

