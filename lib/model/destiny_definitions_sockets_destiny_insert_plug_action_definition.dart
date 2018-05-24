part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition {
  /* How long it takes for the Plugging of the item to be completed once it is initiated, if you care. */
  @Property(name: 'actionExecuteSeconds')
  int actionExecuteSeconds = null;
  
/* The type of action being performed when you act on this Socket Type. The most common value is \"insert plug\", but there are others as well (for instance, a \"Masterwork\" socket may allow for Re-initialization, and an Infusion socket allows for items to be consumed to upgrade the item) */
  @Property(name: 'actionType')
  DestinySocketTypeActionType actionType = null;
  
  DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition[actionExecuteSeconds=$actionExecuteSeconds, actionType=$actionType, ]';
  }
}

