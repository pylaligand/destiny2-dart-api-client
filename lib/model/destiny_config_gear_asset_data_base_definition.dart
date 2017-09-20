part of destiny2_api.api;

@Entity()
class DestinyConfigGearAssetDataBaseDefinition {
  
  @Property(name: 'version')
  int version = null;
  

  @Property(name: 'path')
  String path = null;
  
  DestinyConfigGearAssetDataBaseDefinition();

  @override
  String toString()  {
    return 'DestinyConfigGearAssetDataBaseDefinition[version=$version, path=$path, ]';
  }
}

