part of destiny2_api.api;

@Entity()
class GroupsV2GroupApplicationListRequest {
  
  @Property(name: 'memberships')
  List<UserUserMembership> memberships = [];
  

  @Property(name: 'message')
  String message = null;
  
  GroupsV2GroupApplicationListRequest();

  @override
  String toString()  {
    return 'GroupsV2GroupApplicationListRequest[memberships=$memberships, message=$message, ]';
  }
}

