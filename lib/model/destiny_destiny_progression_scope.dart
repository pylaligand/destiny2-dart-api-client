part of destiny2_api.api;

@Entity()
enum DestinyDestinyProgressionScope {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6,
  _7,
  _8
  
}

class DestinyDestinyProgressionScopeTypeTransformer extends TypeTransformer<DestinyDestinyProgressionScope> {

  @override
  dynamic encode(DestinyDestinyProgressionScope data) {
    switch(data) {
      case DestinyDestinyProgressionScope._0: return 0;
      case DestinyDestinyProgressionScope._1: return 1;
      case DestinyDestinyProgressionScope._2: return 2;
      case DestinyDestinyProgressionScope._3: return 3;
      case DestinyDestinyProgressionScope._4: return 4;
      case DestinyDestinyProgressionScope._5: return 5;
      case DestinyDestinyProgressionScope._6: return 6;
      case DestinyDestinyProgressionScope._7: return 7;
      case DestinyDestinyProgressionScope._8: return 8;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyProgressionScope decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyProgressionScope._0;
      case 1: return DestinyDestinyProgressionScope._1;
      case 2: return DestinyDestinyProgressionScope._2;
      case 3: return DestinyDestinyProgressionScope._3;
      case 4: return DestinyDestinyProgressionScope._4;
      case 5: return DestinyDestinyProgressionScope._5;
      case 6: return DestinyDestinyProgressionScope._6;
      case 7: return DestinyDestinyProgressionScope._7;
      case 8: return DestinyDestinyProgressionScope._8;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

