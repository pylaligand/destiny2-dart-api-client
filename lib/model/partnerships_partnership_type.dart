part of destiny2_api.api;

@Entity()
enum PartnershipsPartnershipType {
  _0,
  _1
  
}

class PartnershipsPartnershipTypeTypeTransformer extends TypeTransformer<PartnershipsPartnershipType> {

  @override
  dynamic encode(PartnershipsPartnershipType data) {
    switch(data) {
      case PartnershipsPartnershipType._0: return 0;
      case PartnershipsPartnershipType._1: return 1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  PartnershipsPartnershipType decode(dynamic data) {
    switch (data) {
      case 0: return PartnershipsPartnershipType._0;
      case 1: return PartnershipsPartnershipType._1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

