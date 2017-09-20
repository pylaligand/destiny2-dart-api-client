part of destiny2_api.api;

@Entity()
class GroupsV2GroupMemberApplication {
  
  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'creationDate')
  DateTime creationDate = null;
  

  @Property(name: 'resolveState')
  GroupsV2GroupApplicationResolveState resolveState = null;
  

  @Property(name: 'resolveDate')
  DateTime resolveDate = null;
  

  @Property(name: 'resolvedByMembershipId')
  int resolvedByMembershipId = null;
  

  @Property(name: 'requestMessage')
  String requestMessage = null;
  

  @Property(name: 'resolveMessage')
  String resolveMessage = null;
  

  @Property(name: 'destinyUserInfo')
  UserUserInfoCard destinyUserInfo = null;
  

  @Property(name: 'bungieNetUserInfo')
  UserUserInfoCard bungieNetUserInfo = null;
  
  GroupsV2GroupMemberApplication();

  @override
  String toString()  {
    return 'GroupsV2GroupMemberApplication[groupId=$groupId, creationDate=$creationDate, resolveState=$resolveState, resolveDate=$resolveDate, resolvedByMembershipId=$resolvedByMembershipId, requestMessage=$requestMessage, resolveMessage=$resolveMessage, destinyUserInfo=$destinyUserInfo, bungieNetUserInfo=$bungieNetUserInfo, ]';
  }
}

