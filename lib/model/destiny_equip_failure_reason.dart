part of destiny2_api.api;

@Entity()
enum DestinyEquipFailureReason {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16
  
}

class DestinyEquipFailureReasonTypeTransformer extends TypeTransformer<DestinyEquipFailureReason> {

  @override
  dynamic encode(DestinyEquipFailureReason data) {
    switch(data) {
      case DestinyEquipFailureReason._0: return 0;
      case DestinyEquipFailureReason._1: return 1;
      case DestinyEquipFailureReason._2: return 2;
      case DestinyEquipFailureReason._4: return 4;
      case DestinyEquipFailureReason._8: return 8;
      case DestinyEquipFailureReason._16: return 16;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyEquipFailureReason decode(dynamic data) {
    switch (data) {
      case 0: return DestinyEquipFailureReason._0;
      case 1: return DestinyEquipFailureReason._1;
      case 2: return DestinyEquipFailureReason._2;
      case 4: return DestinyEquipFailureReason._4;
      case 8: return DestinyEquipFailureReason._8;
      case 16: return DestinyEquipFailureReason._16;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

