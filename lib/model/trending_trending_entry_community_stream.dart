part of destiny2_api.api;

@Entity()
class TrendingTrendingEntryCommunityStream {
  
  @Property(name: 'image')
  String image = null;
  

  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'partnershipIdentifier')
  String partnershipIdentifier = null;
  

  @Property(name: 'partnershipType')
  PartnershipsPartnershipType partnershipType = null;
  
  TrendingTrendingEntryCommunityStream();

  @override
  String toString()  {
    return 'TrendingTrendingEntryCommunityStream[image=$image, title=$title, partnershipIdentifier=$partnershipIdentifier, partnershipType=$partnershipType, ]';
  }
}

