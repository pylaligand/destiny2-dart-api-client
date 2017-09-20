part of destiny2_api.api;

@Entity()
enum GroupsV2GroupsForMemberFilter {
  _0,
  _1,
  _2
  
}

class GroupsV2GroupsForMemberFilterTypeTransformer extends TypeTransformer<GroupsV2GroupsForMemberFilter> {

  @override
  dynamic encode(GroupsV2GroupsForMemberFilter data) {
    switch(data) {
      case GroupsV2GroupsForMemberFilter._0: return 0;
      case GroupsV2GroupsForMemberFilter._1: return 1;
      case GroupsV2GroupsForMemberFilter._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupsForMemberFilter decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupsForMemberFilter._0;
      case 1: return GroupsV2GroupsForMemberFilter._1;
      case 2: return GroupsV2GroupsForMemberFilter._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

