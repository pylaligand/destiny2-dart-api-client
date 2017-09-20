part of destiny2_api.api;

@Entity()
class CommunityCommunityLiveStatus {
  
  @Property(name: 'dateStatusUpdated')
  DateTime dateStatusUpdated = null;
  

  @Property(name: 'url')
  String url = null;
  

  @Property(name: 'partnershipIdentifier')
  String partnershipIdentifier = null;
  

  @Property(name: 'partnershipType')
  PartnershipsPartnershipType partnershipType = null;
  

  @Property(name: 'thumbnail')
  String thumbnail = null;
  

  @Property(name: 'thumbnailSmall')
  String thumbnailSmall = null;
  

  @Property(name: 'thumbnailLarge')
  String thumbnailLarge = null;
  

  @Property(name: 'destinyCharacterId')
  int destinyCharacterId = null;
  

  @Property(name: 'userInfo')
  UserUserInfoCard userInfo = null;
  

  @Property(name: 'currentActivityHash')
  int currentActivityHash = null;
  

  @Property(name: 'dateLastPlayed')
  DateTime dateLastPlayed = null;
  

  @Property(name: 'dateStreamStarted')
  DateTime dateStreamStarted = null;
  

  @Property(name: 'locale')
  String locale = null;
  

  @Property(name: 'currentViewers')
  int currentViewers = null;
  

  @Property(name: 'followers')
  int followers = null;
  

  @Property(name: 'overallViewers')
  int overallViewers = null;
  

  @Property(name: 'isFeatured')
  bool isFeatured = null;
  

  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'activityModeHash')
  int activityModeHash = null;
  

  @Property(name: 'dateFeatured')
  DateTime dateFeatured = null;
  

  @Property(name: 'trendingValue')
  double trendingValue = null;
  

  @Property(name: 'isSubscribable')
  bool isSubscribable = null;
  
  CommunityCommunityLiveStatus();

  @override
  String toString()  {
    return 'CommunityCommunityLiveStatus[dateStatusUpdated=$dateStatusUpdated, url=$url, partnershipIdentifier=$partnershipIdentifier, partnershipType=$partnershipType, thumbnail=$thumbnail, thumbnailSmall=$thumbnailSmall, thumbnailLarge=$thumbnailLarge, destinyCharacterId=$destinyCharacterId, userInfo=$userInfo, currentActivityHash=$currentActivityHash, dateLastPlayed=$dateLastPlayed, dateStreamStarted=$dateStreamStarted, locale=$locale, currentViewers=$currentViewers, followers=$followers, overallViewers=$overallViewers, isFeatured=$isFeatured, title=$title, activityModeHash=$activityModeHash, dateFeatured=$dateFeatured, trendingValue=$trendingValue, isSubscribable=$isSubscribable, ]';
  }
}

