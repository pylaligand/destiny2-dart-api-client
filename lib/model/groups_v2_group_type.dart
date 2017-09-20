part of destiny2_api.api;

@Entity()
enum GroupsV2GroupType {
  _0,
  _1
  
}

class GroupsV2GroupTypeTypeTransformer extends TypeTransformer<GroupsV2GroupType> {

  @override
  dynamic encode(GroupsV2GroupType data) {
    switch(data) {
      case GroupsV2GroupType._0: return 0;
      case GroupsV2GroupType._1: return 1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupType decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupType._0;
      case 1: return GroupsV2GroupType._1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

