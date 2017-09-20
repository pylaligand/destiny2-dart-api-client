part of destiny2_api.api;

@Entity()
enum DestinyDestinyVendorItemRefundPolicy {
  _0,
  _1,
  _2
  
}

class DestinyDestinyVendorItemRefundPolicyTypeTransformer extends TypeTransformer<DestinyDestinyVendorItemRefundPolicy> {

  @override
  dynamic encode(DestinyDestinyVendorItemRefundPolicy data) {
    switch(data) {
      case DestinyDestinyVendorItemRefundPolicy._0: return 0;
      case DestinyDestinyVendorItemRefundPolicy._1: return 1;
      case DestinyDestinyVendorItemRefundPolicy._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyVendorItemRefundPolicy decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyVendorItemRefundPolicy._0;
      case 1: return DestinyDestinyVendorItemRefundPolicy._1;
      case 2: return DestinyDestinyVendorItemRefundPolicy._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

