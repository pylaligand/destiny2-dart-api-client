part of destiny2_api.api;

@Entity()
class TrendingTrendingCategory {
  
  @Property(name: 'categoryName')
  String categoryName = null;
  

  @Property(name: 'entries')
  SearchResultOfTrendingEntry entries = null;
  

  @Property(name: 'categoryId')
  String categoryId = null;
  
  TrendingTrendingCategory();

  @override
  String toString()  {
    return 'TrendingTrendingCategory[categoryName=$categoryName, entries=$entries, categoryId=$categoryId, ]';
  }
}

