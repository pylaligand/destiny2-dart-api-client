part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeExclusiveSetDefinition {
  /* The list of node indexes for the exclusive set. Historically, these were indexes. I would have liked to replace this with nodeHashes for consistency, but it's way too late for that. (9:09 PM, he's right!) */
  @Property(name: 'nodeIndexes')
  List<int> nodeIndexes = [];
  
  DestinyDefinitionsDestinyTalentNodeExclusiveSetDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyTalentNodeExclusiveSetDefinition[nodeIndexes=$nodeIndexes, ]';
  }
}

