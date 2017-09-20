part of destiny2_api.api;

@Entity()
enum IgnoresIgnoreStatus {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32
  
}

class IgnoresIgnoreStatusTypeTransformer extends TypeTransformer<IgnoresIgnoreStatus> {

  @override
  dynamic encode(IgnoresIgnoreStatus data) {
    switch(data) {
      case IgnoresIgnoreStatus._0: return 0;
      case IgnoresIgnoreStatus._1: return 1;
      case IgnoresIgnoreStatus._2: return 2;
      case IgnoresIgnoreStatus._4: return 4;
      case IgnoresIgnoreStatus._8: return 8;
      case IgnoresIgnoreStatus._16: return 16;
      case IgnoresIgnoreStatus._32: return 32;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  IgnoresIgnoreStatus decode(dynamic data) {
    switch (data) {
      case 0: return IgnoresIgnoreStatus._0;
      case 1: return IgnoresIgnoreStatus._1;
      case 2: return IgnoresIgnoreStatus._2;
      case 4: return IgnoresIgnoreStatus._4;
      case 8: return IgnoresIgnoreStatus._8;
      case 16: return IgnoresIgnoreStatus._16;
      case 32: return IgnoresIgnoreStatus._32;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

