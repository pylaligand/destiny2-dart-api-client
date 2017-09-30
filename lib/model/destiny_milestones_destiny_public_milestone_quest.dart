part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestoneQuest {
  /* Quests are defined as Items in content. As such, this is the hash identifier of the DestinyInventoryItemDefinition that represents this quest. It will have pointers to all of the steps in the quest, and display information for the quest (title, description, icon etc) Individual steps will be referred to in the Quest item's DestinyInventoryItemDefinition.setData property, and themselves are Items with their own renderable data. */
  @Property(name: 'questItemHash')
  int questItemHash = null;
  
/* A milestone need not have an active activity, but if there is one it will be returned here, along with any variant and additional information. */
  @Property(name: 'activity')
  DestinyMilestonesDestinyPublicMilestoneActivity activity = null;
  
/* For the given quest there could be 0-to-Many challenges: mini quests that you can perform in the course of doing this quest, that may grant you rewards and benefits. */
  @Property(name: 'challenges')
  List<DestinyMilestonesDestinyPublicMilestoneChallenge> challenges = [];
  
  DestinyMilestonesDestinyPublicMilestoneQuest();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestoneQuest[questItemHash=$questItemHash, activity=$activity, challenges=$challenges, ]';
  }
}

