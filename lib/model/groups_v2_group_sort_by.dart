part of destiny2_api.api;

@Entity()
enum GroupsV2GroupSortBy {
  _0,
  _1,
  _2,
  _3
  
}

class GroupsV2GroupSortByTypeTransformer extends TypeTransformer<GroupsV2GroupSortBy> {

  @override
  dynamic encode(GroupsV2GroupSortBy data) {
    switch(data) {
      case GroupsV2GroupSortBy._0: return 0;
      case GroupsV2GroupSortBy._1: return 1;
      case GroupsV2GroupSortBy._2: return 2;
      case GroupsV2GroupSortBy._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupSortBy decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupSortBy._0;
      case 1: return GroupsV2GroupSortBy._1;
      case 2: return GroupsV2GroupSortBy._2;
      case 3: return GroupsV2GroupSortBy._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

