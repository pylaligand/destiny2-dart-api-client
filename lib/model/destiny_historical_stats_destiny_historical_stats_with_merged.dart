part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsWithMerged {
  
  @Property(name: 'results')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsByPeriod> results = {};
  

  @Property(name: 'merged')
  DestinyHistoricalStatsDestinyHistoricalStatsByPeriod merged = null;
  
  DestinyHistoricalStatsDestinyHistoricalStatsWithMerged();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsWithMerged[results=$results, merged=$merged, ]';
  }
}

