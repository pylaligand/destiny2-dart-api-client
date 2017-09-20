part of destiny2_api.api;

@Entity()
class GroupsV2GroupUserBase {
  
  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'destinyUserInfo')
  UserUserInfoCard destinyUserInfo = null;
  

  @Property(name: 'bungieNetUserInfo')
  UserUserInfoCard bungieNetUserInfo = null;
  

  @Property(name: 'joinDate')
  DateTime joinDate = null;
  
  GroupsV2GroupUserBase();

  @override
  String toString()  {
    return 'GroupsV2GroupUserBase[groupId=$groupId, destinyUserInfo=$destinyUserInfo, bungieNetUserInfo=$bungieNetUserInfo, joinDate=$joinDate, ]';
  }
}

