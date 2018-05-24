part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneActivityVariant {
  /* The hash for the specific variant of the activity related to this milestone. You can pull more detailed static info from the DestinyActivityDefinition, such as difficulty level. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* An OPTIONAL component: if it makes sense to talk about this activity variant in terms of whether or not it has been completed or what progress you have made in it, this will be returned. Otherwise, this will be NULL. */
  @Property(name: 'completionStatus')
  DestinyMilestonesDestinyMilestoneActivityCompletionStatus completionStatus = null;
  
/* The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
  @Property(name: 'activityModeHash')
  int activityModeHash = null;
  
/* The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
  @Property(name: 'activityModeType')
  int activityModeType = null;
  //enum activityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  };
  DestinyMilestonesDestinyMilestoneActivityVariant();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneActivityVariant[activityHash=$activityHash, completionStatus=$completionStatus, activityModeHash=$activityModeHash, activityModeType=$activityModeType, ]';
  }
}

