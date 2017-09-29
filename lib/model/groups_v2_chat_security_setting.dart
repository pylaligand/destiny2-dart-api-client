part of destiny2_api.api;

@Entity()
class GroupsV2ChatSecuritySetting {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2ChatSecuritySetting._internal(this.value);

  static const GroupsV2ChatSecuritySetting group = const GroupsV2ChatSecuritySetting._internal(0);
  static const GroupsV2ChatSecuritySetting admins = const GroupsV2ChatSecuritySetting._internal(1);
}

class GroupsV2ChatSecuritySettingTypeTransformer extends TypeTransformer<GroupsV2ChatSecuritySetting> {

  @override
  dynamic encode(GroupsV2ChatSecuritySetting data) {
    return data.value;
  }

  @override
  GroupsV2ChatSecuritySetting decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2ChatSecuritySetting.group;
      case 1: return GroupsV2ChatSecuritySetting.admins;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

