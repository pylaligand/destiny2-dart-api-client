part of destiny2_api.api;

@Entity()
enum GroupsV2HostGuidedGamesPermissionLevel {
  _0,
  _1,
  _2
  
}

class GroupsV2HostGuidedGamesPermissionLevelTypeTransformer extends TypeTransformer<GroupsV2HostGuidedGamesPermissionLevel> {

  @override
  dynamic encode(GroupsV2HostGuidedGamesPermissionLevel data) {
    switch(data) {
      case GroupsV2HostGuidedGamesPermissionLevel._0: return 0;
      case GroupsV2HostGuidedGamesPermissionLevel._1: return 1;
      case GroupsV2HostGuidedGamesPermissionLevel._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2HostGuidedGamesPermissionLevel decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2HostGuidedGamesPermissionLevel._0;
      case 1: return GroupsV2HostGuidedGamesPermissionLevel._1;
      case 2: return GroupsV2HostGuidedGamesPermissionLevel._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

