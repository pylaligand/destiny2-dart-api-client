part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyActivityHistoryResults {
  /* List of activities, the most recent activity first. */
  @Property(name: 'activities')
  List<DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup> activities = [];
  
  DestinyHistoricalStatsDestinyActivityHistoryResults();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyActivityHistoryResults[activities=$activities, ]';
  }
}

