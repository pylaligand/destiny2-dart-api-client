part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestoneActivity {
  /* The hash identifier of the activity that's been chosen to be considered the canonical \"conceptual\" activity definition. This may have many variants, defined herein. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* The activity may have 0-to-many modifiers: if it does, this will contain the hashes to the DestinyActivityModifierDefinition that defines the modifier being applied. */
  @Property(name: 'modifierHashes')
  List<int> modifierHashes = [];
  
/* Every relevant variation of this conceptual activity, including the conceptual activity itself, have variants defined here. */
  @Property(name: 'variants')
  List<DestinyMilestonesDestinyPublicMilestoneActivityVariant> variants = [];
  
  DestinyMilestonesDestinyPublicMilestoneActivity();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestoneActivity[activityHash=$activityHash, modifierHashes=$modifierHashes, variants=$variants, ]';
  }
}

