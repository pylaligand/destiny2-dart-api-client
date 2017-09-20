part of destiny2_api.api;

@Entity()
class GroupsV2GroupV2ClanInfo {
  
  @Property(name: 'clanCallsign')
  String clanCallsign = null;
  

  @Property(name: 'clanBannerData')
  GroupsV2ClanBanner clanBannerData = null;
  
  GroupsV2GroupV2ClanInfo();

  @override
  String toString()  {
    return 'GroupsV2GroupV2ClanInfo[clanCallsign=$clanCallsign, clanBannerData=$clanBannerData, ]';
  }
}

