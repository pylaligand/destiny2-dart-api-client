part of destiny2_api.api;

@Entity()
class GroupsV2GroupAction {
  /* Type of group, either Bungie.net hosted group, or a game services hosted clan. */
  @Property(name: 'groupType')
  GroupsV2GroupType groupType = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'about')
  String about = null;
  

  @Property(name: 'motto')
  String motto = null;
  

  @Property(name: 'theme')
  String theme = null;
  

  @Property(name: 'avatarImageIndex')
  int avatarImageIndex = null;
  

  @Property(name: 'tags')
  String tags = null;
  

  @Property(name: 'isPublic')
  bool isPublic = null;
  

  @Property(name: 'membershipOption')
  GroupsV2MembershipOption membershipOption = null;
  

  @Property(name: 'isPublicTopicAdminOnly')
  bool isPublicTopicAdminOnly = null;
  

  @Property(name: 'isDefaultPostPublic')
  bool isDefaultPostPublic = null;
  

  @Property(name: 'allowChat')
  bool allowChat = null;
  

  @Property(name: 'isDefaultPostAlliance')
  bool isDefaultPostAlliance = null;
  

  @Property(name: 'chatSecurity')
  GroupsV2ChatSecuritySetting chatSecurity = null;
  

  @Property(name: 'callsign')
  String callsign = null;
  

  @Property(name: 'locale')
  String locale = null;
  

  @Property(name: 'homepage')
  GroupsV2GroupHomepage homepage = null;
  
/* When operation needs a platform specific account ID for the present user, use this property. In particular, groupType of Clan requires this value to be set. */
  @Property(name: 'platformMembershipType')
  BungieMembershipType platformMembershipType = null;
  
  GroupsV2GroupAction();

  @override
  String toString()  {
    return 'GroupsV2GroupAction[groupType=$groupType, name=$name, about=$about, motto=$motto, theme=$theme, avatarImageIndex=$avatarImageIndex, tags=$tags, isPublic=$isPublic, membershipOption=$membershipOption, isPublicTopicAdminOnly=$isPublicTopicAdminOnly, isDefaultPostPublic=$isDefaultPostPublic, allowChat=$allowChat, isDefaultPostAlliance=$isDefaultPostAlliance, chatSecurity=$chatSecurity, callsign=$callsign, locale=$locale, homepage=$homepage, platformMembershipType=$platformMembershipType, ]';
  }
}

