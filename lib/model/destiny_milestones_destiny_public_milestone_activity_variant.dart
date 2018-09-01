part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestoneActivityVariant {
  /* The hash identifier of this activity variant. Examine the activity's definition in the Manifest database to determine what makes it a distinct variant. Usually it will be difficulty level or whether or not it is a guided game variant of the activity, but theoretically it could be distinguished in any arbitrary way. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* The hash identifier of the most specific Activity Mode under which this activity is played. This is useful for situations where the activity in question is - for instance - a PVP map, but it's not clear what mode the PVP map is being played under. If it's a playlist, this will be less specific: but hopefully useful in some way. */
  @Property(name: 'activityModeHash')
  int activityModeHash = null;
  
/* The enumeration equivalent of the most specific Activity Mode under which this activity is played. */
  @Property(name: 'activityModeType')
  int activityModeType = null;
  //enum activityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  };
  DestinyMilestonesDestinyPublicMilestoneActivityVariant();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestoneActivityVariant[activityHash=$activityHash, activityModeHash=$activityModeHash, activityModeType=$activityModeType, ]';
  }
}

