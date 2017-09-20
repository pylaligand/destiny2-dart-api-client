part of destiny2_api.api;

@Entity()
enum GroupsV2GroupHomepage {
  _0,
  _1,
  _2
  
}

class GroupsV2GroupHomepageTypeTransformer extends TypeTransformer<GroupsV2GroupHomepage> {

  @override
  dynamic encode(GroupsV2GroupHomepage data) {
    switch(data) {
      case GroupsV2GroupHomepage._0: return 0;
      case GroupsV2GroupHomepage._1: return 1;
      case GroupsV2GroupHomepage._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupHomepage decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupHomepage._0;
      case 1: return GroupsV2GroupHomepage._1;
      case 2: return GroupsV2GroupHomepage._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

