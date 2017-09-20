part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneRewardCategory {
  /* Look up the relevant DestinyMilestoneDefinition, and then use rewardCategoryHash to look up the category info in DestinyMilestoneDefinition.rewards. */
  @Property(name: 'rewardCategoryHash')
  int rewardCategoryHash = null;
  
/* The individual reward entries for this category, and their status. */
  @Property(name: 'entries')
  List<DestinyMilestonesDestinyMilestoneRewardEntry> entries = [];
  
  DestinyMilestonesDestinyMilestoneRewardCategory();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneRewardCategory[rewardCategoryHash=$rewardCategoryHash, entries=$entries, ]';
  }
}

