part of destiny2_api.api;

@Entity()
class GroupsV2GroupMembership {
  
  @Property(name: 'member')
  GroupsV2GroupMember member = null;
  

  @Property(name: 'group')
  GroupsV2GroupV2 group = null;
  
  GroupsV2GroupMembership();

  @override
  String toString()  {
    return 'GroupsV2GroupMembership[member=$member, group=$group, ]';
  }
}

