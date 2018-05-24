part of destiny2_api.api;

@Entity()
class DestinyResponsesInventoryChangedResponse {
  /* Items that appeared in the inventory possibly as a result of an action. */
  @Property(name: 'addedInventoryItems')
  List<DestinyEntitiesItemsDestinyItemComponent> addedInventoryItems = [];
  
/* Items that disappeared from the inventory possibly as a result of an action. */
  @Property(name: 'removedInventoryItems')
  List<DestinyEntitiesItemsDestinyItemComponent> removedInventoryItems = [];
  
  DestinyResponsesInventoryChangedResponse();

  @override
  String toString()  {
    return 'DestinyResponsesInventoryChangedResponse[addedInventoryItems=$addedInventoryItems, removedInventoryItems=$removedInventoryItems, ]';
  }
}

