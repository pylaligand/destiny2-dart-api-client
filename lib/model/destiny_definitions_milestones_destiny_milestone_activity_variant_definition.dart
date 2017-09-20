part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition {
  /* The hash to use for looking up the variant Activity's definition (DestinyActivityDefinition), where you can find its distinguishing characteristics such as difficulty level and recommended light level.   Frequently, that will be the only distinguishing characteristics in practice, which is somewhat of a bummer. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* If you care to do so, render the variants in the order prescribed by this value.  When you combine live Milestone data with the definition, the order becomes more useful because you'll be cross-referencing between the definition and live data. */
  @Property(name: 'order')
  int order = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition[activityHash=$activityHash, order=$order, ]';
  }
}

