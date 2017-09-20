part of destiny2_api.api;

@Entity()
class GroupsV2GroupPotentialMember {
  
  @Property(name: 'potentialStatus')
  GroupsV2GroupPotentialMemberStatus potentialStatus = null;
  

  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'destinyUserInfo')
  UserUserInfoCard destinyUserInfo = null;
  

  @Property(name: 'bungieNetUserInfo')
  UserUserInfoCard bungieNetUserInfo = null;
  

  @Property(name: 'joinDate')
  DateTime joinDate = null;
  
  GroupsV2GroupPotentialMember();

  @override
  String toString()  {
    return 'GroupsV2GroupPotentialMember[potentialStatus=$potentialStatus, groupId=$groupId, destinyUserInfo=$destinyUserInfo, bungieNetUserInfo=$bungieNetUserInfo, joinDate=$joinDate, ]';
  }
}

