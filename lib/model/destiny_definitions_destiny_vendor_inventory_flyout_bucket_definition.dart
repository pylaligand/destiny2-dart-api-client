part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition {
  /* If true, the inventory bucket should be able to be collapsed visually. */
  @Property(name: 'collapsible')
  bool collapsible = null;
  
/* The inventory bucket whose contents should be shown. */
  @Property(name: 'inventoryBucketHash')
  int inventoryBucketHash = null;
  
/* The methodology to use for sorting items from the flyout. */
  @Property(name: 'sortItemsBy')
  DestinyDestinyItemSortType sortItemsBy = null;
  
  DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition[collapsible=$collapsible, inventoryBucketHash=$inventoryBucketHash, sortItemsBy=$sortItemsBy, ]';
  }
}

