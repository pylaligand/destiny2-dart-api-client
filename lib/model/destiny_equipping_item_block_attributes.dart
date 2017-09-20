part of destiny2_api.api;

@Entity()
enum DestinyEquippingItemBlockAttributes {
  _0,
  _1
  
}

class DestinyEquippingItemBlockAttributesTypeTransformer extends TypeTransformer<DestinyEquippingItemBlockAttributes> {

  @override
  dynamic encode(DestinyEquippingItemBlockAttributes data) {
    switch(data) {
      case DestinyEquippingItemBlockAttributes._0: return 0;
      case DestinyEquippingItemBlockAttributes._1: return 1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyEquippingItemBlockAttributes decode(dynamic data) {
    switch (data) {
      case 0: return DestinyEquippingItemBlockAttributes._0;
      case 1: return DestinyEquippingItemBlockAttributes._1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

