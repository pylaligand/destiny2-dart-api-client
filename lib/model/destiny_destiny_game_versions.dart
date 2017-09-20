part of destiny2_api.api;

@Entity()
enum DestinyDestinyGameVersions {
  _0,
  _1
  
}

class DestinyDestinyGameVersionsTypeTransformer extends TypeTransformer<DestinyDestinyGameVersions> {

  @override
  dynamic encode(DestinyDestinyGameVersions data) {
    switch(data) {
      case DestinyDestinyGameVersions._0: return 0;
      case DestinyDestinyGameVersions._1: return 1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyGameVersions decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyGameVersions._0;
      case 1: return DestinyDestinyGameVersions._1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

