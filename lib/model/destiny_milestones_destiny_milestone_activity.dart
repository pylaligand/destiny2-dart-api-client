part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneActivity {
  /* The hash of an arbitrarily chosen variant of this activity. We'll go ahead and call that the \"canonical\" activity, because if you're using this value you should only use it for properties that are common across the variants: things like the name of the activity, it's location, etc... Use this hash to look up the DestinyActivityDefinition of this activity for rendering data. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data. Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live. */
  @Property(name: 'modifierHashes')
  List<int> modifierHashes = [];
  
/* If you want more than just name/location/etc... you're going to have to dig into and show the variants of the conceptual activity. These will differ in seemingly arbitrary ways, like difficulty level and modifiers applied. Show it in whatever way tickles your fancy. */
  @Property(name: 'variants')
  List<DestinyMilestonesDestinyMilestoneActivityVariant> variants = [];
  
  DestinyMilestonesDestinyMilestoneActivity();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneActivity[activityHash=$activityHash, modifierHashes=$modifierHashes, variants=$variants, ]';
  }
}

