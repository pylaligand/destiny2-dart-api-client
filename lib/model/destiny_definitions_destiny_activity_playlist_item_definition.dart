part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityPlaylistItemDefinition {
  /* The hash identifier of the Activity that can be played. Use it to look up the DestinyActivityDefinition. */
  @Property(name: 'activityHash')
  int activityHash = null;
  

  @Property(name: 'directActivityModeHash')
  int directActivityModeHash = null;
  

  @Property(name: 'directActivityModeType')
  int directActivityModeType = null;
  //enum directActivityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  };

  @Property(name: 'activityModeHashes')
  List<int> activityModeHashes = [];
  

  @Property(name: 'activityModeTypes')
  List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> activityModeTypes = [];
  
  DestinyDefinitionsDestinyActivityPlaylistItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityPlaylistItemDefinition[activityHash=$activityHash, directActivityModeHash=$directActivityModeHash, directActivityModeType=$directActivityModeType, activityModeHashes=$activityModeHashes, activityModeTypes=$activityModeTypes, ]';
  }
}

