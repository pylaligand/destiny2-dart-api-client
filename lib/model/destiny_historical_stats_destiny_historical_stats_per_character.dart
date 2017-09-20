part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter {
  
  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'deleted')
  bool deleted = null;
  

  @Property(name: 'results')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsByPeriod> results = {};
  

  @Property(name: 'merged')
  DestinyHistoricalStatsDestinyHistoricalStatsByPeriod merged = null;
  
  DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter[characterId=$characterId, deleted=$deleted, results=$results, merged=$merged, ]';
  }
}

