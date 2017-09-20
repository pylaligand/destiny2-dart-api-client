part of destiny2_api.api;

@Entity()
enum DestinyVendorItemStatus {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32,
  _64,
  _128,
  _256,
  _512,
  _1024,
  _2048,
  _4096
  
}

class DestinyVendorItemStatusTypeTransformer extends TypeTransformer<DestinyVendorItemStatus> {

  @override
  dynamic encode(DestinyVendorItemStatus data) {
    switch(data) {
      case DestinyVendorItemStatus._0: return 0;
      case DestinyVendorItemStatus._1: return 1;
      case DestinyVendorItemStatus._2: return 2;
      case DestinyVendorItemStatus._4: return 4;
      case DestinyVendorItemStatus._8: return 8;
      case DestinyVendorItemStatus._16: return 16;
      case DestinyVendorItemStatus._32: return 32;
      case DestinyVendorItemStatus._64: return 64;
      case DestinyVendorItemStatus._128: return 128;
      case DestinyVendorItemStatus._256: return 256;
      case DestinyVendorItemStatus._512: return 512;
      case DestinyVendorItemStatus._1024: return 1024;
      case DestinyVendorItemStatus._2048: return 2048;
      case DestinyVendorItemStatus._4096: return 4096;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyVendorItemStatus decode(dynamic data) {
    switch (data) {
      case 0: return DestinyVendorItemStatus._0;
      case 1: return DestinyVendorItemStatus._1;
      case 2: return DestinyVendorItemStatus._2;
      case 4: return DestinyVendorItemStatus._4;
      case 8: return DestinyVendorItemStatus._8;
      case 16: return DestinyVendorItemStatus._16;
      case 32: return DestinyVendorItemStatus._32;
      case 64: return DestinyVendorItemStatus._64;
      case 128: return DestinyVendorItemStatus._128;
      case 256: return DestinyVendorItemStatus._256;
      case 512: return DestinyVendorItemStatus._512;
      case 1024: return DestinyVendorItemStatus._1024;
      case 2048: return DestinyVendorItemStatus._2048;
      case 4096: return DestinyVendorItemStatus._4096;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

