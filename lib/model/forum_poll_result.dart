part of destiny2_api.api;

@Entity()
class ForumPollResult {
  
  @Property(name: 'answerText')
  String answerText = null;
  

  @Property(name: 'answerSlot')
  int answerSlot = null;
  

  @Property(name: 'lastVoteDate')
  DateTime lastVoteDate = null;
  

  @Property(name: 'votes')
  int votes = null;
  

  @Property(name: 'requestingUserVoted')
  bool requestingUserVoted = null;
  
  ForumPollResult();

  @override
  String toString()  {
    return 'ForumPollResult[answerText=$answerText, answerSlot=$answerSlot, lastVoteDate=$lastVoteDate, votes=$votes, requestingUserVoted=$requestingUserVoted, ]';
  }
}

