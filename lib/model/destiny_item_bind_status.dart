part of destiny2_api.api;

@Entity()
enum DestinyItemBindStatus {
  _0,
  _1,
  _2,
  _3
  
}

class DestinyItemBindStatusTypeTransformer extends TypeTransformer<DestinyItemBindStatus> {

  @override
  dynamic encode(DestinyItemBindStatus data) {
    switch(data) {
      case DestinyItemBindStatus._0: return 0;
      case DestinyItemBindStatus._1: return 1;
      case DestinyItemBindStatus._2: return 2;
      case DestinyItemBindStatus._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyItemBindStatus decode(dynamic data) {
    switch (data) {
      case 0: return DestinyItemBindStatus._0;
      case 1: return DestinyItemBindStatus._1;
      case 2: return DestinyItemBindStatus._2;
      case 3: return DestinyItemBindStatus._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

