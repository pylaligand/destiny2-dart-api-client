part of destiny2_api.api;

@Entity()
class GroupsV2GroupApplicationResponse {
  
  @Property(name: 'resolution')
  GroupsV2GroupApplicationResolveState resolution = null;
  
  GroupsV2GroupApplicationResponse();

  @override
  String toString()  {
    return 'GroupsV2GroupApplicationResponse[resolution=$resolution, ]';
  }
}

