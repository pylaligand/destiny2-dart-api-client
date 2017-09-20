part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyLinkedGraphDefinition {
  
  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'unlockExpression')
  DestinyDefinitionsDestinyUnlockExpressionDefinition unlockExpression = null;
  

  @Property(name: 'linkedGraphId')
  int linkedGraphId = null;
  

  @Property(name: 'linkedGraphs')
  List<DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition> linkedGraphs = [];
  

  @Property(name: 'overview')
  String overview = null;
  
  DestinyDefinitionsDirectorDestinyLinkedGraphDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyLinkedGraphDefinition[description=$description, name=$name, unlockExpression=$unlockExpression, linkedGraphId=$linkedGraphId, linkedGraphs=$linkedGraphs, overview=$overview, ]';
  }
}

