part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalWeaponStatsData {
  /* List of weapons and their perspective values. */
  @Property(name: 'weapons')
  List<DestinyHistoricalStatsDestinyHistoricalWeaponStats> weapons = [];
  
  DestinyHistoricalStatsDestinyHistoricalWeaponStatsData();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalWeaponStatsData[weapons=$weapons, ]';
  }
}

