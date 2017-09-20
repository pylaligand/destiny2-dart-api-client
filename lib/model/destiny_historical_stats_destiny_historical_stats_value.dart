part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsValue {
  /* Unique ID for this stat */
  @Property(name: 'statId')
  String statId = null;
  
/* Basic stat value. */
  @Property(name: 'basic')
  Object basic = null;
  
/* Per game average for the statistic, if applicable */
  @Property(name: 'pga')
  Object pga = null;
  
/* Weighted value of the stat if a weight greater than 1 has been assigned. */
  @Property(name: 'weighted')
  Object weighted = null;
  
  DestinyHistoricalStatsDestinyHistoricalStatsValue();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsValue[statId=$statId, basic=$basic, pga=$pga, weighted=$weighted, ]';
  }
}

