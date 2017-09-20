part of destiny2_api.api;

@Entity()
enum DestinyDestinyTalentNodeState {
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
  _13
  
}

class DestinyDestinyTalentNodeStateTypeTransformer extends TypeTransformer<DestinyDestinyTalentNodeState> {

  @override
  dynamic encode(DestinyDestinyTalentNodeState data) {
    switch(data) {
      case DestinyDestinyTalentNodeState._0: return 0;
      case DestinyDestinyTalentNodeState._1: return 1;
      case DestinyDestinyTalentNodeState._2: return 2;
      case DestinyDestinyTalentNodeState._3: return 3;
      case DestinyDestinyTalentNodeState._4: return 4;
      case DestinyDestinyTalentNodeState._5: return 5;
      case DestinyDestinyTalentNodeState._6: return 6;
      case DestinyDestinyTalentNodeState._7: return 7;
      case DestinyDestinyTalentNodeState._8: return 8;
      case DestinyDestinyTalentNodeState._9: return 9;
      case DestinyDestinyTalentNodeState._10: return 10;
      case DestinyDestinyTalentNodeState._11: return 11;
      case DestinyDestinyTalentNodeState._12: return 12;
      case DestinyDestinyTalentNodeState._13: return 13;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyTalentNodeState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyTalentNodeState._0;
      case 1: return DestinyDestinyTalentNodeState._1;
      case 2: return DestinyDestinyTalentNodeState._2;
      case 3: return DestinyDestinyTalentNodeState._3;
      case 4: return DestinyDestinyTalentNodeState._4;
      case 5: return DestinyDestinyTalentNodeState._5;
      case 6: return DestinyDestinyTalentNodeState._6;
      case 7: return DestinyDestinyTalentNodeState._7;
      case 8: return DestinyDestinyTalentNodeState._8;
      case 9: return DestinyDestinyTalentNodeState._9;
      case 10: return DestinyDestinyTalentNodeState._10;
      case 11: return DestinyDestinyTalentNodeState._11;
      case 12: return DestinyDestinyTalentNodeState._12;
      case 13: return DestinyDestinyTalentNodeState._13;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

