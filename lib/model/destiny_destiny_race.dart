part of destiny2_api.api;

@Entity()
enum DestinyDestinyRace {
  _0,
  _1,
  _2,
  _3
  
}

class DestinyDestinyRaceTypeTransformer extends TypeTransformer<DestinyDestinyRace> {

  @override
  dynamic encode(DestinyDestinyRace data) {
    switch(data) {
      case DestinyDestinyRace._0: return 0;
      case DestinyDestinyRace._1: return 1;
      case DestinyDestinyRace._2: return 2;
      case DestinyDestinyRace._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyRace decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyRace._0;
      case 1: return DestinyDestinyRace._1;
      case 2: return DestinyDestinyRace._2;
      case 3: return DestinyDestinyRace._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

