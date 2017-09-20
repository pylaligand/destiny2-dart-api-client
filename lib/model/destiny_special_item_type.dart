part of destiny2_api.api;

@Entity()
enum DestinySpecialItemType {
  _0,
  _1,
  _8,
  _9,
  _23,
  _24,
  _25,
  _27,
  _29
  
}

class DestinySpecialItemTypeTypeTransformer extends TypeTransformer<DestinySpecialItemType> {

  @override
  dynamic encode(DestinySpecialItemType data) {
    switch(data) {
      case DestinySpecialItemType._0: return 0;
      case DestinySpecialItemType._1: return 1;
      case DestinySpecialItemType._8: return 8;
      case DestinySpecialItemType._9: return 9;
      case DestinySpecialItemType._23: return 23;
      case DestinySpecialItemType._24: return 24;
      case DestinySpecialItemType._25: return 25;
      case DestinySpecialItemType._27: return 27;
      case DestinySpecialItemType._29: return 29;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinySpecialItemType decode(dynamic data) {
    switch (data) {
      case 0: return DestinySpecialItemType._0;
      case 1: return DestinySpecialItemType._1;
      case 8: return DestinySpecialItemType._8;
      case 9: return DestinySpecialItemType._9;
      case 23: return DestinySpecialItemType._23;
      case 24: return DestinySpecialItemType._24;
      case 25: return DestinySpecialItemType._25;
      case 27: return DestinySpecialItemType._27;
      case 29: return DestinySpecialItemType._29;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

