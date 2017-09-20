part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyLeaderboardResults {
  /* Indicate the membership ID of the account that is the focal point of the provided leaderboards. */
  @Property(name: 'focusMembershipId')
  int focusMembershipId = null;
  
/* Indicate the character ID of the character that is the focal point of the provided leaderboards. May be null, in which case any character from the focus membership can appear in the provided leaderboards. */
  @Property(name: 'focusCharacterId')
  int focusCharacterId = null;
  
  DestinyHistoricalStatsDestinyLeaderboardResults();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyLeaderboardResults[focusMembershipId=$focusMembershipId, focusCharacterId=$focusCharacterId, ]';
  }
}

