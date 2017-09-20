part of destiny2_api.api;

@Entity()
class GroupsV2GroupEditAction {
  
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
  int membershipOption = null;
  //enum membershipOptionEnum {  0,  1,  2,  };

  @Property(name: 'isPublicTopicAdminOnly')
  bool isPublicTopicAdminOnly = null;
  

  @Property(name: 'allowChat')
  bool allowChat = null;
  

  @Property(name: 'chatSecurity')
  int chatSecurity = null;
  //enum chatSecurityEnum {  0,  1,  };

  @Property(name: 'callsign')
  String callsign = null;
  

  @Property(name: 'locale')
  String locale = null;
  

  @Property(name: 'homepage')
  int homepage = null;
  //enum homepageEnum {  0,  1,  2,  };

  @Property(name: 'enableInvitationMessagingForAdmins')
  bool enableInvitationMessagingForAdmins = null;
  

  @Property(name: 'defaultPublicity')
  int defaultPublicity = null;
  //enum defaultPublicityEnum {  0,  1,  2,  };
  GroupsV2GroupEditAction();

  @override
  String toString()  {
    return 'GroupsV2GroupEditAction[name=$name, about=$about, motto=$motto, theme=$theme, avatarImageIndex=$avatarImageIndex, tags=$tags, isPublic=$isPublic, membershipOption=$membershipOption, isPublicTopicAdminOnly=$isPublicTopicAdminOnly, allowChat=$allowChat, chatSecurity=$chatSecurity, callsign=$callsign, locale=$locale, homepage=$homepage, enableInvitationMessagingForAdmins=$enableInvitationMessagingForAdmins, defaultPublicity=$defaultPublicity, ]';
  }
}

