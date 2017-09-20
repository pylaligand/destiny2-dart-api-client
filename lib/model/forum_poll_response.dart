part of destiny2_api.api;

@Entity()
class ForumPollResponse {
  
  @Property(name: 'topicId')
  int topicId = null;
  

  @Property(name: 'results')
  List<ForumPollResult> results = [];
  

  @Property(name: 'totalVotes')
  int totalVotes = null;
  
  ForumPollResponse();

  @override
  String toString()  {
    return 'ForumPollResponse[topicId=$topicId, results=$results, totalVotes=$totalVotes, ]';
  }
}

