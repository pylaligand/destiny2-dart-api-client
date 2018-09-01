part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneActivity {
  /* The hash of an arbitrarily chosen variant of this activity. We'll go ahead and call that the \"canonical\" activity, because if you're using this value you should only use it for properties that are common across the variants: things like the name of the activity, it's location, etc... Use this hash to look up the DestinyActivityDefinition of this activity for rendering data. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
  @Property(name: 'activityModeHash')
  int activityModeHash = null;
  
/* The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
  @Property(name: 'activityModeType')
  int activityModeType = null;
  //enum activityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  };
/* If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data. Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live. */
  @Property(name: 'modifierHashes')
  List<int> modifierHashes = [];
  
/* If you want more than just name/location/etc... you're going to have to dig into and show the variants of the conceptual activity. These will differ in seemingly arbitrary ways, like difficulty level and modifiers applied. Show it in whatever way tickles your fancy. */
  @Property(name: 'variants')
  List<DestinyMilestonesDestinyMilestoneActivityVariant> variants = [];
  
  DestinyMilestonesDestinyMilestoneActivity();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneActivity[activityHash=$activityHash, activityModeHash=$activityModeHash, activityModeType=$activityModeType, modifierHashes=$modifierHashes, variants=$variants, ]';
  }
}

