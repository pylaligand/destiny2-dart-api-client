part of destiny2_api.api;

@Entity()
class ContentCommentSummary {
  
  @Property(name: 'topicId')
  int topicId = null;
  

  @Property(name: 'commentCount')
  int commentCount = null;
  
  ContentCommentSummary();

  @override
  String toString()  {
    return 'ContentCommentSummary[topicId=$topicId, commentCount=$commentCount, ]';
  }
}

