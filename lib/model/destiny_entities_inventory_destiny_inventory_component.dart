part of destiny2_api.api;

@Entity()
class DestinyEntitiesInventoryDestinyInventoryComponent {
  /* The items in this inventory. If you care to bucket them, use the item's bucketHash property to group them. */
  @Property(name: 'items')
  List<DestinyEntitiesItemsDestinyItemComponent> items = [];
  
  DestinyEntitiesInventoryDestinyInventoryComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesInventoryDestinyInventoryComponent[items=$items, ]';
  }
}

