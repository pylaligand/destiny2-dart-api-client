part of destiny2_api.api;

@Entity()
class GroupsV2GroupOptionalConversationAddRequest {
  
  @Property(name: 'chatName')
  String chatName = null;
  

  @Property(name: 'chatSecurity')
  GroupsV2ChatSecuritySetting chatSecurity = null;
  
  GroupsV2GroupOptionalConversationAddRequest();

  @override
  String toString()  {
    return 'GroupsV2GroupOptionalConversationAddRequest[chatName=$chatName, chatSecurity=$chatSecurity, ]';
  }
}

