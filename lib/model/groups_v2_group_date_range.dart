part of destiny2_api.api;

@Entity()
enum GroupsV2GroupDateRange {
  _0,
  _1,
  _2,
  _3,
  _4
  
}

class GroupsV2GroupDateRangeTypeTransformer extends TypeTransformer<GroupsV2GroupDateRange> {

  @override
  dynamic encode(GroupsV2GroupDateRange data) {
    switch(data) {
      case GroupsV2GroupDateRange._0: return 0;
      case GroupsV2GroupDateRange._1: return 1;
      case GroupsV2GroupDateRange._2: return 2;
      case GroupsV2GroupDateRange._3: return 3;
      case GroupsV2GroupDateRange._4: return 4;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2GroupDateRange decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupDateRange._0;
      case 1: return GroupsV2GroupDateRange._1;
      case 2: return GroupsV2GroupDateRange._2;
      case 3: return GroupsV2GroupDateRange._3;
      case 4: return GroupsV2GroupDateRange._4;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

