part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsValue {
  /* Unique ID for this stat */
  @Property(name: 'statId')
  String statId = null;
  
/* Basic stat value. */
  @Property(name: 'basic')
  DestinyHistoricalStatsDestinyHistoricalStatsValuePair basic = null;
  
/* Per game average for the statistic, if applicable */
  @Property(name: 'pga')
  DestinyHistoricalStatsDestinyHistoricalStatsValuePair pga = null;
  
/* Weighted value of the stat if a weight greater than 1 has been assigned. */
  @Property(name: 'weighted')
  DestinyHistoricalStatsDestinyHistoricalStatsValuePair weighted = null;
  
/* When a stat represents the best, most, longest, fastest or some other personal best, the actual activity ID where that personal best was established is available on this property. */
  @Property(name: 'activityId')
  int activityId = null;
  
  DestinyHistoricalStatsDestinyHistoricalStatsValue();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsValue[statId=$statId, basic=$basic, pga=$pga, weighted=$weighted, activityId=$activityId, ]';
  }
}

