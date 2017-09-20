part of destiny2_api.api;

@Entity()
class GroupsV2GroupMemberLeaveResult {
  
  @Property(name: 'group')
  GroupsV2GroupV2 group = null;
  

  @Property(name: 'groupDeleted')
  bool groupDeleted = null;
  
  GroupsV2GroupMemberLeaveResult();

  @override
  String toString()  {
    return 'GroupsV2GroupMemberLeaveResult[group=$group, groupDeleted=$groupDeleted, ]';
  }
}

