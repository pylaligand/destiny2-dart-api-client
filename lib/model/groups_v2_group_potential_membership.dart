part of destiny2_api.api;

@Entity()
class GroupsV2GroupPotentialMembership {
  
  @Property(name: 'member')
  GroupsV2GroupPotentialMember member = null;
  

  @Property(name: 'group')
  GroupsV2GroupV2 group = null;
  
  GroupsV2GroupPotentialMembership();

  @override
  String toString()  {
    return 'GroupsV2GroupPotentialMembership[member=$member, group=$group, ]';
  }
}

