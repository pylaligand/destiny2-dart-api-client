part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestone {
  /* The hash identifier for the milestone. Use it to look up the DestinyMilestoneDefinition for static data about the Milestone. */
  @Property(name: 'milestoneHash')
  int milestoneHash = null;
  
/* A milestone not need have even a single quest, but if there are active quests they will be returned here. */
  @Property(name: 'availableQuests')
  List<DestinyMilestonesDestinyPublicMilestoneQuest> availableQuests = [];
  
/* Sometimes milestones - or activities active in milestones - will have relevant vendors. These are the vendors that are currently relevant. */
  @Property(name: 'vendorHashes')
  List<int> vendorHashes = [];
  
/* If known, this is the date when the Milestone started/became active. */
  @Property(name: 'startDate')
  DateTime startDate = null;
  
/* If known, this is the date when the Milestone will expire/recycle/end. */
  @Property(name: 'endDate')
  DateTime endDate = null;
  
  DestinyMilestonesDestinyPublicMilestone();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestone[milestoneHash=$milestoneHash, availableQuests=$availableQuests, vendorHashes=$vendorHashes, startDate=$startDate, endDate=$endDate, ]';
  }
}

