part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* A custom image someone made just for the milestone. Isn't that special? */
  @Property(name: 'image')
  String image = null;
  
/* An enumeration listing one of the possible types of milestones. Check out the DestinyMilestoneType enum for more info! */
  @Property(name: 'milestoneType')
  DestinyDefinitionsMilestonesDestinyMilestoneType milestoneType = null;
  
/* If True, then the Milestone has been integrated with BNet's recruiting feature. */
  @Property(name: 'recruitable')
  bool recruitable = null;
  
/* If the milestone has a friendly identifier for association with other features - such as Recruiting - that identifier can be found here. This is \"friendly\" in that it looks better in a URL than whatever the identifier for the Milestone actually is. */
  @Property(name: 'friendlyName')
  String friendlyName = null;
  
/* If TRUE, this entry should be returned in the list of milestones for the \"Explore Destiny\" (i.e. new BNet homepage) features of Bungie.net (as long as the underlying event is active) Note that this is a property specifically used by BNet and the companion app for the \"Live Events\" feature of the front page/welcome view: it's not a reflection of what you see in-game. */
  @Property(name: 'showInExplorer')
  bool showInExplorer = null;
  
/* If TRUE, \"Explore Destiny\" (the front page of BNet and the companion app) prioritize using the activity image over any overriding Quest or Milestone image provided. This unfortunate hack is brought to you by Trials of The Nine. */
  @Property(name: 'explorePrioritizesActivityImage')
  bool explorePrioritizesActivityImage = null;
  
/* A shortcut for clients - and the server - to understand whether we can predict the start and end dates for this event. In practice, there are multiple ways that an event could have predictable date ranges, but not all events will be able to be predicted via any mechanism (for instance, events that are manually triggered on and off) */
  @Property(name: 'hasPredictableDates')
  bool hasPredictableDates = null;
  
/* The full set of possible Quests that give the overview of the Milestone event/activity in question. Only one of these can be active at a time for a given Conceptual Milestone, but many of them may be \"available\" for the user to choose from. (for instance, with Milestones you can choose from the three available Quests, but only one can be active at a time) Keyed by the quest item. */
  @Property(name: 'quests')
  Map<String, DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition> quests = {};
  
/* If this milestone can provide rewards, this will define the categories into which the individual reward entries are placed. */
  @Property(name: 'rewards')
  Map<String, DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition> rewards = {};
  
/* If you're going to show Vendors for the Milestone, you can use this as a localized \"header\" for the section where you show that vendor data. It'll provide a more context-relevant clue about what the vendor's role is in the Milestone. */
  @Property(name: 'vendorsDisplayTitle')
  String vendorsDisplayTitle = null;
  
/* Sometimes, milestones will have rewards provided by Vendors. This definition gives the information needed to understand which vendors are relevant, the order in which they should be returned if order matters, and the conditions under which the Vendor is relevant to the user. */
  @Property(name: 'vendors')
  List<DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition> vendors = [];
  
/* Sometimes, milestones will have arbitrary values associated with them that are of interest to us or to third party developers. This is the collection of those values' definitions, keyed by the identifier of the value and providing useful definition information such as localizable names and descriptions for the value. */
  @Property(name: 'values')
  Map<String, DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition> values = {};
  
/* Some milestones are explicit objectives that you can see and interact with in the game. Some milestones are more conceptual, built by BNet to help advise you on activities and events that happen in-game but that aren't explicitly shown in game as Milestones. If this is TRUE, you can see this as a milestone in the game. If this is FALSE, it's an event or activity you can participate in, but you won't see it as a Milestone in the game's UI. */
  @Property(name: 'isInGameMilestone')
  bool isInGameMilestone = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneDefinition[displayProperties=$displayProperties, image=$image, milestoneType=$milestoneType, recruitable=$recruitable, friendlyName=$friendlyName, showInExplorer=$showInExplorer, explorePrioritizesActivityImage=$explorePrioritizesActivityImage, hasPredictableDates=$hasPredictableDates, quests=$quests, rewards=$rewards, vendorsDisplayTitle=$vendorsDisplayTitle, vendors=$vendors, values=$values, isInGameMilestone=$isInGameMilestone, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

