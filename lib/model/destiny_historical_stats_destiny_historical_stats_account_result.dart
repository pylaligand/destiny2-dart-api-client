part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyHistoricalStatsAccountResult {
  
  @Property(name: 'mergedDeletedCharacters')
  DestinyHistoricalStatsDestinyHistoricalStatsWithMerged mergedDeletedCharacters = null;
  

  @Property(name: 'mergedAllCharacters')
  DestinyHistoricalStatsDestinyHistoricalStatsWithMerged mergedAllCharacters = null;
  

  @Property(name: 'characters')
  List<DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter> characters = [];
  
  DestinyHistoricalStatsDestinyHistoricalStatsAccountResult();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyHistoricalStatsAccountResult[mergedDeletedCharacters=$mergedDeletedCharacters, mergedAllCharacters=$mergedAllCharacters, characters=$characters, ]';
  }
}

