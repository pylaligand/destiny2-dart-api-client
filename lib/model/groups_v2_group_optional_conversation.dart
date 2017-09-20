part of destiny2_api.api;

@Entity()
class GroupsV2GroupOptionalConversation {
  
  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'conversationId')
  int conversationId = null;
  

  @Property(name: 'chatEnabled')
  bool chatEnabled = null;
  

  @Property(name: 'chatName')
  String chatName = null;
  

  @Property(name: 'chatSecurity')
  GroupsV2ChatSecuritySetting chatSecurity = null;
  
  GroupsV2GroupOptionalConversation();

  @override
  String toString()  {
    return 'GroupsV2GroupOptionalConversation[groupId=$groupId, conversationId=$conversationId, chatEnabled=$chatEnabled, chatName=$chatName, chatSecurity=$chatSecurity, ]';
  }
}

