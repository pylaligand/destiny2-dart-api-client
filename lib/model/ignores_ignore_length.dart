part of destiny2_api.api;

@Entity()
enum IgnoresIgnoreLength {
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
  _11
  
}

class IgnoresIgnoreLengthTypeTransformer extends TypeTransformer<IgnoresIgnoreLength> {

  @override
  dynamic encode(IgnoresIgnoreLength data) {
    switch(data) {
      case IgnoresIgnoreLength._0: return 0;
      case IgnoresIgnoreLength._1: return 1;
      case IgnoresIgnoreLength._2: return 2;
      case IgnoresIgnoreLength._3: return 3;
      case IgnoresIgnoreLength._4: return 4;
      case IgnoresIgnoreLength._5: return 5;
      case IgnoresIgnoreLength._6: return 6;
      case IgnoresIgnoreLength._7: return 7;
      case IgnoresIgnoreLength._8: return 8;
      case IgnoresIgnoreLength._9: return 9;
      case IgnoresIgnoreLength._10: return 10;
      case IgnoresIgnoreLength._11: return 11;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  IgnoresIgnoreLength decode(dynamic data) {
    switch (data) {
      case 0: return IgnoresIgnoreLength._0;
      case 1: return IgnoresIgnoreLength._1;
      case 2: return IgnoresIgnoreLength._2;
      case 3: return IgnoresIgnoreLength._3;
      case 4: return IgnoresIgnoreLength._4;
      case 5: return IgnoresIgnoreLength._5;
      case 6: return IgnoresIgnoreLength._6;
      case 7: return IgnoresIgnoreLength._7;
      case 8: return IgnoresIgnoreLength._8;
      case 9: return IgnoresIgnoreLength._9;
      case 10: return IgnoresIgnoreLength._10;
      case 11: return IgnoresIgnoreLength._11;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

