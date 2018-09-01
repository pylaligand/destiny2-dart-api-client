part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition {
  /* The activity for which this challenge is active. */
  @Property(name: 'activityHash')
  int activityHash = null;
  

  @Property(name: 'challenges')
  List<DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition> challenges = [];
  
/* If the activity and its challenge is visible on any of these nodes, it will be returned. */
  @Property(name: 'activityGraphNodes')
  List<DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry> activityGraphNodes = [];
  
  DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition[activityHash=$activityHash, challenges=$challenges, activityGraphNodes=$activityGraphNodes, ]';
  }
}

