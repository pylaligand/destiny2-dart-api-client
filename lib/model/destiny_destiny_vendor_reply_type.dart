part of destiny2_api.api;

@Entity()
enum DestinyDestinyVendorReplyType {
  _0,
  _1,
  _2
  
}

class DestinyDestinyVendorReplyTypeTypeTransformer extends TypeTransformer<DestinyDestinyVendorReplyType> {

  @override
  dynamic encode(DestinyDestinyVendorReplyType data) {
    switch(data) {
      case DestinyDestinyVendorReplyType._0: return 0;
      case DestinyDestinyVendorReplyType._1: return 1;
      case DestinyDestinyVendorReplyType._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyVendorReplyType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyVendorReplyType._0;
      case 1: return DestinyDestinyVendorReplyType._1;
      case 2: return DestinyDestinyVendorReplyType._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

