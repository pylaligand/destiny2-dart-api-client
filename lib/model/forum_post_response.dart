part of destiny2_api.api;

@Entity()
class ForumPostResponse {
  
  @Property(name: 'lastReplyTimestamp')
  DateTime lastReplyTimestamp = null;
  

  @Property(name: 'IsPinned')
  bool isPinned = null;
  

  @Property(name: 'urlMediaType')
  ForumForumMediaType urlMediaType = null;
  

  @Property(name: 'thumbnail')
  String thumbnail = null;
  

  @Property(name: 'popularity')
  ForumForumPostPopularity popularity = null;
  

  @Property(name: 'isActive')
  bool isActive = null;
  

  @Property(name: 'isAnnouncement')
  bool isAnnouncement = null;
  

  @Property(name: 'userRating')
  int userRating = null;
  

  @Property(name: 'userHasRated')
  bool userHasRated = null;
  

  @Property(name: 'userHasMutedPost')
  bool userHasMutedPost = null;
  

  @Property(name: 'latestReplyPostId')
  int latestReplyPostId = null;
  

  @Property(name: 'latestReplyAuthorId')
  int latestReplyAuthorId = null;
  

  @Property(name: 'ignoreStatus')
  IgnoresIgnoreResponse ignoreStatus = null;
  

  @Property(name: 'locale')
  String locale = null;
  
  ForumPostResponse();

  @override
  String toString()  {
    return 'ForumPostResponse[lastReplyTimestamp=$lastReplyTimestamp, isPinned=$isPinned, urlMediaType=$urlMediaType, thumbnail=$thumbnail, popularity=$popularity, isActive=$isActive, isAnnouncement=$isAnnouncement, userRating=$userRating, userHasRated=$userHasRated, userHasMutedPost=$userHasMutedPost, latestReplyPostId=$latestReplyPostId, latestReplyAuthorId=$latestReplyAuthorId, ignoreStatus=$ignoreStatus, locale=$locale, ]';
  }
}

