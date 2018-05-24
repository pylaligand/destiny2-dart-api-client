part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyItemChangeResponse {
  
  @Property(name: 'item')
  DestinyResponsesDestinyItemResponse item = null;
  
/* Items that appeared in the inventory possibly as a result of an action. */
  @Property(name: 'addedInventoryItems')
  List<DestinyEntitiesItemsDestinyItemComponent> addedInventoryItems = [];
  
/* Items that disappeared from the inventory possibly as a result of an action. */
  @Property(name: 'removedInventoryItems')
  List<DestinyEntitiesItemsDestinyItemComponent> removedInventoryItems = [];
  
  DestinyResponsesDestinyItemChangeResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyItemChangeResponse[item=$item, addedInventoryItems=$addedInventoryItems, removedInventoryItems=$removedInventoryItems, ]';
  }
}

