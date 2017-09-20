part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestoneActivityVariant {
  /* The hash identifier of this activity variant. Examine the activity's definition in the Manifest database to determine what makes it a distinct variant. Usually it will be difficulty level or whether or not it is a guided game variant of the activity, but theoretically it could be distinguished in any arbitrary way. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
  DestinyMilestonesDestinyPublicMilestoneActivityVariant();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestoneActivityVariant[activityHash=$activityHash, ]';
  }
}

