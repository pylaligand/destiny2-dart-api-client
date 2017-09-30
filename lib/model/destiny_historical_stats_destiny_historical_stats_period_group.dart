part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup {
  /* Period for the group. If the stat periodType is day, then this will have a specific day. If the type is monthly, then this value will be the first day of the applicable month. This value is not set when the periodType is 'all time'. */
  @Property(name: 'period')
  DateTime period = null;
  
/* If the period group is for a specific activity, this property will be set. */
  @Property(name: 'activityDetails')
  DestinyHistoricalStatsDestinyHistoricalStatsActivity activityDetails = null;
  
/* Collection of stats for the period. */
  @Property(name: 'values')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> values = {};
  
  DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup[period=$period, activityDetails=$activityDetails, values=$values, ]';
  }
}

