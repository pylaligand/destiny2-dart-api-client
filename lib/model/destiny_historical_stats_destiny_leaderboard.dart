part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyLeaderboard {
  
  @Property(name: 'statId')
  String statId = null;
  

  @Property(name: 'entries')
  List<DestinyHistoricalStatsDestinyLeaderboardEntry> entries = [];
  
  DestinyHistoricalStatsDestinyLeaderboard();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyLeaderboard[statId=$statId, entries=$entries, ]';
  }
}

