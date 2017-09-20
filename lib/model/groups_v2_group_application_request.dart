part of destiny2_api.api;

@Entity()
class GroupsV2GroupApplicationRequest {
  
  @Property(name: 'message')
  String message = null;
  
  GroupsV2GroupApplicationRequest();

  @override
  String toString()  {
    return 'GroupsV2GroupApplicationRequest[message=$message, ]';
  }
}

