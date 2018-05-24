part of destiny2_api.api;

@Entity()
class GroupsV2GroupV2 {
  
  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'groupType')
  GroupsV2GroupType groupType = null;
  

  @Property(name: 'membershipIdCreated')
  int membershipIdCreated = null;
  

  @Property(name: 'creationDate')
  DateTime creationDate = null;
  

  @Property(name: 'modificationDate')
  DateTime modificationDate = null;
  

  @Property(name: 'about')
  String about = null;
  

  @Property(name: 'tags')
  List<String> tags = [];
  

  @Property(name: 'memberCount')
  int memberCount = null;
  

  @Property(name: 'isPublic')
  bool isPublic = null;
  

  @Property(name: 'isPublicTopicAdminOnly')
  bool isPublicTopicAdminOnly = null;
  

  @Property(name: 'motto')
  String motto = null;
  

  @Property(name: 'allowChat')
  bool allowChat = null;
  

  @Property(name: 'isDefaultPostPublic')
  bool isDefaultPostPublic = null;
  

  @Property(name: 'chatSecurity')
  GroupsV2ChatSecuritySetting chatSecurity = null;
  

  @Property(name: 'locale')
  String locale = null;
  

  @Property(name: 'avatarImageIndex')
  int avatarImageIndex = null;
  

  @Property(name: 'homepage')
  GroupsV2GroupHomepage homepage = null;
  

  @Property(name: 'membershipOption')
  GroupsV2MembershipOption membershipOption = null;
  

  @Property(name: 'defaultPublicity')
  GroupsV2GroupPostPublicity defaultPublicity = null;
  

  @Property(name: 'theme')
  String theme = null;
  

  @Property(name: 'bannerPath')
  String bannerPath = null;
  

  @Property(name: 'avatarPath')
  String avatarPath = null;
  

  @Property(name: 'conversationId')
  int conversationId = null;
  

  @Property(name: 'enableInvitationMessagingForAdmins')
  bool enableInvitationMessagingForAdmins = null;
  

  @Property(name: 'banExpireDate')
  DateTime banExpireDate = null;
  

  @Property(name: 'features')
  GroupsV2GroupFeatures features = null;
  

  @Property(name: 'clanInfo')
  GroupsV2GroupV2ClanInfoAndInvestment clanInfo = null;
  
  GroupsV2GroupV2();

  @override
  String toString()  {
    return 'GroupsV2GroupV2[groupId=$groupId, name=$name, groupType=$groupType, membershipIdCreated=$membershipIdCreated, creationDate=$creationDate, modificationDate=$modificationDate, about=$about, tags=$tags, memberCount=$memberCount, isPublic=$isPublic, isPublicTopicAdminOnly=$isPublicTopicAdminOnly, motto=$motto, allowChat=$allowChat, isDefaultPostPublic=$isDefaultPostPublic, chatSecurity=$chatSecurity, locale=$locale, avatarImageIndex=$avatarImageIndex, homepage=$homepage, membershipOption=$membershipOption, defaultPublicity=$defaultPublicity, theme=$theme, bannerPath=$bannerPath, avatarPath=$avatarPath, conversationId=$conversationId, enableInvitationMessagingForAdmins=$enableInvitationMessagingForAdmins, banExpireDate=$banExpireDate, features=$features, clanInfo=$clanInfo, ]';
  }
}

