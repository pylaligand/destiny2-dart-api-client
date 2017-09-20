part of destiny2_api.api;

@Entity()
class GroupsV2GroupOptionalConversationEditRequest {
  
  @Property(name: 'chatEnabled')
  bool chatEnabled = null;
  

  @Property(name: 'chatName')
  String chatName = null;
  

  @Property(name: 'chatSecurity')
  int chatSecurity = null;
  //enum chatSecurityEnum {  0,  1,  };
  GroupsV2GroupOptionalConversationEditRequest();

  @override
  String toString()  {
    return 'GroupsV2GroupOptionalConversationEditRequest[chatEnabled=$chatEnabled, chatName=$chatName, chatSecurity=$chatSecurity, ]';
  }
}

