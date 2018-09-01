part of destiny2_api.api;

@Entity()
class CommonModelsCoreSettingsConfiguration {
  
  @Property(name: 'systems')
  Map<String, CommonModelsCoreSystem> systems = {};
  

  @Property(name: 'ignoreReasons')
  List<CommonModelsCoreSetting> ignoreReasons = [];
  

  @Property(name: 'forumCategories')
  List<CommonModelsCoreSetting> forumCategories = [];
  

  @Property(name: 'groupAvatars')
  List<CommonModelsCoreSetting> groupAvatars = [];
  

  @Property(name: 'destinyMembershipTypes')
  List<CommonModelsCoreSetting> destinyMembershipTypes = [];
  

  @Property(name: 'recruitmentPlatformTags')
  List<CommonModelsCoreSetting> recruitmentPlatformTags = [];
  

  @Property(name: 'recruitmentMiscTags')
  List<CommonModelsCoreSetting> recruitmentMiscTags = [];
  

  @Property(name: 'recruitmentActivities')
  List<CommonModelsCoreSetting> recruitmentActivities = [];
  

  @Property(name: 'userContentLocales')
  List<CommonModelsCoreSetting> userContentLocales = [];
  

  @Property(name: 'systemContentLocales')
  List<CommonModelsCoreSetting> systemContentLocales = [];
  

  @Property(name: 'clanBannerDecals')
  List<CommonModelsCoreSetting> clanBannerDecals = [];
  

  @Property(name: 'clanBannerDecalColors')
  List<CommonModelsCoreSetting> clanBannerDecalColors = [];
  

  @Property(name: 'clanBannerGonfalons')
  List<CommonModelsCoreSetting> clanBannerGonfalons = [];
  

  @Property(name: 'clanBannerGonfalonColors')
  List<CommonModelsCoreSetting> clanBannerGonfalonColors = [];
  

  @Property(name: 'clanBannerGonfalonDetails')
  List<CommonModelsCoreSetting> clanBannerGonfalonDetails = [];
  

  @Property(name: 'clanBannerGonfalonDetailColors')
  List<CommonModelsCoreSetting> clanBannerGonfalonDetailColors = [];
  

  @Property(name: 'clanBannerStandards')
  List<CommonModelsCoreSetting> clanBannerStandards = [];
  

  @Property(name: 'destiny2CoreSettings')
  CommonModelsDestiny2CoreSettings destiny2CoreSettings = null;
  
  CommonModelsCoreSettingsConfiguration();

  @override
  String toString()  {
    return 'CommonModelsCoreSettingsConfiguration[systems=$systems, ignoreReasons=$ignoreReasons, forumCategories=$forumCategories, groupAvatars=$groupAvatars, destinyMembershipTypes=$destinyMembershipTypes, recruitmentPlatformTags=$recruitmentPlatformTags, recruitmentMiscTags=$recruitmentMiscTags, recruitmentActivities=$recruitmentActivities, userContentLocales=$userContentLocales, systemContentLocales=$systemContentLocales, clanBannerDecals=$clanBannerDecals, clanBannerDecalColors=$clanBannerDecalColors, clanBannerGonfalons=$clanBannerGonfalons, clanBannerGonfalonColors=$clanBannerGonfalonColors, clanBannerGonfalonDetails=$clanBannerGonfalonDetails, clanBannerGonfalonDetailColors=$clanBannerGonfalonDetailColors, clanBannerStandards=$clanBannerStandards, destiny2CoreSettings=$destiny2CoreSettings, ]';
  }
}

