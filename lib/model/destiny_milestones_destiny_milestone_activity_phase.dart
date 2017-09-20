part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneActivityPhase {
  /* Indicates if the phase has been completed. */
  @Property(name: 'complete')
  bool complete = null;
  
  DestinyMilestonesDestinyMilestoneActivityPhase();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneActivityPhase[complete=$complete, ]';
  }
}

