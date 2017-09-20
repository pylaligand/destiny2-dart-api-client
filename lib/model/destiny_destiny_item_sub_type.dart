part of destiny2_api.api;

@Entity()
enum DestinyDestinyItemSubType {
  _0,
  _1,
  _2,
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
  _16,
  _17,
  _18,
  _19,
  _20
  
}

class DestinyDestinyItemSubTypeTypeTransformer extends TypeTransformer<DestinyDestinyItemSubType> {

  @override
  dynamic encode(DestinyDestinyItemSubType data) {
    switch(data) {
      case DestinyDestinyItemSubType._0: return 0;
      case DestinyDestinyItemSubType._1: return 1;
      case DestinyDestinyItemSubType._2: return 2;
      case DestinyDestinyItemSubType._5: return 5;
      case DestinyDestinyItemSubType._6: return 6;
      case DestinyDestinyItemSubType._7: return 7;
      case DestinyDestinyItemSubType._8: return 8;
      case DestinyDestinyItemSubType._9: return 9;
      case DestinyDestinyItemSubType._10: return 10;
      case DestinyDestinyItemSubType._11: return 11;
      case DestinyDestinyItemSubType._12: return 12;
      case DestinyDestinyItemSubType._13: return 13;
      case DestinyDestinyItemSubType._14: return 14;
      case DestinyDestinyItemSubType._16: return 16;
      case DestinyDestinyItemSubType._17: return 17;
      case DestinyDestinyItemSubType._18: return 18;
      case DestinyDestinyItemSubType._19: return 19;
      case DestinyDestinyItemSubType._20: return 20;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyItemSubType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyItemSubType._0;
      case 1: return DestinyDestinyItemSubType._1;
      case 2: return DestinyDestinyItemSubType._2;
      case 5: return DestinyDestinyItemSubType._5;
      case 6: return DestinyDestinyItemSubType._6;
      case 7: return DestinyDestinyItemSubType._7;
      case 8: return DestinyDestinyItemSubType._8;
      case 9: return DestinyDestinyItemSubType._9;
      case 10: return DestinyDestinyItemSubType._10;
      case 11: return DestinyDestinyItemSubType._11;
      case 12: return DestinyDestinyItemSubType._12;
      case 13: return DestinyDestinyItemSubType._13;
      case 14: return DestinyDestinyItemSubType._14;
      case 16: return DestinyDestinyItemSubType._16;
      case 17: return DestinyDestinyItemSubType._17;
      case 18: return DestinyDestinyItemSubType._18;
      case 19: return DestinyDestinyItemSubType._19;
      case 20: return DestinyDestinyItemSubType._20;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

