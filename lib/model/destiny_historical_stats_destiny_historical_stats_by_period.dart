part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsByPeriod {
  
  @Property(name: 'allTime')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> allTime = {};
  

  @Property(name: 'allTimeTier1')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> allTimeTier1 = {};
  

  @Property(name: 'allTimeTier2')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> allTimeTier2 = {};
  

  @Property(name: 'allTimeTier3')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> allTimeTier3 = {};
  

  @Property(name: 'daily')
  List<DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup> daily = [];
  

  @Property(name: 'monthly')
  List<DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup> monthly = [];
  
  DestinyHistoricalStatsDestinyHistoricalStatsByPeriod();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsByPeriod[allTime=$allTime, allTimeTier1=$allTimeTier1, allTimeTier2=$allTimeTier2, allTimeTier3=$allTimeTier3, daily=$daily, monthly=$monthly, ]';
  }
}

