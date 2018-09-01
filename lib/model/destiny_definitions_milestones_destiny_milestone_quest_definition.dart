part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition {
  /* The item representing this Milestone quest. Use this hash to look up the DestinyInventoryItemDefinition for the quest to find its steps and human readable data. */
  @Property(name: 'questItemHash')
  int questItemHash = null;
  
/* The individual quests may have different definitions from the overall milestone: if there's a specific active quest, use these displayProperties instead of that of the overall DestinyMilestoneDefinition. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If populated, this image can be shown instead of the generic milestone's image when this quest is live, or it can be used to show a background image for the quest itself that differs from that of the Activity or the Milestone. */
  @Property(name: 'overrideImage')
  String overrideImage = null;
  
/* The rewards you will get for completing this quest, as best as we could extract them from our data. Sometimes, it'll be a decent amount of data. Sometimes, it's going to be sucky. Sorry. */
  @Property(name: 'questRewards')
  DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardsDefinition questRewards = null;
  
/* The full set of all possible \"conceptual activities\" that are related to this Milestone. Tiers or alternative modes of play within these conceptual activities will be defined as sub-entities. Keyed by the Conceptual Activity Hash. Use the key to look up DestinyActivityDefinition. */
  @Property(name: 'activities')
  Map<String, DestinyDefinitionsMilestonesDestinyMilestoneActivityDefinition> activities = {};
  
/* Sometimes, a Milestone's quest is related to an entire Destination rather than a specific activity. In that situation, this will be the hash of that Destination. Hotspots are currently the only Milestones that expose this data, but that does not preclude this data from being returned for other Milestones in the future. */
  @Property(name: 'destinationHash')
  int destinationHash = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition[questItemHash=$questItemHash, displayProperties=$displayProperties, overrideImage=$overrideImage, questRewards=$questRewards, activities=$activities, destinationHash=$destinationHash, ]';
  }
}

