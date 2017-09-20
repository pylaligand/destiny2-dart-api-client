part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem {
  /* The quest reward item *may* be associated with a vendor. If so, this is that vendor. Use this hash to look up the DestinyVendorDefinition. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
/* The quest reward item *may* be associated with a vendor. If so, this is the index of the item being sold, which we can use at runtime to find instanced item information for the reward item. */
  @Property(name: 'vendorItemIndex')
  int vendorItemIndex = null;
  
/* The hash identifier for the item in question. Use it to look up the item's DestinyInventoryItemDefinition. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* If this quantity is referring to a specific instance of an item, this will have the item's instance ID. Normally, this will be null. */
  @Property(name: 'itemInstanceId')
  int itemInstanceId = null;
  
/* The amount of the item needed/available depending on the context of where DestinyItemQuantity is being used. */
  @Property(name: 'quantity')
  int quantity = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem[vendorHash=$vendorHash, vendorItemIndex=$vendorItemIndex, itemHash=$itemHash, itemInstanceId=$itemInstanceId, quantity=$quantity, ]';
  }
}

