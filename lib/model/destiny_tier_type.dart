part of destiny2_api.api;

@Entity()
enum DestinyTierType {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6
  
}

class DestinyTierTypeTypeTransformer extends TypeTransformer<DestinyTierType> {

  @override
  dynamic encode(DestinyTierType data) {
    switch(data) {
      case DestinyTierType._0: return 0;
      case DestinyTierType._1: return 1;
      case DestinyTierType._2: return 2;
      case DestinyTierType._3: return 3;
      case DestinyTierType._4: return 4;
      case DestinyTierType._5: return 5;
      case DestinyTierType._6: return 6;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyTierType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyTierType._0;
      case 1: return DestinyTierType._1;
      case 2: return DestinyTierType._2;
      case 3: return DestinyTierType._3;
      case 4: return DestinyTierType._4;
      case 5: return DestinyTierType._5;
      case 6: return DestinyTierType._6;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

