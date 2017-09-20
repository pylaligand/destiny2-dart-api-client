part of destiny2_api.api;

@Entity()
enum GroupsV2RuntimeGroupMemberType {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5
  
}

class GroupsV2RuntimeGroupMemberTypeTypeTransformer extends TypeTransformer<GroupsV2RuntimeGroupMemberType> {

  @override
  dynamic encode(GroupsV2RuntimeGroupMemberType data) {
    switch(data) {
      case GroupsV2RuntimeGroupMemberType._0: return 0;
      case GroupsV2RuntimeGroupMemberType._1: return 1;
      case GroupsV2RuntimeGroupMemberType._2: return 2;
      case GroupsV2RuntimeGroupMemberType._3: return 3;
      case GroupsV2RuntimeGroupMemberType._4: return 4;
      case GroupsV2RuntimeGroupMemberType._5: return 5;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2RuntimeGroupMemberType decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2RuntimeGroupMemberType._0;
      case 1: return GroupsV2RuntimeGroupMemberType._1;
      case 2: return GroupsV2RuntimeGroupMemberType._2;
      case 3: return GroupsV2RuntimeGroupMemberType._3;
      case 4: return GroupsV2RuntimeGroupMemberType._4;
      case 5: return GroupsV2RuntimeGroupMemberType._5;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

