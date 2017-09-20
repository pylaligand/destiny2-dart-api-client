part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemCreationEntryLevelDefinition {
  
  @Property(name: 'level')
  int level = null;
  
  DestinyDefinitionsDestinyItemCreationEntryLevelDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemCreationEntryLevelDefinition[level=$level, ]';
  }
}

