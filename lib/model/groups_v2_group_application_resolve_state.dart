part of destiny2_api.api;

@Entity()
enum GroupsV2GroupApplicationResolveState {
  _0,
  _1,
  _2,
  _3
  
}

class GroupsV2GroupApplicationResolveStateTypeTransformer extends TypeTransformer<GroupsV2GroupApplicationResolveState> {

  @override
  dynamic encode(GroupsV2GroupApplicationResolveState data) {
    switch(data) {
      case GroupsV2GroupApplicationResolveState._0: return 0;
      case GroupsV2GroupApplicationResolveState._1: return 1;
      case GroupsV2GroupApplicationResolveState._2: return 2;
      case GroupsV2GroupApplicationResolveState._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupApplicationResolveState decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupApplicationResolveState._0;
      case 1: return GroupsV2GroupApplicationResolveState._1;
      case 2: return GroupsV2GroupApplicationResolveState._2;
      case 3: return GroupsV2GroupApplicationResolveState._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

