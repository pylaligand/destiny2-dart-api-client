part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneActivityVariant {
  /* The hash for the specific variant of the activity related to this milestone. You can pull more detailed static info from the DestinyActivityDefinition, such as difficulty level. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* An OPTIONAL component: if it makes sense to talk about this activity variant in terms of whether or not it has been completed or what progress you have made in it, this will be returned. Otherwise, this will be NULL. */
  @Property(name: 'completionStatus')
  DestinyMilestonesDestinyMilestoneActivityCompletionStatus completionStatus = null;
  
  DestinyMilestonesDestinyMilestoneActivityVariant();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneActivityVariant[activityHash=$activityHash, completionStatus=$completionStatus, ]';
  }
}

