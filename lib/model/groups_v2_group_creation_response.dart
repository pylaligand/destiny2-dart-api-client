part of destiny2_api.api;

@Entity()
class GroupsV2GroupCreationResponse {
  
  @Property(name: 'groupId')
  int groupId = null;
  
  GroupsV2GroupCreationResponse();

  @override
  String toString()  {
    return 'GroupsV2GroupCreationResponse[groupId=$groupId, ]';
  }
}

