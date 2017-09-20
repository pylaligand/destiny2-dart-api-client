part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyClanAggregateStat {
  /* The id of the mode of stats (allPvp, allPvE, etc) */
  @Property(name: 'mode')
  Object mode = null;
  
/* The id of the stat */
  @Property(name: 'statId')
  String statId = null;
  
/* Value of the stat for this player */
  @Property(name: 'value')
  Object value = null;
  
  DestinyHistoricalStatsDestinyClanAggregateStat();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyClanAggregateStat[mode=$mode, statId=$statId, value=$value, ]';
  }
}

