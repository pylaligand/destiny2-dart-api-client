part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyLeaderboardEntry {
  /* Where this player ranks on the leaderboard. A value of 1 is the top rank. */
  @Property(name: 'rank')
  int rank = null;
  
/* Identity details of the player */
  @Property(name: 'player')
  Object player = null;
  
/* ID of the player's best character for the reported stat. */
  @Property(name: 'characterId')
  int characterId = null;
  
/* Value of the stat for this player */
  @Property(name: 'value')
  Object value = null;
  
  DestinyHistoricalStatsDestinyLeaderboardEntry();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyLeaderboardEntry[rank=$rank, player=$player, characterId=$characterId, value=$value, ]';
  }
}

