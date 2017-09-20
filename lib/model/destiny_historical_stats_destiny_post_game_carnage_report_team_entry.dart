part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry {
  /* Integer ID for the team. */
  @Property(name: 'teamId')
  int teamId = null;
  
/* Team's standing relative to other teams. */
  @Property(name: 'standing')
  Object standing = null;
  
/* Score earned by the team */
  @Property(name: 'score')
  Object score = null;
  
/* Alpha or Bravo */
  @Property(name: 'teamName')
  String teamName = null;
  
  DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry[teamId=$teamId, standing=$standing, score=$score, teamName=$teamName, ]';
  }
}

