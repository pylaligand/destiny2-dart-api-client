part of destiny2_api.api;

@Entity()
class GroupsV2GroupV2Card {
  
  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'groupType')
  GroupsV2GroupType groupType = null;
  

  @Property(name: 'creationDate')
  DateTime creationDate = null;
  

  @Property(name: 'about')
  String about = null;
  

  @Property(name: 'motto')
  String motto = null;
  

  @Property(name: 'memberCount')
  int memberCount = null;
  

  @Property(name: 'locale')
  String locale = null;
  

  @Property(name: 'membershipOption')
  GroupsV2MembershipOption membershipOption = null;
  

  @Property(name: 'capabilities')
  GroupsV2Capabilities capabilities = null;
  

  @Property(name: 'clanInfo')
  GroupsV2GroupV2ClanInfo clanInfo = null;
  

  @Property(name: 'avatarPath')
  String avatarPath = null;
  

  @Property(name: 'theme')
  String theme = null;
  
  GroupsV2GroupV2Card();

  @override
  String toString()  {
    return 'GroupsV2GroupV2Card[groupId=$groupId, name=$name, groupType=$groupType, creationDate=$creationDate, about=$about, motto=$motto, memberCount=$memberCount, locale=$locale, membershipOption=$membershipOption, capabilities=$capabilities, clanInfo=$clanInfo, avatarPath=$avatarPath, theme=$theme, ]';
  }
}

