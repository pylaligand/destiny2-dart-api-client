part of destiny2_api.api;

@Entity()
class TrendingTrendingEntryDestinyItem {
  
  @Property(name: 'itemHash')
  int itemHash = null;
  
  TrendingTrendingEntryDestinyItem();

  @override
  String toString()  {
    return 'TrendingTrendingEntryDestinyItem[itemHash=$itemHash, ]';
  }
}

