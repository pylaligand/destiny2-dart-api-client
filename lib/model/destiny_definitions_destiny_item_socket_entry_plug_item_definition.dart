part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition {
  /* The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted. */
  @Property(name: 'plugItemHash')
  int plugItemHash = null;
  
  DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition[plugItemHash=$plugItemHash, ]';
  }
}

