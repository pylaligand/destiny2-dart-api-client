part of destiny2_api.api;

@Entity()
class GroupsV2GroupMember {
  
  @Property(name: 'memberType')
  GroupsV2RuntimeGroupMemberType memberType = null;
  

  @Property(name: 'isOnline')
  bool isOnline = null;
  

  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'destinyUserInfo')
  UserUserInfoCard destinyUserInfo = null;
  

  @Property(name: 'bungieNetUserInfo')
  UserUserInfoCard bungieNetUserInfo = null;
  

  @Property(name: 'joinDate')
  DateTime joinDate = null;
  
  GroupsV2GroupMember();

  @override
  String toString()  {
    return 'GroupsV2GroupMember[memberType=$memberType, isOnline=$isOnline, groupId=$groupId, destinyUserInfo=$destinyUserInfo, bungieNetUserInfo=$bungieNetUserInfo, joinDate=$joinDate, ]';
  }
}

