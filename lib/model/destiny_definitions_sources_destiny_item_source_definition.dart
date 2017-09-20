part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSourcesDestinyItemSourceDefinition {
  /* The level at which the item spawns. Essentially the Primary Key for this source data: there will be multiple of these source entries per item that has source data, grouped by the level at which the item spawns. */
  @Property(name: 'level')
  int level = null;
  
/* The minimum Quality at which the item spawns for this level. Examine DestinyInventoryItemDefinition for more information about what Quality means. Just don't ask Phaedrus about it, he'll never stop talking and you'll have to write a book about it. */
  @Property(name: 'minQuality')
  int minQuality = null;
  
/* The maximum quality at which the item spawns for this level. */
  @Property(name: 'maxQuality')
  int maxQuality = null;
  
/* The minimum Character Level required for equipping the item when the item spawns at the item level defined on this DestinyItemSourceDefinition, as far as we saw in our processing. */
  @Property(name: 'minLevelRequired')
  int minLevelRequired = null;
  
/* The maximum Character Level required for equipping the item when the item spawns at the item level defined on this DestinyItemSourceDefinition, as far as we saw in our processing. */
  @Property(name: 'maxLevelRequired')
  int maxLevelRequired = null;
  
/* The stats computed for this level/quality range. */
  @Property(name: 'computedStats')
  Map<String, DestinyDefinitionsDestinyInventoryItemStatDefinition> computedStats = {};
  
/* The DestinyRewardSourceDefinitions found that can spawn the item at this level. */
  @Property(name: 'sourceHashes')
  List<int> sourceHashes = [];
  
  DestinyDefinitionsSourcesDestinyItemSourceDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsSourcesDestinyItemSourceDefinition[level=$level, minQuality=$minQuality, maxQuality=$maxQuality, minLevelRequired=$minLevelRequired, maxLevelRequired=$maxLevelRequired, computedStats=$computedStats, sourceHashes=$sourceHashes, ]';
  }
}

