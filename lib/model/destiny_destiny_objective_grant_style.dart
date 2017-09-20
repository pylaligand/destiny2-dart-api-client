part of destiny2_api.api;

@Entity()
enum DestinyDestinyObjectiveGrantStyle {
  _0,
  _1,
  _2
  
}

class DestinyDestinyObjectiveGrantStyleTypeTransformer extends TypeTransformer<DestinyDestinyObjectiveGrantStyle> {

  @override
  dynamic encode(DestinyDestinyObjectiveGrantStyle data) {
    switch(data) {
      case DestinyDestinyObjectiveGrantStyle._0: return 0;
      case DestinyDestinyObjectiveGrantStyle._1: return 1;
      case DestinyDestinyObjectiveGrantStyle._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyObjectiveGrantStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyObjectiveGrantStyle._0;
      case 1: return DestinyDestinyObjectiveGrantStyle._1;
      case 2: return DestinyDestinyObjectiveGrantStyle._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

