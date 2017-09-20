part of destiny2_api.api;

@Entity()
enum DestinyDestinyUnlockValueUIStyle {
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

class DestinyDestinyUnlockValueUIStyleTypeTransformer extends TypeTransformer<DestinyDestinyUnlockValueUIStyle> {

  @override
  dynamic encode(DestinyDestinyUnlockValueUIStyle data) {
    switch(data) {
      case DestinyDestinyUnlockValueUIStyle._0: return 0;
      case DestinyDestinyUnlockValueUIStyle._1: return 1;
      case DestinyDestinyUnlockValueUIStyle._2: return 2;
      case DestinyDestinyUnlockValueUIStyle._3: return 3;
      case DestinyDestinyUnlockValueUIStyle._4: return 4;
      case DestinyDestinyUnlockValueUIStyle._5: return 5;
      case DestinyDestinyUnlockValueUIStyle._6: return 6;
      case DestinyDestinyUnlockValueUIStyle._7: return 7;
      case DestinyDestinyUnlockValueUIStyle._8: return 8;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyUnlockValueUIStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyUnlockValueUIStyle._0;
      case 1: return DestinyDestinyUnlockValueUIStyle._1;
      case 2: return DestinyDestinyUnlockValueUIStyle._2;
      case 3: return DestinyDestinyUnlockValueUIStyle._3;
      case 4: return DestinyDestinyUnlockValueUIStyle._4;
      case 5: return DestinyDestinyUnlockValueUIStyle._5;
      case 6: return DestinyDestinyUnlockValueUIStyle._6;
      case 7: return DestinyDestinyUnlockValueUIStyle._7;
      case 8: return DestinyDestinyUnlockValueUIStyle._8;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

