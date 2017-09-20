part of destiny2_api.api;

@Entity()
enum DestinyDestinySocketVisibility {
  _0,
  _1,
  _2
  
}

class DestinyDestinySocketVisibilityTypeTransformer extends TypeTransformer<DestinyDestinySocketVisibility> {

  @override
  dynamic encode(DestinyDestinySocketVisibility data) {
    switch(data) {
      case DestinyDestinySocketVisibility._0: return 0;
      case DestinyDestinySocketVisibility._1: return 1;
      case DestinyDestinySocketVisibility._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinySocketVisibility decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinySocketVisibility._0;
      case 1: return DestinyDestinySocketVisibility._1;
      case 2: return DestinyDestinySocketVisibility._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

