part of destiny2_api.api;

@Entity()
enum DestinyItemState {
  _0,
  _1,
  _2
  
}

class DestinyItemStateTypeTransformer extends TypeTransformer<DestinyItemState> {

  @override
  dynamic encode(DestinyItemState data) {
    switch(data) {
      case DestinyItemState._0: return 0;
      case DestinyItemState._1: return 1;
      case DestinyItemState._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyItemState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyItemState._0;
      case 1: return DestinyItemState._1;
      case 2: return DestinyItemState._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

