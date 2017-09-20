part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestoneChallenge {
  /* The objective for the Challenge, which should have human-readable data about what needs to be done to accomplish the objective. Use this hash to look up the DestinyObjectiveDefinition. */
  @Property(name: 'objectiveHash')
  int objectiveHash = null;
  
/* IF the Objective is related to a specific Activity, this will be that activity's hash. Use it to look up the DestinyActivityDefinition for additional data to show. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
  DestinyMilestonesDestinyPublicMilestoneChallenge();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestoneChallenge[objectiveHash=$objectiveHash, activityHash=$activityHash, ]';
  }
}

