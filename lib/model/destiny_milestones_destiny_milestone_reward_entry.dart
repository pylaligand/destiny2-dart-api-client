part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneRewardEntry {
  /* The identifier for the reward entry in question. It is important to look up the related DestinyMilestoneRewardEntryDefinition to get the static details about the reward, which you can do by looking up the milestone's DestinyMilestoneDefinition and examining the DestinyMilestoneDefinition.rewards[rewardCategoryHash].rewardEntries[rewardEntryHash] data. */
  @Property(name: 'rewardEntryHash')
  int rewardEntryHash = null;
  
/* If TRUE, the player has earned this reward. */
  @Property(name: 'earned')
  bool earned = null;
  
/* If TRUE, the player has redeemed/picked up/obtained this reward. Feel free to alias this to \"gotTheShinyBauble\" in your own codebase. */
  @Property(name: 'redeemed')
  bool redeemed = null;
  
  DestinyMilestonesDestinyMilestoneRewardEntry();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneRewardEntry[rewardEntryHash=$rewardEntryHash, earned=$earned, redeemed=$redeemed, ]';
  }
}

