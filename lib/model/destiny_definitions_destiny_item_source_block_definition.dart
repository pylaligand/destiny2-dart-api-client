part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSourceBlockDefinition {
  /* The list of hash identifiers for Reward Sources that hint where the item can be found (DestinyRewardSourceDefinition). */
  @Property(name: 'sourceHashes')
  List<int> sourceHashes = [];
  
/* A collection of details about the stats that were computed for the ways we found that the item could be spawned. */
  @Property(name: 'sources')
  List<DestinyDefinitionsSourcesDestinyItemSourceDefinition> sources = [];
  
/* If we found that this item is exclusive to a specific platform, this will be set to the BungieMembershipType enumeration that matches that platform. */
  @Property(name: 'exclusive')
  BungieMembershipType exclusive = null;
  
  DestinyDefinitionsDestinyItemSourceBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSourceBlockDefinition[sourceHashes=$sourceHashes, sources=$sources, exclusive=$exclusive, ]';
  }
}

