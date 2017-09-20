part of destiny2_api.api;

@Entity()
class GroupsV2GroupBan {
  
  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'lastModifiedBy')
  UserUserInfoCard lastModifiedBy = null;
  

  @Property(name: 'createdBy')
  UserUserInfoCard createdBy = null;
  

  @Property(name: 'dateBanned')
  DateTime dateBanned = null;
  

  @Property(name: 'dateExpires')
  DateTime dateExpires = null;
  

  @Property(name: 'comment')
  String comment = null;
  

  @Property(name: 'bungieNetUserInfo')
  UserUserInfoCard bungieNetUserInfo = null;
  

  @Property(name: 'destinyUserInfo')
  UserUserInfoCard destinyUserInfo = null;
  
  GroupsV2GroupBan();

  @override
  String toString()  {
    return 'GroupsV2GroupBan[groupId=$groupId, lastModifiedBy=$lastModifiedBy, createdBy=$createdBy, dateBanned=$dateBanned, dateExpires=$dateExpires, comment=$comment, bungieNetUserInfo=$bungieNetUserInfo, destinyUserInfo=$destinyUserInfo, ]';
  }
}

