part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData {
  /* List of weapons and their perspective values. */
  @Property(name: 'weapons')
  List<DestinyHistoricalStatsDestinyHistoricalWeaponStats> weapons = [];
  
/* Collection of stats for the player in this activity. */
  @Property(name: 'values')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> values = {};
  
  DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData[weapons=$weapons, values=$values, ]';
  }
}

