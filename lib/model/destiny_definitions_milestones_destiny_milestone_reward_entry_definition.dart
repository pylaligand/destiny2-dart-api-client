part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition {
  /* The identifier for this reward entry. Runtime data will refer to reward entries by this hash. Only guaranteed unique within the specific Milestone. */
  @Property(name: 'rewardEntryHash')
  int rewardEntryHash = null;
  
/* The string identifier, if you care about it. Only guaranteed unique within the specific Milestone. */
  @Property(name: 'rewardEntryIdentifier')
  String rewardEntryIdentifier = null;
  
/* The items you will get as rewards, and how much of it you'll get. */
  @Property(name: 'items')
  List<DestinyDestinyItemQuantity> items = [];
  
/* If this reward is redeemed at a Vendor, this is the hash of the Vendor to go to in order to redeem the reward. Use this hash to look up the DestinyVendorDefinition. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
/* For us to bother returning this info, we should be able to return some kind of information about why these rewards are grouped together. This is ideally that information. Look at how confident I am that this will always remain true. */
  @Property(name: 'displayProperties')
  Object displayProperties = null;
  
/* If you want to follow BNet's ordering of these rewards, use this number within a given category to order the rewards. Yeah, I know. I feel dirty too. */
  @Property(name: 'order')
  int order = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition[rewardEntryHash=$rewardEntryHash, rewardEntryIdentifier=$rewardEntryIdentifier, items=$items, vendorHash=$vendorHash, displayProperties=$displayProperties, order=$order, ]';
  }
}

