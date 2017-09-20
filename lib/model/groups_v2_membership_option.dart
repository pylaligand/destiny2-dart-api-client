part of destiny2_api.api;

@Entity()
enum GroupsV2MembershipOption {
  _0,
  _1,
  _2
  
}

class GroupsV2MembershipOptionTypeTransformer extends TypeTransformer<GroupsV2MembershipOption> {

  @override
  dynamic encode(GroupsV2MembershipOption data) {
    switch(data) {
      case GroupsV2MembershipOption._0: return 0;
      case GroupsV2MembershipOption._1: return 1;
      case GroupsV2MembershipOption._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2MembershipOption decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2MembershipOption._0;
      case 1: return GroupsV2MembershipOption._1;
      case 2: return GroupsV2MembershipOption._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

