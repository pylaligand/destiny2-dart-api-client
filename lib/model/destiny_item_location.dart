part of destiny2_api.api;

@Entity()
enum DestinyItemLocation {
  _0,
  _1,
  _2,
  _3,
  _4
  
}

class DestinyItemLocationTypeTransformer extends TypeTransformer<DestinyItemLocation> {

  @override
  dynamic encode(DestinyItemLocation data) {
    switch(data) {
      case DestinyItemLocation._0: return 0;
      case DestinyItemLocation._1: return 1;
      case DestinyItemLocation._2: return 2;
      case DestinyItemLocation._3: return 3;
      case DestinyItemLocation._4: return 4;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyItemLocation decode(dynamic data) {
    switch (data) {
      case 0: return DestinyItemLocation._0;
      case 1: return DestinyItemLocation._1;
      case 2: return DestinyItemLocation._2;
      case 3: return DestinyItemLocation._3;
      case 4: return DestinyItemLocation._4;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

