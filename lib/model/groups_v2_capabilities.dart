part of destiny2_api.api;

@Entity()
enum GroupsV2Capabilities {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _31,
  _32,
  _64,
  _96
  
}

class GroupsV2CapabilitiesTypeTransformer extends TypeTransformer<GroupsV2Capabilities> {

  @override
  dynamic encode(GroupsV2Capabilities data) {
    switch(data) {
      case GroupsV2Capabilities._0: return 0;
      case GroupsV2Capabilities._1: return 1;
      case GroupsV2Capabilities._2: return 2;
      case GroupsV2Capabilities._4: return 4;
      case GroupsV2Capabilities._8: return 8;
      case GroupsV2Capabilities._16: return 16;
      case GroupsV2Capabilities._31: return 31;
      case GroupsV2Capabilities._32: return 32;
      case GroupsV2Capabilities._64: return 64;
      case GroupsV2Capabilities._96: return 96;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2Capabilities decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2Capabilities._0;
      case 1: return GroupsV2Capabilities._1;
      case 2: return GroupsV2Capabilities._2;
      case 4: return GroupsV2Capabilities._4;
      case 8: return GroupsV2Capabilities._8;
      case 16: return GroupsV2Capabilities._16;
      case 31: return GroupsV2Capabilities._31;
      case 32: return GroupsV2Capabilities._32;
      case 64: return GroupsV2Capabilities._64;
      case 96: return GroupsV2Capabilities._96;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

