part of destiny2_api.api;

@Entity()
enum DestinyDestinyActivityModeCategory {
  _0,
  _1,
  _2
  
}

class DestinyDestinyActivityModeCategoryTypeTransformer extends TypeTransformer<DestinyDestinyActivityModeCategory> {

  @override
  dynamic encode(DestinyDestinyActivityModeCategory data) {
    switch(data) {
      case DestinyDestinyActivityModeCategory._0: return 0;
      case DestinyDestinyActivityModeCategory._1: return 1;
      case DestinyDestinyActivityModeCategory._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyActivityModeCategory decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyActivityModeCategory._0;
      case 1: return DestinyDestinyActivityModeCategory._1;
      case 2: return DestinyDestinyActivityModeCategory._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

