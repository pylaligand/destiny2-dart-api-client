part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsActivity {
  /* Hash ID that can be looked up in the DestinyActivityTable. */
  @Property(name: 'referenceId')
  int referenceId = null;
  

  @Property(name: 'directorActivityHash')
  int directorActivityHash = null;
  
/* This value can be used to get additional data about this activity such as who else was playing. */
  @Property(name: 'instanceId')
  int instanceId = null;
  
/* Indicates the game mode of the activity. */
  @Property(name: 'mode')
  Object mode = null;
  

  @Property(name: 'modes')
  List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> modes = [];
  
/* Whether or not the match was a private match. */
  @Property(name: 'isPrivate')
  bool isPrivate = null;
  
  DestinyHistoricalStatsDestinyHistoricalStatsActivity();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsActivity[referenceId=$referenceId, directorActivityHash=$directorActivityHash, instanceId=$instanceId, mode=$mode, modes=$modes, isPrivate=$isPrivate, ]';
  }
}

