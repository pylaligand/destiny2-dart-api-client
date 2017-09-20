part of destiny2_api.api;

@Entity()
enum DestinyTransferStatuses {
  _0,
  _1,
  _2,
  _4
  
}

class DestinyTransferStatusesTypeTransformer extends TypeTransformer<DestinyTransferStatuses> {

  @override
  dynamic encode(DestinyTransferStatuses data) {
    switch(data) {
      case DestinyTransferStatuses._0: return 0;
      case DestinyTransferStatuses._1: return 1;
      case DestinyTransferStatuses._2: return 2;
      case DestinyTransferStatuses._4: return 4;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyTransferStatuses decode(dynamic data) {
    switch (data) {
      case 0: return DestinyTransferStatuses._0;
      case 1: return DestinyTransferStatuses._1;
      case 2: return DestinyTransferStatuses._2;
      case 4: return DestinyTransferStatuses._4;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

