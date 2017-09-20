part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalWeaponStats {
  /* The hash ID of the item definition that describes the weapon. */
  @Property(name: 'referenceId')
  int referenceId = null;
  
/* Collection of stats for the period. */
  @Property(name: 'values')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> values = {};
  
  DestinyHistoricalStatsDestinyHistoricalWeaponStats();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalWeaponStats[referenceId=$referenceId, values=$values, ]';
  }
}

