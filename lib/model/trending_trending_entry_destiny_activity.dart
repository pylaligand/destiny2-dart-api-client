part of destiny2_api.api;

@Entity()
class TrendingTrendingEntryDestinyActivity {
  
  @Property(name: 'activityHash')
  int activityHash = null;
  

  @Property(name: 'status')
  DestinyActivitiesDestinyPublicActivityStatus status = null;
  
  TrendingTrendingEntryDestinyActivity();

  @override
  String toString()  {
    return 'TrendingTrendingEntryDestinyActivity[activityHash=$activityHash, status=$status, ]';
  }
}

