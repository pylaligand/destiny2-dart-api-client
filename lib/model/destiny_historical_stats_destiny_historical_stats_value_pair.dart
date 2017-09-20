part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsValuePair {
  /* Raw value of the statistic */
  @Property(name: 'value')
  double value = null;
  
/* Localized formated version of the value. */
  @Property(name: 'displayValue')
  String displayValue = null;
  
  DestinyHistoricalStatsDestinyHistoricalStatsValuePair();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsValuePair[value=$value, displayValue=$displayValue, ]';
  }
}

