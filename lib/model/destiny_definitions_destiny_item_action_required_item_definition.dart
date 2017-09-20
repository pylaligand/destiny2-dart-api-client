part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemActionRequiredItemDefinition {
  /* The minimum quantity of the item you have to have. */
  @Property(name: 'count')
  int count = null;
  
/* The hash identifier of the item you need to have. Use it to look up the DestinyInventoryItemDefinition for more info. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* If true, the item/quantity will be deleted from your inventory when the action is performed. Otherwise, you'll retain these required items after the action is complete. */
  @Property(name: 'deleteOnAction')
  bool deleteOnAction = null;
  
  DestinyDefinitionsDestinyItemActionRequiredItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemActionRequiredItemDefinition[count=$count, itemHash=$itemHash, deleteOnAction=$deleteOnAction, ]';
  }
}

