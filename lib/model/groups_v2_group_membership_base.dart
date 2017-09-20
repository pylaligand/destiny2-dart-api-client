part of destiny2_api.api;

@Entity()
class GroupsV2GroupMembershipBase {
  
  @Property(name: 'group')
  GroupsV2GroupV2 group = null;
  
  GroupsV2GroupMembershipBase();

  @override
  String toString()  {
    return 'GroupsV2GroupMembershipBase[group=$group, ]';
  }
}

