part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentExclusiveGroup {
  /* The identifier for this exclusive group. Only guaranteed unique within the talent grid, not globally. */
  @Property(name: 'groupHash')
  int groupHash = null;
  
/* If this group has an associated piece of lore to show next to it, this will be the identifier for that DestinyLoreDefinition. */
  @Property(name: 'loreHash')
  int loreHash = null;
  
/* A quick reference of the talent nodes that are part of this group, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash) */
  @Property(name: 'nodeHashes')
  List<int> nodeHashes = [];
  
/* A quick reference of Groups whose nodes will be deactivated if any node in this group is activated. */
  @Property(name: 'opposingGroupHashes')
  List<int> opposingGroupHashes = [];
  
/* A quick reference of Nodes that will be deactivated if any node in this group is activated, by their Talent Node hashes. (See DestinyTalentNodeDefinition.nodeHash) */
  @Property(name: 'opposingNodeHashes')
  List<int> opposingNodeHashes = [];
  
  DestinyDefinitionsDestinyTalentExclusiveGroup();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyTalentExclusiveGroup[groupHash=$groupHash, loreHash=$loreHash, nodeHashes=$nodeHashes, opposingGroupHashes=$opposingGroupHashes, opposingNodeHashes=$opposingNodeHashes, ]';
  }
}

