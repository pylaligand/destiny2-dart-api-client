part of destiny2_api.api;

@Entity()
class TrendingTrendingCategories {
  
  @Property(name: 'categories')
  List<TrendingTrendingCategory> categories = [];
  
  TrendingTrendingCategories();

  @override
  String toString()  {
    return 'TrendingTrendingCategories[categories=$categories, ]';
  }
}

