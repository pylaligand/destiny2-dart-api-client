part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSocketEntryPlugItemRandomizedDefinition {
  /* The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted. */
  @Property(name: 'plugItemHash')
  int plugItemHash = null;
  
  DestinyDefinitionsDestinyItemSocketEntryPlugItemRandomizedDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSocketEntryPlugItemRandomizedDefinition[plugItemHash=$plugItemHash, ]';
  }
}

