part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityModeDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If this activity mode has a related PGCR image, this will be the path to said image. */
  @Property(name: 'pgcrImage')
  String pgcrImage = null;
  
/* The Enumeration value for this Activity Mode. Pass this identifier into Stats endpoints to get aggregate stats for this mode. */
  @Property(name: 'modeType')
  DestinyHistoricalStatsDefinitionsDestinyActivityModeType modeType = null;
  
/* The type of play being performed in broad terms (PVP, PVE) */
  @Property(name: 'activityModeCategory')
  DestinyDestinyActivityModeCategory activityModeCategory = null;
  
/* If True, this mode has oppositional teams fighting against each other rather than \"Free-For-All\" or Co-operative modes of play.  Note that Aggregate modes are never marked as team based, even if they happen to be team based at the moment. At any time, an aggregate whose subordinates are only team based could be changed so that one or more aren't team based, and then this boolean won't make much sense (the aggregation would become \"sometimes team based\"). Let's not deal with that right now. */
  @Property(name: 'isTeamBased')
  bool isTeamBased = null;
  
/* If true, this mode is an aggregation of other, more specific modes rather than being a mode in itself. This includes modes that group Features/Events rather than Gameplay, such as Trials of The Nine: Trials of the Nine being an Event that is interesting to see aggregate data for, but when you play the activities within Trials of the Nine they are more specific activity modes such as Clash. */
  @Property(name: 'isAggregateMode')
  bool isAggregateMode = null;
  
/* The hash identifiers of the DestinyActivityModeDefinitions that represent all of the \"parent\" modes for this mode. For instance, the Nightfall Mode is also a member of AllStrikes and AllPvE. */
  @Property(name: 'parentHashes')
  List<int> parentHashes = [];
  
/* A Friendly identifier you can use for referring to this Activity Mode. We really only used this in our URLs, so... you know, take that for whatever it's worth. */
  @Property(name: 'friendlyName')
  String friendlyName = null;
  
/* If this exists, the mode has specific Activities (referred to by the Key) that should instead map to other Activity Modes when they are played. This was useful in D1 for Private Matches, where we wanted to have Private Matches as an activity mode while still referring to the specific mode being played. */
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

