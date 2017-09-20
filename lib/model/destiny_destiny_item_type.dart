part of destiny2_api.api;

@Entity()
enum DestinyDestinyItemType {
  _0,
  _1,
  _2,
  _3,
  _7,
  _8,
  _9,
  _10,
  _11,
  _12,
  _13,
  _14,
  _15,
  _16,
  _17,
  _18,
  _19
  
}

class DestinyDestinyItemTypeTypeTransformer extends TypeTransformer<DestinyDestinyItemType> {

  @override
  dynamic encode(DestinyDestinyItemType data) {
    switch(data) {
      case DestinyDestinyItemType._0: return 0;
      case DestinyDestinyItemType._1: return 1;
      case DestinyDestinyItemType._2: return 2;
      case DestinyDestinyItemType._3: return 3;
      case DestinyDestinyItemType._7: return 7;
      case DestinyDestinyItemType._8: return 8;
      case DestinyDestinyItemType._9: return 9;
      case DestinyDestinyItemType._10: return 10;
      case DestinyDestinyItemType._11: return 11;
      case DestinyDestinyItemType._12: return 12;
      case DestinyDestinyItemType._13: return 13;
      case DestinyDestinyItemType._14: return 14;
      case DestinyDestinyItemType._15: return 15;
      case DestinyDestinyItemType._16: return 16;
      case DestinyDestinyItemType._17: return 17;
      case DestinyDestinyItemType._18: return 18;
      case DestinyDestinyItemType._19: return 19;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyItemType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyItemType._0;
      case 1: return DestinyDestinyItemType._1;
      case 2: return DestinyDestinyItemType._2;
      case 3: return DestinyDestinyItemType._3;
      case 7: return DestinyDestinyItemType._7;
      case 8: return DestinyDestinyItemType._8;
      case 9: return DestinyDestinyItemType._9;
      case 10: return DestinyDestinyItemType._10;
      case 11: return DestinyDestinyItemType._11;
      case 12: return DestinyDestinyItemType._12;
      case 13: return DestinyDestinyItemType._13;
      case 14: return DestinyDestinyItemType._14;
      case 15: return DestinyDestinyItemType._15;
      case 16: return DestinyDestinyItemType._16;
      case 17: return DestinyDestinyItemType._17;
      case 18: return DestinyDestinyItemType._18;
      case 19: return DestinyDestinyItemType._19;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

