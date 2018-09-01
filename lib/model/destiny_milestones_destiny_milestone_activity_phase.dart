part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneActivityPhase {
  /* Indicates if the phase has been completed. */
  @Property(name: 'complete')
  bool complete = null;
  
/* In DestinyActivityDefinition, if the activity has phases, there will be a set of phases defined in the \"insertionPoints\" property. This is the hash that maps to that phase. */
  @Property(name: 'phaseHash')
  int phaseHash = null;
  
  DestinyMilestonesDestinyMilestoneActivityPhase();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneActivityPhase[complete=$complete, phaseHash=$phaseHash, ]';
  }
}

