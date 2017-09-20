part of destiny2_api.api;

@Entity()
enum GroupsV2GroupPotentialMemberStatus {
  _0,
  _1,
  _2
  
}

class GroupsV2GroupPotentialMemberStatusTypeTransformer extends TypeTransformer<GroupsV2GroupPotentialMemberStatus> {

  @override
  dynamic encode(GroupsV2GroupPotentialMemberStatus data) {
    switch(data) {
      case GroupsV2GroupPotentialMemberStatus._0: return 0;
      case GroupsV2GroupPotentialMemberStatus._1: return 1;
      case GroupsV2GroupPotentialMemberStatus._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupPotentialMemberStatus decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupPotentialMemberStatus._0;
      case 1: return GroupsV2GroupPotentialMemberStatus._1;
      case 2: return GroupsV2GroupPotentialMemberStatus._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

