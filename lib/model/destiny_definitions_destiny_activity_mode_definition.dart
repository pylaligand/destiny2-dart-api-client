part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityModeDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  

  @Property(name: 'pgcrImage')
  String pgcrImage = null;
  

  @Property(name: 'modeType')
  DestinyHistoricalStatsDefinitionsDestinyActivityModeType modeType = null;
  

  @Property(name: 'activityModeCategory')
  DestinyDestinyActivityModeCategory activityModeCategory = null;
  

  @Property(name: 'isTeamBased')
  bool isTeamBased = null;
  

  @Property(name: 'isAggregateMode')
  bool isAggregateMode = null;
  

  @Property(name: 'parentHashes')
  List<int> parentHashes = [];
  

  @Property(name: 'friendlyName')
  String friendlyName = null;
  

  @Property(name: 'activityModeMappings')
  Map<String, DestinyHistoricalStatsDefinitionsDestinyActivityModeType> activityModeMappings = {};
  
/* If FALSE, we want to ignore this type when we're showing activity modes in BNet UI. It will still be returned in case 3rd parties want to use it for any purpose. */
  @Property(name: 'display')
  bool display = null;
  
/* The relative ordering of activity modes. */
  @Property(name: 'order')
  int order = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyActivityModeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityModeDefinition[displayProperties=$displayProperties, pgcrImage=$pgcrImage, modeType=$modeType, activityModeCategory=$activityModeCategory, isTeamBased=$isTeamBased, isAggregateMode=$isAggregateMode, parentHashes=$parentHashes, friendlyName=$friendlyName, activityModeMappings=$activityModeMappings, display=$display, order=$order, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

