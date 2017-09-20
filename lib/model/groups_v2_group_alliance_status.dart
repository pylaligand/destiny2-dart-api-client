part of destiny2_api.api;

@Entity()
enum GroupsV2GroupAllianceStatus {
  _0,
  _1,
  _2
  
}

class GroupsV2GroupAllianceStatusTypeTransformer extends TypeTransformer<GroupsV2GroupAllianceStatus> {

  @override
  dynamic encode(GroupsV2GroupAllianceStatus data) {
    switch(data) {
      case GroupsV2GroupAllianceStatus._0: return 0;
      case GroupsV2GroupAllianceStatus._1: return 1;
      case GroupsV2GroupAllianceStatus._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupAllianceStatus decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupAllianceStatus._0;
      case 1: return GroupsV2GroupAllianceStatus._1;
      case 2: return GroupsV2GroupAllianceStatus._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

