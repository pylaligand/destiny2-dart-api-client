part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyPostGameCarnageReportData {
  /* Date and time for the activity. */
  @Property(name: 'period')
  DateTime period = null;
  
/* Details about the activity. */
  @Property(name: 'activityDetails')
  DestinyHistoricalStatsDestinyHistoricalStatsActivity activityDetails = null;
  
/* Collection of players and their data for this activity. */
  @Property(name: 'entries')
  List<DestinyHistoricalStatsDestinyPostGameCarnageReportEntry> entries = [];
  
/* Collection of stats for the player in this activity. */
  @Property(name: 'teams')
  List<DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry> teams = [];
  
  DestinyHistoricalStatsDestinyPostGameCarnageReportData();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyPostGameCarnageReportData[period=$period, activityDetails=$activityDetails, entries=$entries, teams=$teams, ]';
  }
}

