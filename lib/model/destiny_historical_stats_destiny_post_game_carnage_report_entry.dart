part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyPostGameCarnageReportEntry {
  /* Standing of the player */
  @Property(name: 'standing')
  int standing = null;
  
/* Score of the player if available */
  @Property(name: 'score')
  Object score = null;
  
/* Identity details of the player */
  @Property(name: 'player')
  Object player = null;
  
/* ID of the player's character used in the activity. */
  @Property(name: 'characterId')
  int characterId = null;
  
/* Collection of stats for the player in this activity. */
  @Property(name: 'values')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsValue> values = {};
  
/* Extended data extracted from the activity blob. */
  @Property(name: 'extended')
  Object extended = null;
  
  DestinyHistoricalStatsDestinyPostGameCarnageReportEntry();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyPostGameCarnageReportEntry[standing=$standing, score=$score, player=$player, characterId=$characterId, values=$values, extended=$extended, ]';
  }
}

