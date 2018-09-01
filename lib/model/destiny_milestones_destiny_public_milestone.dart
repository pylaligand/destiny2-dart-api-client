part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestone {
  /* The hash identifier for the milestone. Use it to look up the DestinyMilestoneDefinition for static data about the Milestone. */
  @Property(name: 'milestoneHash')
  int milestoneHash = null;
  
/* A milestone not need have even a single quest, but if there are active quests they will be returned here. */
  @Property(name: 'availableQuests')
  List<DestinyMilestonesDestinyPublicMilestoneQuest> availableQuests = [];
  

  @Property(name: 'activities')
  List<DestinyMilestonesDestinyPublicMilestoneChallengeActivity> activities = [];
  
/* Sometimes milestones - or activities active in milestones - will have relevant vendors. These are the vendors that are currently relevant.  Deprecated, already, for the sake of the new \"vendors\" property that has more data. What was I thinking. */
  @Property(name: 'vendorHashes')
  List<int> vendorHashes = [];
  
/* This is why we can't have nice things. This is the ordered list of vendors to be shown that relate to this milestone, potentially along with other interesting data. */
  @Property(name: 'vendors')
  List<DestinyMilestonesDestinyPublicMilestoneVendor> vendors = [];
  
/* If known, this is the date when the Milestone started/became active. */
  @Property(name: 'startDate')
  DateTime startDate = null;
  
/* If known, this is the date when the Milestone will expire/recycle/end. */
  @Property(name: 'endDate')
  DateTime endDate = null;
  
/* Used for ordering milestones in a display to match how we order them in BNet. May pull from static data, or possibly in the future from dynamic information. */
  @Property(name: 'order')
  int order = null;
  
  DestinyMilestonesDestinyPublicMilestone();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestone[milestoneHash=$milestoneHash, availableQuests=$availableQuests, activities=$activities, vendorHashes=$vendorHashes, vendors=$vendors, startDate=$startDate, endDate=$endDate, order=$order, ]';
  }
}

