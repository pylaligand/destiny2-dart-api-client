part of destiny2_api.api;

@Entity()
enum GroupsV2ChatSecuritySetting {
  _0,
  _1
  
}

class GroupsV2ChatSecuritySettingTypeTransformer extends TypeTransformer<GroupsV2ChatSecuritySetting> {

  @override
  dynamic encode(GroupsV2ChatSecuritySetting data) {
    switch(data) {
      case GroupsV2ChatSecuritySetting._0: return 0;
      case GroupsV2ChatSecuritySetting._1: return 1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  GroupsV2ChatSecuritySetting decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2ChatSecuritySetting._0;
      case 1: return GroupsV2ChatSecuritySetting._1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

