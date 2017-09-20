part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition {
  /* How long it takes for the Plugging of the item to be completed once it is initiated, if you care. */
  @Property(name: 'actionExecuteSeconds')
  int actionExecuteSeconds = null;
  
  DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition[actionExecuteSeconds=$actionExecuteSeconds, ]';
  }
}

