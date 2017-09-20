part of destiny2_api.api;

@Entity()
enum DestinyActivityGraphNodeHighlightType {
  _0,
  _1,
  _2,
  _3,
  _4
  
}

class DestinyActivityGraphNodeHighlightTypeTypeTransformer extends TypeTransformer<DestinyActivityGraphNodeHighlightType> {

  @override
  dynamic encode(DestinyActivityGraphNodeHighlightType data) {
    switch(data) {
      case DestinyActivityGraphNodeHighlightType._0: return 0;
      case DestinyActivityGraphNodeHighlightType._1: return 1;
      case DestinyActivityGraphNodeHighlightType._2: return 2;
      case DestinyActivityGraphNodeHighlightType._3: return 3;
      case DestinyActivityGraphNodeHighlightType._4: return 4;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyActivityGraphNodeHighlightType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyActivityGraphNodeHighlightType._0;
      case 1: return DestinyActivityGraphNodeHighlightType._1;
      case 2: return DestinyActivityGraphNodeHighlightType._2;
      case 3: return DestinyActivityGraphNodeHighlightType._3;
      case 4: return DestinyActivityGraphNodeHighlightType._4;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

