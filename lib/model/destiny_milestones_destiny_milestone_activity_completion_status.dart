part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneActivityCompletionStatus {
  /* If the activity has been \"completed\", that information will be returned here. */
  @Property(name: 'completed')
  bool completed = null;
  
/* If the Activity has discrete \"phases\" that we can track, that info will be here. Otherwise, this value will be NULL. Note that this is a list and not a dictionary: the order implies the ascending order of phases or progression in this activity. */
  @Property(name: 'phases')
  List<DestinyMilestonesDestinyMilestoneActivityPhase> phases = [];
  
  DestinyMilestonesDestinyMilestoneActivityCompletionStatus();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneActivityCompletionStatus[completed=$completed, phases=$phases, ]';
  }
}

