part of destiny2_api.api;

@Entity()
class TrendingTrendingDetail {
  
  @Property(name: 'identifier')
  String identifier = null;
  

  @Property(name: 'entityType')
  TrendingTrendingEntryType entityType = null;
  

  @Property(name: 'news')
  TrendingTrendingEntryNews news = null;
  

  @Property(name: 'support')
  TrendingTrendingEntrySupportArticle support = null;
  

  @Property(name: 'destinyItem')
  TrendingTrendingEntryDestinyItem destinyItem = null;
  

  @Property(name: 'destinyActivity')
  TrendingTrendingEntryDestinyActivity destinyActivity = null;
  

  @Property(name: 'destinyRitual')
  TrendingTrendingEntryDestinyRitual destinyRitual = null;
  

  @Property(name: 'creation')
  TrendingTrendingEntryCommunityCreation creation = null;
  

  @Property(name: 'stream')
  TrendingTrendingEntryCommunityStream stream = null;
  
  TrendingTrendingDetail();

  @override
  String toString()  {
    return 'TrendingTrendingDetail[identifier=$identifier, entityType=$entityType, news=$news, support=$support, destinyItem=$destinyItem, destinyActivity=$destinyActivity, destinyRitual=$destinyRitual, creation=$creation, stream=$stream, ]';
  }
}

