part of destiny2_api.api;

@Entity()
class FireteamFireteamMember {
  
  @Property(name: 'destinyUserInfo')
  UserUserInfoCard destinyUserInfo = null;
  

  @Property(name: 'bungieNetUserInfo')
  UserUserInfoCard bungieNetUserInfo = null;
  

  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'dateJoined')
  DateTime dateJoined = null;
  

  @Property(name: 'hasMicrophone')
  bool hasMicrophone = null;
  

  @Property(name: 'lastPlatformInviteAttemptDate')
  DateTime lastPlatformInviteAttemptDate = null;
  

  @Property(name: 'lastPlatformInviteAttemptResult')
  FireteamFireteamPlatformInviteResult lastPlatformInviteAttemptResult = null;
  
  FireteamFireteamMember();

  @override
  String toString()  {
    return 'FireteamFireteamMember[destinyUserInfo=$destinyUserInfo, bungieNetUserInfo=$bungieNetUserInfo, characterId=$characterId, dateJoined=$dateJoined, hasMicrophone=$hasMicrophone, lastPlatformInviteAttemptDate=$lastPlatformInviteAttemptDate, lastPlatformInviteAttemptResult=$lastPlatformInviteAttemptResult, ]';
  }
}

