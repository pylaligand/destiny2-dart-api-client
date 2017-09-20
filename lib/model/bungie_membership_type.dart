part of destiny2_api.api;

@Entity()
enum BungieMembershipType {
  _0,
  _1,
  _2,
  _4,
  _10,
  _254,
  __1
  
}

class BungieMembershipTypeTypeTransformer extends TypeTransformer<BungieMembershipType> {

  @override
  dynamic encode(BungieMembershipType data) {
    switch(data) {
      case BungieMembershipType._0: return 0;
      case BungieMembershipType._1: return 1;
      case BungieMembershipType._2: return 2;
      case BungieMembershipType._4: return 4;
      case BungieMembershipType._10: return 10;
      case BungieMembershipType._254: return 254;
      case BungieMembershipType.__1: return -1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  BungieMembershipType decode(dynamic data) {
    switch (data) {
      case 0: return BungieMembershipType._0;
      case 1: return BungieMembershipType._1;
      case 2: return BungieMembershipType._2;
      case 4: return BungieMembershipType._4;
      case 10: return BungieMembershipType._10;
      case 254: return BungieMembershipType._254;
      case -1: return BungieMembershipType.__1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

