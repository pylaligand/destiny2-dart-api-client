part of destiny2_api.api;

@Entity()
enum DestinyDestinyActivityNavPointType {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6,
  _7,
  _8,
  _9,
  _10,
  _11,
  _12,
  _13,
  _14,
  _15,
  _16
  
}

class DestinyDestinyActivityNavPointTypeTypeTransformer extends TypeTransformer<DestinyDestinyActivityNavPointType> {

  @override
  dynamic encode(DestinyDestinyActivityNavPointType data) {
    switch(data) {
      case DestinyDestinyActivityNavPointType._0: return 0;
      case DestinyDestinyActivityNavPointType._1: return 1;
      case DestinyDestinyActivityNavPointType._2: return 2;
      case DestinyDestinyActivityNavPointType._3: return 3;
      case DestinyDestinyActivityNavPointType._4: return 4;
      case DestinyDestinyActivityNavPointType._5: return 5;
      case DestinyDestinyActivityNavPointType._6: return 6;
      case DestinyDestinyActivityNavPointType._7: return 7;
      case DestinyDestinyActivityNavPointType._8: return 8;
      case DestinyDestinyActivityNavPointType._9: return 9;
      case DestinyDestinyActivityNavPointType._10: return 10;
      case DestinyDestinyActivityNavPointType._11: return 11;
      case DestinyDestinyActivityNavPointType._12: return 12;
      case DestinyDestinyActivityNavPointType._13: return 13;
      case DestinyDestinyActivityNavPointType._14: return 14;
      case DestinyDestinyActivityNavPointType._15: return 15;
      case DestinyDestinyActivityNavPointType._16: return 16;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyActivityNavPointType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyActivityNavPointType._0;
      case 1: return DestinyDestinyActivityNavPointType._1;
      case 2: return DestinyDestinyActivityNavPointType._2;
      case 3: return DestinyDestinyActivityNavPointType._3;
      case 4: return DestinyDestinyActivityNavPointType._4;
      case 5: return DestinyDestinyActivityNavPointType._5;
      case 6: return DestinyDestinyActivityNavPointType._6;
      case 7: return DestinyDestinyActivityNavPointType._7;
      case 8: return DestinyDestinyActivityNavPointType._8;
      case 9: return DestinyDestinyActivityNavPointType._9;
      case 10: return DestinyDestinyActivityNavPointType._10;
      case 11: return DestinyDestinyActivityNavPointType._11;
      case 12: return DestinyDestinyActivityNavPointType._12;
      case 13: return DestinyDestinyActivityNavPointType._13;
      case 14: return DestinyDestinyActivityNavPointType._14;
      case 15: return DestinyDestinyActivityNavPointType._15;
      case 16: return DestinyDestinyActivityNavPointType._16;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

