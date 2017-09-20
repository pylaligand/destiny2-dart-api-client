part of destiny2_api.api;

@Entity()
enum DestinyDestinyClass {
  _0,
  _1,
  _2,
  _3
  
}

class DestinyDestinyClassTypeTransformer extends TypeTransformer<DestinyDestinyClass> {

  @override
  dynamic encode(DestinyDestinyClass data) {
    switch(data) {
      case DestinyDestinyClass._0: return 0;
      case DestinyDestinyClass._1: return 1;
      case DestinyDestinyClass._2: return 2;
      case DestinyDestinyClass._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyClass decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyClass._0;
      case 1: return DestinyDestinyClass._1;
      case 2: return DestinyDestinyClass._2;
      case 3: return DestinyDestinyClass._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

