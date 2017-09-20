part of destiny2_api.api;

@Entity()
class ForumForumRecruitmentDetail {
  
  @Property(name: 'topicId')
  int topicId = null;
  

  @Property(name: 'microphoneRequired')
  bool microphoneRequired = null;
  

  @Property(name: 'intensity')
  ForumForumRecruitmentIntensityLabel intensity = null;
  

  @Property(name: 'tone')
  ForumForumRecruitmentToneLabel tone = null;
  

  @Property(name: 'approved')
  bool approved = null;
  

  @Property(name: 'conversationId')
  int conversationId = null;
  

  @Property(name: 'playerSlotsTotal')
  int playerSlotsTotal = null;
  

  @Property(name: 'playerSlotsRemaining')
  int playerSlotsRemaining = null;
  

  @Property(name: 'Fireteam')
  List<UserGeneralUser> fireteam = [];
  

  @Property(name: 'kickedPlayerIds')
  List<int> kickedPlayerIds = [];
  
  ForumForumRecruitmentDetail();

  @override
  String toString()  {
    return 'ForumForumRecruitmentDetail[topicId=$topicId, microphoneRequired=$microphoneRequired, intensity=$intensity, tone=$tone, approved=$approved, conversationId=$conversationId, playerSlotsTotal=$playerSlotsTotal, playerSlotsRemaining=$playerSlotsRemaining, fireteam=$fireteam, kickedPlayerIds=$kickedPlayerIds, ]';
  }
}

