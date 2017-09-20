part of destiny2_api.api;

@Entity()
enum GroupsV2GroupPostPublicity {
  _0,
  _1,
  _2
  
}

class GroupsV2GroupPostPublicityTypeTransformer extends TypeTransformer<GroupsV2GroupPostPublicity> {

  @override
  dynamic encode(GroupsV2GroupPostPublicity data) {
    switch(data) {
      case GroupsV2GroupPostPublicity._0: return 0;
      case GroupsV2GroupPostPublicity._1: return 1;
      case GroupsV2GroupPostPublicity._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupPostPublicity decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupPostPublicity._0;
      case 1: return GroupsV2GroupPostPublicity._1;
      case 2: return GroupsV2GroupPostPublicity._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

