part of destiny2_api.api;

@Entity()
class TrendingTrendingEntryCommunityCreation {
  
  @Property(name: 'media')
  String media = null;
  

  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'author')
  String author = null;
  

  @Property(name: 'authorMembershipId')
  int authorMembershipId = null;
  

  @Property(name: 'postId')
  int postId = null;
  

  @Property(name: 'body')
  String body = null;
  

  @Property(name: 'upvotes')
  int upvotes = null;
  
  TrendingTrendingEntryCommunityCreation();

  @override
  String toString()  {
    return 'TrendingTrendingEntryCommunityCreation[media=$media, title=$title, author=$author, authorMembershipId=$authorMembershipId, postId=$postId, body=$body, upvotes=$upvotes, ]';
  }
}

