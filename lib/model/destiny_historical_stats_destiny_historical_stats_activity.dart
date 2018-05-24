part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsActivity {
  /* The unique hash identifier of the DestinyActivityDefinition that was played. If I had this to do over, it'd be named activityHash. Too late now. */
  @Property(name: 'referenceId')
  int referenceId = null;
  
/* The unique hash identifier of the DestinyActivityDefinition that was played. */
  @Property(name: 'directorActivityHash')
  int directorActivityHash = null;
  
/* The unique identifier for this *specific* match that was played.  This value can be used to get additional data about this activity such as who else was playing via the GetPostGameCarnageReport endpoint. */
  @Property(name: 'instanceId')
  int instanceId = null;
  
/* Indicates the most specific game mode of the activity that we could find. */
  @Property(name: 'mode')
  DestinyHistoricalStatsDefinitionsDestinyActivityModeType mode = null;
  
/* The list of all Activity Modes to which this activity applies, including aggregates. This will let you see, for example, whether the activity was both Clash and part of the Trials of the Nine event. */
  @Property(name: 'modes')
  List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> modes = [];
  
/* Whether or not the match was a private match. There's no private matches in Destiny 2... yet... DUN DUN DUNNNN */
  @Property(name: 'isPrivate')
  bool isPrivate = null;
  
  DestinyHistoricalStatsDestinyHistoricalStatsActivity();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsActivity[referenceId=$referenceId, directorActivityHash=$directorActivityHash, instanceId=$instanceId, mode=$mode, modes=$modes, isPrivate=$isPrivate, ]';
  }
}

