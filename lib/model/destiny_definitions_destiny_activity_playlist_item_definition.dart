part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityPlaylistItemDefinition {
  /* The hash identifier of the Activity that can be played. Use it to look up the DestinyActivityDefinition. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* If this playlist entry had an activity mode directly defined on it, this will be the hash of that mode. */
  @Property(name: 'directActivityModeHash')
  int directActivityModeHash = null;
  
/* If the playlist entry had an activity mode directly defined on it, this will be the enum value of that mode. */
  @Property(name: 'directActivityModeType')
  int directActivityModeType = null;
  //enum directActivityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  };
/* The hash identifiers for Activity Modes relevant to this entry. */
  @Property(name: 'activityModeHashes')
  List<int> activityModeHashes = [];
  
/* The activity modes - if any - in enum form. Because we can't seem to escape the enums. */
  @Property(name: 'activityModeTypes')
  List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> activityModeTypes = [];
  
  DestinyDefinitionsDestinyActivityPlaylistItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityPlaylistItemDefinition[activityHash=$activityHash, directActivityModeHash=$directActivityModeHash, directActivityModeType=$directActivityModeType, activityModeHashes=$activityModeHashes, activityModeTypes=$activityModeTypes, ]';
  }
}

