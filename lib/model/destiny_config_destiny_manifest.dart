part of destiny2_api.api;

@Entity()
class DestinyConfigDestinyManifest {
  
  @Property(name: 'version')
  String version = null;
  

  @Property(name: 'mobileAssetContentPath')
  String mobileAssetContentPath = null;
  

  @Property(name: 'mobileGearAssetDataBases')
  List<DestinyConfigGearAssetDataBaseDefinition> mobileGearAssetDataBases = [];
  

  @Property(name: 'mobileWorldContentPaths')
  Map<String, String> mobileWorldContentPaths = {};
  

  @Property(name: 'mobileClanBannerDatabasePath')
  String mobileClanBannerDatabasePath = null;
  

  @Property(name: 'mobileGearCDN')
  Map<String, String> mobileGearCDN = {};
  
  DestinyConfigDestinyManifest();

  @override
  String toString()  {
    return 'DestinyConfigDestinyManifest[version=$version, mobileAssetContentPath=$mobileAssetContentPath, mobileGearAssetDataBases=$mobileGearAssetDataBases, mobileWorldContentPaths=$mobileWorldContentPaths, mobileClanBannerDatabasePath=$mobileClanBannerDatabasePath, mobileGearCDN=$mobileGearCDN, ]';
  }
}

