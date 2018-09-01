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
  
/* The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
  @Property(name: 'activityModeHash')
  int activityModeHash = null;
  
/* The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
  @Property(name: 'activityModeType')
  int activityModeType = null;
  //enum activityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  };
  DestinyMilestonesDestinyPublicMilestoneActivity();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestoneActivity[activityHash=$activityHash, modifierHashes=$modifierHashes, variants=$variants, activityModeHash=$activityModeHash, activityModeType=$activityModeType, ]';
  }
}

