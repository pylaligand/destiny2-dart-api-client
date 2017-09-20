part of destiny2_api.api;

@Entity()
class GroupsV2GroupBanRequest {
  
  @Property(name: 'comment')
  String comment = null;
  

  @Property(name: 'length')
  IgnoresIgnoreLength length = null;
  
  GroupsV2GroupBanRequest();

  @override
  String toString()  {
    return 'GroupsV2GroupBanRequest[comment=$comment, length=$length, ]';
  }
}

