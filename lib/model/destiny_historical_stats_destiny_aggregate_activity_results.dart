part of destiny2_api.api;

@Entity()
class DestinyHistoricalStatsDestinyAggregateActivityResults {
  /* List of all activities the player has participated in. */
  @Property(name: 'activities')
  List<DestinyHistoricalStatsDestinyAggregateActivityStats> activities = [];
  
  DestinyHistoricalStatsDestinyAggregateActivityResults();

  @override
  String toString()  {
    return 'DestinyHistoricalStatsDestinyAggregateActivityResults[activities=$activities, ]';
  }
}

