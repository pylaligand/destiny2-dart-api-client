part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyAggregateActivityStats {
  /* Hash ID that can be looked up in the DestinyActivityTable. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* Collection of stats for the player in this activity. */
  @Property(name: 'values')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> values = {};
  
  DestinyHistoricalStatsDestinyAggregateActivityStats();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyAggregateActivityStats[activityHash=$activityHash, values=$values, ]';
  }
}

