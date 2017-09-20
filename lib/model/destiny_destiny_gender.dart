part of destiny2_api.api;

@Entity()
enum DestinyDestinyGender {
  _0,
  _1,
  _2
  
}

class DestinyDestinyGenderTypeTransformer extends TypeTransformer<DestinyDestinyGender> {

  @override
  dynamic encode(DestinyDestinyGender data) {
    switch(data) {
      case DestinyDestinyGender._0: return 0;
      case DestinyDestinyGender._1: return 1;
      case DestinyDestinyGender._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyGender decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyGender._0;
      case 1: return DestinyDestinyGender._1;
      case 2: return DestinyDestinyGender._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

