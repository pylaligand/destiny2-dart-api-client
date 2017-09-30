part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition {
  /* Identifies the reward category. Only guaranteed unique within this specific component! */
  @Property(name: 'categoryHash')
  int categoryHash = null;
  
/* The string identifier for the category, if you want to use it for some end. Guaranteed unique within the specific component. */
  @Property(name: 'categoryIdentifier')
  String categoryIdentifier = null;
  
/* Hopefully this is obvious by now. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If this milestone can provide rewards, this will define the sets of rewards that can be earned, the conditions under which they can be acquired, internal data that we'll use at runtime to determine whether you've already earned or redeemed this set of rewards, and the category that this reward should be placed under. */
  @Property(name: 'rewardEntries')
  Map<String, DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition> rewardEntries = {};
  
/* If you want to use BNet's recommended order for rendering categories programmatically, use this value and compare it to other categories to determine the order in which they should be rendered. I don't feel great about putting this here, I won't lie. */
  @Property(name: 'order')
  int order = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition[categoryHash=$categoryHash, categoryIdentifier=$categoryIdentifier, displayProperties=$displayProperties, rewardEntries=$rewardEntries, order=$order, ]';
  }
}

