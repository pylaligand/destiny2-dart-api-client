part of destiny2_api.api;

@Entity()
class DestinyEntitiesCharactersDestinyCharacterActivitiesComponent {
  /* The last date that the user started playing an activity. */
  @Property(name: 'dateActivityStarted')
  DateTime dateActivityStarted = null;
  
/* The list of activities that the user can play. */
  @Property(name: 'availableActivities')
  List<DestinyDestinyActivity> availableActivities = [];
  
/* If the user is in an activity, this will be the hash of the Activity being played. Note that you must combine this info with currentActivityModeHash to get a real picture of what the user is doing right now. For instance, PVP \"Activities\" are just maps: it's the ActivityMode that determines what type of PVP game they're playing. */
  @Property(name: 'currentActivityHash')
  int currentActivityHash = null;
  
/* If the user is in an activity, this will be the hash of the activity mode being played. Combine with currentActivityHash to give a person a full picture of what they're doing right now. */
  @Property(name: 'currentActivityModeHash')
  int currentActivityModeHash = null;
  
/* And the current activity's most specific mode type, if it can be found. */
  @Property(name: 'currentActivityModeType')
  int currentActivityModeType = null;
  //enum currentActivityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  };
/* If the user is in an activity, this will be the hashes of the DestinyActivityModeDefinition being played. Combine with currentActivityHash to give a person a full picture of what they're doing right now. */
  @Property(name: 'currentActivityModeHashes')
  List<int> currentActivityModeHashes = [];
  
/* All Activity Modes that apply to the current activity being played, in enum form. */
  @Property(name: 'currentActivityModeTypes')
  List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> currentActivityModeTypes = [];
  
/* If the user is in a playlist, this is the hash identifier for the playlist that they chose. */
  @Property(name: 'currentPlaylistActivityHash')
  int currentPlaylistActivityHash = null;
  
/* This will have the activity hash of the last completed story/campaign mission, in case you care about that. */
  @Property(name: 'lastCompletedStoryHash')
  int lastCompletedStoryHash = null;
  
  DestinyEntitiesCharactersDestinyCharacterActivitiesComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesCharactersDestinyCharacterActivitiesComponent[dateActivityStarted=$dateActivityStarted, availableActivities=$availableActivities, currentActivityHash=$currentActivityHash, currentActivityModeHash=$currentActivityModeHash, currentActivityModeType=$currentActivityModeType, currentActivityModeHashes=$currentActivityModeHashes, currentActivityModeTypes=$currentActivityModeTypes, currentPlaylistActivityHash=$currentPlaylistActivityHash, lastCompletedStoryHash=$lastCompletedStoryHash, ]';
  }
}

