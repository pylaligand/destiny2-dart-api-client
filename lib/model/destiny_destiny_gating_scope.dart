part of destiny2_api.api;

@Entity()
enum DestinyDestinyGatingScope {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6
  
}

class DestinyDestinyGatingScopeTypeTransformer extends TypeTransformer<DestinyDestinyGatingScope> {

  @override
  dynamic encode(DestinyDestinyGatingScope data) {
    switch(data) {
      case DestinyDestinyGatingScope._0: return 0;
      case DestinyDestinyGatingScope._1: return 1;
      case DestinyDestinyGatingScope._2: return 2;
      case DestinyDestinyGatingScope._3: return 3;
      case DestinyDestinyGatingScope._4: return 4;
      case DestinyDestinyGatingScope._5: return 5;
      case DestinyDestinyGatingScope._6: return 6;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyGatingScope decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyGatingScope._0;
      case 1: return DestinyDestinyGatingScope._1;
      case 2: return DestinyDestinyGatingScope._2;
      case 3: return DestinyDestinyGatingScope._3;
      case 4: return DestinyDestinyGatingScope._4;
      case 5: return DestinyDestinyGatingScope._5;
      case 6: return DestinyDestinyGatingScope._6;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

