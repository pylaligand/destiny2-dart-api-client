part of destiny2_api.api;

@Entity()
enum DestinyDamageType {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5
  
}

class DestinyDamageTypeTypeTransformer extends TypeTransformer<DestinyDamageType> {

  @override
  dynamic encode(DestinyDamageType data) {
    switch(data) {
      case DestinyDamageType._0: return 0;
      case DestinyDamageType._1: return 1;
      case DestinyDamageType._2: return 2;
      case DestinyDamageType._3: return 3;
      case DestinyDamageType._4: return 4;
      case DestinyDamageType._5: return 5;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDamageType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDamageType._0;
      case 1: return DestinyDamageType._1;
      case 2: return DestinyDamageType._2;
      case 3: return DestinyDamageType._3;
      case 4: return DestinyDamageType._4;
      case 5: return DestinyDamageType._5;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

