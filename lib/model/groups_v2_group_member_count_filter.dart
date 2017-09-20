part of destiny2_api.api;

@Entity()
enum GroupsV2GroupMemberCountFilter {
  _0,
  _1,
  _2,
  _3
  
}

class GroupsV2GroupMemberCountFilterTypeTransformer extends TypeTransformer<GroupsV2GroupMemberCountFilter> {

  @override
  dynamic encode(GroupsV2GroupMemberCountFilter data) {
    switch(data) {
      case GroupsV2GroupMemberCountFilter._0: return 0;
      case GroupsV2GroupMemberCountFilter._1: return 1;
      case GroupsV2GroupMemberCountFilter._2: return 2;
      case GroupsV2GroupMemberCountFilter._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupMemberCountFilter decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupMemberCountFilter._0;
      case 1: return GroupsV2GroupMemberCountFilter._1;
      case 2: return GroupsV2GroupMemberCountFilter._2;
      case 3: return GroupsV2GroupMemberCountFilter._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

