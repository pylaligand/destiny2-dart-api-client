part of destiny2_api.api;

@Entity()
class GroupsV2GroupV2ClanInfoAndInvestment {
  
  @Property(name: 'd2ClanProgressions')
  Map<String, DestinyDestinyProgression> d2ClanProgressions = {};
  

  @Property(name: 'clanCallsign')
  String clanCallsign = null;
  

  @Property(name: 'clanBannerData')
  GroupsV2ClanBanner clanBannerData = null;
  
  GroupsV2GroupV2ClanInfoAndInvestment();

  @override
  String toString()  {
    return 'GroupsV2GroupV2ClanInfoAndInvestment[d2ClanProgressions=$d2ClanProgressions, clanCallsign=$clanCallsign, clanBannerData=$clanBannerData, ]';
  }
}

