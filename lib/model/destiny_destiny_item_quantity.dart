part of destiny2_api.api;

@Entity()
class DestinyDestinyItemQuantity {
  /* The hash identifier for the item in question. Use it to look up the item's DestinyInventoryItemDefinition. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* If this quantity is referring to a specific instance of an item, this will have the item's instance ID. Normally, this will be null. */
  @Property(name: 'itemInstanceId')
  int itemInstanceId = null;
  
/* The amount of the item needed/available depending on the context of where DestinyItemQuantity is being used. */
  @Property(name: 'quantity')
  int quantity = null;
  
  DestinyDestinyItemQuantity();

  @override
  String toString()  {
    return 'DestinyDestinyItemQuantity[itemHash=$itemHash, itemInstanceId=$itemInstanceId, quantity=$quantity, ]';
  }
}

